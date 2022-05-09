; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/zforce_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/zforce_ts.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.zforce_ts_platdata = type { i32, i32 }
%struct.zforce_ts = type { ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, i8, i8, i8, i16, i16, i16, i16, %struct.mutex, %struct.completion, %struct.mutex, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_zforce_ts__312_952_zforce_driver_init6 = internal global ptr @zforce_driver_init, section ".initcall6.init", align 4
@zforce_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @zforce_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zforce_dt_idtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zforce_pm_ops, ptr null, ptr null }, ptr @zforce_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_zforce_driver_exit = internal global ptr @zforce_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [50 x i8] c"zforce_ts.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [48 x i8] c"zforce_ts.description=zForce TouchScreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [51 x i8] c"zforce_ts.file=drivers/input/touchscreen/zforce_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [22 x i8] c"zforce_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zforce-ts\00", [22 x i8] zeroinitializer }, align 32
@zforce_dt_idtable = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"neonode,zforce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zforce_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zforce_suspend, ptr @zforce_resume, ptr @zforce_suspend, ptr @zforce_resume, ptr @zforce_suspend, ptr @zforce_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@zforce_idtable = internal global { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"zforce-ts\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@zforce_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request reset GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zforce_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/touchscreen/zforce_ts.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr = internal global ptr @zforce_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@zforce_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request interrupt GPIO: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.10 = internal global ptr @zforce_probe._entry.8, section ".printk_index", align 4
@zforce_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.12 = internal global ptr @zforce_probe._entry.11, section ".printk_index", align 4
@zforce_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 793, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.14 = internal global ptr @zforce_probe._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zforce_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register reset action, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.18 = internal global ptr @zforce_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@zforce_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.22 = internal global ptr @zforce_probe._entry.20, section ".printk_index", align 4
@zforce_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ts->access_mutex\00", [46 x i8] zeroinitializer }, align 32
@zforce_probe.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ts->command_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Neonode zForce touchscreen\00", [37 x i8] zeroinitializer }, align 32
@zforce_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 883, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irq %d request failed\0A\00", [41 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.29 = internal global ptr @zforce_probe._entry.27, section ".printk_index", align 4
@zforce_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 894, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bootcomplete timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.33 = internal global ptr @zforce_probe._entry.30, section ".printk_index", align 4
@zforce_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to initialize, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.36 = internal global ptr @zforce_probe._entry.34, section ".printk_index", align 4
@zforce_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 906, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get status, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.39 = internal global ptr @zforce_probe._entry.37, section ".printk_index", align 4
@zforce_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 921, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not register input device, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@zforce_probe._entry_ptr.42 = internal global ptr @zforce_probe._entry.40, section ".printk_index", align 4
@zforce_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 718, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate platform data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zforce_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@zforce_parse_dt._entry_ptr = internal global ptr @zforce_parse_dt._entry, section ".printk_index", align 4
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"x-size\00", [25 x i8] zeroinitializer }, align 32
@zforce_parse_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.4, i32 723, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get x-size property\0A\00", [33 x i8] zeroinitializer }, align 32
@zforce_parse_dt._entry_ptr.48 = internal global ptr @zforce_parse_dt._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"y-size\00", [25 x i8] zeroinitializer }, align 32
@zforce_parse_dt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.4, i32 728, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get y-size property\0A\00", [33 x i8] zeroinitializer }, align 32
@zforce_parse_dt._entry_ptr.52 = internal global ptr @zforce_parse_dt._entry.50, section ".printk_index", align 4
@zforce_start.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zforce_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zforce_start\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"starting device\0A\00", [47 x i8] zeroinitializer }, align 32
@zforce_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 276, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to initialize, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@zforce_start._entry_ptr = internal global ptr @zforce_start._entry, section ".printk_index", align 4
@zforce_start._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.4, i32 282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to set resolution, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@zforce_start._entry_ptr.59 = internal global ptr @zforce_start._entry.57, section ".printk_index", align 4
@zforce_start._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to set scan frequency, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@zforce_start._entry_ptr.62 = internal global ptr @zforce_start._entry.60, section ".printk_index", align 4
@zforce_start._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.54, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to set config\0A\00", [42 x i8] zeroinitializer }, align 32
@zforce_start._entry_ptr.65 = internal global ptr @zforce_start._entry.63, section ".printk_index", align 4
@zforce_start._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.54, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to request data\0A\00", [40 x i8] zeroinitializer }, align 32
@zforce_start._entry_ptr.68 = internal global ptr @zforce_start._entry.66, section ".printk_index", align 4
@zforce_resolution.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zforce_resolution\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set resolution to (%d,%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@zforce_send_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"already waiting for a command\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zforce_send_wait\00", [47 x i8] zeroinitializer }, align 32
@zforce_send_wait._entry_ptr = internal global ptr @zforce_send_wait._entry, section ".printk_index", align 4
@zforce_send_wait.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sending %d bytes for command 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@zforce_send_wait._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.4, i32 188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c send data request error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@zforce_send_wait._entry_ptr.76 = internal global ptr @zforce_send_wait._entry.74, section ".printk_index", align 4
@zforce_send_wait.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.72, ptr @.str.4, ptr @.str.77, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"waiting for result for command 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@zforce_scan_frequency.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zforce_scan_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"set scan frequency to (idle: %d, finger: %d, stylus: %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@zforce_setconfig.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zforce_setconfig\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set config to (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@zforce_command.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.82, ptr @.str.4, ptr @.str.83, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zforce_command\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%x\0A\00", [22 x i8] zeroinitializer }, align 32
@zforce_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.82, ptr @.str.4, i32 151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zforce_command._entry_ptr = internal global ptr @zforce_command._entry, section ".printk_index", align 4
@zforce_input_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 606, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stopping zforce failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zforce_input_close\00", [45 x i8] zeroinitializer }, align 32
@zforce_input_close._entry_ptr = internal global ptr @zforce_input_close._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zforce_irq_thread.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.87, ptr @.str.4, ptr @.str.88, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zforce_irq_thread\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handling interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@zforce_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not read packet, ret: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@zforce_irq_thread._entry_ptr = internal global ptr @zforce_irq_thread._entry, section ".printk_index", align 4
@zforce_irq_thread.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.87, ptr @.str.4, ptr @.str.90, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware Version %04x:%04x %04x:%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@zforce_irq_thread._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid command: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@zforce_irq_thread._entry_ptr.93 = internal global ptr @zforce_irq_thread._entry.91, section ".printk_index", align 4
@zforce_irq_thread._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.4, i32 578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unrecognized response id: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@zforce_irq_thread._entry_ptr.96 = internal global ptr @zforce_irq_thread._entry.94, section ".printk_index", align 4
@zforce_irq_thread.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.87, ptr @.str.4, ptr @.str.97, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"finished interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@zforce_read_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading header: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zforce_read_packet\00", [45 x i8] zeroinitializer }, align 32
@zforce_read_packet._entry_ptr = internal global ptr @zforce_read_packet._entry, section ".printk_index", align 4
@zforce_read_packet._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid frame start: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@zforce_read_packet._entry_ptr.102 = internal global ptr @zforce_read_packet._entry.100, section ".printk_index", align 4
@zforce_read_packet._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid payload length: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@zforce_read_packet._entry_ptr.105 = internal global ptr @zforce_read_packet._entry.103, section ".printk_index", align 4
@zforce_read_packet._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading payload: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@zforce_read_packet._entry_ptr.108 = internal global ptr @zforce_read_packet._entry.106, section ".printk_index", align 4
@zforce_read_packet.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.99, ptr @.str.4, ptr @.str.109, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"read %d bytes for response command 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@zforce_touch_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.4, i32 348, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"too many coordinates %d, expected max %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zforce_touch_event\00", [45 x i8] zeroinitializer }, align 32
@zforce_touch_event._entry_ptr = internal global ptr @zforce_touch_event._entry, section ".printk_index", align 4
@zforce_touch_event._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.4, i32 361, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"coordinates (%d,%d) invalid\0A\00", [35 x i8] zeroinitializer }, align 32
@zforce_touch_event._entry_ptr.114 = internal global ptr @zforce_touch_event._entry.112, section ".printk_index", align 4
@zforce_touch_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.111, ptr @.str.4, ptr @.str.115, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"point %d/%d: state %d, id %d, pressure %d, prblty %d, x %d, y %d, amajor %d, aminor %d, ori %d\0A\00", [32 x i8] zeroinitializer }, align 32
@zforce_complete.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.116, ptr @.str.4, ptr @.str.117, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zforce_complete\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"completing command 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@zforce_complete.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.116, ptr @.str.4, ptr @.str.118, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"command %d not for us\0A\00", [41 x i8] zeroinitializer }, align 32
@zforce_command_wait.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.119, ptr @.str.4, ptr @.str.83, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zforce_command_wait\00", [44 x i8] zeroinitializer }, align 32
@zforce_command_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.119, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zforce_command_wait._entry_ptr = internal global ptr @zforce_command_wait._entry, section ".printk_index", align 4
@zforce_stop.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.120, ptr @.str.4, ptr @.str.121, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zforce_stop\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stopping device\0A\00", [47 x i8] zeroinitializer }, align 32
@zforce_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not deactivate device, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@zforce_stop._entry_ptr = internal global ptr @zforce_stop._entry, section ".printk_index", align 4
@zforce_suspend.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.123, ptr @.str.4, ptr @.str.124, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zforce_suspend\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"suspend while being a wakeup source\0A\00", [59 x i8] zeroinitializer }, align 32
@zforce_suspend.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.123, ptr @.str.4, ptr @.str.125, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"suspend without being a wakeup source\0A\00", [57 x i8] zeroinitializer }, align 32
@zforce_resume.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.126, ptr @.str.4, ptr @.str.127, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zforce_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"resume from being a wakeup source\0A\00", [61 x i8] zeroinitializer }, align 32
@zforce_resume.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.126, ptr @.str.4, ptr @.str.128, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"resume without being a wakeup source\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 30, i64 254]
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"zforce_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 942, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 944, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"zforce_dt_idtable\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 935, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"zforce_pm_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 694, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"zforce_idtable\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 928, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 753, i32 55 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 757, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 763, i32 56 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 767, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 782, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 792, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 798, i32 58 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 817, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 828, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 832, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 836, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 837, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 843, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 883, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 894, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 899, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 906, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 920, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 718, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 722, i32 31 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 723, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 727, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 728, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 272, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 276, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 282, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 288, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 295, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 302, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 234, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 175, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 179, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 188, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 192, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 248, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 261, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 141, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 151, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 606, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 87, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 499, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 517, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 562, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 571, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 576, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 586, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 426, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 431, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 437, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 446, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 450, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 346, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 360, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 378, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 463, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 467, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 212, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 220, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 324, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 329, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 626, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 637, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 668, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.496 = private constant [41 x i8] c"../drivers/input/touchscreen/zforce_ts.c\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 679, i32 3 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_zforce_driver_exit, ptr @__initcall__kmod_zforce_ts__312_952_zforce_driver_init6, ptr @zforce_command._entry, ptr @zforce_command._entry_ptr, ptr @zforce_command_wait._entry, ptr @zforce_command_wait._entry_ptr, ptr @zforce_driver_exit, ptr @zforce_input_close._entry, ptr @zforce_input_close._entry_ptr, ptr @zforce_irq_thread._entry, ptr @zforce_irq_thread._entry.91, ptr @zforce_irq_thread._entry.94, ptr @zforce_irq_thread._entry_ptr, ptr @zforce_irq_thread._entry_ptr.93, ptr @zforce_irq_thread._entry_ptr.96, ptr @zforce_parse_dt._entry, ptr @zforce_parse_dt._entry.46, ptr @zforce_parse_dt._entry.50, ptr @zforce_parse_dt._entry_ptr, ptr @zforce_parse_dt._entry_ptr.48, ptr @zforce_parse_dt._entry_ptr.52, ptr @zforce_probe._entry, ptr @zforce_probe._entry.11, ptr @zforce_probe._entry.13, ptr @zforce_probe._entry.16, ptr @zforce_probe._entry.20, ptr @zforce_probe._entry.27, ptr @zforce_probe._entry.30, ptr @zforce_probe._entry.34, ptr @zforce_probe._entry.37, ptr @zforce_probe._entry.40, ptr @zforce_probe._entry.8, ptr @zforce_probe._entry_ptr, ptr @zforce_probe._entry_ptr.10, ptr @zforce_probe._entry_ptr.12, ptr @zforce_probe._entry_ptr.14, ptr @zforce_probe._entry_ptr.18, ptr @zforce_probe._entry_ptr.22, ptr @zforce_probe._entry_ptr.29, ptr @zforce_probe._entry_ptr.33, ptr @zforce_probe._entry_ptr.36, ptr @zforce_probe._entry_ptr.39, ptr @zforce_probe._entry_ptr.42, ptr @zforce_read_packet._entry, ptr @zforce_read_packet._entry.100, ptr @zforce_read_packet._entry.103, ptr @zforce_read_packet._entry.106, ptr @zforce_read_packet._entry_ptr, ptr @zforce_read_packet._entry_ptr.102, ptr @zforce_read_packet._entry_ptr.105, ptr @zforce_read_packet._entry_ptr.108, ptr @zforce_send_wait._entry, ptr @zforce_send_wait._entry.74, ptr @zforce_send_wait._entry_ptr, ptr @zforce_send_wait._entry_ptr.76, ptr @zforce_start._entry, ptr @zforce_start._entry.57, ptr @zforce_start._entry.60, ptr @zforce_start._entry.63, ptr @zforce_start._entry.66, ptr @zforce_start._entry_ptr, ptr @zforce_start._entry_ptr.59, ptr @zforce_start._entry_ptr.62, ptr @zforce_start._entry_ptr.65, ptr @zforce_start._entry_ptr.68, ptr @zforce_stop._entry, ptr @zforce_stop._entry_ptr, ptr @zforce_touch_event._entry, ptr @zforce_touch_event._entry.112, ptr @zforce_touch_event._entry_ptr, ptr @zforce_touch_event._entry_ptr.114, ptr @zforce_driver, ptr @.str, ptr @zforce_dt_idtable, ptr @zforce_pm_ops, ptr @zforce_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @zforce_probe.__key, ptr @.str.23, ptr @zforce_probe.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @init_completion.__key, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_dt_idtable to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_parse_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_parse_dt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_start._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_start._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_start._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_start._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_send_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_send_wait._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_input_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_irq_thread._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_irq_thread._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_read_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_read_packet._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_read_packet._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_read_packet._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_touch_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_touch_event._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_command_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zforce_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @zforce_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zforce_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @zforce_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i308 = alloca [3 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.then4_crit_edge, label %if.end.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end5.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.45, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool7.not.i, label %if.end13.i, label %if.end5.i.cleanup.sink.split.i_crit_edge

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end5.i
  %y_max.i = getelementptr inbounds %struct.zforce_ts_platdata, ptr %call.i.i, i32 0, i32 1
  %call.i.i32.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.49, ptr noundef %y_max.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i32.i)
  %tobool15.not.i = icmp sgt i32 %call.i.i32.i, -1
  br i1 %tobool15.not.i, label %zforce_parse_dt.exit, label %if.end13.i.cleanup.sink.split.i_crit_edge

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i.cleanup.sink.split.i_crit_edge, %if.end5.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %.str.51.sink.i = phi ptr [ @.str.43, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.47, %if.end5.i.cleanup.sink.split.i_crit_edge ], [ @.str.51, %if.end13.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup.sink.split.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.cleanup.sink.split.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end13.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.51.sink.i) #10
  br label %if.then4

