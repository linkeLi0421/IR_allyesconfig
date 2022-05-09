; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/mms114.c_pt.bc'
source_filename = "../drivers/input/touchscreen/mms114.c"
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mms114_data = type { ptr, ptr, ptr, ptr, %struct.touchscreen_properties, i32, i32, i32, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mms114_touch = type { i16, i8, i8, i8, i8, [2 x i8] }

@__initcall__kmod_mms114__292_646_mms114_driver_init6 = internal global ptr @mms114_driver_init, section ".initcall6.init", align 4
@mms114_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mms114_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mms114_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mms114_pm_ops, ptr null, ptr null }, ptr @mms114_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mms114_driver_exit = internal global ptr @mms114_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [55 x i8] c"mms114.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [52 x i8] c"mms114.description=MELFAS mms114 Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [45 x i8] c"mms114.file=drivers/input/touchscreen/mms114\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [22 x i8] c"mms114.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mms114\00", [25 x i8] zeroinitializer }, align 32
@mms114_dt_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms114\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 114 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms134s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 134 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms136\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 136 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms152\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 152 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mms345l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 345 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@mms114_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mms114_suspend, ptr @mms114_resume, ptr @mms114_suspend, ptr @mms114_resume, ptr @mms114_suspend, ptr @mms114_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mms114_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mms114\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mms114_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not supported I2C adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mms114_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/mms114.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr = internal global ptr @mms114_probe._entry, section ".printk_index", align 4
@mms114_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr.8 = internal global ptr @mms114_probe._entry.6, section ".printk_index", align 4
@mms114_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"missing X/Y size properties, trying legacy bindings\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MELFAS MMS%d Touchscreen\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@mms114_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to get the Core regulator (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr.14 = internal global ptr @mms114_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@mms114_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to get the IO regulator (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr.18 = internal global ptr @mms114_probe._entry.16, section ".printk_index", align 4
@mms114_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr.21 = internal global ptr @mms114_probe._entry.19, section ".printk_index", align 4
@mms114_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mms114_probe._entry_ptr.24 = internal global ptr @mms114_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"x-size\00", [25 x i8] zeroinitializer }, align 32
@mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mms114_parse_legacy_bindings\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get legacy x-size property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"y-size\00", [25 x i8] zeroinitializer }, align 32
@mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get legacy y-size property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"contact-threshold\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"moving-threshold\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x-invert\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"y-invert\00", [23 x i8] zeroinitializer }, align 32
@mms114_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable avdd: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mms114_start\00", [19 x i8] zeroinitializer }, align 32
@mms114_start._entry_ptr = internal global ptr @mms114_start._entry, section ".printk_index", align 4
@mms114_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable vdd: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mms114_start._entry_ptr.38 = internal global ptr @mms114_start._entry.36, section ".printk_index", align 4
@mms114_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 267, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mms114_get_version\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mms114_get_version._entry_ptr = internal global ptr @mms114_get_version._entry, section ".printk_index", align 4
@mms114_get_version._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.3, i32 281, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"TSP FW Rev: bootloader 0x%x / core 0x%x / config 0x%x, Compat group: %c\0A\00", [55 x i8] zeroinitializer }, align 32
@mms114_get_version._entry_ptr.44 = internal global ptr @mms114_get_version._entry.42, section ".printk_index", align 4
@mms114_get_version._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.3, i32 292, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TSP Rev: 0x%x, HW Rev: 0x%x, Firmware Ver: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@mms114_get_version._entry_ptr.47 = internal global ptr @mms114_get_version._entry.45, section ".printk_index", align 4
@__mms114_read_reg._entry = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, align 1
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: i2c transfer failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__mms114_read_reg\00", [46 x i8] zeroinitializer }, align 32
@__mms114_read_reg._entry_ptr = internal global ptr @__mms114_read_reg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mms114_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: i2c send failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mms114_write_reg\00", [47 x i8] zeroinitializer }, align 32
@mms114_write_reg._entry_ptr = internal global ptr @mms114_write_reg._entry, section ".printk_index", align 4
@mms114_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 392, ptr @.str.54, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable vdd: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mms114_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mms114_stop._entry_ptr = internal global ptr @mms114_stop._entry, section ".printk_index", align 4
@mms114_stop._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.3, i32 396, ptr @.str.54, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to disable avdd: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mms114_stop._entry_ptr.57 = internal global ptr @mms114_stop._entry.55, section ".printk_index", align 4
@mms114_process_mt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong touch id (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mms114_process_mt\00", [46 x i8] zeroinitializer }, align 32
@mms114_process_mt._entry_ptr = internal global ptr @mms114_process_mt._entry, section ".printk_index", align 4
@mms114_process_mt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrong touch type (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mms114_process_mt._entry_ptr.62 = internal global ptr @mms114_process_mt._entry.60, section ".printk_index", align 4
@mms114_process_mt.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.63, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"id: %d, type: %d, pressed: %d, x: %d, y: %d, width: %d, strength: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 114, i64 134, i64 136]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 134, i64 136]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 32, i64 114, i64 134, i64 136, i64 152, i64 345]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 114, i64 134, i64 136]
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"mms114_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 636, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 638, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"mms114_dt_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 614, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"mms114_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 605, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [10 x i8] c"mms114_id\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 607, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 452, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 460, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 481, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 509, i32 7 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 527, i32 52 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 530, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 535, i32 50 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 538, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 548, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 554, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 418, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 419, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 423, i32 36 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 424, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 428, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 430, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 433, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 435, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 358, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 364, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 266, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 280, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 291, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 112, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 145, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 392, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 396, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 166, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 171, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [38 x i8] c"../drivers/input/touchscreen/mms114.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 179, i32 2 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_mms114_driver_exit, ptr @__initcall__kmod_mms114__292_646_mms114_driver_init6, ptr @__mms114_read_reg._entry, ptr @__mms114_read_reg._entry_ptr, ptr @mms114_driver_exit, ptr @mms114_get_version._entry, ptr @mms114_get_version._entry.42, ptr @mms114_get_version._entry.45, ptr @mms114_get_version._entry_ptr, ptr @mms114_get_version._entry_ptr.44, ptr @mms114_get_version._entry_ptr.47, ptr @mms114_probe._entry, ptr @mms114_probe._entry.12, ptr @mms114_probe._entry.16, ptr @mms114_probe._entry.19, ptr @mms114_probe._entry.22, ptr @mms114_probe._entry.6, ptr @mms114_probe._entry_ptr, ptr @mms114_probe._entry_ptr.14, ptr @mms114_probe._entry_ptr.18, ptr @mms114_probe._entry_ptr.21, ptr @mms114_probe._entry_ptr.24, ptr @mms114_probe._entry_ptr.8, ptr @mms114_process_mt._entry, ptr @mms114_process_mt._entry.60, ptr @mms114_process_mt._entry_ptr, ptr @mms114_process_mt._entry_ptr.62, ptr @mms114_start._entry, ptr @mms114_start._entry.36, ptr @mms114_start._entry_ptr, ptr @mms114_start._entry_ptr.38, ptr @mms114_stop._entry, ptr @mms114_stop._entry.55, ptr @mms114_stop._entry_ptr, ptr @mms114_stop._entry_ptr.57, ptr @mms114_write_reg._entry, ptr @mms114_write_reg._entry_ptr, ptr @mms114_driver, ptr @.str, ptr @mms114_dt_match, ptr @mms114_pm_ops, ptr @mms114_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_dt_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_get_version._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_get_version._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_stop._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_process_mt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mms114_process_mt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mms114_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mms114_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mms114_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %call4 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool5.not = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %input_dev14 = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %input_dev14, align 4
  %call16 = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %call16 to i32
  %type = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call4, i32 noundef 3, i32 noundef 53) #5
  tail call void @input_set_capability(ptr noundef nonnull %call4, i32 noundef 3, i32 noundef 54) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  %props = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 4
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call4, i1 noundef zeroext true, ptr noundef %props) #5
  %10 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %props, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.end19.do.body26_crit_edge, label %lor.lhs.false22

