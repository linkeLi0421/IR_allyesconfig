; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/hideep.c_pt.bc'
source_filename = "../drivers/input/touchscreen/hideep.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hideep_ts = type { ptr, ptr, ptr, %struct.touchscreen_properties, ptr, ptr, ptr, %struct.mutex, i32, i32, [136 x i8], i32, [3 x i32], %struct.dwz_info, i32, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.dwz_info = type { i32, [12 x i8], i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8], i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hideep_event = type { i16, i16, i16, i8, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_hideep__307_1118_hideep_driver_init6 = internal global ptr @hideep_driver_init, section ".initcall6.init", align 4
@hideep_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hideep_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hideep_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hideep_pm_ops, ptr null, ptr null }, ptr @hideep_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hideep_driver_exit = internal global ptr @hideep_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [60 x i8] c"hideep.description=Driver for HiDeep Touchscreen Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [37 x i8] c"hideep.author=anthony.kim@hideep.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [45 x i8] c"hideep.file=drivers/input/touchscreen/hideep\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [22 x i8] c"hideep.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hideep_ts\00", [22 x i8] zeroinitializer }, align 32
@hideep_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hideep,hideep-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hideep_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hideep_suspend, ptr @hideep_resume, ptr @hideep_suspend, ptr @hideep_resume, ptr @hideep_suspend, ptr @hideep_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hideep_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hideep_ts\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hideep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1008, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check i2c device error\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hideep_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/hideep.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr = internal global ptr @hideep_probe._entry, section ".printk_index", align 4
@hideep_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1013, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"missing irq: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.8 = internal global ptr @hideep_probe._entry.6, section ".printk_index", align 4
@hideep_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ts->dev_mutex\00", [17 x i8] zeroinitializer }, align 32
@hideep_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hideep_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hideep:1025:(&hideep_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@hideep_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1029, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.13 = internal global ptr @hideep_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@hideep_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power on failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.19 = internal global ptr @hideep_probe._entry.17, section ".printk_index", align 4
@hideep_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1058, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to load dwz: %d\00", [41 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.22 = internal global ptr @hideep_probe._entry.20, section ".printk_index", align 4
@hideep_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.25 = internal global ptr @hideep_probe._entry.23, section ".printk_index", align 4
@hideep_ts_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hideep_ts_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@hideep_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to add sysfs attributes: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hideep_probe._entry_ptr.28 = internal global ptr @hideep_probe._entry.26, section ".printk_index", align 4
@hideep_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable 'vdd' regulator: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hideep_power_on\00", [16 x i8] zeroinitializer }, align 32
@hideep_power_on._entry_ptr = internal global ptr @hideep_power_on._entry, section ".printk_index", align 4
@hideep_power_on._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable 'vcc_vid' regulator: %d\00", [55 x i8] zeroinitializer }, align 32
@hideep_power_on._entry_ptr.33 = internal global ptr @hideep_power_on._entry.31, section ".printk_index", align 4
@hideep_power_on._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 678, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send 'reset' command: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@hideep_power_on._entry_ptr.36 = internal global ptr @hideep_power_on._entry.34, section ".printk_index", align 4
@hideep_load_dwz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to fetch DWZ data: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hideep_load_dwz\00", [16 x i8] zeroinitializer }, align 32
@hideep_load_dwz._entry_ptr = internal global ptr @hideep_load_dwz._entry, section ".printk_index", align 4
@hideep_load_dwz.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hideep\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"used crimson IC\00", [16 x i8] zeroinitializer }, align 32
@hideep_load_dwz.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.38, ptr @.str.3, ptr @.str.41, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"used lime IC\00", [19 x i8] zeroinitializer }, align 32
@hideep_load_dwz._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"product code is wrong: %#04x\00", [35 x i8] zeroinitializer }, align 32
@hideep_load_dwz._entry_ptr.44 = internal global ptr @hideep_load_dwz._entry.42, section ".printk_index", align 4
@hideep_load_dwz.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.38, ptr @.str.3, ptr @.str.45, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware release version: %#04x\00", [32 x i8] zeroinitializer }, align 32
@hideep_enter_pgm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hideep_pgm_get_pattern failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hideep_enter_pgm\00", [47 x i8] zeroinitializer }, align 32
@hideep_enter_pgm._entry_ptr = internal global ptr @hideep_enter_pgm._entry, section ".printk_index", align 4
@hideep_enter_pgm._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: bad pattern: %#08x\0A\00", [40 x i8] zeroinitializer }, align 32
@hideep_enter_pgm._entry_ptr.50 = internal global ptr @hideep_enter_pgm._entry.48, section ".printk_index", align 4
@hideep_enter_pgm.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.47, ptr @.str.3, ptr @.str.51, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"found magic code\00", [47 x i8] zeroinitializer }, align 32
@hideep_enter_pgm._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.47, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to  enter pgm mode\0A\00", [37 x i8] zeroinitializer }, align 32
@hideep_enter_pgm._entry_ptr.54 = internal global ptr @hideep_enter_pgm._entry.52, section ".printk_index", align 4
@hideep_pgm_get_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: regmap_bulk_write() failed with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hideep_pgm_get_pattern\00", [41 x i8] zeroinitializer }, align 32
@hideep_pgm_get_pattern._entry_ptr = internal global ptr @hideep_pgm_get_pattern._entry, section ".printk_index", align 4
@hideep_pgm_r_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read of register %#08x failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hideep_pgm_r_reg\00", [47 x i8] zeroinitializer }, align 32
@hideep_pgm_r_reg._entry_ptr = internal global ptr @hideep_pgm_r_reg._entry, section ".printk_index", align 4
@hideep_pgm_w_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write to register %#08x (%#08x) failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hideep_pgm_w_reg\00", [47 x i8] zeroinitializer }, align 32
@hideep_pgm_w_reg._entry_ptr = internal global ptr @hideep_pgm_w_reg._entry, section ".printk_index", align 4
@hideep_init_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 794, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hideep_init_input\00", [46 x i8] zeroinitializer }, align 32
@hideep_init_input._entry_ptr = internal global ptr @hideep_init_input._entry, section ".printk_index", align 4
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HiDeep Touchscreen\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@hideep_init_input._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too many keys defined: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hideep_init_input._entry_ptr.67 = internal global ptr @hideep_init_input._entry.65, section ".printk_index", align 4
@hideep_init_input.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.62, ptr @.str.3, ptr @.str.68, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"missing or malformed 'linux,keycodes' property\0A\00", [48 x i8] zeroinitializer }, align 32
@hideep_init_input.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.62, ptr @.str.3, ptr @.str.69, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read keymap: %d\00", [38 x i8] zeroinitializer }, align 32
@hideep_init_input._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register input device: %d\00", [60 x i8] zeroinitializer }, align 32
@hideep_init_input._entry_ptr.72 = internal global ptr @hideep_init_input._entry.70, section ".printk_index", align 4
@hideep_get_axis_info.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hideep_get_axis_info\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"X: %d, Y: %d\00", [19 x i8] zeroinitializer }, align 32
@hideep_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read events: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hideep_irq\00", [21 x i8] zeroinitializer }, align 32
@hideep_irq._entry_ptr = internal global ptr @hideep_irq._entry, section ".printk_index", align 4
@hideep_parse_and_report.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hideep_parse_and_report\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt = %d, key = %d, lpm = %02x\00", [34 x i8] zeroinitializer }, align 32
@hideep_ts_sysfs_entries = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_version, ptr @dev_attr_product_id, ptr @dev_attr_update_fw, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hideep_fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hideep_product_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @hideep_update_fw }, [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hideep_ts_%04x.bin\00", [45 x i8] zeroinitializer }, align 32
@hideep_update_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request firmware %s: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hideep_update_fw\00", [47 x i8] zeroinitializer }, align 32
@hideep_update_fw._entry_ptr = internal global ptr @hideep_update_fw._entry, section ".printk_index", align 4
@hideep_update_fw._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid firmware size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@hideep_update_fw._entry_ptr.88 = internal global ptr @hideep_update_fw._entry.86, section ".printk_index", align 4
@hideep_update_fw._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fw size (%zu) is too big (memory size %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@hideep_update_fw._entry_ptr.91 = internal global ptr @hideep_update_fw._entry.89, section ".printk_index", align 4
@hideep_update_firmware.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hideep_update_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting firmware update\00", [39 x i8] zeroinitializer }, align 32
@hideep_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@hideep_update_firmware._entry_ptr = internal global ptr @hideep_update_firmware._entry, section ".printk_index", align 4
@hideep_update_firmware.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.92, ptr @.str.3, ptr @.str.95, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware updated successfully\0A\00", [33 x i8] zeroinitializer }, align 32
@hideep_update_firmware._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.3, i32 648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to load dwz after firmware update: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@hideep_update_firmware._entry_ptr.98 = internal global ptr @hideep_update_firmware._entry.96, section ".printk_index", align 4
@hideep_program_nvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to read page at offset %#08x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hideep_program_nvm\00", [45 x i8] zeroinitializer }, align 32
@hideep_program_nvm._entry_ptr = internal global ptr @hideep_program_nvm._entry, section ".printk_index", align 4
@hideep_program_nvm._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: iwrite failure @%#08x: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@hideep_program_nvm._entry_ptr.103 = internal global ptr @hideep_program_nvm._entry.101, section ".printk_index", align 4
@hideep_nvm_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 382, ptr @.str.106, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"read mask code different %#08x vs %#08x\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hideep_nvm_unlock\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hideep_nvm_unlock._entry_ptr = internal global ptr @hideep_nvm_unlock._entry, section ".printk_index", align 4
@hideep_verify_nvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.107, ptr @.str.3, i32 529, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hideep_verify_nvm\00", [46 x i8] zeroinitializer }, align 32
@hideep_verify_nvm._entry_ptr = internal global ptr @hideep_verify_nvm._entry, section ".printk_index", align 4
@hideep_verify_nvm._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: mismatch @%#08x: (%#02x vs %#02x)\0A\00", [57 x i8] zeroinitializer }, align 32
@hideep_verify_nvm._entry_ptr.110 = internal global ptr @hideep_verify_nvm._entry.108, section ".printk_index", align 4
@hideep_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 981, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power on failed\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hideep_resume\00", [18 x i8] zeroinitializer }, align 32
@hideep_resume._entry_ptr = internal global ptr @hideep_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"hideep_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1107, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1109, i32 13 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"hideep_match_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1100, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"hideep_pm_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 990, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"hideep_i2c_id\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1085, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1008, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1013, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1023, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"hideep_regmap_config\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 992, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1025, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1028, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1033, i32 49 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1037, i32 49 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1042, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1048, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1058, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1070, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"hideep_ts_attr_group\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 958, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1077, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 659, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 666, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 677, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 575, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 584, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 589, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 594, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 599, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 344, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 347, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 350, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 359, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 315, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 246, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 263, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 794, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 798, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 821, i32 47 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 823, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 829, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 836, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 853, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 780, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 758, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 728, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"hideep_ts_sysfs_entries\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 951, i32 26 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 947, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 925, i32 34 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 948, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 949, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 875, i32 34 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 882, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 888, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 894, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 628, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 637, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 640, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 646, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 481, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 492, i32 5 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 380, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 527, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 539, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.477 = private constant [38 x i8] c"../drivers/input/touchscreen/hideep.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 981, i32 3 }
@llvm.compiler.used = appending global [162 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_hideep_driver_exit, ptr @__initcall__kmod_hideep__307_1118_hideep_driver_init6, ptr @hideep_driver_exit, ptr @hideep_enter_pgm._entry, ptr @hideep_enter_pgm._entry.48, ptr @hideep_enter_pgm._entry.52, ptr @hideep_enter_pgm._entry_ptr, ptr @hideep_enter_pgm._entry_ptr.50, ptr @hideep_enter_pgm._entry_ptr.54, ptr @hideep_init_input._entry, ptr @hideep_init_input._entry.65, ptr @hideep_init_input._entry.70, ptr @hideep_init_input._entry_ptr, ptr @hideep_init_input._entry_ptr.67, ptr @hideep_init_input._entry_ptr.72, ptr @hideep_irq._entry, ptr @hideep_irq._entry_ptr, ptr @hideep_load_dwz._entry, ptr @hideep_load_dwz._entry.42, ptr @hideep_load_dwz._entry_ptr, ptr @hideep_load_dwz._entry_ptr.44, ptr @hideep_nvm_unlock._entry, ptr @hideep_nvm_unlock._entry_ptr, ptr @hideep_pgm_get_pattern._entry, ptr @hideep_pgm_get_pattern._entry_ptr, ptr @hideep_pgm_r_reg._entry, ptr @hideep_pgm_r_reg._entry_ptr, ptr @hideep_pgm_w_reg._entry, ptr @hideep_pgm_w_reg._entry_ptr, ptr @hideep_power_on._entry, ptr @hideep_power_on._entry.31, ptr @hideep_power_on._entry.34, ptr @hideep_power_on._entry_ptr, ptr @hideep_power_on._entry_ptr.33, ptr @hideep_power_on._entry_ptr.36, ptr @hideep_probe._entry, ptr @hideep_probe._entry.11, ptr @hideep_probe._entry.17, ptr @hideep_probe._entry.20, ptr @hideep_probe._entry.23, ptr @hideep_probe._entry.26, ptr @hideep_probe._entry.6, ptr @hideep_probe._entry_ptr, ptr @hideep_probe._entry_ptr.13, ptr @hideep_probe._entry_ptr.19, ptr @hideep_probe._entry_ptr.22, ptr @hideep_probe._entry_ptr.25, ptr @hideep_probe._entry_ptr.28, ptr @hideep_probe._entry_ptr.8, ptr @hideep_program_nvm._entry, ptr @hideep_program_nvm._entry.101, ptr @hideep_program_nvm._entry_ptr, ptr @hideep_program_nvm._entry_ptr.103, ptr @hideep_resume._entry, ptr @hideep_resume._entry_ptr, ptr @hideep_update_firmware._entry, ptr @hideep_update_firmware._entry.96, ptr @hideep_update_firmware._entry_ptr, ptr @hideep_update_firmware._entry_ptr.98, ptr @hideep_update_fw._entry, ptr @hideep_update_fw._entry.86, ptr @hideep_update_fw._entry.89, ptr @hideep_update_fw._entry_ptr, ptr @hideep_update_fw._entry_ptr.88, ptr @hideep_update_fw._entry_ptr.91, ptr @hideep_verify_nvm._entry, ptr @hideep_verify_nvm._entry.108, ptr @hideep_verify_nvm._entry_ptr, ptr @hideep_verify_nvm._entry_ptr.110, ptr @hideep_driver, ptr @.str, ptr @hideep_match_table, ptr @hideep_pm_ops, ptr @hideep_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @hideep_probe.__key, ptr @.str.9, ptr @hideep_probe._key, ptr @hideep_regmap_config, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @hideep_ts_attr_group, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @hideep_ts_sysfs_entries, ptr @dev_attr_version, ptr @dev_attr_product_id, ptr @dev_attr_update_fw, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_ts_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_power_on._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_power_on._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_load_dwz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_load_dwz._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_enter_pgm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_enter_pgm._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_enter_pgm._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_pgm_get_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_pgm_r_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_pgm_w_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_init_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_init_input._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_init_input._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_ts_sysfs_entries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_update_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_update_fw._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_update_fw._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_update_firmware._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_program_nvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_program_nvm._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_nvm_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_verify_nvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_verify_nvm._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hideep_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hideep_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hideep_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @hideep_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7, i32 noundef %7) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 360, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.hideep_ts, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @hideep_probe.__key) #7
  %call17 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @hideep_regmap_config, ptr noundef nonnull @hideep_probe._key, ptr noundef nonnull @.str.10) #7
  %reg = getelementptr inbounds %struct.hideep_ts, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.12, i32 noundef %11) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %call29 = tail call ptr @devm_regulator_get(ptr noundef %dev5, ptr noundef nonnull @.str.14) #7
  %vcc_vdd = getelementptr inbounds %struct.hideep_ts, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %vcc_vdd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %vcc_vdd, align 4
  %cmp.i157 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %call37 = tail call ptr @devm_regulator_get(ptr noundef %dev5, ptr noundef nonnull @.str.15) #7
  %vcc_vid = getelementptr inbounds %struct.hideep_ts, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %vcc_vid to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call37, ptr %vcc_vid, align 4
  %cmp.i158 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %call45 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev5, ptr noundef nonnull @.str.16, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.hideep_ts, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call45, ptr %reset_gpio, align 4
  %cmp.i159 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = tail call fastcc i32 @hideep_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.18, i32 noundef %call52) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %call.i160 = tail call i32 @devm_add_action(ptr noundef %dev5, ptr noundef nonnull @hideep_power_off, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i, label %if.end64, label %if.then.i

if.then.i:                                        ; preds = %if.end59
  %18 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then.i.devm_add_action_or_reset.exit_crit_edge, label %if.then.i.i

if.then.i.devm_add_action_or_reset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_add_action_or_reset.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %19, i32 noundef 1) #7
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.then.i.i, %if.then.i.devm_add_action_or_reset.exit_crit_edge
  %20 = ptrtoint ptr %vcc_vid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vcc_vid, align 4
  %call.i.i161 = tail call i32 @regulator_disable(ptr noundef %21) #7
  %22 = ptrtoint ptr %vcc_vdd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vcc_vdd, align 4
  %call2.i.i = tail call i32 @regulator_disable(ptr noundef %23) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %call65 = tail call fastcc i32 @hideep_load_dwz(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.21, i32 noundef %call65) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %call73 = tail call fastcc i32 @hideep_init_input(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call79 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev5, i32 noundef %25, ptr noundef null, ptr noundef nonnull @hideep_irq, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end87, label %do.end84

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.24, i32 noundef %27, i32 noundef %call79) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %call89 = tail call i32 @devm_device_add_group(ptr noundef %dev5, ptr noundef nonnull @hideep_ts_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end87.cleanup_crit_edge, label %do.end94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.27, i32 noundef %call89) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.end87.cleanup_crit_edge, %do.end84, %if.end72.cleanup_crit_edge, %do.end70, %devm_add_action_or_reset.exit, %do.end57, %if.then48, %if.then40, %if.then32, %if.then20, %if.end7.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ %11, %if.then20 ], [ %13, %if.then32 ], [ %15, %if.then40 ], [ %17, %if.then48 ], [ %call52, %do.end57 ], [ %call65, %do.end70 ], [ %call79, %do.end84 ], [ %call89, %do.end94 ], [ -19, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %call.i160, %devm_add_action_or_reset.exit ], [ %call73, %if.end72.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_power_on(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc_vdd = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 5
  %0 = ptrtoint ptr %vcc_vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc_vdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 999, i32 noundef 1000, i32 noundef 2) #7
  %vcc_vid = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 6
  %4 = ptrtoint ptr %vcc_vid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc_vid, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.32, i32 noundef %call1) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  tail call void @msleep(i32 noundef 30) #7
  %reset_gpio = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 0) #7
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %reg = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 38912, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else.if.end22_crit_edge, label %do.end18

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.35, i32 noundef %call13) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.else.if.end22_crit_edge, %if.then11
  %error.0 = phi i32 [ %call1, %if.then11 ], [ %call13, %do.end18 ], [ 0, %if.else.if.end22_crit_edge ]
  tail call void @msleep(i32 noundef 50) #7
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hideep_power_off(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.hideep_ts, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vcc_vid = getelementptr inbounds %struct.hideep_ts, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %vcc_vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc_vid, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %3) #7
  %vcc_vdd = getelementptr inbounds %struct.hideep_ts, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %vcc_vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc_vdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_load_dwz(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %msg.i.i114 = alloca %struct.i2c_msg, align 4
  %msg.i.i98 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hideep_enter_pgm(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 50) #7
  %dwz_info = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2.i, align 2
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %0, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %len4.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %len4.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %10 = load i16, ptr %addr2.i, align 2
  %11 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %13 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 64, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dwz_info, ptr %buf10.i, align 4
  %15 = ptrtoint ptr %len4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %len4.i, align 1
  %addr16.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 704, ptr %addr16.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp19.not.i = icmp eq i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp22.i, i32 %call.i, i32 -5
  %retval.0.i96 = select i1 %cmp19.not.i, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 655359, ptr %19, align 4
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ts, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr2.i.i, align 2
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %len4.i, ptr %buf.i.i, align 4
  %28 = ptrtoint ptr %len4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %len4.i, align 1
  %29 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1375731736, ptr %addr16.i, align 4
  %payload.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 8
  %30 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 10, ptr %payload.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br i1 %cmp14.not.i.i, label %if.end.hideep_pgm_w_reg.exit_crit_edge, label %do.end.i

if.end.hideep_pgm_w_reg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp17.i.i, i32 %call.i.i, i32 -5
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef 1375731736, i32 noundef 10, i32 noundef %spec.select.i.i) #10
  br label %hideep_pgm_w_reg.exit