zforce_parse_dt.exit:                             ; preds = %if.end13.i
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %zforce_parse_dt.exit.if.then4_crit_edge, label %zforce_parse_dt.exit.if.end6_crit_edge

zforce_parse_dt.exit.if.end6_crit_edge:           ; preds = %zforce_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

zforce_parse_dt.exit.if.then4_crit_edge:          ; preds = %zforce_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %zforce_parse_dt.exit.if.then4_crit_edge, %cleanup.sink.split.i, %if.then.if.then4_crit_edge
  %retval.0.i320 = phi ptr [ %call.i.i, %zforce_parse_dt.exit.if.then4_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ inttoptr (i32 -2 to ptr), %if.then.if.then4_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i320 to i32
  br label %cleanup

if.end6:                                          ; preds = %zforce_parse_dt.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call.i.i, %zforce_parse_dt.exit.if.end6_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #7
  %gpio_rst = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %gpio_rst, align 4
  %cmp.i296 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %6) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %tobool22.not = icmp eq ptr %call13, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call25 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  %gpio_int = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %gpio_int to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %gpio_int, align 4
  %cmp.i297 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297, label %if.then28, label %if.then23.if.end62_crit_edge

if.then23.if.end62_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %8) #10
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %call37 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 1) #7
  %gpio_int38 = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %gpio_int38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call37, ptr %gpio_int38, align 4
  %cmp.i298 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i298, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %10) #10
  br label %cleanup