if.end19.do.body26_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

lor.lhs.false22:                                  ; preds = %if.end19
  %max_y = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %lor.lhs.false22.do.body26_crit_edge, label %lor.lhs.false22.if.end44_crit_edge

lor.lhs.false22.if.end44_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

lor.lhs.false22.do.body26_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body26:                                        ; preds = %lor.lhs.false22.do.body26_crit_edge, %if.end19.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mms114_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mms114_probe, %if.then31)) #5
          to label %do.end35 [label %if.then31], !srcloc !140

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mms114_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.9) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body26
  %call36 = tail call fastcc i32 @mms114_parse_legacy_bindings(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %props, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 53, i32 noundef 0, i32 noundef %15, i32 noundef 0, i32 noundef 0) #5
  %max_y43 = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %max_y43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_y43, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 54, i32 noundef 0, i32 noundef %17, i32 noundef 0, i32 noundef 0) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %lor.lhs.false22.if.end44_crit_edge
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end44.if.end55_crit_edge [
    i32 114, label %if.end44.if.then52_crit_edge
    i32 134, label %if.end44.if.then52_crit_edge218
    i32 136, label %if.end44.if.then52_crit_edge219
  ]

if.end44.if.then52_crit_edge219:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52

if.end44.if.then52_crit_edge218:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52

if.end44.if.then52_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then52

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then52:                                        ; preds = %if.end44.if.then52_crit_edge, %if.end44.if.then52_crit_edge218, %if.end44.if.then52_crit_edge219
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 26
  %21 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then52.input_abs_get_fuzz.exit_crit_edge, label %cond.true.i

if.then52.input_abs_get_fuzz.exit_crit_edge:      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_fuzz.exit

cond.true.i:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i = getelementptr %struct.input_absinfo, ptr %22, i32 53, i32 3
  %23 = ptrtoint ptr %fuzz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fuzz.i, align 4
  br label %input_abs_get_fuzz.exit

input_abs_get_fuzz.exit:                          ; preds = %cond.true.i, %if.then52.input_abs_get_fuzz.exit_crit_edge
  %cond.i = phi i32 [ %24, %cond.true.i ], [ 0, %if.then52.input_abs_get_fuzz.exit_crit_edge ]
  %moving_threshold = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %moving_threshold to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i, ptr %moving_threshold, align 4
  %26 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i195 = icmp eq ptr %27, null
  br i1 %tobool.not.i195, label %input_abs_get_fuzz.exit.input_abs_get_fuzz.exit199_crit_edge, label %cond.true.i197

input_abs_get_fuzz.exit.input_abs_get_fuzz.exit199_crit_edge: ; preds = %input_abs_get_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_fuzz.exit199

cond.true.i197:                                   ; preds = %input_abs_get_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i196 = getelementptr %struct.input_absinfo, ptr %27, i32 58, i32 3
  %28 = ptrtoint ptr %fuzz.i196 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fuzz.i196, align 4
  br label %input_abs_get_fuzz.exit199

input_abs_get_fuzz.exit199:                       ; preds = %cond.true.i197, %input_abs_get_fuzz.exit.input_abs_get_fuzz.exit199_crit_edge
  %cond.i198 = phi i32 [ %29, %cond.true.i197 ], [ 0, %input_abs_get_fuzz.exit.input_abs_get_fuzz.exit199_crit_edge ]
  %contact_threshold = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %contact_threshold to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i198, ptr %contact_threshold, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call4) #5
  %31 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i201 = icmp eq ptr %32, null
  br i1 %tobool.not.i201, label %input_abs_get_fuzz.exit199.input_abs_set_fuzz.exit_crit_edge, label %if.then.i

input_abs_get_fuzz.exit199.input_abs_set_fuzz.exit_crit_edge: ; preds = %input_abs_get_fuzz.exit199
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_fuzz.exit