hideep_pgm_w_reg.exit:                            ; preds = %do.end.i, %if.end.hideep_pgm_w_reg.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i98) #7
  %35 = getelementptr inbounds i8, ptr %msg.i.i98, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 655359, ptr %35, align 4
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts, align 4
  %addr2.i.i99 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %addr2.i.i99 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr2.i.i99, align 2
  %41 = ptrtoint ptr %msg.i.i98 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %msg.i.i98, align 4
  %flags.i.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i.i100 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i.i100, align 2
  %buf.i.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i98, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i.i101 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %len4.i, ptr %buf.i.i101, align 4
  %44 = ptrtoint ptr %len4.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -128, ptr %len4.i, align 1
  %45 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1375731732, ptr %addr16.i, align 4
  %46 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %payload.i.i, align 4
  %adapter.i.i105 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 3
  %47 = ptrtoint ptr %adapter.i.i105 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i.i105, align 8
  %call.i.i106 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i.i98, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i106)
  %cmp14.not.i.i107 = icmp eq i32 %call.i.i106, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i98) #7
  br i1 %cmp14.not.i.i107, label %hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit113_crit_edge, label %do.end.i111

hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit113_crit_edge: ; preds = %hideep_pgm_w_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit113

do.end.i111:                                      ; preds = %hideep_pgm_w_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp17.i.i108 = icmp slt i32 %call.i.i106, 0
  %spec.select.i.i109 = select i1 %cmp17.i.i108, i32 %call.i.i106, i32 -5
  %49 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ts, align 4
  %dev.i110 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i110, ptr noundef nonnull @.str.59, i32 noundef 1375731732, i32 noundef 3, i32 noundef %spec.select.i.i109) #10
  br label %hideep_pgm_w_reg.exit113

hideep_pgm_w_reg.exit113:                         ; preds = %do.end.i111, %hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit113_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i114) #7
  %51 = getelementptr inbounds i8, ptr %msg.i.i114, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 655359, ptr %51, align 4
  %53 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ts, align 4
  %addr2.i.i115 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %addr2.i.i115 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr2.i.i115, align 2
  %57 = ptrtoint ptr %msg.i.i114 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i.i114, align 4
  %flags.i.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i114, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i.i116, align 2
  %buf.i.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i114, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i.i117 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %len4.i, ptr %buf.i.i117, align 4
  %60 = ptrtoint ptr %len4.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %len4.i, align 1
  %61 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1375731732, ptr %addr16.i, align 4
  %62 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i121 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 3
  %63 = ptrtoint ptr %adapter.i.i121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i.i121, align 8
  %call.i.i122 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i.i114, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i122)
  %cmp14.not.i.i123 = icmp eq i32 %call.i.i122, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i114) #7
  br i1 %cmp14.not.i.i123, label %hideep_pgm_w_reg.exit113.hideep_pgm_w_reg.exit129_crit_edge, label %do.end.i127

hideep_pgm_w_reg.exit113.hideep_pgm_w_reg.exit129_crit_edge: ; preds = %hideep_pgm_w_reg.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit129

do.end.i127:                                      ; preds = %hideep_pgm_w_reg.exit113
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %cmp17.i.i124 = icmp slt i32 %call.i.i122, 0
  %spec.select.i.i125 = select i1 %cmp17.i.i124, i32 %call.i.i122, i32 -5
  %65 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ts, align 4
  %dev.i126 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i126, ptr noundef nonnull @.str.59, i32 noundef 1375731732, i32 noundef 1, i32 noundef %spec.select.i.i125) #10
  br label %hideep_pgm_w_reg.exit129

hideep_pgm_w_reg.exit129:                         ; preds = %do.end.i127, %hideep_pgm_w_reg.exit113.hideep_pgm_w_reg.exit129_crit_edge
  call void @msleep(i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i96)
  %tobool5.not = icmp eq i32 %retval.0.i96, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %hideep_pgm_w_reg.exit129
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i96) #10
  br label %cleanup

if.end7:                                          ; preds = %hideep_pgm_w_reg.exit129
  %product_code9 = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 13, i32 19
  %69 = ptrtoint ptr %product_code9 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %product_code9, align 2
  %71 = trunc i16 %70 to i8
  %trunc = and i8 %71, -16
  %72 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end44 [
    i8 64, label %do.body10
    i8 96, label %do.body22
  ]

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_load_dwz.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_load_dwz, %if.then15)) #7
          to label %do.body48 [label %if.then15], !srcloc !247

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ts, align 4
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_load_dwz.__UNIQUE_ID_ddebug293, ptr noundef %dev17, ptr noundef nonnull @.str.40) #7
  br label %do.body48

do.body22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_load_dwz.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_load_dwz, %if.then34)) #7
          to label %do.body48 [label %if.then34], !srcloc !247

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ts, align 4
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_load_dwz.__UNIQUE_ID_ddebug294, ptr noundef %dev36, ptr noundef nonnull @.str.41) #7
  br label %do.body48

do.end44:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %70 to i32
  %77 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ts, align 4
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.43, i32 noundef %conv) #10
  br label %cleanup

do.body48:                                        ; preds = %if.then34, %do.body22, %if.then15, %do.body10
  %.sink133 = phi i32 [ 49152, %do.body10 ], [ 49152, %if.then15 ], [ 65536, %do.body22 ], [ 65536, %if.then34 ]
  %.sink = phi i32 [ 3211264, %do.body10 ], [ 3211264, %if.then15 ], [ 3146363, %do.body22 ], [ 3146363, %if.then34 ]
  %fw_size = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 14
  %79 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink133, ptr %fw_size, align 4
  %nvm_mask = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 15
  %80 = ptrtoint ptr %nvm_mask to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.sink, ptr %nvm_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_load_dwz.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_load_dwz, %if.then60)) #7
          to label %cleanup [label %if.then60], !srcloc !247

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ts, align 4
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  %release_ver = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 13, i32 13
  %83 = ptrtoint ptr %release_ver to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %release_ver, align 4
  %conv64 = zext i16 %84 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_load_dwz.__UNIQUE_ID_ddebug295, ptr noundef %dev62, ptr noundef nonnull @.str.45, i32 noundef %conv64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body48, %do.end44, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.end ], [ -22, %do.end44 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_init_input(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #7
  %input_dev = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.63, ptr %call, align 8
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %id, align 4
  %7 = load ptr, ptr %input_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ts, ptr %driver_data.i.i, align 4
  %9 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %9, i32 noundef 3, i32 noundef 53) #7
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_capability(ptr noundef %11, i32 noundef 3, i32 noundef 54) #7
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %13, i32 noundef 58, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #7
  %14 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %15, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  tail call void @input_set_abs_params(ptr noundef %17, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #7
  %18 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_dev, align 4
  %prop = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 3
  tail call void @touchscreen_parse_properties(ptr noundef %19, i1 noundef zeroext true, ptr noundef %prop) #7
  %20 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.end.if.then15_crit_edge, label %lor.lhs.false

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %max_y = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp14 = icmp eq i32 %23, 0
  br i1 %cmp14, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %val.i, align 2, !annotation !248
  %25 = getelementptr inbounds [2 x i16], ptr %val.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %25, align 2, !annotation !248
  %reg.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 2
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef 40, ptr noundef nonnull %val.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %hideep_get_axis_info.exit.thread148

hideep_get_axis_info.exit.thread148:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %val.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #7
  %conv.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %prop, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %25, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #7
  %conv5.i = zext i16 %35 to i32
  %max_y.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %max_y.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv5.i, ptr %max_y.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_get_axis_info.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_init_input, %hideep_get_axis_info.exit.thread)) #7
          to label %hideep_get_axis_info.exit [label %hideep_get_axis_info.exit.thread], !srcloc !247

hideep_get_axis_info.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prop, align 4
  %41 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_y.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_get_axis_info.__UNIQUE_ID_ddebug304, ptr noundef %dev.i, ptr noundef nonnull @.str.74, i32 noundef %40, i32 noundef %42) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end20

hideep_get_axis_info.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end20

if.end20:                                         ; preds = %hideep_get_axis_info.exit, %hideep_get_axis_info.exit.thread, %lor.lhs.false.if.end20_crit_edge
  %43 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input_dev, align 4
  %call22 = call i32 @input_mt_init_slots(ptr noundef %44, i32 noundef 10, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call.i147 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.64, ptr noundef null, i32 noundef 0) #7
  %key_num = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 11
  %45 = ptrtoint ptr %key_num to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call.i147, ptr %key_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i147)
  %cmp28 = icmp sgt i32 %call.i147, 3
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %call.i147) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i147)
  %cmp36 = icmp slt i32 %call.i147, 1
  br i1 %cmp36, label %do.body38, label %if.else

do.body38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_init_input.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_init_input, %if.then43)) #7
          to label %if.end82 [label %if.then43], !srcloc !247

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_init_input.__UNIQUE_ID_ddebug305, ptr noundef %dev1, ptr noundef nonnull @.str.68) #7
  br label %if.end82

if.else:                                          ; preds = %if.end34
  %key_codes = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 12
  %call48 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.64, ptr noundef %key_codes, i32 noundef %call.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end67, label %do.body51

do.body51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_init_input.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_init_input, %if.then63)) #7
          to label %cleanup [label %if.then63], !srcloc !247

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_init_input.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %call48) #7
  br label %cleanup

if.end67:                                         ; preds = %if.else
  %46 = ptrtoint ptr %key_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool69.not = icmp eq i32 %47, 0
  br i1 %tobool69.not, label %if.end67.if.end82_crit_edge, label %if.then70

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then70:                                        ; preds = %if.end67
  %48 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_dev, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %key_codes, ptr %keycode, align 4
  %51 = load ptr, ptr %input_dev, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %keycodesize, align 8
  %53 = ptrtoint ptr %key_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %key_num, align 4
  %55 = load ptr, ptr %input_dev, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 15
  %56 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %keycodemax, align 4
  %57 = load i32, ptr %key_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp78151 = icmp sgt i32 %57, 0
  br i1 %cmp78151, label %if.then70.for.body_crit_edge, label %if.then70.if.end82_crit_edge

if.then70.if.end82_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then70.for.body_crit_edge:                     ; preds = %if.then70
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then70.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then70.for.body_crit_edge ]
  %58 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input_dev, align 4
  %arrayidx = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 12, i32 %i.0152
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  call void @input_set_capability(ptr noundef %59, i32 noundef 1, i32 noundef %61) #7
  %inc = add nuw nsw i32 %i.0152, 1
  %62 = ptrtoint ptr %key_num to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key_num, align 4
  %cmp78 = icmp slt i32 %inc, %63
  br i1 %cmp78, label %for.body.for.body_crit_edge, label %for.body.if.end82_crit_edge

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end82:                                         ; preds = %for.body.if.end82_crit_edge, %if.then70.if.end82_crit_edge, %if.end67.if.end82_crit_edge, %if.then43, %do.body38
  %64 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev, align 4
  %call84 = call i32 @input_register_device(ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %do.end89

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71, i32 noundef %call84) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.end82.cleanup_crit_edge, %if.then63, %do.body51, %do.end32, %if.end20.cleanup_crit_edge, %hideep_get_axis_info.exit.thread148, %do.end
  %retval.0 = phi i32 [ -22, %do.end32 ], [ %call84, %do.end89 ], [ -12, %do.end ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call48, %if.then63 ], [ 0, %if.end82.cleanup_crit_edge ], [ %call.i, %hideep_get_axis_info.exit.thread148 ], [ %call48, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.hideep_ts, ptr %handle, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %xfer_buf = getelementptr inbounds %struct.hideep_ts, ptr %handle, i32 0, i32 10
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 576, ptr noundef %xfer_buf, i32 noundef 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end3

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %call) #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hideep_parse_and_report(ptr noundef %handle)
  br label %out

out:                                              ; preds = %if.end, %do.end3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_enter_pgm(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %msg.i.i93.i = alloca %struct.i2c_msg, align 4
  %msg.i.i77.i = alloca %struct.i2c_msg, align 4
  %msg.i.i61.i = alloca %struct.i2c_msg, align 4
  %msg.i.i45.i = alloca %struct.i2c_msg, align 4
  %msg.i.i29.i = alloca %struct.i2c_msg, align 4
  %msg.i.i13.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i41 = alloca %struct.i2c_msg, align 4
  %msg.i.i20.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i.i = alloca i32, align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %p2.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 2
  %0 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %len5.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 3
  %addr11.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 4
  %payload.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 8
  %1 = getelementptr inbounds i8, ptr %msg.i.i20.i, i32 4
  %flags.i.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 0, i32 1
  %buf.i.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 1
  %flags8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 1, i32 1
  %len9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 1, i32 2
  %buf10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i20.i, i32 1, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %entry
  %dec67 = phi i32 [ 9, %entry ], [ %dec, %if.end20.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %p2.i) #7
  %2 = ptrtoint ptr %p2.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -8291, ptr %p2.i, align 2
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %4, i32 noundef 44857, ptr noundef nonnull %p2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %call.i) #10
  br label %hideep_pgm_get_pattern.exit.thread

if.end.i:                                         ; preds = %while.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 655359, ptr %0, align 4
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %addr2.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %addr2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr2.i.i.i, align 2
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i.i.i, align 4
  %13 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i.i, align 2
  %14 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %len5.i.i.i, ptr %buf.i.i.i, align 4
  %15 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %len5.i.i.i, align 1
  %16 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1342177288, ptr %addr11.i.i.i, align 4
  %17 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %payload.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp14.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  br i1 %cmp14.not.i.i.i, label %if.end4.i, label %hideep_pgm_w_reg.exit.i