if.end48:                                         ; preds = %if.else
  %call50 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 1, i32 noundef 7) #7
  %11 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call50, ptr %gpio_rst, align 4
  %cmp.i299 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then54, label %if.end48.if.end62_crit_edge

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %12) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end48.if.end62_crit_edge, %if.then23.if.end62_crit_edge
  %call64 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  %reg_vdd = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call64, ptr %reg_vdd, align 4
  %cmp.i300 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.end62
  %cmp = icmp eq ptr %call64, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then67.cleanup_crit_edge, label %if.then67.if.end78_crit_edge

if.then67.if.end78_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else72:                                        ; preds = %if.end62
  %call74 = tail call i32 @regulator_enable(ptr noundef %call64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.else72.cleanup_crit_edge

if.else72.cleanup_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #7
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then67.if.end78_crit_edge
  %call80 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @zforce_reset, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end93, label %do.end85

do.end85:                                         ; preds = %if.end78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call80) #10
  %15 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_vdd, align 4
  %cmp.i301 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %do.end85.cleanup_crit_edge, label %if.then89

do.end85.cleanup_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then89:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call i32 @regulator_disable(ptr noundef %16) #7
  br label %cleanup

if.end93:                                         ; preds = %if.end78
  %phys = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i302 = icmp eq ptr %18, null
  br i1 %tobool.not.i302, label %if.end.i303, label %if.end93.dev_name.exit_crit_edge

if.end93.dev_name.exit_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i303:                                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i303, %if.end93.dev_name.exit_crit_edge
  %retval.0.i304 = phi ptr [ %20, %if.end.i303 ], [ %18, %if.end93.dev_name.exit_crit_edge ]
  %call96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i304)
  %call98 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %do.end103, label %do.body106

do.end103:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

do.body106:                                       ; preds = %dev_name.exit
  %access_mutex = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %access_mutex, ptr noundef nonnull @.str.23, ptr noundef nonnull @zforce_probe.__key) #7
  %command_mutex = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %command_mutex, ptr noundef nonnull @.str.25, ptr noundef nonnull @zforce_probe.__key.24) #7
  %pdata112 = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %pdata112 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdata.0, ptr %pdata112, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %client, ptr %call.i, align 4
  %input = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call98, ptr %input, align 4
  %24 = ptrtoint ptr %call98 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.26, ptr %call98, align 8
  %phys116 = getelementptr inbounds %struct.input_dev, ptr %call98, i32 0, i32 1
  %25 = ptrtoint ptr %phys116 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %phys, ptr %phys116, align 4
  %id117 = getelementptr inbounds %struct.input_dev, ptr %call98, i32 0, i32 3
  %26 = ptrtoint ptr %id117 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 24, ptr %id117, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call98, i32 0, i32 31
  %27 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @zforce_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call98, i32 0, i32 32
  %28 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @zforce_input_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call98, i32 0, i32 5
  %29 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %evbit, align 4
  %or.i295 = or i32 %30, 11
  store i32 %or.i295, ptr %evbit, align 4
  %31 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pdata.0, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call98, i32 noundef 53, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #7
  %y_max = getelementptr inbounds %struct.zforce_ts_platdata, ptr %pdata.0, i32 0, i32 1
  %33 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call98, i32 noundef 54, i32 noundef 0, i32 noundef %34, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call98, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call98, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call98, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %call123 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call98, i32 noundef 2, i32 noundef 2) #7
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 40, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %command_done = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %command_done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %command_done, align 4
  %wait.i = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_completion.__key) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %41 = ptrtoint ptr %call98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call98, align 8
  %call127 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull @zforce_irq, ptr noundef nonnull @zforce_irq_thread, i32 noundef 8200, ptr noundef %42, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end135, label %do.end132

do.end132:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %44) #10
  br label %cleanup

if.end135:                                        ; preds = %do.body106
  %driver_data.i.i305 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %45 = ptrtoint ptr %driver_data.i.i305 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i305, align 4
  %46 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpio_rst, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %47, i32 noundef 0) #7
  %command_waiting = getelementptr inbounds %struct.zforce_ts, ptr %call.i, i32 0, i32 17
  %48 = ptrtoint ptr %command_waiting to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %command_waiting, align 4
  %call138 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %do.end143, label %if.end135.if.end145_crit_edge

if.end135.if.end145_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %if.end145

if.end145:                                        ; preds = %do.end143, %if.end135.if.end145_crit_edge
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %51 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_probe, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !265

if.then.i:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command_wait.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end145
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -18, ptr %buf.i, align 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %51, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %52, align 1
  %call7.i = call fastcc i32 @zforce_send_wait(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i306 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i306, label %do.end151, label %if.end153

do.end151:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.75, i32 noundef %call7.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call7.i) #10
  br label %cleanup

if.end153:                                        ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i308) #7
  %58 = getelementptr inbounds [3 x i8], ptr %buf.i308, i32 0, i32 1
  %59 = getelementptr inbounds [3 x i8], ptr %buf.i308, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_probe, %if.then.i310)) #7
          to label %do.end.i313 [label %if.then.i310], !srcloc !265

if.then.i310:                                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i309 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command_wait.__UNIQUE_ID_ddebug291, ptr noundef %dev.i309, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef 30) #7
  br label %do.end.i313

do.end.i313:                                      ; preds = %if.then.i310, %if.end153
  %60 = ptrtoint ptr %buf.i308 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -18, ptr %buf.i308, align 1
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %58, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 30, ptr %59, align 1
  %call7.i311 = call fastcc i32 @zforce_send_wait(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i308, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i311)
  %cmp.i312 = icmp slt i32 %call7.i311, 0
  br i1 %cmp.i312, label %do.end159, label %if.end162

do.end159:                                        ; preds = %do.end.i313
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i314 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i314, ptr noundef nonnull @.str.75, i32 noundef %call7.i311) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i308) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call7.i311) #10
  %call161 = call fastcc i32 @zforce_stop(ptr noundef nonnull %call.i)
  br label %cleanup