if.then.i:                                        ; preds = %input_abs_get_fuzz.exit199
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i202 = getelementptr %struct.input_absinfo, ptr %32, i32 53, i32 3
  %33 = ptrtoint ptr %fuzz.i202 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %fuzz.i202, align 4
  br label %input_abs_set_fuzz.exit

input_abs_set_fuzz.exit:                          ; preds = %if.then.i, %input_abs_get_fuzz.exit199.input_abs_set_fuzz.exit_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call4) #5
  %34 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i204 = icmp eq ptr %35, null
  br i1 %tobool.not.i204, label %input_abs_set_fuzz.exit.input_abs_set_fuzz.exit207_crit_edge, label %if.then.i206

input_abs_set_fuzz.exit.input_abs_set_fuzz.exit207_crit_edge: ; preds = %input_abs_set_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_fuzz.exit207

if.then.i206:                                     ; preds = %input_abs_set_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i205 = getelementptr %struct.input_absinfo, ptr %35, i32 54, i32 3
  %36 = ptrtoint ptr %fuzz.i205 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %fuzz.i205, align 4
  br label %input_abs_set_fuzz.exit207

input_abs_set_fuzz.exit207:                       ; preds = %if.then.i206, %input_abs_set_fuzz.exit.input_abs_set_fuzz.exit207_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call4) #5
  %37 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i209 = icmp eq ptr %38, null
  br i1 %tobool.not.i209, label %input_abs_set_fuzz.exit207.if.end55_crit_edge, label %if.then.i211

input_abs_set_fuzz.exit207.if.end55_crit_edge:    ; preds = %input_abs_set_fuzz.exit207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then.i211:                                     ; preds = %input_abs_set_fuzz.exit207
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i210 = getelementptr %struct.input_absinfo, ptr %38, i32 58, i32 3
  %39 = ptrtoint ptr %fuzz.i210 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fuzz.i210, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then.i211, %input_abs_set_fuzz.exit207.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type, align 4
  %call58 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %41) #5
  %42 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call58, ptr %call4, align 8
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %if.end55.cleanup_crit_edge, label %if.end62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %id63 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %43 = ptrtoint ptr %id63 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 24, ptr %id63, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 31
  %45 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mms114_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 32
  %46 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mms114_input_close, ptr %close, align 4
  %call66 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call4, i32 noundef 10, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i213 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i213 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i213, align 4
  %call71 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  %core_reg = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %core_reg to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call71, ptr %core_reg, align 4
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end81

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call71 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %50) #8
  br label %cleanup

if.end81:                                         ; preds = %if.end69
  %call83 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  %io_reg = getelementptr inbounds %struct.mms114_data, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %io_reg to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call83, ptr %io_reg, align 4
  %cmp.i214 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then86, label %if.end93

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call83 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %52) #8
  br label %cleanup

if.end93:                                         ; preds = %if.end81
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i215 = icmp eq ptr %56, null
  br i1 %tobool.not.i215, label %if.end.i, label %if.end93.dev_name.exit_crit_edge

if.end93.dev_name.exit_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end93.dev_name.exit_crit_edge
  %retval.0.i216 = phi ptr [ %58, %if.end.i ], [ %56, %if.end93.dev_name.exit_crit_edge ]
  %call97 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %54, ptr noundef null, ptr noundef nonnull @mms114_interrupt, i32 noundef 532480, ptr noundef %retval.0.i216, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end104:                                        ; preds = %dev_name.exit
  %59 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input_dev14, align 4
  %call106 = tail call i32 @input_register_device(ptr noundef %60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end104.cleanup_crit_edge, label %do.end111

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %if.end104.cleanup_crit_edge, %do.end102, %if.then86, %if.then74, %if.end62.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end35.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ %50, %if.then74 ], [ %52, %if.then86 ], [ %call97, %do.end102 ], [ %call106, %do.end111 ], [ -12, %do.end10 ], [ -19, %do.end ], [ -22, %if.end12.cleanup_crit_edge ], [ %call36, %do.end35.cleanup_crit_edge ], [ -12, %if.end55.cleanup_crit_edge ], [ %call66, %if.end62.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mms114_parse_legacy_bindings(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %props2 = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %props2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mms114_parse_legacy_bindings, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !140

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.27) #5
  br label %cleanup

if.end8:                                          ; preds = %entry
  %max_y = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4, i32 1
  %call.i55 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %max_y, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool10.not = icmp eq i32 %call.i55, 0
  br i1 %tobool10.not, label %if.end28, label %do.body12

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mms114_parse_legacy_bindings, %if.then24)) #5
          to label %cleanup [label %if.then24], !srcloc !140

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.29) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %contact_threshold = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 6
  %call.i56 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %contact_threshold, i32 noundef 1) #5
  %moving_threshold = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 7
  %call.i57 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %moving_threshold, i32 noundef 1) #5
  %call.i58 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.32) #5
  br i1 %call.i58, label %if.then32, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %invert_x = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %invert_x to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %invert_x, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %call.i59 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.33) #5
  br i1 %call.i59, label %if.then35, label %if.end33.if.end36_crit_edge

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %invert_y = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %invert_y to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %invert_y, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %swap_x_y = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %swap_x_y to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %swap_x_y, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then24, %do.body12, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %if.then7 ], [ -22, %if.then24 ], [ -22, %do.body ], [ -22, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @mms114_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mms114_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %io_reg.i = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_reg.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %call.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %core_reg.i = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %core_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_reg.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.mms114_stop.exit_crit_edge, label %do.end7.i

if.end.i.mms114_stop.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mms114_stop.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.56, i32 noundef %call2.i) #8
  br label %mms114_stop.exit