hideep_pgm_w_reg.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp17.i.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp17.i.i.i, i32 %call.i.i.i, i32 -5
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.59, i32 noundef 1342177288, i32 noundef 1, i32 noundef %spec.select.i.i.i) #10
  br label %hideep_pgm_get_pattern.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #7
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %data.i.i, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i20.i) #7
  %23 = call ptr @memset(ptr %1, i32 255, i32 16)
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 4
  %addr2.i.i21.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %addr2.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr2.i.i21.i, align 2
  %28 = ptrtoint ptr %msg.i.i20.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i.i20.i, align 4
  %29 = ptrtoint ptr %flags.i.i22.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i22.i, align 2
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 5, ptr %1, align 4
  %31 = ptrtoint ptr %buf.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %len5.i.i.i, ptr %buf.i.i23.i, align 4
  %32 = load i16, ptr %addr2.i.i21.i, align 2
  %33 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayinit.element.i.i.i, align 4
  %34 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags8.i.i.i, align 2
  %35 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4, ptr %len9.i.i.i, align 4
  %36 = ptrtoint ptr %buf10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data.i.i, ptr %buf10.i.i.i, align 4
  %37 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %len5.i.i.i, align 1
  %38 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1375731956, ptr %addr11.i.i.i, align 4
  %adapter.i.i24.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i.i24.i, align 8
  %call.i.i25.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i.i20.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i25.i)
  %cmp19.not.i.i.i = icmp eq i32 %call.i.i25.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i20.i) #7
  br i1 %cmp19.not.i.i.i, label %hideep_pgm_get_pattern.exit.thread61, label %hideep_pgm_get_pattern.exit

hideep_pgm_get_pattern.exit.thread61:             ; preds = %if.end4.i
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 967810527, i32 %42)
  %cmp.not = icmp eq i32 %42, 967810527
  br i1 %cmp.not, label %do.body9, label %do.end5

hideep_pgm_get_pattern.exit.thread:               ; preds = %hideep_pgm_w_reg.exit.i, %do.end.i
  %retval.0.i40.ph = phi i32 [ %spec.select.i.i.i, %hideep_pgm_w_reg.exit.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p2.i) #7
  br label %do.end

hideep_pgm_get_pattern.exit:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %cmp22.i.i.i = icmp slt i32 %call.i.i25.i, 0
  %spec.select.i.i26.i = select i1 %cmp22.i.i.i, i32 %call.i.i25.i, i32 -5
  %43 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ts, align 4
  %dev.i27.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i27.i, ptr noundef nonnull @.str.57, i32 noundef 1375731956, i32 noundef %spec.select.i.i26.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %p2.i) #7
  br label %do.end

do.end:                                           ; preds = %hideep_pgm_get_pattern.exit, %hideep_pgm_get_pattern.exit.thread
  %retval.0.i4060 = phi i32 [ %retval.0.i40.ph, %hideep_pgm_get_pattern.exit.thread ], [ %spec.select.i.i26.i, %hideep_pgm_get_pattern.exit ]
  %45 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i4060) #10
  br label %if.end20

do.end5:                                          ; preds = %hideep_pgm_get_pattern.exit.thread61
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ts, align 4
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %42) #10
  br label %if.end20

do.body9:                                         ; preds = %hideep_pgm_get_pattern.exit.thread61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_enter_pgm.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_enter_pgm, %if.then14)) #7
          to label %do.end18 [label %if.then14], !srcloc !247

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ts, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_enter_pgm.__UNIQUE_ID_ddebug288, ptr noundef %dev16, ptr noundef nonnull @.str.51) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i41) #7
  %51 = getelementptr inbounds i8, ptr %msg.i.i.i41, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 655359, ptr %51, align 4
  %53 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ts, align 4
  %addr2.i.i.i42 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %addr2.i.i.i42 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr2.i.i.i42, align 2
  %57 = ptrtoint ptr %msg.i.i.i41 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i.i.i41, align 4
  %flags.i.i.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i41, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i.i.i43 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i.i.i43, align 2
  %buf.i.i.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i41, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %len5.i.i.i, ptr %buf.i.i.i44, align 4
  %60 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %len5.i.i.i, align 1
  %61 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1375731732, ptr %addr11.i.i.i, align 4
  %62 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %payload.i.i.i, align 4
  %adapter.i.i.i48 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 3
  %63 = ptrtoint ptr %adapter.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i.i.i48, align 8
  %call.i.i.i49 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i.i.i41, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i49)
  %cmp14.not.i.i.i50 = icmp eq i32 %call.i.i.i49, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i41) #7
  br i1 %cmp14.not.i.i.i50, label %do.end18.hideep_pgm_w_reg.exit.i54_crit_edge, label %do.end.i.i

do.end18.hideep_pgm_w_reg.exit.i54_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit.i54

do.end.i.i:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i49)
  %cmp17.i.i.i51 = icmp slt i32 %call.i.i.i49, 0
  %spec.select.i.i.i52 = select i1 %cmp17.i.i.i51, i32 %call.i.i.i49, i32 -5
  %65 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ts, align 4
  %dev.i.i53 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i53, ptr noundef nonnull @.str.59, i32 noundef 1375731732, i32 noundef 0, i32 noundef %spec.select.i.i.i52) #10
  br label %hideep_pgm_w_reg.exit.i54

hideep_pgm_w_reg.exit.i54:                        ; preds = %do.end.i.i, %do.end18.hideep_pgm_w_reg.exit.i54_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i13.i) #7
  %67 = getelementptr inbounds i8, ptr %msg.i.i13.i, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 655359, ptr %67, align 4
  %69 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ts, align 4
  %addr2.i.i14.i = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %addr2.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr2.i.i14.i, align 2
  %73 = ptrtoint ptr %msg.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %msg.i.i13.i, align 4
  %flags.i.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i.i15.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i.i15.i, align 2
  %buf.i.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %len5.i.i.i, ptr %buf.i.i16.i, align 4
  %76 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -128, ptr %len5.i.i.i, align 1
  %77 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1375731716, ptr %addr11.i.i.i, align 4
  %78 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %payload.i.i.i, align 4
  %adapter.i.i20.i = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %79 = ptrtoint ptr %adapter.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i.i20.i, align 8
  %call.i.i21.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i.i13.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i21.i)
  %cmp14.not.i.i22.i = icmp eq i32 %call.i.i21.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i13.i) #7
  br i1 %cmp14.not.i.i22.i, label %hideep_pgm_w_reg.exit.i54.hideep_pgm_w_reg.exit28.i_crit_edge, label %do.end.i26.i

hideep_pgm_w_reg.exit.i54.hideep_pgm_w_reg.exit28.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit28.i

do.end.i26.i:                                     ; preds = %hideep_pgm_w_reg.exit.i54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.i)
  %cmp17.i.i23.i = icmp slt i32 %call.i.i21.i, 0
  %spec.select.i.i24.i = select i1 %cmp17.i.i23.i, i32 %call.i.i21.i, i32 -5
  %81 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ts, align 4
  %dev.i25.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i25.i, ptr noundef nonnull @.str.59, i32 noundef 1375731716, i32 noundef 0, i32 noundef %spec.select.i.i24.i) #10
  br label %hideep_pgm_w_reg.exit28.i

hideep_pgm_w_reg.exit28.i:                        ; preds = %do.end.i26.i, %hideep_pgm_w_reg.exit.i54.hideep_pgm_w_reg.exit28.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i29.i) #7
  %83 = getelementptr inbounds i8, ptr %msg.i.i29.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 655359, ptr %83, align 4
  %85 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ts, align 4
  %addr2.i.i30.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %addr2.i.i30.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %addr2.i.i30.i, align 2
  %89 = ptrtoint ptr %msg.i.i29.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %msg.i.i29.i, align 4
  %flags.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i.i31.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i.i31.i, align 2
  %buf.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %len5.i.i.i, ptr %buf.i.i32.i, align 4
  %92 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -128, ptr %len5.i.i.i, align 1
  %93 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1375731724, ptr %addr11.i.i.i, align 4
  %94 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 255, ptr %payload.i.i.i, align 4
  %adapter.i.i36.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i.i36.i, align 8
  %call.i.i37.i = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i.i29.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i37.i)
  %cmp14.not.i.i38.i = icmp eq i32 %call.i.i37.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i29.i) #7
  br i1 %cmp14.not.i.i38.i, label %hideep_pgm_w_reg.exit28.i.hideep_pgm_w_reg.exit44.i_crit_edge, label %do.end.i42.i

hideep_pgm_w_reg.exit28.i.hideep_pgm_w_reg.exit44.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit44.i

do.end.i42.i:                                     ; preds = %hideep_pgm_w_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp17.i.i39.i = icmp slt i32 %call.i.i37.i, 0
  %spec.select.i.i40.i = select i1 %cmp17.i.i39.i, i32 %call.i.i37.i, i32 -5
  %97 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ts, align 4
  %dev.i41.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i41.i, ptr noundef nonnull @.str.59, i32 noundef 1375731724, i32 noundef 255, i32 noundef %spec.select.i.i40.i) #10
  br label %hideep_pgm_w_reg.exit44.i

hideep_pgm_w_reg.exit44.i:                        ; preds = %do.end.i42.i, %hideep_pgm_w_reg.exit28.i.hideep_pgm_w_reg.exit44.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i45.i) #7
  %99 = getelementptr inbounds i8, ptr %msg.i.i45.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 655359, ptr %99, align 4
  %101 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ts, align 4
  %addr2.i.i46.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %addr2.i.i46.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %addr2.i.i46.i, align 2
  %105 = ptrtoint ptr %msg.i.i45.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %msg.i.i45.i, align 4
  %flags.i.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i45.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i.i47.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i.i47.i, align 2
  %buf.i.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i45.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %len5.i.i.i, ptr %buf.i.i48.i, align 4
  %108 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -128, ptr %len5.i.i.i, align 1
  %109 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1375731720, ptr %addr11.i.i.i, align 4
  %110 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %payload.i.i.i, align 4
  %adapter.i.i52.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %111 = ptrtoint ptr %adapter.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter.i.i52.i, align 8
  %call.i.i53.i = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i.i45.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i53.i)
  %cmp14.not.i.i54.i = icmp eq i32 %call.i.i53.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i45.i) #7
  br i1 %cmp14.not.i.i54.i, label %hideep_pgm_w_reg.exit44.i.hideep_pgm_w_reg.exit60.i_crit_edge, label %do.end.i58.i

hideep_pgm_w_reg.exit44.i.hideep_pgm_w_reg.exit60.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit60.i

do.end.i58.i:                                     ; preds = %hideep_pgm_w_reg.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp17.i.i55.i = icmp slt i32 %call.i.i53.i, 0
  %spec.select.i.i56.i = select i1 %cmp17.i.i55.i, i32 %call.i.i53.i, i32 -5
  %113 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ts, align 4
  %dev.i57.i = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.59, i32 noundef 1375731720, i32 noundef 1, i32 noundef %spec.select.i.i56.i) #10
  br label %hideep_pgm_w_reg.exit60.i

hideep_pgm_w_reg.exit60.i:                        ; preds = %do.end.i58.i, %hideep_pgm_w_reg.exit44.i.hideep_pgm_w_reg.exit60.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  %115 = getelementptr inbounds i8, ptr %msg.i.i61.i, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 655359, ptr %115, align 4
  %117 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ts, align 4
  %addr2.i.i62.i = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %addr2.i.i62.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %addr2.i.i62.i, align 2
  %121 = ptrtoint ptr %msg.i.i61.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %msg.i.i61.i, align 4
  %flags.i.i63.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 1
  %122 = ptrtoint ptr %flags.i.i63.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i.i63.i, align 2
  %buf.i.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 3
  %123 = ptrtoint ptr %buf.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %len5.i.i.i, ptr %buf.i.i64.i, align 4
  %124 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -128, ptr %len5.i.i.i, align 1
  %125 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1375731744, ptr %addr11.i.i.i, align 4
  %126 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %payload.i.i.i, align 4
  %adapter.i.i68.i = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 3
  %127 = ptrtoint ptr %adapter.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter.i.i68.i, align 8
  %call.i.i69.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i.i61.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i69.i)
  %cmp14.not.i.i70.i = icmp eq i32 %call.i.i69.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  br i1 %cmp14.not.i.i70.i, label %hideep_pgm_w_reg.exit60.i.hideep_pgm_w_reg.exit76.i_crit_edge, label %do.end.i74.i

hideep_pgm_w_reg.exit60.i.hideep_pgm_w_reg.exit76.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit76.i

do.end.i74.i:                                     ; preds = %hideep_pgm_w_reg.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %cmp17.i.i71.i = icmp slt i32 %call.i.i69.i, 0
  %spec.select.i.i72.i = select i1 %cmp17.i.i71.i, i32 %call.i.i69.i, i32 -5
  %129 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ts, align 4
  %dev.i73.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73.i, ptr noundef nonnull @.str.59, i32 noundef 1375731744, i32 noundef 1, i32 noundef %spec.select.i.i72.i) #10
  br label %hideep_pgm_w_reg.exit76.i

hideep_pgm_w_reg.exit76.i:                        ; preds = %do.end.i74.i, %hideep_pgm_w_reg.exit60.i.hideep_pgm_w_reg.exit76.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i77.i) #7
  %131 = getelementptr inbounds i8, ptr %msg.i.i77.i, i32 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 655359, ptr %131, align 4
  %133 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ts, align 4
  %addr2.i.i78.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %addr2.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %addr2.i.i78.i, align 2
  %137 = ptrtoint ptr %msg.i.i77.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %msg.i.i77.i, align 4
  %flags.i.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i77.i, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i.i79.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i.i79.i, align 2
  %buf.i.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i77.i, i32 0, i32 3
  %139 = ptrtoint ptr %buf.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %len5.i.i.i, ptr %buf.i.i80.i, align 4
  %140 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -128, ptr %len5.i.i.i, align 1
  %141 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1358954508, ptr %addr11.i.i.i, align 4
  %142 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3, ptr %payload.i.i.i, align 4
  %adapter.i.i84.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 3
  %143 = ptrtoint ptr %adapter.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter.i.i84.i, align 8
  %call.i.i85.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i.i77.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i85.i)
  %cmp14.not.i.i86.i = icmp eq i32 %call.i.i85.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i77.i) #7
  br i1 %cmp14.not.i.i86.i, label %hideep_pgm_w_reg.exit76.i.hideep_pgm_w_reg.exit92.i_crit_edge, label %do.end.i90.i

hideep_pgm_w_reg.exit76.i.hideep_pgm_w_reg.exit92.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit92.i

do.end.i90.i:                                     ; preds = %hideep_pgm_w_reg.exit76.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp17.i.i87.i = icmp slt i32 %call.i.i85.i, 0
  %spec.select.i.i88.i = select i1 %cmp17.i.i87.i, i32 %call.i.i85.i, i32 -5
  %145 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ts, align 4
  %dev.i89.i = getelementptr inbounds %struct.i2c_client, ptr %146, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89.i, ptr noundef nonnull @.str.59, i32 noundef 1358954508, i32 noundef 3, i32 noundef %spec.select.i.i88.i) #10
  br label %hideep_pgm_w_reg.exit92.i

hideep_pgm_w_reg.exit92.i:                        ; preds = %do.end.i90.i, %hideep_pgm_w_reg.exit76.i.hideep_pgm_w_reg.exit92.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i93.i) #7
  %147 = getelementptr inbounds i8, ptr %msg.i.i93.i, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 655359, ptr %147, align 4
  %149 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ts, align 4
  %addr2.i.i94.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %addr2.i.i94.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %addr2.i.i94.i, align 2
  %153 = ptrtoint ptr %msg.i.i93.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %msg.i.i93.i, align 4
  %flags.i.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93.i, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i.i95.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i.i95.i, align 2
  %buf.i.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93.i, i32 0, i32 3
  %155 = ptrtoint ptr %buf.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %len5.i.i.i, ptr %buf.i.i96.i, align 4
  %156 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -128, ptr %len5.i.i.i, align 1
  %157 = ptrtoint ptr %addr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1358954512, ptr %addr11.i.i.i, align 4
  %158 = ptrtoint ptr %payload.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %payload.i.i.i, align 4
  %adapter.i.i100.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 3
  %159 = ptrtoint ptr %adapter.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %adapter.i.i100.i, align 8
  %call.i.i101.i = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %msg.i.i93.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i101.i)
  %cmp14.not.i.i102.i = icmp eq i32 %call.i.i101.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i93.i) #7
  br i1 %cmp14.not.i.i102.i, label %hideep_pgm_w_reg.exit92.i.hideep_pgm_set.exit_crit_edge, label %do.end.i106.i

hideep_pgm_w_reg.exit92.i.hideep_pgm_set.exit_crit_edge: ; preds = %hideep_pgm_w_reg.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_set.exit

do.end.i106.i:                                    ; preds = %hideep_pgm_w_reg.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %cmp17.i.i103.i = icmp slt i32 %call.i.i101.i, 0
  %spec.select.i.i104.i = select i1 %cmp17.i.i103.i, i32 %call.i.i101.i, i32 -5
  %161 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ts, align 4
  %dev.i105.i = getelementptr inbounds %struct.i2c_client, ptr %162, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i105.i, ptr noundef nonnull @.str.59, i32 noundef 1358954512, i32 noundef 0, i32 noundef %spec.select.i.i104.i) #10
  br label %hideep_pgm_set.exit