if.end162:                                        ; preds = %do.end.i313
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i308) #7
  %call163 = call fastcc i32 @zforce_stop(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.end162.cleanup_crit_edge, label %if.end166

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end166:                                        ; preds = %if.end162
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call168 = call i32 @input_register_device(ptr noundef nonnull %call98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end166.cleanup_crit_edge, label %do.end173

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end173:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call168) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end173, %if.end166.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %do.end159, %do.end151, %do.end132, %do.end103, %if.then89, %do.end85.cleanup_crit_edge, %if.else72.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then54, %if.then41, %if.then28, %if.then16, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %6, %if.then16 ], [ %8, %if.then28 ], [ %call127, %do.end132 ], [ %call7.i, %do.end151 ], [ %call7.i311, %do.end159 ], [ %call168, %do.end173 ], [ -12, %do.end103 ], [ %10, %if.then41 ], [ %12, %if.then54 ], [ %4, %if.then4 ], [ -12, %if.end6.cleanup_crit_edge ], [ -517, %if.then67.cleanup_crit_edge ], [ %call74, %if.else72.cleanup_crit_edge ], [ %call80, %if.then89 ], [ %call80, %do.end85.cleanup_crit_edge ], [ %call163, %if.end162.cleanup_crit_edge ], [ 0, %if.end166.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zforce_reset(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_rst.i = getelementptr inbounds %struct.zforce_ts, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %gpio_rst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_rst.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #7
  %reg_vdd = getelementptr inbounds %struct.zforce_ts, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_vdd, align 4
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @regulator_disable(ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @zforce_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zforce_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call fastcc i32 @zforce_stop(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.84) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_wakeup_dev_event(ptr noundef %dev, i32 noundef 500, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %payload_buffer = alloca [257 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %payload_buffer) #7
  %2 = call ptr @memset(ptr %payload_buffer, i32 255, i32 257)
  %suspended = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 8
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %suspended, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_irq_thread.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !265

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_irq_thread.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.88) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %suspending = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 7
  %5 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspending, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %can_wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.end12_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end12_crit_edge, label %if.then10

device_may_wakeup.exit.if.end12_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_stay_awake(ptr noundef %dev8) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %device_may_wakeup.exit.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %arrayidx = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 4
  %version_major = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 10
  %arrayidx51 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 5
  %version_minor = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 11
  %arrayidx58 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 8
  %arrayidx61 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 7
  %version_build = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 12
  %arrayidx65 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 10
  %arrayidx68 = getelementptr inbounds [257 x i8], ptr %payload_buffer, i32 0, i32 9
  %version_rev = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 13
  %command_waiting.i221 = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 17
  %command_result.i226 = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 18
  %command_done.i227 = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 15
  %boot_complete = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 9
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %can_wakeup.i202 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 1
  %wakeup.i205 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 6
  %gpio_int = getelementptr inbounds %struct.zforce_ts, ptr %dev_id, i32 0, i32 5
  br label %do.body13

do.body13:                                        ; preds = %do.cond115.do.body13_crit_edge, %if.end12
  %call14 = call fastcc i32 @zforce_read_packet(ptr noundef %dev_id, ptr noundef nonnull %payload_buffer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end20

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.89, i32 noundef %call14) #10
  br label %do.end118

if.end20:                                         ; preds = %do.body13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %do.end110 [
    i8 4, label %sw.bb
    i8 7, label %sw.bb34
    i8 1, label %if.end20.sw.bb40_crit_edge
    i8 0, label %if.end20.sw.bb40_crit_edge249
    i8 3, label %if.end20.sw.bb40_crit_edge250
    i8 2, label %if.end20.sw.bb40_crit_edge251
    i8 8, label %if.end20.sw.bb40_crit_edge252
    i8 30, label %sw.bb45
    i8 -2, label %do.end103
  ]

if.end20.sw.bb40_crit_edge252:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end20.sw.bb40_crit_edge251:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end20.sw.bb40_crit_edge250:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end20.sw.bb40_crit_edge249:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end20.sw.bb40_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

sw.bb:                                            ; preds = %if.end20
  %13 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %suspending, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %sw.bb.if.end31_crit_edge, label %land.lhs.true25

sw.bb.if.end31_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true25:                                  ; preds = %sw.bb
  %15 = ptrtoint ptr %can_wakeup.i202 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i203 = load i16, ptr %can_wakeup.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i203)
  %tobool.not.i204 = icmp sgt i16 %bf.load.i203, -1
  br i1 %tobool.not.i204, label %land.lhs.true25.if.end31_crit_edge, label %device_may_wakeup.exit208

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

device_may_wakeup.exit208:                        ; preds = %land.lhs.true25
  %16 = ptrtoint ptr %wakeup.i205 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeup.i205, align 8
  %tobool2.i206.not = icmp eq ptr %17, null
  br i1 %tobool2.i206.not, label %device_may_wakeup.exit208.if.end31_crit_edge, label %if.then29

device_may_wakeup.exit208.if.end31_crit_edge:     ; preds = %device_may_wakeup.exit208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %device_may_wakeup.exit208
  call void @__sanitizer_cov_trace_pc() #9
  call void @pm_wakeup_dev_event(ptr noundef %dev26, i32 noundef 500, i1 noundef zeroext false) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %device_may_wakeup.exit208.if.end31_crit_edge, %land.lhs.true25.if.end31_crit_edge, %sw.bb.if.end31_crit_edge
  call fastcc void @zforce_touch_event(ptr noundef %dev_id, ptr noundef %arrayidx106)
  br label %do.cond115

sw.bb34:                                          ; preds = %if.end20
  %18 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool36 = icmp ne i8 %19, 0
  %frombool37 = zext i1 %tobool36 to i8
  %20 = ptrtoint ptr %boot_complete to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool37, ptr %boot_complete, align 2
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %23 = ptrtoint ptr %command_waiting.i221 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %command_waiting.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp.i = icmp eq i32 %24, 7
  br i1 %cmp.i, label %do.body.i, label %do.body5.i

do.body.i:                                        ; preds = %sw.bb34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then4.i)) #7
          to label %do.end.i [label %if.then4.i], !srcloc !265

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug303, ptr noundef %dev.i, ptr noundef nonnull @.str.117, i32 noundef 7) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %25 = ptrtoint ptr %command_result.i226 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %command_result.i226, align 4
  call void @complete(ptr noundef %command_done.i227) #7
  br label %do.cond115

do.body5.i:                                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then17.i)) #7
          to label %do.cond115 [label %if.then17.i], !srcloc !265

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug304, ptr noundef %dev18.i, ptr noundef nonnull @.str.118, i32 noundef 7) #7
  br label %do.cond115

sw.bb40:                                          ; preds = %if.end20.sw.bb40_crit_edge, %if.end20.sw.bb40_crit_edge249, %if.end20.sw.bb40_crit_edge250, %if.end20.sw.bb40_crit_edge251, %if.end20.sw.bb40_crit_edge252
  %conv42 = zext i8 %11 to i32
  %26 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx106, align 1
  %conv44 = zext i8 %27 to i32
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %30 = ptrtoint ptr %command_waiting.i221 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %command_waiting.i221, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv42)
  %cmp.i210 = icmp eq i32 %31, %conv42
  br i1 %cmp.i210, label %do.body.i211, label %do.body5.i217

do.body.i211:                                     ; preds = %sw.bb40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then4.i213)) #7
          to label %do.end.i216 [label %if.then4.i213], !srcloc !265

if.then4.i213:                                    ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i212 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug303, ptr noundef %dev.i212, ptr noundef nonnull @.str.117, i32 noundef %conv42) #7
  br label %do.end.i216

do.end.i216:                                      ; preds = %if.then4.i213, %do.body.i211
  %32 = ptrtoint ptr %command_result.i226 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv44, ptr %command_result.i226, align 4
  call void @complete(ptr noundef %command_done.i227) #7
  br label %do.cond115

do.body5.i217:                                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then17.i219)) #7
          to label %do.cond115 [label %if.then17.i219], !srcloc !265

if.then17.i219:                                   ; preds = %do.body5.i217
  call void @__sanitizer_cov_trace_pc() #9
  %dev18.i218 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug304, ptr noundef %dev18.i218, ptr noundef nonnull @.str.118, i32 noundef %conv42) #7
  br label %do.cond115