mms114_stop.exit:                                 ; preds = %do.end7.i, %if.end.i.mms114_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %xfer.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca i8, align 1
  %xfer.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %touch = alloca [10 x %struct.mms114_touch], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.mms114_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %touch) #5
  %2 = call ptr @memset(ptr %touch, i32 255, i32 80)
  %mutex = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call = tail call zeroext i1 @input_device_enabled(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !141
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer.i.i) #5
  %6 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #5
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %buf.i.i, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i, align 2
  %11 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %xfer.i.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 8
  %14 = and i16 %13, 16
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags13.i.i, align 2
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %6, align 4
  %buf17.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf17.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf17.i.i, align 4
  %18 = load i16, ptr %addr.i.i, align 2
  %arrayidx19.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx19.i.i, align 4
  %20 = load i16, ptr %5, align 8
  %21 = and i16 %20, 16
  %22 = or i16 %21, 1
  %flags26.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags26.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %flags26.i.i, align 2
  %len29.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len29.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len29.i.i, align 4
  %buf31.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %buf31.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %val.i, ptr %buf31.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %xfer.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp32.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp32.not.i.i, label %mms114_read_reg.exit, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  br label %out

mms114_read_reg.exit:                             ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i.i) #5
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp = icmp eq i8 %30, 0
  br i1 %cmp, label %mms114_read_reg.exit.out_crit_edge, label %if.end6

mms114_read_reg.exit.out_crit_edge:               ; preds = %mms114_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %mms114_read_reg.exit
  %type = getelementptr inbounds %struct.mms114_data, ptr %dev_id, i32 0, i32 5
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %32, label %if.else [
    i32 134, label %if.end6.if.then10_crit_edge
    i32 136, label %if.end6.if.then10_crit_edge51
  ]

if.end6.if.then10_crit_edge51:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end6.if.then10_crit_edge, %if.end6.if.then10_crit_edge51
  %div4647 = udiv i8 %30, 6
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %div11444548 = lshr i8 %30, 3
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %touch_size.0.in = phi i8 [ %div4647, %if.then10 ], [ %div11444548, %if.else ]
  %touch_size.0 = zext i8 %touch_size.0.in to i32
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer.i) #5
  %36 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %buf.i, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i, align 2
  %41 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %xfer.i, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %35, align 8
  %44 = and i16 %43, 16
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %flags13.i, align 2
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %36, align 4
  %buf17.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf17.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i, ptr %buf17.i, align 4
  %48 = load i16, ptr %addr.i, align 2
  %arrayidx19.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx19.i, align 4
  %50 = load i16, ptr %35, align 8
  %51 = and i16 %50, 16
  %52 = or i16 %51, 1
  %flags26.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %flags26.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %flags26.i, align 2
  %conv27.i = zext i8 %30 to i16
  %len29.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %len29.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv27.i, ptr %len29.i, align 4
  %buf31.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %buf31.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %touch, ptr %buf31.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %xfer.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp32.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp32.not.i, label %__mms114_read_reg.exit, label %do.end37.i

do.end37.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i) #5
  br label %out

__mms114_read_reg.exit:                           ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %touch_size.0.in)
  %cmp1749.not = icmp eq i8 %touch_size.0.in, 0
  br i1 %cmp1749.not, label %__mms114_read_reg.exit.for.end_crit_edge, label %__mms114_read_reg.exit.for.body_crit_edge

__mms114_read_reg.exit.for.body_crit_edge:        ; preds = %__mms114_read_reg.exit
  br label %for.body

__mms114_read_reg.exit.for.end_crit_edge:         ; preds = %__mms114_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__mms114_read_reg.exit.for.body_crit_edge
  %index.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %__mms114_read_reg.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mms114_touch, ptr %touch, i32 %index.050
  call fastcc void @mms114_process_mt(ptr noundef %dev_id, ptr noundef %add.ptr)
  %inc = add nuw nsw i32 %index.050, 1
  %exitcond.not = icmp eq i32 %inc, %touch_size.0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__mms114_read_reg.exit.for.end_crit_edge
  %59 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input_dev1, align 4
  call void @input_mt_report_pointer_emulation(ptr noundef %60, i1 noundef zeroext true) #5
  %61 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input_dev1, align 4
  call void @input_event(ptr noundef %62, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %for.end, %do.end37.i, %mms114_read_reg.exit.out_crit_edge, %do.end37.i.i, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %touch) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mms114_start(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %buf.i124.i = alloca [2 x i8], align 1
  %buf.i113.i = alloca [2 x i8], align 1
  %buf.i102.i = alloca [2 x i8], align 1
  %buf.i91.i = alloca [2 x i8], align 1
  %buf.i85.i = alloca [2 x i8], align 1
  %buf.i.i84.i = alloca [2 x i8], align 1
  %xfer.i78.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i79.i.i = alloca i8, align 1
  %xfer.i58.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i59.i.i = alloca i8, align 1
  %xfer.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i = alloca i8, align 1
  %buf.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %core_reg = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_reg, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_reg = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_reg, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.37, i32 noundef %call2) #8
  %6 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_reg, align 4
  %call10 = tail call i32 @regulator_disable(ptr noundef %7) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 200) #5
  %props1.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #5
  %10 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %12 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 3
  %type.i.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 5
  %13 = call ptr @memset(ptr %buf.i.i, i32 255, i32 6)
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %15, label %if.end11.if.end.i_crit_edge [
    i32 345, label %sw.bb.i.i
    i32 152, label %sw.bb6.i.i
    i32 114, label %if.end11.sw.bb26.i.i_crit_edge
    i32 134, label %if.end11.sw.bb26.i.i_crit_edge48
    i32 136, label %if.end11.sw.bb26.i.i_crit_edge49
  ]

if.end11.sw.bb26.i.i_crit_edge49:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26.i.i

if.end11.sw.bb26.i.i_crit_edge48:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26.i.i

if.end11.sw.bb26.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26.i.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb.i.i:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i.i) #5
  %19 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -31, ptr %buf.i.i.i, align 1
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i.i.i, align 2
  %22 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %xfer.i.i.i, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %9, align 8
  %25 = and i16 %24, 16
  %flags13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %flags13.i.i.i, align 2
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %17, align 4
  %buf17.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i.i.i, ptr %buf17.i.i.i, align 4
  %29 = load i16, ptr %addr.i.i.i, align 2
  %arrayidx19.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx19.i.i.i, align 4
  %31 = load i16, ptr %9, align 8
  %32 = and i16 %31, 16
  %33 = or i16 %32, 1
  %flags26.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %flags26.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %flags26.i.i.i, align 2
  %len29.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i.i, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %len29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3, ptr %len29.i.i.i, align 4
  %buf31.i.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i.i.i, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %buf31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i.i, ptr %buf31.i.i.i, align 4
  %adapter.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %xfer.i.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp32.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp32.not.i.i.i, label %do.end.i.i, label %do.end37.i.i.i