hideep_pgm_set.exit:                              ; preds = %do.end.i106.i, %hideep_pgm_w_reg.exit92.i.hideep_pgm_set.exit_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  br label %cleanup

if.end20:                                         ; preds = %do.end5, %do.end
  %dec = add nsw i32 %dec67, -1
  %tobool.not = icmp eq i32 %dec67, 0
  br i1 %tobool.not, label %do.end23, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ts, align 4
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %164, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.53) #10
  %call26 = call fastcc i32 @hideep_pgm_w_reg(ptr noundef %ts, i32 noundef 1375731736, i32 noundef 1000)
  %call27 = call fastcc i32 @hideep_pgm_w_reg(ptr noundef %ts, i32 noundef 1375731732, i32 noundef 3)
  %call28 = call fastcc i32 @hideep_pgm_w_reg(ptr noundef %ts, i32 noundef 1375731732, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %hideep_pgm_set.exit
  %retval.0 = phi i32 [ 0, %hideep_pgm_set.exit ], [ -5, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_pgm_w_reg(ptr noundef %ts, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 655359, ptr %0, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2.i, align 2
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %len5.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %len5.i, ptr %buf.i, align 4
  %9 = ptrtoint ptr %len5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %len5.i, align 1
  %addr11.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %addr11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %addr, ptr %addr11.i, align 4
  %payload.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 8
  %11 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %payload.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp14.not.i = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br i1 %cmp14.not.i, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp17.i, i32 %call.i, i32 -5
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %addr, i32 noundef %val, i32 noundef %spec.select.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hideep_parse_and_report(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfer_buf = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10
  %arrayidx = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 2
  %arrayidx2 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 102
  %0 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xfer_buf, align 4
  %arrayidx6 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %3 to i32
  %and = and i32 %conv7, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_parse_and_report.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_parse_and_report, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  %and11 = and i32 %conv7, 240
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_parse_and_report.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef %and, i32 noundef %and11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = tail call i8 @llvm.umin.i8(i8 %1, i8 10)
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1667.not = icmp eq i8 %6, 0
  br i1 %cmp1667.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %input_dev = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %hideep_report_slot.exit.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %hideep_report_slot.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 4
  %index.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 6
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index.i, align 1
  %12 = and i8 %11, 15
  %and.i = zext i8 %12 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %and.i) #7
  %type.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 5
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp ne i8 %14, 1
  %cond.i = zext i1 %cmp.i to i32
  %flag.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 4
  %15 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flag.i, align 1
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %9, i32 noundef %cond.i, i1 noundef zeroext %tobool.not.i) #7
  %18 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flag.i, align 1
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i = icmp eq i8 %20, 0
  br i1 %tobool8.not.i, label %if.then.i, label %for.body.hideep_report_slot.exit_crit_edge

for.body.hideep_report_slot.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_report_slot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %conv10.i = zext i16 %23 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 53, i32 noundef %conv10.i) #7
  %y.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 1
  %24 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %y.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #7
  %conv12.i = zext i16 %26 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 54, i32 noundef %conv12.i) #7
  %z.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 2
  %27 = ptrtoint ptr %z.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %z.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #7
  %conv14.i = zext i16 %29 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 58, i32 noundef %conv14.i) #7
  %w.i = getelementptr %struct.hideep_event, ptr %arrayidx, i32 %i.068, i32 3
  %30 = ptrtoint ptr %w.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %w.i, align 2
  %conv15.i = zext i8 %31 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 48, i32 noundef %conv15.i) #7
  br label %hideep_report_slot.exit

hideep_report_slot.exit:                          ; preds = %if.then.i, %for.body.hideep_report_slot.exit_crit_edge
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %hideep_report_slot.exit.for.end_crit_edge, label %hideep_report_slot.exit.for.body_crit_edge

hideep_report_slot.exit.for.body_crit_edge:       ; preds = %hideep_report_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

hideep_report_slot.exit.for.end_crit_edge:        ; preds = %hideep_report_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %hideep_report_slot.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %32 = tail call i32 @llvm.umin.i32(i32 %and, i32 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2670.not = icmp eq i32 %32, 0
  br i1 %cmp2670.not, label %for.end.for.end38_crit_edge, label %for.body28.lr.ph

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body28.lr.ph:                                 ; preds = %for.end
  %input_dev30 = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2, align 1
  %35 = ptrtoint ptr %input_dev30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev30, align 4
  %conv31 = zext i8 %34 to i32
  %and32 = and i32 %conv31, 15
  %arrayidx33 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 12, i32 %and32
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33, align 4
  %and35.lobit = lshr i32 %conv31, 7
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef %38, i32 noundef %and35.lobit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %exitcond72.not = icmp eq i32 %32, 1
  br i1 %exitcond72.not, label %for.body28.lr.ph.for.end38_crit_edge, label %for.body28.1

for.body28.lr.ph.for.end38_crit_edge:             ; preds = %for.body28.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body28.1:                                     ; preds = %for.body28.lr.ph
  %arrayidx29.1 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 104
  %39 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx29.1, align 1
  %41 = ptrtoint ptr %input_dev30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev30, align 4
  %conv31.1 = zext i8 %40 to i32
  %and32.1 = and i32 %conv31.1, 15
  %arrayidx33.1 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 12, i32 %and32.1
  %43 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx33.1, align 4
  %and35.lobit.1 = lshr i32 %conv31.1, 7
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef %44, i32 noundef %and35.lobit.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %exitcond72.not.1 = icmp eq i32 %32, 2
  br i1 %exitcond72.not.1, label %for.body28.1.for.end38_crit_edge, label %for.body28.2

for.body28.1.for.end38_crit_edge:                 ; preds = %for.body28.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.body28.2:                                     ; preds = %for.body28.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29.2 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 106
  %45 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx29.2, align 1
  %47 = ptrtoint ptr %input_dev30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input_dev30, align 4
  %conv31.2 = zext i8 %46 to i32
  %and32.2 = and i32 %conv31.2, 15
  %arrayidx33.2 = getelementptr %struct.hideep_ts, ptr %ts, i32 0, i32 12, i32 %and32.2
  %49 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx33.2, align 4
  %and35.lobit.2 = lshr i32 %conv31.2, 7
  tail call void @input_event(ptr noundef %48, i32 noundef 1, i32 noundef %50, i32 noundef %and35.lobit.2) #7
  br label %for.end38

for.end38:                                        ; preds = %for.body28.2, %for.body28.1.for.end38_crit_edge, %for.body28.lr.ph.for.end38_crit_edge, %for.end.for.end38_crit_edge
  %input_dev39 = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 1
  %51 = ptrtoint ptr %input_dev39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input_dev39, align 4
  tail call void @input_mt_sync_frame(ptr noundef %52) #7
  %53 = ptrtoint ptr %input_dev39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input_dev39, align 4
  tail call void @input_event(ptr noundef %54, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %release_ver = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 13, i32 13
  %2 = ptrtoint ptr %release_ver to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %release_ver, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.80, i32 noundef %conv) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_product_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %product_id = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 13, i32 21
  %2 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product_id, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.80, i32 noundef %conv) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_update_fw(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #7
  %2 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mode, align 4, !annotation !248
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %product_id = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 13, i32 21
  %4 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id, align 2
  %conv = zext i16 %5 to i32
  %call2 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.83, i32 noundef %conv) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %call2, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, ptr noundef nonnull %call2, i32 noundef %call6) #10
  br label %out_free_fw_name

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_entry, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %rem = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %9) #10
  br label %out_release_fw

if.end16:                                         ; preds = %if.end9
  %fw_size = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ugt i32 %9, %11
  br i1 %cmp, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %9, i32 noundef %11) #10
  br label %out_release_fw

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev_mutex = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %13) #7
  %14 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %call27 = call fastcc i32 @hideep_update_firmware(ptr noundef %1, ptr noundef %17, i32 noundef %19)
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %21) #7
  call void @mutex_unlock(ptr noundef %dev_mutex) #7
  br label %out_release_fw

out_release_fw:                                   ; preds = %if.end25, %do.end22, %do.end14
  %error.0 = phi i32 [ -22, %do.end14 ], [ -27, %do.end22 ], [ %call27, %if.end25 ]
  %22 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %23) #7
  br label %out_free_fw_name

out_free_fw_name:                                 ; preds = %out_release_fw, %do.end
  %error.1 = phi i32 [ %call6, %do.end ], [ %error.0, %out_release_fw ]
  call void @kfree(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool30.not = icmp eq i32 %error.1, 0
  %spec.select = select i1 %tobool30.not, i32 %count, i32 %error.1
  br label %cleanup

cleanup:                                          ; preds = %out_free_fw_name, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %out_free_fw_name ], [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_update_firmware(ptr noundef %ts, ptr nocapture noundef readonly %ucode, i32 noundef %ucode_len) unnamed_addr #2 align 64 {
entry:
  %msg.i.i85 = alloca %struct.i2c_msg, align 4
  %msg.i.i69 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i12.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i156.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i140.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i124.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i107.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i91.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i75.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i59.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i43.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i55.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i151.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i135.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i119.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i103.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i87.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i71.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i55.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i39.i.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i29.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i.i.i.i = alloca i32, align 4
  %msg.i.i.i.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_update_firmware.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_update_firmware, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_update_firmware.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.93) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @hideep_enter_pgm(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %payload.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 8
  %2 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 4
  %flags.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %buf.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 3
  %len5.i.i.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 3
  %addr11.i.i.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 4
  %3 = getelementptr inbounds i8, ptr %msg.i.i29.i.i.i, i32 4
  %flags.i.i31.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 0, i32 1
  %buf.i.i32.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 1
  %flags8.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 1, i32 1
  %len9.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 1, i32 2
  %buf10.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i29.i.i.i, i32 1, i32 3
  %4 = getelementptr inbounds i8, ptr %msg.i.i39.i.i.i, i32 4
  %flags.i.i41.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i39.i.i.i, i32 0, i32 1
  %buf.i.i42.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i39.i.i.i, i32 0, i32 3
  %nvm_mask.i.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 15
  %5 = getelementptr inbounds i8, ptr %msg.i.i55.i.i.i, i32 4
  %flags.i.i57.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55.i.i.i, i32 0, i32 1
  %buf.i.i58.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55.i.i.i, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %msg.i.i71.i.i.i, i32 4
  %flags.i.i73.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71.i.i.i, i32 0, i32 1
  %buf.i.i74.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71.i.i.i, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %msg.i.i87.i.i.i, i32 4
  %flags.i.i89.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i87.i.i.i, i32 0, i32 1
  %buf.i.i90.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i87.i.i.i, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %msg.i.i103.i.i.i, i32 4
  %flags.i.i105.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i103.i.i.i, i32 0, i32 1
  %buf.i.i106.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i103.i.i.i, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %msg.i.i119.i.i.i, i32 4
  %flags.i.i121.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i119.i.i.i, i32 0, i32 1
  %buf.i.i122.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i119.i.i.i, i32 0, i32 3
  %10 = getelementptr inbounds i8, ptr %msg.i.i135.i.i.i, i32 4
  %flags.i.i137.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135.i.i.i, i32 0, i32 1
  %buf.i.i138.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135.i.i.i, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %msg.i.i151.i.i.i, i32 4
  %flags.i.i153.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i.i.i, i32 0, i32 1
  %buf.i.i154.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ucode_len)
  %cmp.not81.i.i = icmp eq i32 %ucode_len, 0
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1
  %flags8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 1
  %len9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 2
  %buf10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 3
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i55.i.i, i32 4
  %flags.i.i.i59.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i55.i.i, i32 0, i32 1
  %buf.i.i.i60.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i55.i.i, i32 0, i32 3
  %14 = getelementptr inbounds i8, ptr %msg.i.i43.i.i.i, i32 4
  %flags.i.i45.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i43.i.i.i, i32 0, i32 1
  %buf.i.i46.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i43.i.i.i, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %msg.i.i59.i.i.i, i32 4
  %flags.i.i61.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i.i.i, i32 0, i32 1
  %buf.i.i62.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i.i.i, i32 0, i32 3
  %16 = getelementptr inbounds i8, ptr %msg.i.i75.i.i.i, i32 4
  %flags.i.i77.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i75.i.i.i, i32 0, i32 1
  %buf.i.i78.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i75.i.i.i, i32 0, i32 3
  %17 = getelementptr inbounds i8, ptr %msg.i.i91.i.i.i, i32 4
  %flags.i.i93.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i91.i.i.i, i32 0, i32 1
  %buf.i.i94.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i91.i.i.i, i32 0, i32 3
  %18 = getelementptr inbounds i8, ptr %msg.i.i107.i.i.i, i32 4
  %flags.i.i109.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i107.i.i.i, i32 0, i32 1
  %buf.i.i110.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i107.i.i.i, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %msg.i.i124.i.i.i, i32 4
  %flags.i.i126.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i124.i.i.i, i32 0, i32 1
  %buf.i.i127.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i124.i.i.i, i32 0, i32 3
  %21 = getelementptr inbounds i8, ptr %msg.i.i140.i.i.i, i32 4
  %flags.i.i142.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i140.i.i.i, i32 0, i32 1
  %buf.i.i143.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i140.i.i.i, i32 0, i32 3
  %22 = getelementptr inbounds i8, ptr %msg.i.i156.i.i.i, i32 4
  %flags.i.i158.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i156.i.i.i, i32 0, i32 1
  %buf.i.i159.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i156.i.i.i, i32 0, i32 3
  %23 = getelementptr inbounds i8, ptr %msg.i.i12.i, i32 4
  %flags.i.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 0, i32 1
  %buf.i.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 0, i32 3
  %arrayinit.element.i.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 1
  %flags8.i.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 1, i32 1
  %len9.i.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 1, i32 2
  %buf10.i.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i12.i, i32 1, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end6
  %dec57.i = phi i32 [ 2, %if.end6 ], [ %dec.i, %if.end5.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #7
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 655359, ptr %2, align 4
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ts, align 4
  %addr2.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %addr2.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr2.i.i.i.i.i, align 2
  %29 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i.i.i.i, align 2
  %31 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %33 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1358954504, ptr %addr11.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %payload.i.i, align 4
  %adapter.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %35 = ptrtoint ptr %adapter.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i.i.i.i.i, align 8
  %call.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i.i.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i.i)
  %cmp14.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #7
  br i1 %cmp14.not.i.i.i.i.i, label %while.body.i.hideep_pgm_w_reg.exit.i.i.i_crit_edge, label %do.end.i.i.i.i

while.body.i.hideep_pgm_w_reg.exit.i.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp17.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp17.i.i.i.i.i, i32 %call.i.i.i.i.i, i32 -5
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954504, i32 noundef 2, i32 noundef %spec.select.i.i.i.i.i) #10
  br label %hideep_pgm_w_reg.exit.i.i.i

hideep_pgm_w_reg.exit.i.i.i:                      ; preds = %do.end.i.i.i.i, %while.body.i.hideep_pgm_w_reg.exit.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  %39 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %data.i.i.i.i, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i29.i.i.i) #7
  %40 = call ptr @memset(ptr %3, i32 255, i32 16)
  %41 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ts, align 4
  %addr2.i.i30.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %addr2.i.i30.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr2.i.i30.i.i.i, align 2
  %45 = ptrtoint ptr %msg.i.i29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %msg.i.i29.i.i.i, align 4
  %46 = ptrtoint ptr %flags.i.i31.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i31.i.i.i, align 2
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 5, ptr %3, align 4
  %48 = ptrtoint ptr %buf.i.i32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i32.i.i.i, align 4
  %49 = load i16, ptr %addr2.i.i30.i.i.i, align 2
  %50 = ptrtoint ptr %arrayinit.element.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %arrayinit.element.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %flags8.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags8.i.i.i.i.i, align 2
  %52 = ptrtoint ptr %len9.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4, ptr %len9.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %buf10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %data.i.i.i.i, ptr %buf10.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %len5.i.i.i.i.i, align 1
  %55 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 12, ptr %addr11.i.i.i.i.i, align 4
  %adapter.i.i33.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i.i33.i.i.i, align 8
  %call.i.i34.i.i.i = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i.i29.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34.i.i.i)
  %cmp19.not.i.i.i.i.i = icmp eq i32 %call.i.i34.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i29.i.i.i) #7
  br i1 %cmp19.not.i.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i37.i.i.i

do.end.i37.i.i.i:                                 ; preds = %hideep_pgm_w_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i.i.i)
  %cmp22.i.i.i.i.i = icmp slt i32 %call.i.i34.i.i.i, 0
  %spec.select.i.i35.i.i.i = select i1 %cmp22.i.i.i.i.i, i32 %call.i.i34.i.i.i, i32 -5
  %58 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ts, align 4
  %dev.i36.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i36.i.i.i, ptr noundef nonnull @.str.57, i32 noundef 12, i32 noundef %spec.select.i.i35.i.i.i) #10
  br label %hideep_pgm_r_reg.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %hideep_pgm_w_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data.i.i.i.i, align 4
  %phi.bo.i.i.i = and i32 %61, -54525953
  br label %hideep_pgm_r_reg.exit.i.i.i