sw.bb45:                                          ; preds = %if.end20
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %34 to i16
  %shl = shl nuw i16 %conv47, 8
  %35 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx106, align 1
  %conv49 = zext i8 %36 to i16
  %or = or i16 %shl, %conv49
  %37 = ptrtoint ptr %version_major to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or, ptr %version_major, align 4
  %38 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i16
  %shl53 = shl nuw i16 %conv52, 8
  %40 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %41 to i16
  %or56 = or i16 %shl53, %conv55
  %42 = ptrtoint ptr %version_minor to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or56, ptr %version_minor, align 2
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %44 to i16
  %shl60 = shl nuw i16 %conv59, 8
  %45 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %46 to i16
  %or63 = or i16 %shl60, %conv62
  %47 = ptrtoint ptr %version_build to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %or63, ptr %version_build, align 4
  %48 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %49 to i16
  %shl67 = shl nuw i16 %conv66, 8
  %50 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %51 to i16
  %or70 = or i16 %shl67, %conv69
  %52 = ptrtoint ptr %version_rev to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or70, ptr %version_rev, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_irq_thread.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then84)) #7
          to label %do.end97 [label %if.then84], !srcloc !265

if.then84:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_id, align 4
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %version_major to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %version_major, align 4
  %conv88 = zext i16 %56 to i32
  %57 = ptrtoint ptr %version_minor to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %version_minor, align 2
  %conv90 = zext i16 %58 to i32
  %59 = ptrtoint ptr %version_build to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %version_build, align 4
  %conv92 = zext i16 %60 to i32
  %61 = ptrtoint ptr %version_rev to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %version_rev, align 2
  %conv94 = zext i16 %62 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_irq_thread.__UNIQUE_ID_ddebug306, ptr noundef %dev86, ptr noundef nonnull @.str.90, i32 noundef %conv88, i32 noundef %conv90, i32 noundef %conv92, i32 noundef %conv94) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then84, %sw.bb45
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx, align 1
  %conv99 = zext i8 %64 to i32
  %65 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_id, align 4
  %67 = ptrtoint ptr %command_waiting.i221 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %command_waiting.i221, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv99)
  %cmp.i222 = icmp eq i32 %68, %conv99
  br i1 %cmp.i222, label %do.body.i223, label %do.body5.i229

do.body.i223:                                     ; preds = %do.end97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then4.i225)) #7
          to label %do.end.i228 [label %if.then4.i225], !srcloc !265

if.then4.i225:                                    ; preds = %do.body.i223
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i224 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug303, ptr noundef %dev.i224, ptr noundef nonnull @.str.117, i32 noundef %conv99) #7
  br label %do.end.i228

do.end.i228:                                      ; preds = %if.then4.i225, %do.body.i223
  %69 = ptrtoint ptr %command_result.i226 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %command_result.i226, align 4
  call void @complete(ptr noundef %command_done.i227) #7
  br label %do.cond115

do.body5.i229:                                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_complete.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then17.i231)) #7
          to label %do.cond115 [label %if.then17.i231], !srcloc !265

if.then17.i231:                                   ; preds = %do.body5.i229
  call void @__sanitizer_cov_trace_pc() #9
  %dev18.i230 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_complete.__UNIQUE_ID_ddebug304, ptr noundef %dev18.i230, ptr noundef nonnull @.str.118, i32 noundef %conv99) #7
  br label %do.cond115

do.end103:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_id, align 4
  %dev105 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev105, ptr noundef nonnull @.str.92, i32 noundef %conv107) #10
  br label %do.cond115

do.end110:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %11 to i32
  %74 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_id, align 4
  %dev112 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.95, i32 noundef %conv) #10
  br label %do.cond115

do.cond115:                                       ; preds = %do.end110, %do.end103, %if.then17.i231, %do.body5.i229, %do.end.i228, %if.then17.i219, %do.body5.i217, %do.end.i216, %if.then17.i, %do.body5.i, %do.end.i, %if.end31
  %76 = ptrtoint ptr %gpio_int to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gpio_int, align 4
  %call116 = call i32 @gpiod_get_value_cansleep(ptr noundef %77) #7
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.cond115.do.end118_crit_edge, label %do.cond115.do.body13_crit_edge

do.cond115.do.body13_crit_edge:                   ; preds = %do.cond115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.cond115.do.end118_crit_edge:                   ; preds = %do.cond115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

do.end118:                                        ; preds = %do.cond115.do.end118_crit_edge, %do.end18
  %78 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %suspending, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool120.not = icmp eq i8 %79, 0
  br i1 %tobool120.not, label %land.lhs.true121, label %do.end118.do.body128_crit_edge

do.end118.do.body128_crit_edge:                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body128

land.lhs.true121:                                 ; preds = %do.end118
  %80 = ptrtoint ptr %can_wakeup.i202 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i234 = load i16, ptr %can_wakeup.i202, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i234)
  %tobool.not.i235 = icmp sgt i16 %bf.load.i234, -1
  br i1 %tobool.not.i235, label %land.lhs.true121.do.body128_crit_edge, label %device_may_wakeup.exit239

land.lhs.true121.do.body128_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body128

device_may_wakeup.exit239:                        ; preds = %land.lhs.true121
  %81 = ptrtoint ptr %wakeup.i205 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wakeup.i205, align 8
  %tobool2.i237.not = icmp eq ptr %82, null
  br i1 %tobool2.i237.not, label %device_may_wakeup.exit239.do.body128_crit_edge, label %if.then125

device_may_wakeup.exit239.do.body128_crit_edge:   ; preds = %device_may_wakeup.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body128

if.then125:                                       ; preds = %device_may_wakeup.exit239
  call void @__sanitizer_cov_trace_pc() #9
  call void @pm_relax(ptr noundef %dev26) #7
  br label %do.body128

do.body128:                                       ; preds = %if.then125, %device_may_wakeup.exit239.do.body128_crit_edge, %land.lhs.true121.do.body128_crit_edge, %do.end118.do.body128_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_irq_thread.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_irq_thread, %if.then140)) #7
          to label %cleanup [label %if.then140], !srcloc !265

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_irq_thread.__UNIQUE_ID_ddebug307, ptr noundef %dev26, ptr noundef nonnull @.str.97) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %do.body128, %if.then
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %payload_buffer) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zforce_stop(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_stop.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_stop.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.121) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_stop, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !265

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command_wait.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef 0) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -18, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %call7.i = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %do.end8, label %zforce_command_wait.exit.thread

zforce_command_wait.exit.thread:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  br label %cleanup

do.end8:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.75, i32 noundef %call7.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.122, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %zforce_command_wait.exit.thread
  %retval.0 = phi i32 [ %call7.i, %do.end8 ], [ 0, %zforce_command_wait.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zforce_start(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %buf.i84 = alloca [3 x i8], align 1
  %buf.i80 = alloca [7 x i8], align 1
  %buf.i76 = alloca [9 x i8], align 1
  %buf.i72 = alloca [7 x i8], align 1
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %pdata2 = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_start.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_start.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.55) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !265

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command_wait.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -18, ptr %buf.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %7, align 1
  %call7.i = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.75, i32 noundef %call7.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.56, i32 noundef %call7.i) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %y_max = getelementptr inbounds %struct.zforce_ts_platdata, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %y_max, align 4
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf.i72) #7
  %17 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 1
  %18 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 2
  %19 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 3
  %20 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 4
  %21 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 5
  %22 = getelementptr inbounds [7 x i8], ptr %buf.i72, i32 0, i32 6
  %23 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -18, ptr %buf.i72, align 1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %17, align 1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %18, align 1
  %conv4.i = trunc i32 %12 to i8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i, ptr %19, align 1
  %27 = lshr i32 %12, 8
  %conv8.i = trunc i32 %27 to i8
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8.i, ptr %20, align 1
  %conv12.i = trunc i32 %14 to i8
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12.i, ptr %21, align 1
  %30 = lshr i32 %14, 8
  %conv17.i = trunc i32 %30 to i8
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv17.i, ptr %22, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_resolution.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then.i74)) #7
          to label %zforce_resolution.exit [label %if.then.i74], !srcloc !265

if.then.i74:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv10.i = and i32 %14, 65535
  %conv.i = and i32 %12, 65535
  %dev.i73 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_resolution.__UNIQUE_ID_ddebug292, ptr noundef %dev.i73, ptr noundef nonnull @.str.70, i32 noundef %conv.i, i32 noundef %conv10.i) #7
  br label %zforce_resolution.exit