do.end37.i.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp38.i.i.i = icmp slt i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i.i.i) #5
  %spec.select.i = select i1 %cmp38.i.i.i, i32 %call.i.i.i, i32 -5
  br label %mms114_get_version.exit.thread.i

do.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i.i.i) #5
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %10, align 1
  %conv3.i.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %11, align 1
  %conv5.i.i = zext i8 %45 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.39, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %conv5.i.i) #8
  br label %if.endthread-pre-split.i

sw.bb6.i.i:                                       ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer.i58.i.i) #5
  %46 = getelementptr inbounds i8, ptr %xfer.i58.i.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i59.i.i) #5
  %48 = ptrtoint ptr %buf.i59.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -31, ptr %buf.i59.i.i, align 1
  %addr.i60.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %49 = ptrtoint ptr %addr.i60.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %addr.i60.i.i, align 2
  %51 = ptrtoint ptr %xfer.i58.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %xfer.i58.i.i, align 4
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %9, align 8
  %54 = and i16 %53, 16
  %flags13.i61.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i58.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %flags13.i61.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %flags13.i61.i.i, align 2
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %46, align 4
  %buf17.i63.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i58.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %buf17.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i59.i.i, ptr %buf17.i63.i.i, align 4
  %58 = load i16, ptr %addr.i60.i.i, align 2
  %arrayidx19.i64.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i58.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx19.i64.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx19.i64.i.i, align 4
  %60 = load i16, ptr %9, align 8
  %61 = and i16 %60, 16
  %62 = or i16 %61, 1
  %flags26.i65.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i58.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %flags26.i65.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %flags26.i65.i.i, align 2
  %len29.i66.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i58.i.i, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %len29.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 3, ptr %len29.i66.i.i, align 4
  %buf31.i67.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i58.i.i, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %buf31.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i.i, ptr %buf31.i67.i.i, align 4
  %adapter.i68.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %66 = ptrtoint ptr %adapter.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i68.i.i, align 8
  %call.i69.i.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %xfer.i58.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i69.i.i)
  %cmp32.not.i70.i.i = icmp eq i32 %call.i69.i.i, 2
  br i1 %cmp32.not.i70.i.i, label %if.end11.i.i, label %do.end37.i74.i.i

do.end37.i74.i.i:                                 ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %call.i69.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i.i)
  %cmp38.i72.i.i = icmp slt i32 %call.i69.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i59.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i58.i.i) #5
  %spec.select157.i = select i1 %cmp38.i72.i.i, i32 %call.i69.i.i, i32 -5
  br label %mms114_get_version.exit.thread.i

if.end11.i.i:                                     ; preds = %sw.bb6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i59.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i58.i.i) #5
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %call13.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %70, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp.i.i, label %if.end11.i.i.mms114_get_version.exit.thread.i_crit_edge, label %do.end19.i.i

if.end11.i.i.mms114_get_version.exit.thread.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mms114_get_version.exit.thread.i

do.end19.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf.i.i, align 1
  %conv21.i.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %10, align 1
  %conv23.i.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %11, align 1
  %conv25.i.i = zext i8 %76 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.43, i32 noundef %conv21.i.i, i32 noundef %conv23.i.i, i32 noundef %conv25.i.i, i32 noundef %call13.i.i) #8
  br label %if.endthread-pre-split.i

sw.bb26.i.i:                                      ; preds = %if.end11.sw.bb26.i.i_crit_edge, %if.end11.sw.bb26.i.i_crit_edge48, %if.end11.sw.bb26.i.i_crit_edge49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer.i78.i.i) #5
  %77 = getelementptr inbounds i8, ptr %xfer.i78.i.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i79.i.i) #5
  %79 = ptrtoint ptr %buf.i79.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -16, ptr %buf.i79.i.i, align 1
  %addr.i80.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %80 = ptrtoint ptr %addr.i80.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr.i80.i.i, align 2
  %82 = ptrtoint ptr %xfer.i78.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %xfer.i78.i.i, align 4
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %9, align 8
  %85 = and i16 %84, 16
  %flags13.i81.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i78.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags13.i81.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %flags13.i81.i.i, align 2
  %87 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %77, align 4
  %buf17.i83.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i78.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf17.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i79.i.i, ptr %buf17.i83.i.i, align 4
  %89 = load i16, ptr %addr.i80.i.i, align 2
  %arrayidx19.i84.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i78.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx19.i84.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %arrayidx19.i84.i.i, align 4
  %91 = load i16, ptr %9, align 8
  %92 = and i16 %91, 16
  %93 = or i16 %92, 1
  %flags26.i85.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i78.i.i, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %flags26.i85.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %flags26.i85.i.i, align 2
  %len29.i86.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i78.i.i, i32 0, i32 1, i32 2
  %95 = ptrtoint ptr %len29.i86.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 6, ptr %len29.i86.i.i, align 4
  %buf31.i87.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer.i78.i.i, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %buf31.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %buf.i.i, ptr %buf31.i87.i.i, align 4
  %adapter.i88.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %97 = ptrtoint ptr %adapter.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adapter.i88.i.i, align 8
  %call.i89.i.i = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %xfer.i78.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i89.i.i)
  %cmp32.not.i90.i.i = icmp eq i32 %call.i89.i.i, 2
  br i1 %cmp32.not.i90.i.i, label %do.end34.i.i, label %do.end37.i94.i.i

do.end37.i94.i.i:                                 ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef %call.i89.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i.i)
  %cmp38.i92.i.i = icmp slt i32 %call.i89.i.i, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i79.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i78.i.i) #5
  %spec.select158.i = select i1 %cmp38.i92.i.i, i32 %call.i89.i.i, i32 -5
  br label %mms114_get_version.exit.thread.i