hideep_pgm_r_reg.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %do.end.i37.i.i.i
  %unmask_code.0.i.i.i = phi i32 [ %phi.bo.i.i.i, %if.end.i.i.i.i ], [ -54525953, %do.end.i37.i.i.i ]
  %retval.0.i38.i.i.i = phi i32 [ 0, %if.end.i.i.i.i ], [ %spec.select.i.i35.i.i.i, %do.end.i37.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i39.i.i.i) #7
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 655359, ptr %4, align 4
  %63 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ts, align 4
  %addr2.i.i40.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %addr2.i.i40.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr2.i.i40.i.i.i, align 2
  %67 = ptrtoint ptr %msg.i.i39.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %msg.i.i39.i.i.i, align 4
  %68 = ptrtoint ptr %flags.i.i41.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i.i41.i.i.i, align 2
  %69 = ptrtoint ptr %buf.i.i42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i42.i.i.i, align 4
  %70 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %71 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1358954504, ptr %addr11.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %payload.i.i, align 4
  %adapter.i.i46.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 3
  %73 = ptrtoint ptr %adapter.i.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i.i46.i.i.i, align 8
  %call.i.i47.i.i.i = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i.i39.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i47.i.i.i)
  %cmp14.not.i.i48.i.i.i = icmp eq i32 %call.i.i47.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i39.i.i.i) #7
  br i1 %cmp14.not.i.i48.i.i.i, label %hideep_pgm_r_reg.exit.i.i.i.hideep_pgm_w_reg.exit54.i.i.i_crit_edge, label %do.end.i52.i.i.i

hideep_pgm_r_reg.exit.i.i.i.hideep_pgm_w_reg.exit54.i.i.i_crit_edge: ; preds = %hideep_pgm_r_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit54.i.i.i

do.end.i52.i.i.i:                                 ; preds = %hideep_pgm_r_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i.i.i)
  %cmp17.i.i49.i.i.i = icmp slt i32 %call.i.i47.i.i.i, 0
  %spec.select.i.i50.i.i.i = select i1 %cmp17.i.i49.i.i.i, i32 %call.i.i47.i.i.i, i32 -5
  %75 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ts, align 4
  %dev.i51.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954504, i32 noundef 0, i32 noundef %spec.select.i.i50.i.i.i) #10
  br label %hideep_pgm_w_reg.exit54.i.i.i

hideep_pgm_w_reg.exit54.i.i.i:                    ; preds = %do.end.i52.i.i.i, %hideep_pgm_r_reg.exit.i.i.i.hideep_pgm_w_reg.exit54.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i38.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %retval.0.i38.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %hideep_pgm_w_reg.exit54.i.i.i.if.end5.i_crit_edge

hideep_pgm_w_reg.exit54.i.i.i.if.end5.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit54.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i.i.i:                                     ; preds = %hideep_pgm_w_reg.exit54.i.i.i
  %77 = ptrtoint ptr %nvm_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nvm_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %unmask_code.0.i.i.i, i32 %78)
  %cmp.not.i.i.i = icmp eq i32 %unmask_code.0.i.i.i, %78
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.if.end5.i.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.if.end5.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ts, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.104, i32 noundef %unmask_code.0.i.i.i, i32 noundef %78) #10
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end.i.i.i, %if.end.i.i.i.if.end5.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i55.i.i.i) #7
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 655359, ptr %5, align 4
  %82 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ts, align 4
  %addr2.i.i56.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %addr2.i.i56.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr2.i.i56.i.i.i, align 2
  %86 = ptrtoint ptr %msg.i.i55.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %msg.i.i55.i.i.i, align 4
  %87 = ptrtoint ptr %flags.i.i57.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i57.i.i.i, align 2
  %88 = ptrtoint ptr %buf.i.i58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i58.i.i.i, align 4
  %89 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %90 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1358954504, ptr %addr11.i.i.i.i.i, align 4
  %91 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i62.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 3
  %92 = ptrtoint ptr %adapter.i.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter.i.i62.i.i.i, align 8
  %call.i.i63.i.i.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i.i55.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i63.i.i.i)
  %cmp14.not.i.i64.i.i.i = icmp eq i32 %call.i.i63.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i55.i.i.i) #7
  br i1 %cmp14.not.i.i64.i.i.i, label %if.end5.i.i.i.hideep_pgm_w_reg.exit70.i.i.i_crit_edge, label %do.end.i68.i.i.i

if.end5.i.i.i.hideep_pgm_w_reg.exit70.i.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit70.i.i.i

do.end.i68.i.i.i:                                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i.i.i)
  %cmp17.i.i65.i.i.i = icmp slt i32 %call.i.i63.i.i.i, 0
  %spec.select.i.i66.i.i.i = select i1 %cmp17.i.i65.i.i.i, i32 %call.i.i63.i.i.i, i32 -5
  %94 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ts, align 4
  %dev.i67.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i67.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954504, i32 noundef 1, i32 noundef %spec.select.i.i66.i.i.i) #10
  br label %hideep_pgm_w_reg.exit70.i.i.i

hideep_pgm_w_reg.exit70.i.i.i:                    ; preds = %do.end.i68.i.i.i, %if.end5.i.i.i.hideep_pgm_w_reg.exit70.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i71.i.i.i) #7
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 655359, ptr %6, align 4
  %97 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ts, align 4
  %addr2.i.i72.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %addr2.i.i72.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr2.i.i72.i.i.i, align 2
  %101 = ptrtoint ptr %msg.i.i71.i.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %msg.i.i71.i.i.i, align 4
  %102 = ptrtoint ptr %flags.i.i73.i.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i.i73.i.i.i, align 2
  %103 = ptrtoint ptr %buf.i.i74.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i74.i.i.i, align 4
  %104 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %105 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %106 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i78.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %107 = ptrtoint ptr %adapter.i.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %adapter.i.i78.i.i.i, align 8
  %call.i.i79.i.i.i = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i.i71.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i79.i.i.i)
  %cmp14.not.i.i80.i.i.i = icmp eq i32 %call.i.i79.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i71.i.i.i) #7
  br i1 %cmp14.not.i.i80.i.i.i, label %hideep_pgm_w_reg.exit70.i.i.i.hideep_pgm_w_reg.exit86.i.i.i_crit_edge, label %do.end.i84.i.i.i

hideep_pgm_w_reg.exit70.i.i.i.hideep_pgm_w_reg.exit86.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit70.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit86.i.i.i

do.end.i84.i.i.i:                                 ; preds = %hideep_pgm_w_reg.exit70.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79.i.i.i)
  %cmp17.i.i81.i.i.i = icmp slt i32 %call.i.i79.i.i.i, 0
  %spec.select.i.i82.i.i.i = select i1 %cmp17.i.i81.i.i.i, i32 %call.i.i79.i.i.i, i32 -5
  %109 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ts, align 4
  %dev.i83.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i83.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 1, i32 noundef %spec.select.i.i82.i.i.i) #10
  br label %hideep_pgm_w_reg.exit86.i.i.i

hideep_pgm_w_reg.exit86.i.i.i:                    ; preds = %do.end.i84.i.i.i, %hideep_pgm_w_reg.exit70.i.i.i.hideep_pgm_w_reg.exit86.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i87.i.i.i) #7
  %111 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 655359, ptr %7, align 4
  %112 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ts, align 4
  %addr2.i.i88.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %addr2.i.i88.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr2.i.i88.i.i.i, align 2
  %116 = ptrtoint ptr %msg.i.i87.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %msg.i.i87.i.i.i, align 4
  %117 = ptrtoint ptr %flags.i.i89.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i.i89.i.i.i, align 2
  %118 = ptrtoint ptr %buf.i.i90.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i90.i.i.i, align 4
  %119 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %120 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %121 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %payload.i.i, align 4
  %adapter.i.i94.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %113, i32 0, i32 3
  %122 = ptrtoint ptr %adapter.i.i94.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter.i.i94.i.i.i, align 8
  %call.i.i95.i.i.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i.i87.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i95.i.i.i)
  %cmp14.not.i.i96.i.i.i = icmp eq i32 %call.i.i95.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i87.i.i.i) #7
  br i1 %cmp14.not.i.i96.i.i.i, label %hideep_pgm_w_reg.exit86.i.i.i.hideep_pgm_w_reg.exit102.i.i.i_crit_edge, label %do.end.i100.i.i.i

hideep_pgm_w_reg.exit86.i.i.i.hideep_pgm_w_reg.exit102.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit86.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit102.i.i.i

do.end.i100.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit86.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95.i.i.i)
  %cmp17.i.i97.i.i.i = icmp slt i32 %call.i.i95.i.i.i, 0
  %spec.select.i.i98.i.i.i = select i1 %cmp17.i.i97.i.i.i, i32 %call.i.i95.i.i.i, i32 -5
  %124 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ts, align 4
  %dev.i99.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %125, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i99.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 3, i32 noundef %spec.select.i.i98.i.i.i) #10
  br label %hideep_pgm_w_reg.exit102.i.i.i

hideep_pgm_w_reg.exit102.i.i.i:                   ; preds = %do.end.i100.i.i.i, %hideep_pgm_w_reg.exit86.i.i.i.hideep_pgm_w_reg.exit102.i.i.i_crit_edge
  %126 = ptrtoint ptr %nvm_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nvm_mask.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i103.i.i.i) #7
  %128 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 655359, ptr %8, align 4
  %129 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ts, align 4
  %addr2.i.i104.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %addr2.i.i104.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %addr2.i.i104.i.i.i, align 2
  %133 = ptrtoint ptr %msg.i.i103.i.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %msg.i.i103.i.i.i, align 4
  %134 = ptrtoint ptr %flags.i.i105.i.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i.i105.i.i.i, align 2
  %135 = ptrtoint ptr %buf.i.i106.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i106.i.i.i, align 4
  %136 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %137 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1363148812, ptr %addr11.i.i.i.i.i, align 4
  %138 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %127, ptr %payload.i.i, align 4
  %adapter.i.i110.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 3
  %139 = ptrtoint ptr %adapter.i.i110.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %adapter.i.i110.i.i.i, align 8
  %call.i.i111.i.i.i = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg.i.i103.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i111.i.i.i)
  %cmp14.not.i.i112.i.i.i = icmp eq i32 %call.i.i111.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i103.i.i.i) #7
  br i1 %cmp14.not.i.i112.i.i.i, label %hideep_pgm_w_reg.exit102.i.i.i.hideep_pgm_w_reg.exit118.i.i.i_crit_edge, label %do.end.i116.i.i.i

hideep_pgm_w_reg.exit102.i.i.i.hideep_pgm_w_reg.exit118.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit102.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit118.i.i.i

do.end.i116.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit102.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111.i.i.i)
  %cmp17.i.i113.i.i.i = icmp slt i32 %call.i.i111.i.i.i, 0
  %spec.select.i.i114.i.i.i = select i1 %cmp17.i.i113.i.i.i, i32 %call.i.i111.i.i.i, i32 -5
  %141 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ts, align 4
  %dev.i115.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i115.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1363148812, i32 noundef %127, i32 noundef %spec.select.i.i114.i.i.i) #10
  br label %hideep_pgm_w_reg.exit118.i.i.i

hideep_pgm_w_reg.exit118.i.i.i:                   ; preds = %do.end.i116.i.i.i, %hideep_pgm_w_reg.exit102.i.i.i.hideep_pgm_w_reg.exit118.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i119.i.i.i) #7
  %143 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 655359, ptr %9, align 4
  %144 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ts, align 4
  %addr2.i.i120.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %addr2.i.i120.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %addr2.i.i120.i.i.i, align 2
  %148 = ptrtoint ptr %msg.i.i119.i.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %msg.i.i119.i.i.i, align 4
  %149 = ptrtoint ptr %flags.i.i121.i.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i.i121.i.i.i, align 2
  %150 = ptrtoint ptr %buf.i.i122.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i122.i.i.i, align 4
  %151 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %152 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %153 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i126.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %145, i32 0, i32 3
  %154 = ptrtoint ptr %adapter.i.i126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %adapter.i.i126.i.i.i, align 8
  %call.i.i127.i.i.i = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i.i119.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i127.i.i.i)
  %cmp14.not.i.i128.i.i.i = icmp eq i32 %call.i.i127.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i119.i.i.i) #7
  br i1 %cmp14.not.i.i128.i.i.i, label %hideep_pgm_w_reg.exit118.i.i.i.hideep_pgm_w_reg.exit134.i.i.i_crit_edge, label %do.end.i132.i.i.i

hideep_pgm_w_reg.exit118.i.i.i.hideep_pgm_w_reg.exit134.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit118.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit134.i.i.i

do.end.i132.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit118.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127.i.i.i)
  %cmp17.i.i129.i.i.i = icmp slt i32 %call.i.i127.i.i.i, 0
  %spec.select.i.i130.i.i.i = select i1 %cmp17.i.i129.i.i.i, i32 %call.i.i127.i.i.i, i32 -5
  %156 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ts, align 4
  %dev.i131.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %157, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i131.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 1, i32 noundef %spec.select.i.i130.i.i.i) #10
  br label %hideep_pgm_w_reg.exit134.i.i.i

hideep_pgm_w_reg.exit134.i.i.i:                   ; preds = %do.end.i132.i.i.i, %hideep_pgm_w_reg.exit118.i.i.i.hideep_pgm_w_reg.exit134.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i135.i.i.i) #7
  %158 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 655359, ptr %10, align 4
  %159 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ts, align 4
  %addr2.i.i136.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %addr2.i.i136.i.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %addr2.i.i136.i.i.i, align 2
  %163 = ptrtoint ptr %msg.i.i135.i.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %msg.i.i135.i.i.i, align 4
  %164 = ptrtoint ptr %flags.i.i137.i.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %flags.i.i137.i.i.i, align 2
  %165 = ptrtoint ptr %buf.i.i138.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i138.i.i.i, align 4
  %166 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %167 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %168 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %payload.i.i, align 4
  %adapter.i.i142.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %160, i32 0, i32 3
  %169 = ptrtoint ptr %adapter.i.i142.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %adapter.i.i142.i.i.i, align 8
  %call.i.i143.i.i.i = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %msg.i.i135.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i143.i.i.i)
  %cmp14.not.i.i144.i.i.i = icmp eq i32 %call.i.i143.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i135.i.i.i) #7
  br i1 %cmp14.not.i.i144.i.i.i, label %hideep_pgm_w_reg.exit134.i.i.i.hideep_pgm_w_reg.exit150.i.i.i_crit_edge, label %do.end.i148.i.i.i

hideep_pgm_w_reg.exit134.i.i.i.hideep_pgm_w_reg.exit150.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit134.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit150.i.i.i

do.end.i148.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit134.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143.i.i.i)
  %cmp17.i.i145.i.i.i = icmp slt i32 %call.i.i143.i.i.i, 0
  %spec.select.i.i146.i.i.i = select i1 %cmp17.i.i145.i.i.i, i32 %call.i.i143.i.i.i, i32 -5
  %171 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ts, align 4
  %dev.i147.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i147.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 0, i32 noundef %spec.select.i.i146.i.i.i) #10
  br label %hideep_pgm_w_reg.exit150.i.i.i

hideep_pgm_w_reg.exit150.i.i.i:                   ; preds = %do.end.i148.i.i.i, %hideep_pgm_w_reg.exit134.i.i.i.hideep_pgm_w_reg.exit150.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i151.i.i.i) #7
  %173 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 655359, ptr %11, align 4
  %174 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ts, align 4
  %addr2.i.i152.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %addr2.i.i152.i.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %addr2.i.i152.i.i.i, align 2
  %178 = ptrtoint ptr %msg.i.i151.i.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %msg.i.i151.i.i.i, align 4
  %179 = ptrtoint ptr %flags.i.i153.i.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %flags.i.i153.i.i.i, align 2
  %180 = ptrtoint ptr %buf.i.i154.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i154.i.i.i, align 4
  %181 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %182 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1358954504, ptr %addr11.i.i.i.i.i, align 4
  %183 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %payload.i.i, align 4
  %adapter.i.i158.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %175, i32 0, i32 3
  %184 = ptrtoint ptr %adapter.i.i158.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adapter.i.i158.i.i.i, align 8
  %call.i.i159.i.i.i = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msg.i.i151.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i159.i.i.i)
  %cmp14.not.i.i160.i.i.i = icmp eq i32 %call.i.i159.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i151.i.i.i) #7
  br i1 %cmp14.not.i.i160.i.i.i, label %hideep_pgm_w_reg.exit150.i.i.i.hideep_nvm_unlock.exit.i.i_crit_edge, label %do.end.i164.i.i.i

hideep_pgm_w_reg.exit150.i.i.i.hideep_nvm_unlock.exit.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit150.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_nvm_unlock.exit.i.i

do.end.i164.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit150.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159.i.i.i)
  %cmp17.i.i161.i.i.i = icmp slt i32 %call.i.i159.i.i.i, 0
  %spec.select.i.i162.i.i.i = select i1 %cmp17.i.i161.i.i.i, i32 %call.i.i159.i.i.i, i32 -5
  %186 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ts, align 4
  %dev.i163.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %187, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i163.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954504, i32 noundef 0, i32 noundef %spec.select.i.i162.i.i.i) #10
  br label %hideep_nvm_unlock.exit.i.i