zforce_resolution.exit:                           ; preds = %if.then.i74, %if.end12
  %call22.i = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i72, i32 noundef 7) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf.i72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool15.not = icmp eq i32 %call22.i, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %zforce_resolution.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.58, i32 noundef %call22.i) #10
  br label %error

if.end21:                                         ; preds = %zforce_resolution.exit
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i76) #7
  %34 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 1
  %35 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 2
  %36 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 3
  %37 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 4
  %38 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 5
  %39 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 6
  %40 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 7
  %41 = getelementptr inbounds [9 x i8], ptr %buf.i76, i32 0, i32 8
  %42 = ptrtoint ptr %buf.i76 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -18, ptr %buf.i76, align 1
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 7, ptr %34, align 1
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %35, align 1
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %36, align 1
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %37, align 1
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 50, ptr %38, align 1
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %39, align 1
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 50, ptr %40, align 1
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %41, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_scan_frequency.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then.i78)) #7
          to label %zforce_scan_frequency.exit [label %if.then.i78], !srcloc !265

if.then.i78:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i77 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_scan_frequency.__UNIQUE_ID_ddebug293, ptr noundef %dev.i77, ptr noundef nonnull @.str.79, i32 noundef 10, i32 noundef 50, i32 noundef 50) #7
  br label %zforce_scan_frequency.exit

zforce_scan_frequency.exit:                       ; preds = %if.then.i78, %if.end21
  %call32.i = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i76, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool23.not = icmp eq i32 %call32.i, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %zforce_scan_frequency.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.61, i32 noundef %call32.i) #10
  br label %error

if.end29:                                         ; preds = %zforce_scan_frequency.exit
  %51 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf.i80) #7
  %53 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 1
  %54 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 2
  %55 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 3
  %56 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 4
  %57 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 5
  %58 = getelementptr inbounds [7 x i8], ptr %buf.i80, i32 0, i32 6
  %59 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -18, ptr %buf.i80, align 1
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %53, align 1
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %54, align 1
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %55, align 1
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %56, align 1
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %57, align 1
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %58, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_setconfig.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then.i82)) #7
          to label %zforce_setconfig.exit [label %if.then.i82], !srcloc !265

if.then.i82:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i81 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_setconfig.__UNIQUE_ID_ddebug294, ptr noundef %dev.i81, ptr noundef nonnull @.str.81, i32 noundef 1) #7
  br label %zforce_setconfig.exit

zforce_setconfig.exit:                            ; preds = %if.then.i82, %if.end29
  %call9.i = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i80, i32 noundef 7) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf.i80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool31.not = icmp eq i32 %call9.i, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %zforce_setconfig.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.64) #10
  br label %error

if.end37:                                         ; preds = %zforce_setconfig.exit
  %call38 = call fastcc i32 @zforce_command(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %dev44 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.67) #10
  br label %error

if.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 200) #7
  br label %cleanup

error:                                            ; preds = %do.end43, %do.end35, %do.end27, %do.end19
  %ret.0 = phi i32 [ %call22.i, %do.end19 ], [ %call32.i, %do.end27 ], [ %call9.i, %do.end35 ], [ %call38, %do.end43 ]
  %66 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i84) #7
  %68 = getelementptr inbounds [3 x i8], ptr %buf.i84, i32 0, i32 1
  %69 = getelementptr inbounds [3 x i8], ptr %buf.i84, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_start, %if.then.i86)) #7
          to label %do.end.i89 [label %if.then.i86], !srcloc !265

if.then.i86:                                      ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i85 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command_wait.__UNIQUE_ID_ddebug291, ptr noundef %dev.i85, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef 0) #7
  br label %do.end.i89

do.end.i89:                                       ; preds = %if.then.i86, %error
  %70 = ptrtoint ptr %buf.i84 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -18, ptr %buf.i84, align 1
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %68, align 1
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %69, align 1
  %call7.i87 = call fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef nonnull %buf.i84, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i87)
  %cmp.i88 = icmp slt i32 %call7.i87, 0
  br i1 %cmp.i88, label %do.end12.i91, label %do.end.i89.zforce_command_wait.exit93_crit_edge

do.end.i89.zforce_command_wait.exit93_crit_edge:  ; preds = %do.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %zforce_command_wait.exit93

do.end12.i91:                                     ; preds = %do.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  %dev13.i90 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i90, ptr noundef nonnull @.str.75, i32 noundef %call7.i87) #10
  br label %zforce_command_wait.exit93

zforce_command_wait.exit93:                       ; preds = %do.end12.i91, %do.end.i89.zforce_command_wait.exit93_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i84) #7
  br label %cleanup

cleanup:                                          ; preds = %zforce_command_wait.exit93, %if.end45, %do.end10
  %retval.0 = phi i32 [ %call7.i, %do.end10 ], [ %ret.0, %zforce_command_wait.exit93 ], [ 0, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zforce_command(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_command.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_command, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !265

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_command.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef 4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -18, ptr %buf, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %3, align 1
  %access_mutex = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #7
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @mutex_unlock(ptr noundef %access_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.75, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end13 ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zforce_send_wait(ptr noundef %ts, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %command_mutex = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 16
  %call = tail call i32 @mutex_trylock(ptr noundef %command_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_send_wait.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_send_wait, %if.then7)) #7
          to label %do.end13 [label %if.then7], !srcloc !265

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx9 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_send_wait.__UNIQUE_ID_ddebug289, ptr noundef %dev8, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %conv10) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.body2
  %arrayidx14 = getelementptr i8, ptr %buf, i32 2
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %7 to i32
  %command_waiting = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 17
  %8 = ptrtoint ptr %command_waiting to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv15, ptr %command_waiting, align 4
  %access_mutex = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #7
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %buf, i32 noundef %len, i16 noundef zeroext 0) #7
  tail call void @mutex_unlock(ptr noundef %access_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end22, label %do.body25

do.end22:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.75, i32 noundef %call.i) #10
  br label %unlock

do.body25:                                        ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_send_wait.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_send_wait, %if.then37)) #7
          to label %do.end43 [label %if.then37], !srcloc !265

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %conv40 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_send_wait.__UNIQUE_ID_ddebug290, ptr noundef %dev38, ptr noundef nonnull @.str.77, i32 noundef %conv40) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %do.body25
  %command_done = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 15
  %call45 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_done, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %do.end43.unlock_crit_edge, label %if.end49

do.end43.unlock_crit_edge:                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  %command_result = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 18
  %11 = ptrtoint ptr %command_result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %command_result, align 4
  br label %unlock

unlock:                                           ; preds = %if.end49, %do.end43.unlock_crit_edge, %do.end22
  %ret.0 = phi i32 [ %call.i, %do.end22 ], [ %12, %if.end49 ], [ -62, %do.end43.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %command_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zforce_read_packet(ptr noundef %ts, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %access_mutex = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %access_mutex, i32 noundef 0) #7
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %buf, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %call.i) #10
  br label %unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %3)
  %cmp2.not = icmp eq i8 %3, -18
  br i1 %cmp2.not, label %if.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %3 to i32
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.101, i32 noundef %conv) #10
  br label %unlock

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp14 = icmp eq i8 %5, 0
  br i1 %cmp14, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.104, i32 noundef 0) #10
  br label %unlock

if.end23:                                         ; preds = %if.end11
  %conv13 = zext i8 %5 to i32
  %arrayidx24 = getelementptr i8, ptr %buf, i32 2
  %call.i70 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %arrayidx24, i32 noundef %conv13, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp28 = icmp slt i32 %call.i70, 0
  br i1 %cmp28, label %do.end33, label %do.body36

do.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.107, i32 noundef %call.i70) #10
  br label %unlock

do.body36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_read_packet.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_read_packet, %if.then40)) #7
          to label %unlock [label %if.then40], !srcloc !265

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %conv43 = zext i8 %7 to i32
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx24, align 1
  %conv45 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_read_packet.__UNIQUE_ID_ddebug302, ptr noundef %dev41, ptr noundef nonnull @.str.109, i32 noundef %conv43, i32 noundef %conv45) #7
  br label %unlock