do.end34.i.i:                                     ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %99(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i79.i.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer.i78.i.i) #5
  %100 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %buf.i.i, align 1
  %conv36.i.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %10, align 1
  %conv38.i.i = zext i8 %103 to i32
  %104 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %12, align 1
  %conv40.i.i = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.46, i32 noundef %conv36.i.i, i32 noundef %conv38.i.i, i32 noundef %conv40.i.i) #8
  br label %if.endthread-pre-split.i

mms114_get_version.exit.thread.i:                 ; preds = %do.end37.i94.i.i, %if.end11.i.i.mms114_get_version.exit.thread.i_crit_edge, %do.end37.i74.i.i, %do.end37.i.i.i
  %retval.0.i.ph.i = phi i32 [ %call13.i.i, %if.end11.i.i.mms114_get_version.exit.thread.i_crit_edge ], [ %spec.select.i, %do.end37.i.i.i ], [ %spec.select157.i, %do.end37.i74.i.i ], [ %spec.select158.i, %do.end37.i94.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #5
  br label %if.then13

if.endthread-pre-split.i:                         ; preds = %do.end34.i.i, %do.end19.i.i, %do.end.i.i
  %106 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr.i = load i32, ptr %type.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %if.end11.if.end.i_crit_edge
  %107 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %15, %if.end11.if.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #5
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %107, label %if.end.i.if.end18_crit_edge [
    i32 114, label %if.end.i.if.end9.i_crit_edge
    i32 134, label %if.end.i.if.end9.i_crit_edge50
    i32 136, label %if.end.i.if.end9.i_crit_edge51
  ]

if.end.i.if.end9.i_crit_edge51:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge50:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge50, %if.end.i.if.end9.i_crit_edge51
  %cache_mode_control.i.i.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 8
  %109 = ptrtoint ptr %cache_mode_control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cache_mode_control.i.i.i, align 4
  %111 = and i8 %110, -15
  %112 = or i8 %111, 2
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i84.i) #5
  %115 = getelementptr inbounds [2 x i8], ptr %buf.i.i84.i, i32 0, i32 1
  %116 = ptrtoint ptr %buf.i.i84.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %buf.i.i84.i, align 1
  %117 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %112, ptr %115, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %114, ptr noundef nonnull %buf.i.i84.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end13.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %114, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i84.i) #5
  %spec.select = select i1 %cmp6.i.i.i, i32 %call.i.i.i.i, i32 -5
  br label %if.then13

if.end13.i:                                       ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 10737400) #5
  %119 = ptrtoint ptr %cache_mode_control.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %112, ptr %cache_mode_control.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i84.i) #5
  %120 = ptrtoint ptr %props1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %props1.i, align 4
  %shr.i = lshr i32 %121, 8
  %and.i = and i32 %shr.i, 15
  %max_y.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max_y.i, align 4
  %124 = lshr i32 %123, 4
  %shl.i = and i32 %124, 240
  %or.i = or i32 %shl.i, %and.i
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i85.i) #5
  %127 = getelementptr inbounds [2 x i8], ptr %buf.i85.i, i32 0, i32 1
  %128 = ptrtoint ptr %buf.i85.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %buf.i85.i, align 1
  %conv3.i86.i = trunc i32 %or.i to i8
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv3.i86.i, ptr %127, align 1
  %call.i.i87.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %126, ptr noundef nonnull %buf.i85.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i87.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i87.i, 2
  br i1 %cmp.not.i.i, label %if.end19.i, label %do.end.i89.i

do.end.i89.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %126, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i87.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %cmp6.i.i = icmp slt i32 %call.i.i87.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i85.i) #5
  %spec.select43 = select i1 %cmp6.i.i, i32 %call.i.i87.i, i32 -5
  br label %if.then13

if.end19.i:                                       ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %130(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i85.i) #5
  %131 = ptrtoint ptr %props1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %props1.i, align 4
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i91.i) #5
  %135 = getelementptr inbounds [2 x i8], ptr %buf.i91.i, i32 0, i32 1
  %136 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 3, ptr %buf.i91.i, align 1
  %conv3.i92.i = trunc i32 %132 to i8
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv3.i92.i, ptr %135, align 1
  %call.i.i93.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %134, ptr noundef nonnull %buf.i91.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i93.i)
  %cmp.not.i94.i = icmp eq i32 %call.i.i93.i, 2
  br i1 %cmp.not.i94.i, label %if.end25.i, label %do.end.i98.i

do.end.i98.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i95.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i95.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i93.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93.i)
  %cmp6.i96.i = icmp slt i32 %call.i.i93.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91.i) #5
  %spec.select44 = select i1 %cmp6.i96.i, i32 %call.i.i93.i, i32 -5
  br label %if.then13

if.end25.i:                                       ; preds = %if.end19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91.i) #5
  %139 = ptrtoint ptr %props1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %props1.i, align 4
  %141 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i102.i) #5
  %143 = getelementptr inbounds [2 x i8], ptr %buf.i102.i, i32 0, i32 1
  %144 = ptrtoint ptr %buf.i102.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 4, ptr %buf.i102.i, align 1
  %conv3.i103.i = trunc i32 %140 to i8
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv3.i103.i, ptr %143, align 1
  %call.i.i104.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %142, ptr noundef nonnull %buf.i102.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i104.i)
  %cmp.not.i105.i = icmp eq i32 %call.i.i104.i, 2
  br i1 %cmp.not.i105.i, label %if.end31.i, label %do.end.i109.i

do.end.i109.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i106.i = getelementptr inbounds %struct.i2c_client, ptr %142, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i106.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i104.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104.i)
  %cmp6.i107.i = icmp slt i32 %call.i.i104.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i102.i) #5
  %spec.select45 = select i1 %cmp6.i107.i, i32 %call.i.i104.i, i32 -5
  br label %if.then13