hideep_nvm_unlock.exit.i.i:                       ; preds = %do.end.i164.i.i.i, %hideep_pgm_w_reg.exit150.i.i.i.hideep_nvm_unlock.exit.i.i_crit_edge
  br i1 %cmp.not81.i.i, label %hideep_nvm_unlock.exit.i.i.do.body15_crit_edge, label %hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge

hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge: ; preds = %hideep_nvm_unlock.exit.i.i
  br label %while.body.i.i

hideep_nvm_unlock.exit.i.i.do.body15_crit_edge:   ; preds = %hideep_nvm_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

while.body.i.i:                                   ; preds = %if.end19.i.i.while.body.i.i_crit_edge, %hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge
  %addr.085.i.i = phi i32 [ %add20.i.i, %if.end19.i.i.while.body.i.i_crit_edge ], [ 0, %hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge ]
  %ucode.addr.083.i.i = phi ptr [ %add.ptr.i.i, %if.end19.i.i.while.body.i.i_crit_edge ], [ %ucode, %hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge ]
  %ucode_len.addr.082.i.i = phi i32 [ %sub.i.i, %if.end19.i.i.while.body.i.i_crit_edge ], [ %ucode_len, %hideep_nvm_unlock.exit.i.i.while.body.i.i_crit_edge ]
  %188 = call i32 @llvm.umin.i32(i32 %ucode_len.addr.082.i.i, i32 128) #7
  %div54.i.i = lshr i32 %188, 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  %189 = call ptr @memset(ptr %12, i32 255, i32 16)
  %190 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ts, align 4
  %addr2.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %addr2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %addr2.i.i.i, align 2
  %194 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %msg.i.i.i, align 4
  %195 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags.i.i.i, align 2
  %196 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 5, ptr %12, align 4
  %197 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i.i, align 4
  %198 = load i16, ptr %addr2.i.i.i, align 2
  %199 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %arrayinit.element.i.i.i, align 4
  %200 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 1, ptr %flags8.i.i.i, align 2
  %count.tr.i.i.i = trunc i32 %div54.i.i to i16
  %conv.i.i.i = shl nuw nsw i16 %count.tr.i.i.i, 2
  %201 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv.i.i.i, ptr %len9.i.i.i, align 4
  %202 = ptrtoint ptr %buf10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %payload.i.i, ptr %buf10.i.i.i, align 4
  %203 = trunc i32 %div54.i.i to i8
  %conv12.i.i.i = add nsw i8 %203, -1
  %204 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv12.i.i.i, ptr %len5.i.i.i.i.i, align 1
  %205 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %addr.085.i.i, ptr %addr11.i.i.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %191, i32 0, i32 3
  %206 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp19.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  br i1 %cmp19.not.i.i.i, label %if.end6.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp22.i.le.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.le.i.i = select i1 %cmp22.i.le.i.i, i32 %call.i.i.i, i32 -5
  %208 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ts, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %209, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %addr.085.i.i, i32 noundef %spec.select.i.le.i.i) #10
  br label %if.end5.i

if.end6.i.i:                                      ; preds = %while.body.i.i
  %bcmp.i.i = call i32 @bcmp(ptr %ucode.addr.083.i.i, ptr %payload.i.i, i32 %188) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool8.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end19.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  %call.i56.i.i = call fastcc i32 @hideep_check_status(ptr noundef %ts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call.i56.i.i, 0
  br i1 %tobool.not.i57.i.i, label %if.end.i67.i.i, label %if.then9.i.i.do.end15.i.i_crit_edge

if.then9.i.i.do.end15.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

if.end.i67.i.i:                                   ; preds = %if.then9.i.i
  %and.i.i.i = and i32 %addr.085.i.i, -128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i55.i.i) #7
  %210 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 655359, ptr %13, align 4
  %211 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ts, align 4
  %addr2.i.i.i58.i.i = getelementptr inbounds %struct.i2c_client, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %addr2.i.i.i58.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %addr2.i.i.i58.i.i, align 2
  %215 = ptrtoint ptr %msg.i.i.i55.i.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %msg.i.i.i55.i.i, align 4
  %216 = ptrtoint ptr %flags.i.i.i59.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %flags.i.i.i59.i.i, align 2
  %217 = ptrtoint ptr %buf.i.i.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i.i60.i.i, align 4
  %218 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %219 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %220 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i.i64.i.i = getelementptr inbounds %struct.i2c_client, ptr %212, i32 0, i32 3
  %221 = ptrtoint ptr %adapter.i.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %adapter.i.i.i64.i.i, align 8
  %call.i.i.i65.i.i = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %msg.i.i.i55.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i65.i.i)
  %cmp14.not.i.i.i66.i.i = icmp eq i32 %call.i.i.i65.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i55.i.i) #7
  br i1 %cmp14.not.i.i.i66.i.i, label %if.end.i67.i.i.hideep_pgm_w_reg.exit.i72.i.i_crit_edge, label %do.end.i.i71.i.i

if.end.i67.i.i.hideep_pgm_w_reg.exit.i72.i.i_crit_edge: ; preds = %if.end.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit.i72.i.i

do.end.i.i71.i.i:                                 ; preds = %if.end.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65.i.i)
  %cmp17.i.i.i68.i.i = icmp slt i32 %call.i.i.i65.i.i, 0
  %spec.select.i.i.i69.i.i = select i1 %cmp17.i.i.i68.i.i, i32 %call.i.i.i65.i.i, i32 -5
  %223 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ts, align 4
  %dev.i.i70.i.i = getelementptr inbounds %struct.i2c_client, ptr %224, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i70.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 1, i32 noundef %spec.select.i.i.i69.i.i) #10
  br label %hideep_pgm_w_reg.exit.i72.i.i

hideep_pgm_w_reg.exit.i72.i.i:                    ; preds = %do.end.i.i71.i.i, %if.end.i67.i.i.hideep_pgm_w_reg.exit.i72.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i43.i.i.i) #7
  %225 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 655359, ptr %14, align 4
  %226 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ts, align 4
  %addr2.i.i44.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %addr2.i.i44.i.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %addr2.i.i44.i.i.i, align 2
  %230 = ptrtoint ptr %msg.i.i43.i.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %msg.i.i43.i.i.i, align 4
  %231 = ptrtoint ptr %flags.i.i45.i.i.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %flags.i.i45.i.i.i, align 2
  %232 = ptrtoint ptr %buf.i.i46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i46.i.i.i, align 4
  %233 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %234 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %235 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 3, ptr %payload.i.i, align 4
  %adapter.i.i50.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %227, i32 0, i32 3
  %236 = ptrtoint ptr %adapter.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %adapter.i.i50.i.i.i, align 8
  %call.i.i51.i.i.i = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %msg.i.i43.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i51.i.i.i)
  %cmp14.not.i.i52.i.i.i = icmp eq i32 %call.i.i51.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i43.i.i.i) #7
  br i1 %cmp14.not.i.i52.i.i.i, label %hideep_pgm_w_reg.exit.i72.i.i.hideep_pgm_w_reg.exit58.i.i.i_crit_edge, label %do.end.i56.i.i.i

hideep_pgm_w_reg.exit.i72.i.i.hideep_pgm_w_reg.exit58.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit.i72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit58.i.i.i

do.end.i56.i.i.i:                                 ; preds = %hideep_pgm_w_reg.exit.i72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i.i.i)
  %cmp17.i.i53.i.i.i = icmp slt i32 %call.i.i51.i.i.i, 0
  %spec.select.i.i54.i.i.i = select i1 %cmp17.i.i53.i.i.i, i32 %call.i.i51.i.i.i, i32 -5
  %238 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ts, align 4
  %dev.i55.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %239, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 3, i32 noundef %spec.select.i.i54.i.i.i) #10
  br label %hideep_pgm_w_reg.exit58.i.i.i

hideep_pgm_w_reg.exit58.i.i.i:                    ; preds = %do.end.i56.i.i.i, %hideep_pgm_w_reg.exit.i72.i.i.hideep_pgm_w_reg.exit58.i.i.i_crit_edge
  %or.i.i.i = or i32 %and.i.i.i, 262144
  %add.i.i.i = add i32 %or.i.i.i, 1363148800
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i59.i.i.i) #7
  %240 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 655359, ptr %15, align 4
  %241 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ts, align 4
  %addr2.i.i60.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %addr2.i.i60.i.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %addr2.i.i60.i.i.i, align 2
  %245 = ptrtoint ptr %msg.i.i59.i.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %msg.i.i59.i.i.i, align 4
  %246 = ptrtoint ptr %flags.i.i61.i.i.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %flags.i.i61.i.i.i, align 2
  %247 = ptrtoint ptr %buf.i.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i62.i.i.i, align 4
  %248 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %249 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %add.i.i.i, ptr %addr11.i.i.i.i.i, align 4
  %250 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %payload.i.i, align 4
  %adapter.i.i66.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %242, i32 0, i32 3
  %251 = ptrtoint ptr %adapter.i.i66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %adapter.i.i66.i.i.i, align 8
  %call.i.i67.i.i.i = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %msg.i.i59.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i67.i.i.i)
  %cmp14.not.i.i68.i.i.i = icmp eq i32 %call.i.i67.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59.i.i.i) #7
  br i1 %cmp14.not.i.i68.i.i.i, label %hideep_pgm_w_reg.exit58.i.i.i.hideep_pgm_w_reg.exit74.i.i.i_crit_edge, label %do.end.i72.i.i.i

hideep_pgm_w_reg.exit58.i.i.i.hideep_pgm_w_reg.exit74.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit74.i.i.i

do.end.i72.i.i.i:                                 ; preds = %hideep_pgm_w_reg.exit58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i.i.i)
  %cmp17.i.i69.i.i.i = icmp slt i32 %call.i.i67.i.i.i, 0
  %spec.select.i.i70.i.i.i = select i1 %cmp17.i.i69.i.i.i, i32 %call.i.i67.i.i.i, i32 -5
  %253 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ts, align 4
  %dev.i71.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %254, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i71.i.i.i, ptr noundef nonnull @.str.59, i32 noundef %add.i.i.i, i32 noundef -1, i32 noundef %spec.select.i.i70.i.i.i) #10
  br label %hideep_pgm_w_reg.exit74.i.i.i

hideep_pgm_w_reg.exit74.i.i.i:                    ; preds = %do.end.i72.i.i.i, %hideep_pgm_w_reg.exit58.i.i.i.hideep_pgm_w_reg.exit74.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i75.i.i.i) #7
  %255 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 655359, ptr %16, align 4
  %256 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ts, align 4
  %addr2.i.i76.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %addr2.i.i76.i.i.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %addr2.i.i76.i.i.i, align 2
  %260 = ptrtoint ptr %msg.i.i75.i.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %259, ptr %msg.i.i75.i.i.i, align 4
  %261 = ptrtoint ptr %flags.i.i77.i.i.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %flags.i.i77.i.i.i, align 2
  %262 = ptrtoint ptr %buf.i.i78.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i78.i.i.i, align 4
  %263 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %264 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %265 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i82.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %257, i32 0, i32 3
  %266 = ptrtoint ptr %adapter.i.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %adapter.i.i82.i.i.i, align 8
  %call.i.i83.i.i.i = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %msg.i.i75.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i83.i.i.i)
  %cmp14.not.i.i84.i.i.i = icmp eq i32 %call.i.i83.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i75.i.i.i) #7
  br i1 %cmp14.not.i.i84.i.i.i, label %hideep_pgm_w_reg.exit74.i.i.i.hideep_pgm_w_reg.exit90.i.i.i_crit_edge, label %do.end.i88.i.i.i

hideep_pgm_w_reg.exit74.i.i.i.hideep_pgm_w_reg.exit90.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit74.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit90.i.i.i

do.end.i88.i.i.i:                                 ; preds = %hideep_pgm_w_reg.exit74.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83.i.i.i)
  %cmp17.i.i85.i.i.i = icmp slt i32 %call.i.i83.i.i.i, 0
  %spec.select.i.i86.i.i.i = select i1 %cmp17.i.i85.i.i.i, i32 %call.i.i83.i.i.i, i32 -5
  %268 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ts, align 4
  %dev.i87.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %269, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i87.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 1, i32 noundef %spec.select.i.i86.i.i.i) #10
  br label %hideep_pgm_w_reg.exit90.i.i.i

hideep_pgm_w_reg.exit90.i.i.i:                    ; preds = %do.end.i88.i.i.i, %hideep_pgm_w_reg.exit74.i.i.i.hideep_pgm_w_reg.exit90.i.i.i_crit_edge
  %call5.i.i.i = call fastcc i32 @hideep_check_status(ptr noundef %ts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %hideep_pgm_w_reg.exit90.i.i.i.do.end15.i.i_crit_edge

hideep_pgm_w_reg.exit90.i.i.i.do.end15.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit90.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

if.end8.i.i.i:                                    ; preds = %hideep_pgm_w_reg.exit90.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i91.i.i.i) #7
  %270 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 655359, ptr %17, align 4
  %271 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ts, align 4
  %addr2.i.i92.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %addr2.i.i92.i.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %addr2.i.i92.i.i.i, align 2
  %275 = ptrtoint ptr %msg.i.i91.i.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %msg.i.i91.i.i.i, align 4
  %276 = ptrtoint ptr %flags.i.i93.i.i.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 0, ptr %flags.i.i93.i.i.i, align 2
  %277 = ptrtoint ptr %buf.i.i94.i.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i94.i.i.i, align 4
  %278 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %279 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %280 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 3, ptr %payload.i.i, align 4
  %adapter.i.i98.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 3
  %281 = ptrtoint ptr %adapter.i.i98.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %adapter.i.i98.i.i.i, align 8
  %call.i.i99.i.i.i = call i32 @i2c_transfer(ptr noundef %282, ptr noundef nonnull %msg.i.i91.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i99.i.i.i)
  %cmp14.not.i.i100.i.i.i = icmp eq i32 %call.i.i99.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i91.i.i.i) #7
  br i1 %cmp14.not.i.i100.i.i.i, label %if.end8.i.i.i.hideep_pgm_w_reg.exit106.i.i.i_crit_edge, label %do.end.i104.i.i.i

if.end8.i.i.i.hideep_pgm_w_reg.exit106.i.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit106.i.i.i

do.end.i104.i.i.i:                                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99.i.i.i)
  %cmp17.i.i101.i.i.i = icmp slt i32 %call.i.i99.i.i.i, 0
  %spec.select.i.i102.i.i.i = select i1 %cmp17.i.i101.i.i.i, i32 %call.i.i99.i.i.i, i32 -5
  %283 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ts, align 4
  %dev.i103.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %284, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i103.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 3, i32 noundef %spec.select.i.i102.i.i.i) #10
  br label %hideep_pgm_w_reg.exit106.i.i.i

hideep_pgm_w_reg.exit106.i.i.i:                   ; preds = %do.end.i104.i.i.i, %if.end8.i.i.i.hideep_pgm_w_reg.exit106.i.i.i_crit_edge
  %285 = ptrtoint ptr %ucode.addr.083.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ucode.addr.083.i.i, align 4
  %or10.i.i.i = or i32 %and.i.i.i, 1048576
  %add11.i.i.i = add i32 %or10.i.i.i, 1363148800
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i107.i.i.i) #7
  %287 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 655359, ptr %18, align 4
  %288 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ts, align 4
  %addr2.i.i108.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %addr2.i.i108.i.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %addr2.i.i108.i.i.i, align 2
  %292 = ptrtoint ptr %msg.i.i107.i.i.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %msg.i.i107.i.i.i, align 4
  %293 = ptrtoint ptr %flags.i.i109.i.i.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 0, ptr %flags.i.i109.i.i.i, align 2
  %294 = ptrtoint ptr %buf.i.i110.i.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i110.i.i.i, align 4
  %295 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %296 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %add11.i.i.i, ptr %addr11.i.i.i.i.i, align 4
  %297 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %286, ptr %payload.i.i, align 4
  %adapter.i.i114.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %289, i32 0, i32 3
  %298 = ptrtoint ptr %adapter.i.i114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %adapter.i.i114.i.i.i, align 8
  %call.i.i115.i.i.i = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %msg.i.i107.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i115.i.i.i)
  %cmp14.not.i.i116.i.i.i = icmp eq i32 %call.i.i115.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i107.i.i.i) #7
  br i1 %cmp14.not.i.i116.i.i.i, label %hideep_pgm_w_reg.exit106.i.i.i.hideep_pgm_w_reg.exit122.i.i.i_crit_edge, label %do.end.i120.i.i.i

hideep_pgm_w_reg.exit106.i.i.i.hideep_pgm_w_reg.exit122.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit122.i.i.i

do.end.i120.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit106.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115.i.i.i)
  %cmp17.i.i117.i.i.i = icmp slt i32 %call.i.i115.i.i.i, 0
  %spec.select.i.i118.i.i.i = select i1 %cmp17.i.i117.i.i.i, i32 %call.i.i115.i.i.i, i32 -5
  %300 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ts, align 4
  %dev.i119.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %301, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i119.i.i.i, ptr noundef nonnull @.str.59, i32 noundef %add11.i.i.i, i32 noundef %286, i32 noundef %spec.select.i.i118.i.i.i) #10
  br label %hideep_pgm_w_reg.exit122.i.i.i