unlock:                                           ; preds = %if.then40, %do.body36, %do.end33, %do.end19, %do.end7, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ -5, %do.end7 ], [ -5, %do.end19 ], [ %call.i70, %do.end33 ], [ %call.i70, %if.then40 ], [ %call.i70, %do.body36 ]
  tail call void @mutex_unlock(ptr noundef %access_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zforce_touch_event(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %payload) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %pdata2 = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %payload, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %conv, i32 noundef 2) #10
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp42.not = icmp eq i8 %5, 0
  br i1 %cmp42.not, label %if.end.for.end_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %if.end.thread
  %count.08 = phi i32 [ 2, %if.end.thread ], [ %conv, %if.end.for.body.lr.ph_crit_edge ]
  %y_max = getelementptr inbounds %struct.zforce_ts_platdata, ptr %3, i32 0, i32 1
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %input = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num.05 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %for.inc.for.body_crit_edge ]
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc133, %for.inc.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.03, 9
  %add = add nuw nsw i32 %mul, 2
  %arrayidx6 = getelementptr i8, ptr %payload, i32 %add
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %add9 = add nuw nsw i32 %mul, 1
  %arrayidx10 = getelementptr i8, ptr %payload, i32 %add9
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %or = or i32 %shl, %conv11
  %add13 = add nuw nsw i32 %mul, 4
  %arrayidx14 = getelementptr i8, ptr %payload, i32 %add13
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %add18 = add nuw nsw i32 %mul, 3
  %arrayidx19 = getelementptr i8, ptr %payload, i32 %add18
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %or21 = or i32 %shl16, %conv20
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %15)
  %cmp23 = icmp ugt i32 %or, %15
  br i1 %cmp23, label %for.body.do.end31_crit_edge, label %lor.lhs.false

for.body.do.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

lor.lhs.false:                                    ; preds = %for.body
  %16 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or21, i32 %17)
  %cmp26 = icmp ugt i32 %or21, %17
  br i1 %cmp26, label %lor.lhs.false.do.end31_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false.do.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false.do.end31_crit_edge, %for.body.do.end31_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.113, i32 noundef %or, i32 noundef %or21) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %lor.lhs.false.if.end37_crit_edge
  %point.sroa.9.0 = phi i32 [ 0, %do.end31 ], [ %or21, %lor.lhs.false.if.end37_crit_edge ]
  %point.sroa.0.0 = phi i32 [ 0, %do.end31 ], [ %or, %lor.lhs.false.if.end37_crit_edge ]
  %add39 = add nuw nsw i32 %mul, 5
  %arrayidx40 = getelementptr i8, ptr %payload, i32 %add39
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %19 to i32
  %and = and i32 %conv41, 15
  %20 = lshr i32 %conv41, 4
  %add48 = add nuw nsw i32 %mul, 6
  %arrayidx49 = getelementptr i8, ptr %payload, i32 %add48
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx49, align 1
  %add51 = add nuw nsw i32 %mul, 7
  %arrayidx52 = getelementptr i8, ptr %payload, i32 %add51
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp55 = icmp ugt i8 %22, %24
  %25 = tail call i8 @llvm.umax.i8(i8 %22, i8 %24)
  %cond = zext i8 %25 to i32
  %26 = tail call i8 @llvm.umin.i8(i8 %22, i8 %24)
  %cond75 = zext i8 %26 to i32
  %conv85 = zext i1 %cmp55 to i32
  %add87 = add nuw nsw i32 %mul, 8
  %arrayidx88 = getelementptr i8, ptr %payload, i32 %add87
  %27 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx88, align 1
  %add91 = add nuw nsw i32 %mul, 9
  %arrayidx92 = getelementptr i8, ptr %payload, i32 %add91
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx92, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_touch_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_touch_event, %if.then98)) #7
          to label %do.end111 [label %if.then98], !srcloc !265

if.then98:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %conv93 = zext i8 %30 to i32
  %conv89 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_touch_event.__UNIQUE_ID_ddebug301, ptr noundef %dev32, ptr noundef nonnull @.str.115, i32 noundef %i.03, i32 noundef %count.08, i32 noundef %and, i32 noundef %20, i32 noundef %conv89, i32 noundef %conv93, i32 noundef %point.sroa.0.0, i32 noundef %point.sroa.9.0, i32 noundef %cond, i32 noundef %cond75, i32 noundef %conv85) #7
  br label %do.end111

do.end111:                                        ; preds = %if.then98, %if.end37
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %sub = add nsw i32 %20, -1
  tail call void @input_event(ptr noundef %32, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #7
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp115 = icmp ne i32 %and, 2
  %call117 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %34, i32 noundef 0, i1 noundef zeroext %cmp115) #7
  br i1 %cmp115, label %if.then121, label %do.end111.for.inc_crit_edge

do.end111.for.inc_crit_edge:                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then121:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 53, i32 noundef %point.sroa.0.0) #7
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef 54, i32 noundef %point.sroa.9.0) #7
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 48, i32 noundef %cond) #7
  %41 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 49, i32 noundef %cond75) #7
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 52, i32 noundef %conv85) #7
  %inc = add i32 %num.05, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then121, %do.end111.for.inc_crit_edge
  %num.1 = phi i32 [ %inc, %if.then121 ], [ %num.05, %do.end111.for.inc_crit_edge ]
  %inc133 = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc133, %count.08
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num.1, %for.inc.for.end_crit_edge ]
  %input134 = getelementptr inbounds %struct.zforce_ts, ptr %ts, i32 0, i32 1
  %45 = ptrtoint ptr %input134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input134, align 4
  tail call void @input_mt_sync_frame(ptr noundef %46) #7
  %47 = ptrtoint ptr %input134 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input134, align 4
  tail call void @input_mt_report_finger_count(ptr noundef %48, i32 noundef %num.0.lcssa) #7
  %49 = ptrtoint ptr %input134 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input134, align 4
  tail call void @input_event(ptr noundef %50, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.zforce_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %suspending = getelementptr inbounds %struct.zforce_ts, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %suspending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %suspending, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %7, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %do.body

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body:                                          ; preds = %device_may_wakeup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_suspend.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_suspend, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !265

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_suspend.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.124) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call10 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call10, label %do.end.if.end16_crit_edge, label %if.then11

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %do.end
  %call12 = tail call fastcc i32 @zforce_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.unlock_crit_edge

if.then11.unlock_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #7
  br label %if.end43

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call18 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call18, label %do.body20, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body20:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_suspend.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_suspend, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !265

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_suspend.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.125) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %call37 = tail call fastcc i32 @zforce_stop(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %do.end36.unlock_crit_edge

do.end36.unlock_crit_edge:                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end40:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %irq41 = getelementptr i8, ptr %dev, i32 932
  %10 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq41, align 4
  tail call void @disable_irq(i32 noundef %11) #7
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %if.else.if.end43_crit_edge, %if.end16
  %suspended = getelementptr inbounds %struct.zforce_ts, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspended, align 1
  br label %unlock

unlock:                                           ; preds = %if.end43, %do.end36.unlock_crit_edge, %if.then11.unlock_crit_edge
  %ret.2 = phi i32 [ 0, %if.end43 ], [ %call12, %if.then11.unlock_crit_edge ], [ %call37, %do.end36.unlock_crit_edge ]
  %13 = ptrtoint ptr %suspending to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %suspending, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zforce_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.zforce_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %suspended = getelementptr inbounds %struct.zforce_ts, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 1
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %7, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %do.body

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body:                                          ; preds = %device_may_wakeup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_resume.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_resume, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !265

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_resume.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.127) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #7
  %call11 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call11, label %do.end.unlock_crit_edge, label %if.then12

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @zforce_stop(ptr noundef %1)
  br label %unlock

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call18 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call18, label %do.body20, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.body20:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zforce_resume.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zforce_resume, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !265

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zforce_resume.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.128) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  %irq37 = getelementptr i8, ptr %dev, i32 932
  %10 = ptrtoint ptr %irq37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq37, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  %call38 = tail call fastcc i32 @zforce_start(ptr noundef %1)
  br label %unlock