if.end31.i:                                       ; preds = %if.end25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %146(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i102.i) #5
  %contact_threshold.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 6
  %147 = ptrtoint ptr %contact_threshold.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %contact_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i = icmp eq i32 %148, 0
  br i1 %tobool.not.i, label %if.end31.i.if.end38.i_crit_edge, label %if.then32.i

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then32.i:                                      ; preds = %if.end31.i
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i113.i) #5
  %151 = getelementptr inbounds [2 x i8], ptr %buf.i113.i, i32 0, i32 1
  %152 = ptrtoint ptr %buf.i113.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 5, ptr %buf.i113.i, align 1
  %conv3.i114.i = trunc i32 %148 to i8
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv3.i114.i, ptr %151, align 1
  %call.i.i115.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %150, ptr noundef nonnull %buf.i113.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i115.i)
  %cmp.not.i116.i = icmp eq i32 %call.i.i115.i, 2
  br i1 %cmp.not.i116.i, label %mms114_write_reg.exit123.i, label %do.end.i120.i

do.end.i120.i:                                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i117.i = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i115.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115.i)
  %cmp6.i118.i = icmp slt i32 %call.i.i115.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i113.i) #5
  %spec.select46 = select i1 %cmp6.i118.i, i32 %call.i.i115.i, i32 -5
  br label %if.then13

mms114_write_reg.exit123.i:                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i113.i) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %mms114_write_reg.exit123.i, %if.end31.i.if.end38.i_crit_edge
  %moving_threshold.i = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 7
  %155 = ptrtoint ptr %moving_threshold.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %moving_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool39.not.i = icmp eq i32 %156, 0
  br i1 %tobool39.not.i, label %if.end38.i.if.end18_crit_edge, label %if.then40.i

if.end38.i.if.end18_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then40.i:                                      ; preds = %if.end38.i
  %157 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i124.i) #5
  %159 = getelementptr inbounds [2 x i8], ptr %buf.i124.i, i32 0, i32 1
  %160 = ptrtoint ptr %buf.i124.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 6, ptr %buf.i124.i, align 1
  %conv3.i125.i = trunc i32 %156 to i8
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv3.i125.i, ptr %159, align 1
  %call.i.i126.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %158, ptr noundef nonnull %buf.i124.i, i32 noundef 2, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i126.i)
  %cmp.not.i127.i = icmp eq i32 %call.i.i126.i, 2
  br i1 %cmp.not.i127.i, label %mms114_write_reg.exit134.i, label %do.end.i131.i

do.end.i131.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i128.i = getelementptr inbounds %struct.i2c_client, ptr %158, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i128.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i126.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126.i)
  %cmp6.i129.i = icmp slt i32 %call.i.i126.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124.i) #5
  %spec.select47 = select i1 %cmp6.i129.i, i32 %call.i.i126.i, i32 -5
  br label %if.then13

mms114_write_reg.exit134.i:                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %162(i32 noundef 10737400) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124.i) #5
  br label %if.end18

if.then13:                                        ; preds = %do.end.i131.i, %do.end.i120.i, %do.end.i109.i, %do.end.i98.i, %do.end.i89.i, %do.end.i.i.i, %mms114_get_version.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %mms114_get_version.exit.thread.i ], [ %spec.select, %do.end.i.i.i ], [ %spec.select43, %do.end.i89.i ], [ %spec.select44, %do.end.i98.i ], [ %spec.select45, %do.end.i109.i ], [ %spec.select46, %do.end.i120.i ], [ %spec.select47, %do.end.i131.i ]
  %163 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %io_reg, align 4
  %call15 = call i32 @regulator_disable(ptr noundef %164) #5
  %165 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %core_reg, align 4
  %call17 = call i32 @regulator_disable(ptr noundef %166) #5
  br label %cleanup

if.end18:                                         ; preds = %mms114_write_reg.exit134.i, %if.end38.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %167 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %168) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %retval.0.i.ph, %if.then13 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mms114_process_mt(ptr noundef %data, ptr nocapture noundef readonly %touch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %input_dev2 = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev2, align 4
  %4 = ptrtoint ptr %touch to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load = load i16, ptr %touch, align 1
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext i16 %bf.lshr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20481, i16 %bf.load)
  %cmp = icmp ugt i16 %bf.load, -20481
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %bf.cast) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.lshr9 = lshr i16 %bf.load, 9
  %5 = and i16 %bf.lshr9, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp12.not = icmp eq i16 %5, 1
  br i1 %cmp12.not, label %if.end24, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bf.cast10 = zext i16 %5 to i32
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.61, i32 noundef %bf.cast10) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %sub = add nsw i32 %bf.cast, -1
  %x_lo = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 1
  %6 = ptrtoint ptr %x_lo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_lo, align 1
  %conv29 = zext i8 %7 to i32
  %8 = shl i16 %bf.load, 4
  %9 = and i16 %8, 3840
  %shl = zext i16 %9 to i32
  %or = or i32 %conv29, %shl
  %y_lo = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 2
  %10 = ptrtoint ptr %y_lo to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %y_lo, align 1
  %conv35 = zext i8 %11 to i32
  %12 = shl i16 %bf.load, 8
  %13 = and i16 %12, 3840
  %shl40 = zext i16 %13 to i32
  %or41 = or i32 %conv35, %shl40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mms114_process_mt.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mms114_process_mt, %if.then45)) #5
          to label %do.end61 [label %if.then45], !srcloc !140