hideep_pgm_w_reg.exit122.i.i.i:                   ; preds = %do.end.i120.i.i.i, %hideep_pgm_w_reg.exit106.i.i.i.hideep_pgm_w_reg.exit122.i.i.i_crit_edge
  %mul.i.i.i.i = and i32 %188, 252
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  %302 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 -1, ptr %19, align 4
  %303 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ts, align 4
  %addr2.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %addr2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %addr2.i.i.i.i, align 2
  %307 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %306, ptr %msg.i.i.i.i, align 4
  %308 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %309 = trunc i32 %mul.i.i.i.i to i16
  %conv.i.i.i.i = add nuw nsw i16 %309, 5
  store i16 %conv.i.i.i.i, ptr %19, align 4
  %310 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i.i.i, align 4
  %311 = add nuw i8 %203, 127
  %conv7.i.i.i.i = or i8 %311, -128
  %312 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv7.i.i.i.i, ptr %len5.i.i.i.i.i, align 1
  %313 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 1364197376, ptr %addr11.i.i.i.i.i, align 4
  %314 = call ptr @memcpy(ptr %payload.i.i, ptr %ucode.addr.083.i.i, i32 %mul.i.i.i.i)
  %adapter.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %304, i32 0, i32 3
  %315 = ptrtoint ptr %adapter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %adapter.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  %sub.i.i.i = add nsw i32 %div54.i.i, -1
  %arrayidx14.i.i.i = getelementptr i32, ptr %ucode.addr.083.i.i, i32 %sub.i.i.i
  %317 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx14.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i124.i.i.i) #7
  %319 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 655359, ptr %20, align 4
  %320 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ts, align 4
  %addr2.i.i125.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %321, i32 0, i32 1
  %322 = ptrtoint ptr %addr2.i.i125.i.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %addr2.i.i125.i.i.i, align 2
  %324 = ptrtoint ptr %msg.i.i124.i.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %323, ptr %msg.i.i124.i.i.i, align 4
  %325 = ptrtoint ptr %flags.i.i126.i.i.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 0, ptr %flags.i.i126.i.i.i, align 2
  %326 = ptrtoint ptr %buf.i.i127.i.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i127.i.i.i, align 4
  %327 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %328 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 1363148924, ptr %addr11.i.i.i.i.i, align 4
  %329 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %318, ptr %payload.i.i, align 4
  %adapter.i.i131.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %321, i32 0, i32 3
  %330 = ptrtoint ptr %adapter.i.i131.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %adapter.i.i131.i.i.i, align 8
  %call.i.i132.i.i.i = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %msg.i.i124.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i132.i.i.i)
  %cmp14.not.i.i133.i.i.i = icmp eq i32 %call.i.i132.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i124.i.i.i) #7
  br i1 %cmp14.not.i.i133.i.i.i, label %hideep_pgm_w_reg.exit122.i.i.i.hideep_pgm_w_reg.exit139.i.i.i_crit_edge, label %do.end.i137.i.i.i

hideep_pgm_w_reg.exit122.i.i.i.hideep_pgm_w_reg.exit139.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit122.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit139.i.i.i

do.end.i137.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit122.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132.i.i.i)
  %cmp17.i.i134.i.i.i = icmp slt i32 %call.i.i132.i.i.i, 0
  %spec.select.i.i135.i.i.i = select i1 %cmp17.i.i134.i.i.i, i32 %call.i.i132.i.i.i, i32 -5
  %332 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ts, align 4
  %dev.i136.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %333, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i136.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1363148924, i32 noundef %318, i32 noundef %spec.select.i.i135.i.i.i) #10
  br label %hideep_pgm_w_reg.exit139.i.i.i

hideep_pgm_w_reg.exit139.i.i.i:                   ; preds = %do.end.i137.i.i.i, %hideep_pgm_w_reg.exit122.i.i.i.hideep_pgm_w_reg.exit139.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i140.i.i.i) #7
  %334 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 655359, ptr %21, align 4
  %335 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ts, align 4
  %addr2.i.i141.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %addr2.i.i141.i.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %addr2.i.i141.i.i.i, align 2
  %339 = ptrtoint ptr %msg.i.i140.i.i.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 %338, ptr %msg.i.i140.i.i.i, align 4
  %340 = ptrtoint ptr %flags.i.i142.i.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 0, ptr %flags.i.i142.i.i.i, align 2
  %341 = ptrtoint ptr %buf.i.i143.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i143.i.i.i, align 4
  %342 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %343 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %344 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i147.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %336, i32 0, i32 3
  %345 = ptrtoint ptr %adapter.i.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %adapter.i.i147.i.i.i, align 8
  %call.i.i148.i.i.i = call i32 @i2c_transfer(ptr noundef %346, ptr noundef nonnull %msg.i.i140.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i148.i.i.i)
  %cmp14.not.i.i149.i.i.i = icmp eq i32 %call.i.i148.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i140.i.i.i) #7
  br i1 %cmp14.not.i.i149.i.i.i, label %hideep_pgm_w_reg.exit139.i.i.i.hideep_pgm_w_reg.exit155.i.i.i_crit_edge, label %do.end.i153.i.i.i

hideep_pgm_w_reg.exit139.i.i.i.hideep_pgm_w_reg.exit155.i.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit139.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit155.i.i.i

do.end.i153.i.i.i:                                ; preds = %hideep_pgm_w_reg.exit139.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148.i.i.i)
  %cmp17.i.i150.i.i.i = icmp slt i32 %call.i.i148.i.i.i, 0
  %spec.select.i.i151.i.i.i = select i1 %cmp17.i.i150.i.i.i, i32 %call.i.i148.i.i.i, i32 -5
  %347 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ts, align 4
  %dev.i152.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %348, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i152.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 1, i32 noundef %spec.select.i.i151.i.i.i) #10
  br label %hideep_pgm_w_reg.exit155.i.i.i

hideep_pgm_w_reg.exit155.i.i.i:                   ; preds = %do.end.i153.i.i.i, %hideep_pgm_w_reg.exit139.i.i.i.hideep_pgm_w_reg.exit155.i.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %call17.i.i.i = call fastcc i32 @hideep_check_status(ptr noundef %ts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.end20.i.i.i, label %hideep_pgm_w_reg.exit155.i.i.i.do.end15.i.i_crit_edge

hideep_pgm_w_reg.exit155.i.i.i.do.end15.i.i_crit_edge: ; preds = %hideep_pgm_w_reg.exit155.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i

if.end20.i.i.i:                                   ; preds = %hideep_pgm_w_reg.exit155.i.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i156.i.i.i) #7
  %349 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 655359, ptr %22, align 4
  %350 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ts, align 4
  %addr2.i.i157.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %addr2.i.i157.i.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %addr2.i.i157.i.i.i, align 2
  %354 = ptrtoint ptr %msg.i.i156.i.i.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %353, ptr %msg.i.i156.i.i.i, align 4
  %355 = ptrtoint ptr %flags.i.i158.i.i.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 0, ptr %flags.i.i158.i.i.i, align 2
  %356 = ptrtoint ptr %buf.i.i159.i.i.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i159.i.i.i, align 4
  %357 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %358 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 1358954496, ptr %addr11.i.i.i.i.i, align 4
  %359 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %payload.i.i, align 4
  %adapter.i.i163.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %351, i32 0, i32 3
  %360 = ptrtoint ptr %adapter.i.i163.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %adapter.i.i163.i.i.i, align 8
  %call.i.i164.i.i.i = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %msg.i.i156.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i164.i.i.i)
  %cmp14.not.i.i165.i.i.i = icmp eq i32 %call.i.i164.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i156.i.i.i) #7
  br i1 %cmp14.not.i.i165.i.i.i, label %if.end20.i.i.i.if.end18.i.i_crit_edge, label %do.end.i169.i.i.i

if.end20.i.i.i.if.end18.i.i_crit_edge:            ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i.i

do.end.i169.i.i.i:                                ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164.i.i.i)
  %cmp17.i.i166.i.i.i = icmp slt i32 %call.i.i164.i.i.i, 0
  %spec.select.i.i167.i.i.i = select i1 %cmp17.i.i166.i.i.i, i32 %call.i.i164.i.i.i, i32 -5
  %362 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ts, align 4
  %dev.i168.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %363, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i168.i.i.i, ptr noundef nonnull @.str.59, i32 noundef 1358954496, i32 noundef 0, i32 noundef %spec.select.i.i167.i.i.i) #10
  br label %if.end18.i.i

do.end15.i.i:                                     ; preds = %hideep_pgm_w_reg.exit155.i.i.i.do.end15.i.i_crit_edge, %hideep_pgm_w_reg.exit90.i.i.i.do.end15.i.i_crit_edge, %if.then9.i.i.do.end15.i.i_crit_edge
  %364 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ts, align 4
  %dev17.i.i = getelementptr inbounds %struct.i2c_client, ptr %365, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %addr.085.i.i, i32 noundef -16) #10
  br label %if.end5.i

if.end18.i.i:                                     ; preds = %do.end.i169.i.i.i, %if.end20.i.i.i.if.end18.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end18.i.i, %if.end6.i.i.if.end19.i.i_crit_edge
  %add.ptr.i.i = getelementptr i32, ptr %ucode.addr.083.i.i, i32 %div54.i.i
  %add20.i.i = add i32 %188, %addr.085.i.i
  %sub.i.i = sub i32 %ucode_len.addr.082.i.i, %188
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %if.end19.i.i.while.body.i28.i_crit_edge, label %if.end19.i.i.while.body.i.i_crit_edge

if.end19.i.i.while.body.i.i_crit_edge:            ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end19.i.i.while.body.i28.i_crit_edge:          ; preds = %if.end19.i.i
  br label %while.body.i28.i

while.body.i28.i:                                 ; preds = %if.end23.i.i.while.body.i28.i_crit_edge, %if.end19.i.i.while.body.i28.i_crit_edge
  %addr.072.i.i = phi i32 [ %add24.i.i, %if.end23.i.i.while.body.i28.i_crit_edge ], [ 0, %if.end19.i.i.while.body.i28.i_crit_edge ]
  %ucode.addr.071.i.i = phi ptr [ %add.ptr.i34.i, %if.end23.i.i.while.body.i28.i_crit_edge ], [ %ucode, %if.end19.i.i.while.body.i28.i_crit_edge ]
  %ucode_len.addr.070.i.i = phi i32 [ %sub.i35.i, %if.end23.i.i.while.body.i28.i_crit_edge ], [ %ucode_len, %if.end19.i.i.while.body.i28.i_crit_edge ]
  %366 = call i32 @llvm.umin.i32(i32 %ucode_len.addr.070.i.i, i32 128) #7
  %div60.i.i = lshr i32 %366, 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i12.i) #7
  %367 = call ptr @memset(ptr %23, i32 255, i32 16)
  %368 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ts, align 4
  %addr2.i.i21.i = getelementptr inbounds %struct.i2c_client, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %addr2.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %addr2.i.i21.i, align 2
  %372 = ptrtoint ptr %msg.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %371, ptr %msg.i.i12.i, align 4
  %373 = ptrtoint ptr %flags.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 0, ptr %flags.i.i14.i, align 2
  %374 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 5, ptr %23, align 4
  %375 = ptrtoint ptr %buf.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i15.i, align 4
  %376 = load i16, ptr %addr2.i.i21.i, align 2
  %377 = ptrtoint ptr %arrayinit.element.i.i16.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %376, ptr %arrayinit.element.i.i16.i, align 4
  %378 = ptrtoint ptr %flags8.i.i17.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 1, ptr %flags8.i.i17.i, align 2
  %count.tr.i.i22.i = trunc i32 %div60.i.i to i16
  %conv.i.i23.i = shl nuw nsw i16 %count.tr.i.i22.i, 2
  %379 = ptrtoint ptr %len9.i.i18.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %conv.i.i23.i, ptr %len9.i.i18.i, align 4
  %380 = ptrtoint ptr %buf10.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %payload.i.i, ptr %buf10.i.i19.i, align 4
  %381 = trunc i32 %div60.i.i to i8
  %conv12.i.i24.i = add nsw i8 %381, -1
  %382 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %conv12.i.i24.i, ptr %len5.i.i.i.i.i, align 1
  %383 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %addr.072.i.i, ptr %addr11.i.i.i.i.i, align 4
  %adapter.i.i25.i = getelementptr inbounds %struct.i2c_client, ptr %369, i32 0, i32 3
  %384 = ptrtoint ptr %adapter.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %adapter.i.i25.i, align 8
  %call.i.i26.i = call i32 @i2c_transfer(ptr noundef %385, ptr noundef nonnull %msg.i.i12.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i26.i)
  %cmp19.not.i.i27.i = icmp eq i32 %call.i.i26.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i12.i) #7
  br i1 %cmp19.not.i.i27.i, label %if.end.i.i, label %do.end.i32.i

do.end.i32.i:                                     ; preds = %while.body.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %cmp22.i.le.i29.i = icmp slt i32 %call.i.i26.i, 0
  %spec.select.i.le.i30.i = select i1 %cmp22.i.le.i29.i, i32 %call.i.i26.i, i32 -5
  %386 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %ts, align 4
  %dev.i31.i = getelementptr inbounds %struct.i2c_client, ptr %387, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i31.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.107, i32 noundef %addr.072.i.i, i32 noundef %spec.select.i.le.i30.i) #10
  br label %if.end5.i

if.end.i.i:                                       ; preds = %while.body.i28.i
  %bcmp.i33.i = call i32 @bcmp(ptr %ucode.addr.071.i.i, ptr %payload.i.i, i32 %366) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i33.i)
  %tobool4.not.i.i = icmp eq i32 %bcmp.i33.i, 0
  br i1 %tobool4.not.i.i, label %if.end23.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.074.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %ucode.addr.071.i.i, i32 %i.074.i.i
  %388 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %payload.i.i, i32 %i.074.i.i
  %390 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %389, i8 %391)
  %cmp9.not.i.i = icmp eq i8 %389, %391
  br i1 %cmp9.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end14.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end14.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv8.i.i = zext i8 %391 to i32
  %conv.i.i = zext i8 %389 to i32
  %392 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ts, align 4
  %dev16.i.i = getelementptr inbounds %struct.i2c_client, ptr %393, i32 0, i32 4
  %add17.i.i = add i32 %i.074.i.i, %addr.072.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef %add17.i.i, i32 noundef %conv.i.i, i32 noundef %conv8.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end14.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.074.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %366
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end5.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end5.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end23.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i34.i = getelementptr i32, ptr %ucode.addr.071.i.i, i32 %div60.i.i
  %add24.i.i = add i32 %366, %addr.072.i.i
  %sub.i35.i = sub i32 %ucode_len.addr.070.i.i, %366
  %cmp.not.i36.i = icmp eq i32 %sub.i35.i, 0
  br i1 %cmp.not.i36.i, label %if.end23.i.i.do.body15_crit_edge, label %if.end23.i.i.while.body.i28.i_crit_edge

if.end23.i.i.while.body.i28.i_crit_edge:          ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i28.i

if.end23.i.i.do.body15_crit_edge:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

if.end5.i:                                        ; preds = %for.inc.i.i.if.end5.i_crit_edge, %do.end.i32.i, %do.end15.i.i, %do.end.i.i, %hideep_pgm_w_reg.exit54.i.i.i.if.end5.i_crit_edge
  %error.1.i = phi i32 [ %spec.select.i.le.i30.i, %do.end.i32.i ], [ %retval.0.i38.i.i.i, %hideep_pgm_w_reg.exit54.i.i.i.if.end5.i_crit_edge ], [ -16, %do.end15.i.i ], [ %spec.select.i.le.i.i, %do.end.i.i ], [ -5, %for.inc.i.i.if.end5.i_crit_edge ]
  %dec.i = add nsw i32 %dec57.i, -1
  %tobool.not.i = icmp eq i32 %dec57.i, 0
  br i1 %tobool.not.i, label %do.end12, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

do.end12:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %394 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %ts, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %395, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.94, i32 noundef %error.1.i) #10
  br label %if.end33

do.body15:                                        ; preds = %if.end23.i.i.do.body15_crit_edge, %hideep_nvm_unlock.exit.i.i.do.body15_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hideep_update_firmware.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hideep_update_firmware, %if.then27)) #7
          to label %if.end33 [label %if.then27], !srcloc !247

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %396 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ts, align 4
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %397, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hideep_update_firmware.__UNIQUE_ID_ddebug297, ptr noundef %dev29, ptr noundef nonnull @.str.95) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body15, %do.end12
  %tobool8.not106 = phi i1 [ true, %if.then27 ], [ false, %do.end12 ], [ true, %do.body15 ]
  %retval.0.i66104 = phi i32 [ 0, %if.then27 ], [ %error.1.i, %do.end12 ], [ 0, %do.body15 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %398 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 655359, ptr %398, align 4
  %400 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ts, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %401, i32 0, i32 1
  %402 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %addr2.i.i, align 2
  %404 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 %403, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %405 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %406 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i, align 4
  %407 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %408 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 1375731736, ptr %addr11.i.i.i.i.i, align 4
  %409 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 1000, ptr %payload.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %401, i32 0, i32 3
  %410 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp14.not.i.i = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br i1 %cmp14.not.i.i, label %if.end33.hideep_pgm_w_reg.exit_crit_edge, label %do.end.i

if.end33.hideep_pgm_w_reg.exit_crit_edge:         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp17.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp17.i.i, i32 %call.i.i, i32 -5
  %412 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %413, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef 1375731736, i32 noundef 1000, i32 noundef %spec.select.i.i) #10
  br label %hideep_pgm_w_reg.exit