unlock:                                           ; preds = %do.end36, %if.else.unlock_crit_edge, %if.then12, %do.end.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.unlock_crit_edge ], [ %call13, %if.then12 ], [ %call38, %do.end36 ], [ 0, %if.else.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !254}
!llvm.module.flags = !{!256, !257, !258, !259, !260, !261, !262, !263}
!llvm.ident = !{!264}

!0 = !{ptr @__initcall__kmod_zforce_ts__312_952_zforce_driver_init6, !1, !"__initcall__kmod_zforce_ts__312_952_zforce_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 952, i32 1}
!2 = !{ptr @__exitcall_zforce_driver_exit, !1, !"__exitcall_zforce_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 954, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 955, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 956, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 944, i32 11}
!12 = !{ptr @zforce_driver, !13, !"zforce_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 942, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 753, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 757, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @zforce_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @zforce_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 763, i32 56}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 767, i32 4}
!28 = !{ptr @zforce_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zforce_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @zforce_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 782, i32 4}
!32 = !{ptr @zforce_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @zforce_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 792, i32 4}
!35 = !{ptr @zforce_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 798, i32 58}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 817, i32 3}
!40 = !{ptr @zforce_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @zforce_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 828, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 832, i32 3}
!46 = !{ptr @zforce_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @zforce_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @zforce_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 836, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @zforce_probe.__key.24, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 837, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 843, i32 20}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 883, i32 3}
!58 = !{ptr @zforce_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @zforce_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 894, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @zforce_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @zforce_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 899, i32 3}
!67 = !{ptr @zforce_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @zforce_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 906, i32 3}
!71 = !{ptr @zforce_probe._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @zforce_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 920, i32 3}
!75 = !{ptr @zforce_probe._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @zforce_probe._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 718, i32 3}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @zforce_parse_dt._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @zforce_parse_dt._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 722, i32 31}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 723, i32 3}
!86 = !{ptr @zforce_parse_dt._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @zforce_parse_dt._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 727, i32 31}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 728, i32 3}
!92 = !{ptr @zforce_parse_dt._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @zforce_parse_dt._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 272, i32 2}
!96 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @zforce_start.__UNIQUE_ID_ddebug295, !95, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 276, i32 3}
!101 = !{ptr @zforce_start._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @zforce_start._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 282, i32 3}
!105 = !{ptr @zforce_start._entry.57, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @zforce_start._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 288, i32 3}
!109 = !{ptr @zforce_start._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @zforce_start._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 295, i32 3}
!113 = !{ptr @zforce_start._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @zforce_start._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 302, i32 3}
!117 = !{ptr @zforce_start._entry.66, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @zforce_start._entry_ptr.68, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 234, i32 2}
!121 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @zforce_resolution.__UNIQUE_ID_ddebug292, !120, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 175, i32 3}
!125 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @zforce_send_wait._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @zforce_send_wait._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 179, i32 2}
!130 = !{ptr @zforce_send_wait.__UNIQUE_ID_ddebug289, !129, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 188, i32 3}
!133 = !{ptr @zforce_send_wait._entry.74, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @zforce_send_wait._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 192, i32 2}
!137 = !{ptr @zforce_send_wait.__UNIQUE_ID_ddebug290, !136, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 248, i32 2}
!140 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @zforce_scan_frequency.__UNIQUE_ID_ddebug293, !139, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 261, i32 2}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @zforce_setconfig.__UNIQUE_ID_ddebug294, !143, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 141, i32 2}
!148 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @zforce_command.__UNIQUE_ID_ddebug288, !147, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!150 = !{ptr @zforce_command._entry, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 151, i32 3}
!152 = !{ptr @zforce_command._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 606, i32 3}
!155 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @zforce_input_close._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @zforce_input_close._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @init_completion.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../include/linux/completion.h", i32 87, i32 2}
!160 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 499, i32 2}
!163 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @zforce_irq_thread.__UNIQUE_ID_ddebug305, !162, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 517, i32 4}
!167 = !{ptr @zforce_irq_thread._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @zforce_irq_thread._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 562, i32 4}
!171 = !{ptr @zforce_irq_thread.__UNIQUE_ID_ddebug306, !170, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 571, i32 4}
!174 = !{ptr @zforce_irq_thread._entry.91, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @zforce_irq_thread._entry_ptr.93, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 576, i32 4}
!178 = !{ptr @zforce_irq_thread._entry.94, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @zforce_irq_thread._entry_ptr.96, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 586, i32 2}
!182 = !{ptr @zforce_irq_thread.__UNIQUE_ID_ddebug307, !181, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!183 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 426, i32 3}
!185 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @zforce_read_packet._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @zforce_read_packet._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 431, i32 3}
!190 = !{ptr @zforce_read_packet._entry.100, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @zforce_read_packet._entry_ptr.102, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.104, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 437, i32 3}
!194 = !{ptr @zforce_read_packet._entry.103, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @zforce_read_packet._entry_ptr.105, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 446, i32 3}
!198 = !{ptr @zforce_read_packet._entry.106, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @zforce_read_packet._entry_ptr.108, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 450, i32 2}
!202 = !{ptr @zforce_read_packet.__UNIQUE_ID_ddebug302, !201, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!203 = !{ptr @.str.110, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 346, i32 3}
!205 = !{ptr @.str.111, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @zforce_touch_event._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @zforce_touch_event._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 360, i32 4}
!210 = !{ptr @zforce_touch_event._entry.112, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @zforce_touch_event._entry_ptr.114, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.115, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 378, i32 3}
!214 = !{ptr @zforce_touch_event.__UNIQUE_ID_ddebug301, !213, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!215 = !{ptr @.str.116, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 463, i32 3}
!217 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @zforce_complete.__UNIQUE_ID_ddebug303, !216, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!219 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 467, i32 3}
!221 = !{ptr @zforce_complete.__UNIQUE_ID_ddebug304, !220, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!222 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 212, i32 2}
!224 = !{ptr @zforce_command_wait.__UNIQUE_ID_ddebug291, !223, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!225 = !{ptr @zforce_command_wait._entry, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 220, i32 3}
!227 = !{ptr @zforce_command_wait._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.120, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 324, i32 2}
!230 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @zforce_stop.__UNIQUE_ID_ddebug296, !229, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!232 = !{ptr @.str.122, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 329, i32 3}
!234 = !{ptr @zforce_stop._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @zforce_stop._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @zforce_dt_idtable, !237, !"zforce_dt_idtable", i1 false, i1 false}
!237 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 935, i32 34}
!238 = !{ptr @zforce_pm_ops, !239, !"zforce_pm_ops", i1 false, i1 false}
!239 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 694, i32 8}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 626, i32 3}
!242 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @zforce_suspend.__UNIQUE_ID_ddebug308, !241, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!244 = !{ptr @.str.125, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 637, i32 3}
!246 = !{ptr @zforce_suspend.__UNIQUE_ID_ddebug309, !245, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 668, i32 3}
!249 = !{ptr @.str.127, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @zforce_resume.__UNIQUE_ID_ddebug310, !248, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!251 = !{ptr @.str.128, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 679, i32 3}
!253 = !{ptr @zforce_resume.__UNIQUE_ID_ddebug311, !252, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!254 = !{ptr @zforce_idtable, !255, !"zforce_idtable", i1 false, i1 false}
!255 = !{!"../drivers/input/touchscreen/zforce_ts.c", i32 928, i32 29}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 1, !"min_enum_size", i32 4}
!258 = !{i32 8, !"branch-target-enforcement", i32 0}
!259 = !{i32 8, !"sign-return-address", i32 0}
!260 = !{i32 8, !"sign-return-address-all", i32 0}
!261 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!262 = !{i32 7, !"uwtable", i32 1}
!263 = !{i32 7, !"frame-pointer", i32 2}
!264 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!265 = !{i64 2148974926, i64 2148974931, i64 2148974944, i64 2148974988, i64 2148975022, i64 2148975043}
!266 = !{i8 0, i8 2}