if.then45:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %touch to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load47 = load i16, ptr %touch, align 1
  %bf.lshr48 = lshr i16 %bf.load47, 9
  %15 = and i16 %bf.lshr48, 3
  %bf.cast50 = zext i16 %15 to i32
  %bf.lshr53 = lshr i16 %bf.load47, 8
  %16 = and i16 %bf.lshr53, 1
  %bf.cast55 = zext i16 %16 to i32
  %width = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width, align 1
  %conv57 = zext i8 %18 to i32
  %strength = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 4
  %19 = ptrtoint ptr %strength to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %strength, align 1
  %conv58 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mms114_process_mt.__UNIQUE_ID_ddebug288, ptr noundef %dev46, ptr noundef nonnull @.str.63, i32 noundef %sub, i32 noundef %bf.cast50, i32 noundef %bf.cast55, i32 noundef %or, i32 noundef %or41, i32 noundef %conv57, i32 noundef %conv58) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then45, %if.end24
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #5
  %21 = ptrtoint ptr %touch to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load62 = load i16, ptr %touch, align 1
  %22 = and i16 %bf.load62, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool66 = icmp ne i16 %22, 0
  %call67 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext %tobool66) #5
  %23 = ptrtoint ptr %touch to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load68 = load i16, ptr %touch, align 1
  %24 = and i16 %bf.load68, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool72.not = icmp eq i16 %24, 0
  br i1 %tobool72.not, label %do.end61.cleanup_crit_edge, label %if.then73

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then73:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  %props = getelementptr inbounds %struct.mms114_data, ptr %data, i32 0, i32 4
  tail call void @touchscreen_report_pos(ptr noundef %3, ptr noundef %props, i32 noundef %or, i32 noundef %or41, i1 noundef zeroext true) #5
  %width74 = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 3
  %25 = ptrtoint ptr %width74 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %width74, align 1
  %conv75 = zext i8 %26 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 48, i32 noundef %conv75) #5
  %strength76 = getelementptr inbounds %struct.mms114_touch, ptr %touch, i32 0, i32 4
  %27 = ptrtoint ptr %strength76 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %strength76, align 1
  %conv77 = zext i8 %28 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 58, i32 noundef %conv77) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.end61.cleanup_crit_edge, %do.end17, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 0) #5
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 1) #5
  %call.i.1 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 2) #5
  %call.i.2 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 3) #5
  %call.i.3 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 4) #5
  %call.i.4 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 5) #5
  %call.i.5 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 6) #5
  %call.i.6 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 7) #5
  %call.i.7 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 8) #5
  %call.i.8 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 9) #5
  %call.i.9 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_mt_report_pointer_emulation(ptr noundef %3, i1 noundef zeroext true) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %7) #5
  %io_reg.i = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_reg.i, align 4
  %call.i13 = tail call i32 @regulator_disable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.52, i32 noundef %call.i13) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %core_reg.i = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %core_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core_reg.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %do.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8.i, ptr noundef nonnull @.str.56, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end7.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mms114_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.mms114_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call2, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @mms114_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call3, %if.then.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_mms114__292_646_mms114_driver_init6, !1, !"__initcall__kmod_mms114__292_646_mms114_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/mms114.c", i32 646, i32 1}
!2 = !{ptr @__exitcall_mms114_driver_exit, !1, !"__exitcall_mms114_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/mms114.c", i32 649, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/mms114.c", i32 650, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/mms114.c", i32 651, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/mms114.c", i32 638, i32 11}
!12 = !{ptr @mms114_driver, !13, !"mms114_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/mms114.c", i32 636, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/mms114.c", i32 452, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mms114_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mms114_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/mms114.c", i32 460, i32 3}
!24 = !{ptr @mms114_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mms114_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/mms114.c", i32 481, i32 3}
!28 = !{ptr @mms114_probe.__UNIQUE_ID_ddebug291, !27, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/mms114.c", i32 509, i32 7}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/mms114.c", i32 527, i32 52}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/mms114.c", i32 530, i32 3}
!35 = !{ptr @mms114_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mms114_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/mms114.c", i32 535, i32 50}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/mms114.c", i32 538, i32 3}
!41 = !{ptr @mms114_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mms114_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/mms114.c", i32 548, i32 3}
!45 = !{ptr @mms114_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mms114_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/mms114.c", i32 554, i32 3}
!49 = !{ptr @mms114_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mms114_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/mms114.c", i32 418, i32 36}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/mms114.c", i32 419, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug289, !54, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/mms114.c", i32 423, i32 36}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/mms114.c", i32 424, i32 3}
!61 = !{ptr @mms114_parse_legacy_bindings.__UNIQUE_ID_ddebug290, !60, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/mms114.c", i32 428, i32 32}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/mms114.c", i32 430, i32 32}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/mms114.c", i32 433, i32 37}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/mms114.c", i32 435, i32 37}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/mms114.c", i32 358, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mms114_start._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mms114_start._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/mms114.c", i32 364, i32 3}
!77 = !{ptr @mms114_start._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mms114_start._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/mms114.c", i32 266, i32 3}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mms114_get_version._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @mms114_get_version._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/mms114.c", i32 280, i32 3}
!87 = !{ptr @mms114_get_version._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mms114_get_version._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/mms114.c", i32 291, i32 3}
!91 = !{ptr @mms114_get_version._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mms114_get_version._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/mms114.c", i32 112, i32 3}
!95 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__mms114_read_reg._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @__mms114_read_reg._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/mms114.c", i32 145, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mms114_write_reg._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @mms114_write_reg._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/mms114.c", i32 392, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mms114_stop._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @mms114_stop._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/mms114.c", i32 396, i32 3}
!111 = !{ptr @mms114_stop._entry.55, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mms114_stop._entry_ptr.57, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/mms114.c", i32 166, i32 3}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mms114_process_mt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mms114_process_mt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/mms114.c", i32 171, i32 3}
!120 = !{ptr @mms114_process_mt._entry.60, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mms114_process_mt._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/mms114.c", i32 179, i32 2}
!124 = !{ptr @mms114_process_mt.__UNIQUE_ID_ddebug288, !123, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!125 = !{ptr @mms114_dt_match, !126, !"mms114_dt_match", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/mms114.c", i32 614, i32 34}
!127 = !{ptr @mms114_pm_ops, !128, !"mms114_pm_ops", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/mms114.c", i32 605, i32 8}
!129 = !{ptr @mms114_id, !130, !"mms114_id", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/mms114.c", i32 607, i32 35}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2148967348, i64 2148967353, i64 2148967366, i64 2148967410, i64 2148967444, i64 2148967465}
!141 = !{!"auto-init"}