hideep_pgm_w_reg.exit:                            ; preds = %do.end.i, %if.end33.hideep_pgm_w_reg.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i69) #7
  %414 = getelementptr inbounds i8, ptr %msg.i.i69, i32 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 655359, ptr %414, align 4
  %416 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ts, align 4
  %addr2.i.i70 = getelementptr inbounds %struct.i2c_client, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %addr2.i.i70 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %addr2.i.i70, align 2
  %420 = ptrtoint ptr %msg.i.i69 to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %419, ptr %msg.i.i69, align 4
  %flags.i.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 1
  %421 = ptrtoint ptr %flags.i.i71 to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 0, ptr %flags.i.i71, align 2
  %buf.i.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 3
  %422 = ptrtoint ptr %buf.i.i72 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i72, align 4
  %423 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %424 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 1375731732, ptr %addr11.i.i.i.i.i, align 4
  %425 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 3, ptr %payload.i.i, align 4
  %adapter.i.i76 = getelementptr inbounds %struct.i2c_client, ptr %417, i32 0, i32 3
  %426 = ptrtoint ptr %adapter.i.i76 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %adapter.i.i76, align 8
  %call.i.i77 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %msg.i.i69, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i77)
  %cmp14.not.i.i78 = icmp eq i32 %call.i.i77, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i69) #7
  br i1 %cmp14.not.i.i78, label %hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit84_crit_edge, label %do.end.i82

hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit84_crit_edge: ; preds = %hideep_pgm_w_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit84

do.end.i82:                                       ; preds = %hideep_pgm_w_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp17.i.i79 = icmp slt i32 %call.i.i77, 0
  %spec.select.i.i80 = select i1 %cmp17.i.i79, i32 %call.i.i77, i32 -5
  %428 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ts, align 4
  %dev.i81 = getelementptr inbounds %struct.i2c_client, ptr %429, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.59, i32 noundef 1375731732, i32 noundef 3, i32 noundef %spec.select.i.i80) #10
  br label %hideep_pgm_w_reg.exit84

hideep_pgm_w_reg.exit84:                          ; preds = %do.end.i82, %hideep_pgm_w_reg.exit.hideep_pgm_w_reg.exit84_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i85) #7
  %430 = getelementptr inbounds i8, ptr %msg.i.i85, i32 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 655359, ptr %430, align 4
  %432 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %ts, align 4
  %addr2.i.i86 = getelementptr inbounds %struct.i2c_client, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %addr2.i.i86 to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %addr2.i.i86, align 2
  %436 = ptrtoint ptr %msg.i.i85 to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %435, ptr %msg.i.i85, align 4
  %flags.i.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i85, i32 0, i32 1
  %437 = ptrtoint ptr %flags.i.i87 to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 0, ptr %flags.i.i87, align 2
  %buf.i.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i85, i32 0, i32 3
  %438 = ptrtoint ptr %buf.i.i88 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %len5.i.i.i.i.i, ptr %buf.i.i88, align 4
  %439 = ptrtoint ptr %len5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 -128, ptr %len5.i.i.i.i.i, align 1
  %440 = ptrtoint ptr %addr11.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 1375731732, ptr %addr11.i.i.i.i.i, align 4
  %441 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 1, ptr %payload.i.i, align 4
  %adapter.i.i92 = getelementptr inbounds %struct.i2c_client, ptr %433, i32 0, i32 3
  %442 = ptrtoint ptr %adapter.i.i92 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %adapter.i.i92, align 8
  %call.i.i93 = call i32 @i2c_transfer(ptr noundef %443, ptr noundef nonnull %msg.i.i85, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i93)
  %cmp14.not.i.i94 = icmp eq i32 %call.i.i93, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i85) #7
  br i1 %cmp14.not.i.i94, label %hideep_pgm_w_reg.exit84.hideep_pgm_w_reg.exit100_crit_edge, label %do.end.i98

hideep_pgm_w_reg.exit84.hideep_pgm_w_reg.exit100_crit_edge: ; preds = %hideep_pgm_w_reg.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_pgm_w_reg.exit100

do.end.i98:                                       ; preds = %hideep_pgm_w_reg.exit84
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp17.i.i95 = icmp slt i32 %call.i.i93, 0
  %spec.select.i.i96 = select i1 %cmp17.i.i95, i32 %call.i.i93, i32 -5
  %444 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ts, align 4
  %dev.i97 = getelementptr inbounds %struct.i2c_client, ptr %445, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97, ptr noundef nonnull @.str.59, i32 noundef 1375731732, i32 noundef 1, i32 noundef %spec.select.i.i96) #10
  br label %hideep_pgm_w_reg.exit100

hideep_pgm_w_reg.exit100:                         ; preds = %do.end.i98, %hideep_pgm_w_reg.exit84.hideep_pgm_w_reg.exit100_crit_edge
  %call37 = call fastcc i32 @hideep_load_dwz(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %hideep_pgm_w_reg.exit100.if.end45_crit_edge, label %do.end42

hideep_pgm_w_reg.exit100.if.end45_crit_edge:      ; preds = %hideep_pgm_w_reg.exit100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end42:                                         ; preds = %hideep_pgm_w_reg.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %446 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %ts, align 4
  %dev44 = getelementptr inbounds %struct.i2c_client, ptr %447, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.97, i32 noundef %call37) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %hideep_pgm_w_reg.exit100.if.end45_crit_edge
  %spec.select = select i1 %tobool8.not106, i32 %call37, i32 %retval.0.i66104
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end45 ], [ %call3, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hideep_check_status(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %len4.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %addr16.i.i = getelementptr inbounds %struct.hideep_ts, ptr %ts, i32 0, i32 10, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec10 = phi i32 [ 99, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #7
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data.i, align 4, !annotation !248
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %2 = call ptr @memset(ptr %0, i32 255, i32 16)
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr2.i.i, align 2
  %7 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i.i, align 4
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i.i, align 2
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5, ptr %0, align 4
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %len4.i.i, ptr %buf.i.i, align 4
  %11 = load i16, ptr %addr2.i.i, align 2
  %12 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element.i.i, align 4
  %13 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags8.i.i, align 2
  %14 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len9.i.i, align 4
  %15 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i, ptr %buf10.i.i, align 4
  %16 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %len4.i.i, align 1
  %17 = ptrtoint ptr %addr16.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1358954500, ptr %addr16.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp19.not.i.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  br i1 %cmp19.not.i.i, label %hideep_pgm_r_reg.exit.thread, label %hideep_pgm_r_reg.exit

hideep_pgm_r_reg.exit.thread:                     ; preds = %while.body
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not = icmp eq i32 %21, 0
  br i1 %tobool2.not, label %hideep_pgm_r_reg.exit.thread.if.end_crit_edge, label %hideep_pgm_r_reg.exit.thread.cleanup_crit_edge

hideep_pgm_r_reg.exit.thread.cleanup_crit_edge:   ; preds = %hideep_pgm_r_reg.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

hideep_pgm_r_reg.exit.thread.if.end_crit_edge:    ; preds = %hideep_pgm_r_reg.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

hideep_pgm_r_reg.exit:                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp22.i.i, i32 %call.i.i, i32 -5
  %22 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef 1358954500, i32 noundef %spec.select.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #7
  br label %if.end

if.end:                                           ; preds = %hideep_pgm_r_reg.exit, %hideep_pgm_r_reg.exit.thread.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %dec = add nsw i32 %dec10, -1
  %tobool.not = icmp eq i32 %dec10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %hideep_pgm_r_reg.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hideep_pgm_r_reg.exit.thread.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #7
  %reset_gpio.i = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.hideep_power_off.exit_crit_edge, label %if.then.i

entry.hideep_power_off.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hideep_power_off.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 1) #7
  br label %hideep_power_off.exit

hideep_power_off.exit:                            ; preds = %if.then.i, %entry.hideep_power_off.exit_crit_edge
  %vcc_vid.i = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %vcc_vid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc_vid.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %7) #7
  %vcc_vdd.i = getelementptr inbounds %struct.hideep_ts, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %vcc_vdd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc_vdd.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hideep_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @hideep_power_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.111) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !163, !165, !166, !168, !170, !171, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !231, !233, !234, !235, !236}
!llvm.module.flags = !{!238, !239, !240, !241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !{ptr @__initcall__kmod_hideep__307_1118_hideep_driver_init6, !1, !"__initcall__kmod_hideep__307_1118_hideep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/hideep.c", i32 1118, i32 1}
!2 = !{ptr @__exitcall_hideep_driver_exit, !1, !"__exitcall_hideep_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/hideep.c", i32 1120, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/hideep.c", i32 1121, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/hideep.c", i32 1122, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/hideep.c", i32 1109, i32 13}
!12 = !{ptr @hideep_driver, !13, !"hideep_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/hideep.c", i32 1107, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/hideep.c", i32 1008, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hideep_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hideep_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/hideep.c", i32 1013, i32 3}
!24 = !{ptr @hideep_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hideep_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @hideep_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/hideep.c", i32 1023, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hideep_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/hideep.c", i32 1025, i32 12}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/hideep.c", i32 1028, i32 3}
!34 = !{ptr @hideep_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hideep_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/hideep.c", i32 1033, i32 49}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/hideep.c", i32 1037, i32 49}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/hideep.c", i32 1042, i32 8}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/hideep.c", i32 1048, i32 3}
!44 = !{ptr @hideep_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hideep_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/hideep.c", i32 1058, i32 3}
!48 = !{ptr @hideep_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hideep_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/hideep.c", i32 1070, i32 3}
!52 = !{ptr @hideep_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hideep_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/hideep.c", i32 1077, i32 3}
!56 = !{ptr @hideep_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hideep_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @hideep_regmap_config, !59, !"hideep_regmap_config", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/hideep.c", i32 992, i32 35}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/hideep.c", i32 659, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hideep_power_on._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @hideep_power_on._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/hideep.c", i32 666, i32 3}
!67 = !{ptr @hideep_power_on._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @hideep_power_on._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/hideep.c", i32 677, i32 4}
!71 = !{ptr @hideep_power_on._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @hideep_power_on._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/hideep.c", i32 575, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hideep_load_dwz._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hideep_load_dwz._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/hideep.c", i32 584, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hideep_load_dwz.__UNIQUE_ID_ddebug293, !79, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/hideep.c", i32 589, i32 3}
!84 = !{ptr @hideep_load_dwz.__UNIQUE_ID_ddebug294, !83, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/hideep.c", i32 594, i32 3}
!87 = !{ptr @hideep_load_dwz._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @hideep_load_dwz._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/hideep.c", i32 599, i32 2}
!91 = !{ptr @hideep_load_dwz.__UNIQUE_ID_ddebug295, !90, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/hideep.c", i32 344, i32 4}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @hideep_enter_pgm._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @hideep_enter_pgm._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/hideep.c", i32 347, i32 4}
!99 = !{ptr @hideep_enter_pgm._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hideep_enter_pgm._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/hideep.c", i32 350, i32 4}
!103 = !{ptr @hideep_enter_pgm.__UNIQUE_ID_ddebug288, !102, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/hideep.c", i32 359, i32 2}
!106 = !{ptr @hideep_enter_pgm._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hideep_enter_pgm._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/hideep.c", i32 315, i32 3}
!110 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hideep_pgm_get_pattern._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @hideep_pgm_get_pattern._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/hideep.c", i32 246, i32 3}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @hideep_pgm_r_reg._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @hideep_pgm_r_reg._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/hideep.c", i32 263, i32 3}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @hideep_pgm_w_reg._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @hideep_pgm_w_reg._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/hideep.c", i32 794, i32 3}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @hideep_init_input._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @hideep_init_input._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/hideep.c", i32 798, i32 24}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/hideep.c", i32 821, i32 47}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/hideep.c", i32 823, i32 3}
!134 = !{ptr @hideep_init_input._entry.65, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @hideep_init_input._entry_ptr.67, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/hideep.c", i32 829, i32 3}
!138 = !{ptr @hideep_init_input.__UNIQUE_ID_ddebug305, !137, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/touchscreen/hideep.c", i32 836, i32 4}
!141 = !{ptr @hideep_init_input.__UNIQUE_ID_ddebug306, !140, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/hideep.c", i32 853, i32 3}
!144 = !{ptr @hideep_init_input._entry.70, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @hideep_init_input._entry_ptr.72, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/hideep.c", i32 780, i32 2}
!148 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @hideep_get_axis_info.__UNIQUE_ID_ddebug304, !147, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/touchscreen/hideep.c", i32 758, i32 3}
!152 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @hideep_irq._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @hideep_irq._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/touchscreen/hideep.c", i32 728, i32 2}
!157 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @hideep_parse_and_report.__UNIQUE_ID_ddebug298, !156, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!159 = !{ptr @hideep_ts_attr_group, !160, !"hideep_ts_attr_group", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/hideep.c", i32 958, i32 37}
!161 = !{ptr @hideep_ts_sysfs_entries, !162, !"hideep_ts_sysfs_entries", i1 false, i1 false}
!162 = !{!"../drivers/input/touchscreen/hideep.c", i32 951, i32 26}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/touchscreen/hideep.c", i32 947, i32 8}
!165 = !{ptr @dev_attr_version, !164, !"dev_attr_version", i1 false, i1 false}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/touchscreen/hideep.c", i32 925, i32 34}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/hideep.c", i32 948, i32 8}
!170 = !{ptr @dev_attr_product_id, !169, !"dev_attr_product_id", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/touchscreen/hideep.c", i32 949, i32 8}
!173 = !{ptr @dev_attr_update_fw, !172, !"dev_attr_update_fw", i1 false, i1 false}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/input/touchscreen/hideep.c", i32 875, i32 34}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/hideep.c", i32 882, i32 3}
!178 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @hideep_update_fw._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @hideep_update_fw._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/touchscreen/hideep.c", i32 888, i32 3}
!183 = !{ptr @hideep_update_fw._entry.86, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @hideep_update_fw._entry_ptr.88, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/touchscreen/hideep.c", i32 894, i32 3}
!187 = !{ptr @hideep_update_fw._entry.89, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @hideep_update_fw._entry_ptr.91, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/input/touchscreen/hideep.c", i32 628, i32 2}
!191 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @hideep_update_firmware.__UNIQUE_ID_ddebug296, !190, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/touchscreen/hideep.c", i32 637, i32 3}
!195 = !{ptr @hideep_update_firmware._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @hideep_update_firmware._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/input/touchscreen/hideep.c", i32 640, i32 3}
!199 = !{ptr @hideep_update_firmware.__UNIQUE_ID_ddebug297, !198, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/touchscreen/hideep.c", i32 646, i32 3}
!202 = !{ptr @hideep_update_firmware._entry.96, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @hideep_update_firmware._entry_ptr.98, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/input/touchscreen/hideep.c", i32 481, i32 4}
!206 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @hideep_program_nvm._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @hideep_program_nvm._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/input/touchscreen/hideep.c", i32 492, i32 5}
!211 = !{ptr @hideep_program_nvm._entry.101, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @hideep_program_nvm._entry_ptr.103, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/touchscreen/hideep.c", i32 380, i32 3}
!215 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @hideep_nvm_unlock._entry, !214, !"_entry", i1 false, i1 false}
!218 = !{ptr @hideep_nvm_unlock._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/touchscreen/hideep.c", i32 527, i32 4}
!221 = !{ptr @hideep_verify_nvm._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @hideep_verify_nvm._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/touchscreen/hideep.c", i32 539, i32 6}
!225 = !{ptr @hideep_verify_nvm._entry.108, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @hideep_verify_nvm._entry_ptr.110, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @hideep_match_table, !228, !"hideep_match_table", i1 false, i1 false}
!228 = !{!"../drivers/input/touchscreen/hideep.c", i32 1100, i32 34}
!229 = !{ptr @hideep_pm_ops, !230, !"hideep_pm_ops", i1 false, i1 false}
!230 = !{!"../drivers/input/touchscreen/hideep.c", i32 990, i32 8}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/input/touchscreen/hideep.c", i32 981, i32 3}
!233 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @hideep_resume._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @hideep_resume._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @hideep_i2c_id, !237, !"hideep_i2c_id", i1 false, i1 false}
!237 = !{!"../drivers/input/touchscreen/hideep.c", i32 1085, i32 35}
!238 = !{i32 1, !"wchar_size", i32 2}
!239 = !{i32 1, !"min_enum_size", i32 4}
!240 = !{i32 8, !"branch-target-enforcement", i32 0}
!241 = !{i32 8, !"sign-return-address", i32 0}
!242 = !{i32 8, !"sign-return-address-all", i32 0}
!243 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!244 = !{i32 7, !"uwtable", i32 1}
!245 = !{i32 7, !"frame-pointer", i32 2}
!246 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!247 = !{i64 2148977409, i64 2148977414, i64 2148977427, i64 2148977471, i64 2148977505, i64 2148977526}
!248 = !{!"auto-init"}
