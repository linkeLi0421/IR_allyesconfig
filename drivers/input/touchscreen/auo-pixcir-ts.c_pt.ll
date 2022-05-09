; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/auo-pixcir-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/auo-pixcir-ts.c"
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
%struct.auo_pixcir_ts_platdata = type { i32, i32, i32, i32, i32 }
%struct.auo_pixcir_ts = type { ptr, ptr, ptr, [32 x i8], i8, %struct.wait_queue_head, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.auo_point_t = type { i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_auo_pixcir_ts__292_677_auo_pixcir_driver_init6 = internal global ptr @auo_pixcir_driver_init, section ".initcall6.init", align 4
@auo_pixcir_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @auo_pixcir_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @auo_pixcir_ts_dt_idtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @auo_pixcir_pm_ops, ptr null, ptr null }, ptr @auo_pixcir_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_auo_pixcir_driver_exit = internal global ptr @auo_pixcir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [56 x i8] c"auo_pixcir_ts.description=AUO-PIXCIR touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [59 x i8] c"auo_pixcir_ts.file=drivers/input/touchscreen/auo-pixcir-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [29 x i8] c"auo_pixcir_ts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [54 x i8] c"auo_pixcir_ts.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"auo_pixcir_ts\00", [18 x i8] zeroinitializer }, align 32
@auo_pixcir_ts_dt_idtable = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,auo_pixcir_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@auo_pixcir_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @auo_pixcir_suspend, ptr @auo_pixcir_resume, ptr @auo_pixcir_suspend, ptr @auo_pixcir_resume, ptr @auo_pixcir_suspend, ptr @auo_pixcir_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@auo_pixcir_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"auo_pixcir_ts\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auo_pixcir_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/auo-pixcir-ts.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr = internal global ptr @auo_pixcir_probe._entry, section ".printk_index", align 4
@auo_pixcir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AUO-Pixcir touchscreen\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auo_pixcir_ts_int\00", [46 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"request of gpio %d failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.12 = internal global ptr @auo_pixcir_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auo_pixcir_ts_rst\00", [46 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.15 = internal global ptr @auo_pixcir_probe._entry.14, section ".printk_index", align 4
@auo_pixcir_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register reset action, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.18 = internal global ptr @auo_pixcir_probe._entry.16, section ".printk_index", align 4
@auo_pixcir_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 620, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware version 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.22 = internal global ptr @auo_pixcir_probe._entry.19, section ".printk_index", align 4
@auo_pixcir_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq %d requested failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.25 = internal global ptr @auo_pixcir_probe._entry.23, section ".printk_index", align 4
@auo_pixcir_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not register input device, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@auo_pixcir_probe._entry_ptr.28 = internal global ptr @auo_pixcir_probe._entry.26, section ".printk_index", align 4
@auo_pixcir_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get interrupt gpio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"auo_pixcir_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry_ptr = internal global ptr @auo_pixcir_parse_dt._entry, section ".printk_index", align 4
@auo_pixcir_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry_ptr.33 = internal global ptr @auo_pixcir_parse_dt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"x-size\00", [25 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get x-size property\0A\00", [33 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry_ptr.37 = internal global ptr @auo_pixcir_parse_dt._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"y-size\00", [25 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get y-size property\0A\00", [33 x i8] zeroinitializer }, align 32
@auo_pixcir_parse_dt._entry_ptr.41 = internal global ptr @auo_pixcir_parse_dt._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@auo_pixcir_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not set power mode, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auo_pixcir_start\00", [47 x i8] zeroinitializer }, align 32
@auo_pixcir_start._entry_ptr = internal global ptr @auo_pixcir_start._entry, section ".printk_index", align 4
@auo_pixcir_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not enable interrupt, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@auo_pixcir_start._entry_ptr.47 = internal global ptr @auo_pixcir_start._entry.45, section ".printk_index", align 4
@auo_pixcir_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to read reg %Xh, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auo_pixcir_power_mode\00", [42 x i8] zeroinitializer }, align 32
@auo_pixcir_power_mode._entry_ptr = internal global ptr @auo_pixcir_power_mode._entry, section ".printk_index", align 4
@auo_pixcir_power_mode._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to write reg %Xh, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@auo_pixcir_power_mode._entry_ptr.52 = internal global ptr @auo_pixcir_power_mode._entry.50, section ".printk_index", align 4
@auo_pixcir_int_toggle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.53, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auo_pixcir_int_toggle\00", [42 x i8] zeroinitializer }, align 32
@auo_pixcir_int_toggle._entry_ptr = internal global ptr @auo_pixcir_int_toggle._entry, section ".printk_index", align 4
@auo_pixcir_int_toggle._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.53, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@auo_pixcir_int_toggle._entry_ptr.55 = internal global ptr @auo_pixcir_int_toggle._entry.54, section ".printk_index", align 4
@auo_pixcir_int_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.56, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"auo_pixcir_int_config\00", [42 x i8] zeroinitializer }, align 32
@auo_pixcir_int_config._entry_ptr = internal global ptr @auo_pixcir_int_config._entry, section ".printk_index", align 4
@auo_pixcir_int_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.56, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@auo_pixcir_int_config._entry_ptr.58 = internal global ptr @auo_pixcir_int_config._entry.57, section ".printk_index", align 4
@auo_pixcir_collect_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read coordinate, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"auo_pixcir_collect_data\00", [40 x i8] zeroinitializer }, align 32
@auo_pixcir_collect_data._entry_ptr = internal global ptr @auo_pixcir_collect_data._entry, section ".printk_index", align 4
@auo_pixcir_collect_data._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not read touch area, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@auo_pixcir_collect_data._entry_ptr.63 = internal global ptr @auo_pixcir_collect_data._entry.61, section ".printk_index", align 4
@auo_pixcir_collect_data._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 158, ptr @.str.66, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"coordinates (%d,%d) invalid\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@auo_pixcir_collect_data._entry_ptr.67 = internal global ptr @auo_pixcir_collect_data._entry.64, section ".printk_index", align 4
@auo_pixcir_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not disable interrupt, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"auo_pixcir_stop\00", [16 x i8] zeroinitializer }, align 32
@auo_pixcir_stop._entry_ptr = internal global ptr @auo_pixcir_stop._entry, section ".printk_index", align 4
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"auo_pixcir_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 667, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 669, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"auo_pixcir_ts_dt_idtable\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 660, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"auo_pixcir_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 465, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"auo_pixcir_idtable\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 653, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 545, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 554, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 557, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 559, i32 20 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 589, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 591, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 598, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 600, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 607, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 620, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 631, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 643, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 483, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 489, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 493, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 494, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 498, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 499, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 121, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 348, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 359, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 263, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 273, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 320, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 333, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 290, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 302, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 137, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 145, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 157, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [45 x i8] c"../drivers/input/touchscreen/auo-pixcir-ts.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 375, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_auo_pixcir_driver_exit, ptr @__initcall__kmod_auo_pixcir_ts__292_677_auo_pixcir_driver_init6, ptr @auo_pixcir_collect_data._entry, ptr @auo_pixcir_collect_data._entry.61, ptr @auo_pixcir_collect_data._entry.64, ptr @auo_pixcir_collect_data._entry_ptr, ptr @auo_pixcir_collect_data._entry_ptr.63, ptr @auo_pixcir_collect_data._entry_ptr.67, ptr @auo_pixcir_driver_exit, ptr @auo_pixcir_int_config._entry, ptr @auo_pixcir_int_config._entry.57, ptr @auo_pixcir_int_config._entry_ptr, ptr @auo_pixcir_int_config._entry_ptr.58, ptr @auo_pixcir_int_toggle._entry, ptr @auo_pixcir_int_toggle._entry.54, ptr @auo_pixcir_int_toggle._entry_ptr, ptr @auo_pixcir_int_toggle._entry_ptr.55, ptr @auo_pixcir_parse_dt._entry, ptr @auo_pixcir_parse_dt._entry.31, ptr @auo_pixcir_parse_dt._entry.35, ptr @auo_pixcir_parse_dt._entry.39, ptr @auo_pixcir_parse_dt._entry_ptr, ptr @auo_pixcir_parse_dt._entry_ptr.33, ptr @auo_pixcir_parse_dt._entry_ptr.37, ptr @auo_pixcir_parse_dt._entry_ptr.41, ptr @auo_pixcir_power_mode._entry, ptr @auo_pixcir_power_mode._entry.50, ptr @auo_pixcir_power_mode._entry_ptr, ptr @auo_pixcir_power_mode._entry_ptr.52, ptr @auo_pixcir_probe._entry, ptr @auo_pixcir_probe._entry.10, ptr @auo_pixcir_probe._entry.14, ptr @auo_pixcir_probe._entry.16, ptr @auo_pixcir_probe._entry.19, ptr @auo_pixcir_probe._entry.23, ptr @auo_pixcir_probe._entry.26, ptr @auo_pixcir_probe._entry_ptr, ptr @auo_pixcir_probe._entry_ptr.12, ptr @auo_pixcir_probe._entry_ptr.15, ptr @auo_pixcir_probe._entry_ptr.18, ptr @auo_pixcir_probe._entry_ptr.22, ptr @auo_pixcir_probe._entry_ptr.25, ptr @auo_pixcir_probe._entry_ptr.28, ptr @auo_pixcir_start._entry, ptr @auo_pixcir_start._entry.45, ptr @auo_pixcir_start._entry_ptr, ptr @auo_pixcir_start._entry_ptr.47, ptr @auo_pixcir_stop._entry, ptr @auo_pixcir_stop._entry_ptr, ptr @auo_pixcir_driver, ptr @.str, ptr @auo_pixcir_ts_dt_idtable, ptr @auo_pixcir_pm_ops, ptr @auo_pixcir_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @auo_pixcir_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_ts_dt_idtable to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_parse_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_parse_dt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_power_mode._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_int_toggle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_int_toggle._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_int_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_int_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_collect_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_collect_data._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_collect_data._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_pixcir_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @auo_pixcir_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @auo_pixcir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @auo_pixcir_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
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
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then4_crit_edge, label %if.end5.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef null) #7
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i.i.i, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i.i)
  %5 = icmp ult i32 %call.i.i.i, 2048
  br i1 %5, label %if.end11.i, label %if.end5.i.if.then4.sink.split_crit_edge

if.end5.i.if.then4.sink.split_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end11.i:                                       ; preds = %if.end5.i
  %call.i.i55.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef null) #7
  %gpio_rst.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %gpio_rst.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i55.i, ptr %gpio_rst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i55.i)
  %7 = icmp ult i32 %call.i.i55.i, 2048
  br i1 %7, label %if.end20.i, label %if.end11.i.if.then4.sink.split_crit_edge

if.end11.i.if.then4.sink.split_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end20.i:                                       ; preds = %if.end11.i
  %x_max.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %call.i.i, i32 0, i32 3
  %call.i.i56.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.34, ptr noundef %x_max.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i56.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i56.i, -1
  br i1 %tobool22.not.i, label %if.end28.i, label %if.end20.i.if.then4.sink.split_crit_edge

if.end20.i.if.then4.sink.split_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

if.end28.i:                                       ; preds = %if.end20.i
  %y_max.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %call.i.i, i32 0, i32 4
  %call.i.i57.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, ptr noundef %y_max.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i57.i)
  %tobool30.not.i = icmp sgt i32 %call.i.i57.i, -1
  br i1 %tobool30.not.i, label %auo_pixcir_parse_dt.exit, label %if.end28.i.if.then4.sink.split_crit_edge

if.end28.i.if.then4.sink.split_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.sink.split

auo_pixcir_parse_dt.exit:                         ; preds = %if.end28.i
  %int_setting.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %int_setting.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %int_setting.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %auo_pixcir_parse_dt.exit.if.then4_crit_edge, label %auo_pixcir_parse_dt.exit.if.end6_crit_edge

auo_pixcir_parse_dt.exit.if.end6_crit_edge:       ; preds = %auo_pixcir_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

auo_pixcir_parse_dt.exit.if.then4_crit_edge:      ; preds = %auo_pixcir_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4.sink.split:                              ; preds = %if.end28.i.if.then4.sink.split_crit_edge, %if.end20.i.if.then4.sink.split_crit_edge, %if.end11.i.if.then4.sink.split_crit_edge, %if.end5.i.if.then4.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.end5.i.if.then4.sink.split_crit_edge ], [ @.str.32, %if.end11.i.if.then4.sink.split_crit_edge ], [ @.str.36, %if.end20.i.if.then4.sink.split_crit_edge ], [ @.str.40, %if.end28.i.if.then4.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.29.sink) #10
  br label %if.then4

if.then4:                                         ; preds = %if.then4.sink.split, %auo_pixcir_parse_dt.exit.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %retval.0.i208 = phi ptr [ %call.i.i, %auo_pixcir_parse_dt.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then4_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then4.sink.split ]
  %9 = ptrtoint ptr %retval.0.i208 to i32
  br label %cleanup

if.end6:                                          ; preds = %auo_pixcir_parse_dt.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call.i.i, %auo_pixcir_parse_dt.exit.if.end6_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %pdata18 = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdata.0, ptr %pdata18, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %input = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %input, align 4
  %touch_ind_mode = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %touch_ind_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %touch_ind_mode, align 4
  %stopped = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %stopped, align 4
  %wait = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @auo_pixcir_probe.__key) #7
  %phys = getelementptr inbounds %struct.auo_pixcir_ts, ptr %call.i, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i192 = icmp eq ptr %16, null
  br i1 %tobool.not.i192, label %if.end.i193, label %if.end17.dev_name.exit_crit_edge

if.end17.dev_name.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i193:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i193, %if.end17.dev_name.exit_crit_edge
  %retval.0.i194 = phi ptr [ %18, %if.end.i193 ], [ %16, %if.end17.dev_name.exit_crit_edge ]
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i194)
  %19 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.8, ptr %call13, align 8
  %phys28 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 1
  %20 = ptrtoint ptr %phys28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %phys, ptr %phys28, align 4
  %id29 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3
  %21 = ptrtoint ptr %id29 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 24, ptr %id29, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 31
  %22 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @auo_pixcir_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 32
  %23 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @auo_pixcir_input_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 5
  %24 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %evbit, align 4
  %or.i190 = or i32 %25, 10
  store i32 %or.i190, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call13, i32 0, i32 6, i32 10
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %or.i191 = or i32 %27, 1024
  store i32 %or.i191, ptr %add.ptr.i, align 4
  %x_max = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %pdata.0, i32 0, i32 3
  %28 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %x_max, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 0, i32 noundef 0, i32 noundef %29, i32 noundef 0, i32 noundef 0) #7
  %y_max = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %pdata.0, i32 0, i32 4
  %30 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 1, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef 0) #7
  %32 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %x_max, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 53, i32 noundef 0, i32 noundef %33, i32 noundef 0, i32 noundef 0) #7
  %34 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 54, i32 noundef 0, i32 noundef %35, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 40, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %39 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pdata.0, align 4
  %call38 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %40, i32 noundef 1, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end46, label %do.end43

do.end43:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pdata.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %42, i32 noundef %call38) #10
  br label %cleanup

if.end46:                                         ; preds = %dev_name.exit
  %gpio_rst = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %pdata.0, i32 0, i32 1
  %43 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gpio_rst, align 4
  %call48 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %44, i32 noundef 2, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gpio_rst, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %46, i32 noundef %call48) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %call.i195 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @auo_pixcir_reset, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i196 = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i196, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %pdata18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata18, align 4
  %gpio_rst.i.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %gpio_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpio_rst.i.i, align 4
  %call.i.i.i197 = tail call ptr @gpio_to_desc(i32 noundef %50) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i197, i32 noundef 0) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i195) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  tail call void @msleep(i32 noundef 200) #7
  %call66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp = icmp slt i32 %call66, 0
  br i1 %cmp, label %if.end65.cleanup_crit_edge, label %do.end71

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end71:                                         ; preds = %if.end65
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call66) #10
  %int_setting = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %pdata.0, i32 0, i32 2
  %51 = ptrtoint ptr %int_setting to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %int_setting, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %55 = ptrtoint ptr %pdata18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata18, align 4
  %call.i199 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %54, i8 noundef zeroext 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp.i200 = icmp slt i32 %call.i199, 0
  br i1 %cmp.i200, label %do.end.i201, label %if.end.i203

do.end.i201:                                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef 113, i32 noundef %call.i199) #10
  br label %cleanup

if.end.i203:                                      ; preds = %do.end71
  %and.i = and i32 %call.i199, 248
  %or.i202 = or i32 %and.i, %52
  %57 = trunc i32 %or.i202 to i8
  %conv.i = or i8 %57, 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 113, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end10.i, label %if.end76

do.end10.i:                                       ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #9
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.51, i32 noundef 113, i32 noundef %call4.i) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end.i203
  %int_setting13.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %56, i32 0, i32 2
  %58 = ptrtoint ptr %int_setting13.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %int_setting13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp14.i = icmp eq i32 %59, 2
  %frombool.i = zext i1 %cmp14.i to i8
  %60 = ptrtoint ptr %touch_ind_mode to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool.i, ptr %touch_ind_mode, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  %63 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call13, align 8
  %call79 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %62, ptr noundef null, ptr noundef nonnull @auo_pixcir_interrupt, i32 noundef 8193, ptr noundef %64, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end87, label %do.end84

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %66, i32 noundef %call79) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end76
  %call88 = tail call fastcc i32 @auo_pixcir_stop(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %call92 = tail call i32 @input_register_device(ptr noundef nonnull %call13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call92) #10
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i205 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %67 = ptrtoint ptr %driver_data.i.i205 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %driver_data.i.i205, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end97, %if.end87.cleanup_crit_edge, %do.end84, %do.end10.i, %do.end.i201, %if.end65.cleanup_crit_edge, %do.end63, %do.end53, %do.end43, %do.end, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call38, %do.end43 ], [ %call48, %do.end53 ], [ %call.i195, %do.end63 ], [ %call79, %do.end84 ], [ %call92, %do.end97 ], [ 0, %if.end99 ], [ -12, %do.end ], [ %9, %if.then4 ], [ -12, %if.end6.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call88, %if.end87.cleanup_crit_edge ], [ %call4.i, %do.end10.i ], [ %call.i199, %do.end.i201 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @auo_pixcir_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auo_pixcir_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @auo_pixcir_stop(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @auo_pixcir_reset(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.auo_pixcir_ts, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %gpio_rst = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_rst, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %raw_coord.i = alloca [8 x i8], align 8
  %raw_area.i = alloca [4 x i8], align 4
  %point = alloca [2 x %struct.auo_point_t], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry127 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.auo_pixcir_ts, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %point) #7
  %2 = getelementptr inbounds i8, ptr %point, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 32)
  %stopped = getelementptr inbounds %struct.auo_pixcir_ts, ptr %dev_id, i32 0, i32 6
  %4 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not258268 = icmp eq i8 %5, 0
  br i1 %tobool.not258268, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %touch_ind_mode = getelementptr inbounds %struct.auo_pixcir_ts, ptr %dev_id, i32 0, i32 4
  %wait = getelementptr inbounds %struct.auo_pixcir_ts, ptr %dev_id, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i8], ptr %raw_coord.i, i32 0, i32 7
  %13 = getelementptr inbounds [4 x i8], ptr %raw_area.i, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i8], ptr %raw_area.i, i32 0, i32 2
  %15 = getelementptr inbounds [4 x i8], ptr %raw_area.i, i32 0, i32 3
  %coord_y.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 0, i32 1
  %area_major.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 0, i32 2
  %area_minor.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 0, i32 3
  %orientation.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 0, i32 4
  %arrayidx16.1.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 1
  %coord_y.1.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 1, i32 1
  %area_major.1.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 1, i32 2
  %area_minor.1.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 1, i32 3
  %orientation.1.i = getelementptr inbounds %struct.auo_point_t, ptr %point, i32 1, i32 4
  %input63 = getelementptr inbounds %struct.auo_pixcir_ts, ptr %dev_id, i32 0, i32 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end163.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %fingers.0.ph270 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %fingers.2.1, %if.end163.while.body.lr.ph_crit_edge ]
  %abs.0.ph269 = phi i32 [ -1, %while.body.lr.ph.lr.ph ], [ %abs.3.1, %if.end163.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %while.body.lr.ph
  %16 = ptrtoint ptr %touch_ind_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %touch_ind_mode, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %while.body.if.end6_crit_edge, label %if.then

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %while.body
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %call.i = call ptr @gpio_to_desc(i32 noundef %19) #7
  %call1.i = call i32 @gpiod_get_raw_value(ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 0
  br i1 %cmp, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %21, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  %22 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  %24 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %while.end

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %28 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %raw_coord.i) #7
  %30 = ptrtoint ptr %raw_coord.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %raw_coord.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_area.i) #7
  %31 = ptrtoint ptr %raw_area.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %raw_area.i, align 4
  %call.i230 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %raw_coord.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp.i = icmp slt i32 %call.i230, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59, i32 noundef %call.i230) #10
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %call4.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %27, i8 noundef zeroext 30, i8 noundef zeroext 4, ptr noundef nonnull %raw_area.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %x_max.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %29, i32 0, i32 3
  %y_max.i = getelementptr inbounds %struct.auo_pixcir_ts_platdata, ptr %29, i32 0, i32 4
  %dev40.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %conv.i = zext i8 %33 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %34 = ptrtoint ptr %raw_coord.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %raw_coord.i, align 8
  %conv15.i = zext i8 %35 to i32
  %or.i = or i32 %shl.i, %conv15.i
  %36 = ptrtoint ptr %point to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i, ptr %point, align 4
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 1
  %conv20.i = zext i8 %38 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %7, align 2
  %conv25.i = zext i8 %40 to i32
  %or26.i = or i32 %shl21.i, %conv25.i
  %41 = ptrtoint ptr %coord_y.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or26.i, ptr %coord_y.i, align 4
  %42 = ptrtoint ptr %x_max.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %x_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %43)
  %cmp30.i = icmp ugt i32 %or.i, %43
  br i1 %cmp30.i, label %for.cond.preheader.i.do.end39.i_crit_edge, label %lor.lhs.false.i

for.cond.preheader.i.do.end39.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.62, i32 noundef %call4.i) #10
  br label %if.then9

lor.lhs.false.i:                                  ; preds = %for.cond.preheader.i
  %44 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or26.i, i32 %45)
  %cmp34.i = icmp ugt i32 %or26.i, %45
  br i1 %cmp34.i, label %lor.lhs.false.i.do.end39.i_crit_edge, label %lor.lhs.false.i.if.end49.i_crit_edge

lor.lhs.false.i.if.end49.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

lor.lhs.false.i.do.end39.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end39.i:                                       ; preds = %lor.lhs.false.i.do.end39.i_crit_edge, %for.cond.preheader.i.do.end39.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40.i, ptr noundef nonnull @.str.65, i32 noundef %or.i, i32 noundef %or26.i) #10
  %46 = ptrtoint ptr %coord_y.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %coord_y.i, align 4
  %47 = ptrtoint ptr %point to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %point, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end39.i, %lor.lhs.false.i.if.end49.i_crit_edge
  %48 = ptrtoint ptr %raw_area.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %raw_area.i, align 4
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp57.i = icmp ugt i8 %49, %51
  %52 = call i8 @llvm.umax.i8(i8 %49, i8 %51) #7
  %cond.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %area_major.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i, ptr %area_major.i, align 4
  %54 = call i8 @llvm.umin.i8(i8 %49, i8 %51) #7
  %cond77.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %area_minor.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond77.i, ptr %area_minor.i, align 4
  %conv87.i = zext i1 %cmp57.i to i32
  %56 = ptrtoint ptr %orientation.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv87.i, ptr %orientation.i, align 4
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %10, align 1
  %conv.1.i = zext i8 %58 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %9, align 4
  %conv15.1.i = zext i8 %60 to i32
  %or.1.i = or i32 %shl.1.i, %conv15.1.i
  %61 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.1.i, ptr %arrayidx16.1.i, align 4
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %12, align 1
  %conv20.1.i = zext i8 %63 to i32
  %shl21.1.i = shl nuw nsw i32 %conv20.1.i, 8
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %11, align 2
  %conv25.1.i = zext i8 %65 to i32
  %or26.1.i = or i32 %shl21.1.i, %conv25.1.i
  %66 = ptrtoint ptr %coord_y.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or26.1.i, ptr %coord_y.1.i, align 4
  %67 = ptrtoint ptr %x_max.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %x_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i, i32 %68)
  %cmp30.1.i = icmp ugt i32 %or.1.i, %68
  br i1 %cmp30.1.i, label %if.end49.i.do.end39.1.i_crit_edge, label %lor.lhs.false.1.i

if.end49.i.do.end39.1.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.1.i

lor.lhs.false.1.i:                                ; preds = %if.end49.i
  %69 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %y_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or26.1.i, i32 %70)
  %cmp34.1.i = icmp ugt i32 %or26.1.i, %70
  br i1 %cmp34.1.i, label %lor.lhs.false.1.i.do.end39.1.i_crit_edge, label %lor.lhs.false.1.i.auo_pixcir_collect_data.exit_crit_edge

lor.lhs.false.1.i.auo_pixcir_collect_data.exit_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %auo_pixcir_collect_data.exit

lor.lhs.false.1.i.do.end39.1.i_crit_edge:         ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.1.i

do.end39.1.i:                                     ; preds = %lor.lhs.false.1.i.do.end39.1.i_crit_edge, %if.end49.i.do.end39.1.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40.i, ptr noundef nonnull @.str.65, i32 noundef %or.1.i, i32 noundef %or26.1.i) #10
  %71 = ptrtoint ptr %coord_y.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %coord_y.1.i, align 4
  %72 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx16.1.i, align 4
  br label %auo_pixcir_collect_data.exit

auo_pixcir_collect_data.exit:                     ; preds = %do.end39.1.i, %lor.lhs.false.1.i.auo_pixcir_collect_data.exit_crit_edge
  %73 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %14, align 2
  %75 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp57.1.i = icmp ugt i8 %74, %76
  %77 = call i8 @llvm.umax.i8(i8 %74, i8 %76) #7
  %cond.1.i = zext i8 %77 to i32
  %78 = ptrtoint ptr %area_major.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.1.i, ptr %area_major.1.i, align 4
  %79 = call i8 @llvm.umin.i8(i8 %74, i8 %76) #7
  %cond77.1.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %area_minor.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond77.1.i, ptr %area_minor.1.i, align 4
  %conv87.1.i = zext i1 %cmp57.1.i to i32
  %81 = ptrtoint ptr %orientation.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv87.1.i, ptr %orientation.1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_area.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %raw_coord.i) #7
  %82 = ptrtoint ptr %point to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %point, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp59 = icmp sgt i32 %83, 0
  br i1 %cmp59, label %auo_pixcir_collect_data.exit.if.then62_crit_edge, label %lor.lhs.false

auo_pixcir_collect_data.exit.if.then62_crit_edge: ; preds = %auo_pixcir_collect_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then9:                                         ; preds = %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_area.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %raw_coord.i) #7
  %84 = ptrtoint ptr %touch_ind_mode to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %touch_ind_mode, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool11.not = icmp eq i8 %85, 0
  br i1 %tobool11.not, label %if.then9.while.end_crit_edge, label %if.end13

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end13:                                         ; preds = %if.then9
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 200) #7
  %86 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool19.not = icmp eq i8 %87, 0
  br i1 %tobool19.not, label %if.then28, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then28:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %88 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call31254 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %89 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool34.not255.not = icmp eq i8 %90, 0
  br i1 %tobool34.not255.not, label %if.then28.cleanup_crit_edge, label %if.then28.if.end54_crit_edge

if.then28.if.end54_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %__ret29.1257 = phi i32 [ %__ret29.1, %cleanup.cleanup_crit_edge ], [ 1, %if.then28.cleanup_crit_edge ]
  %call51 = call i32 @schedule_timeout(i32 noundef %__ret29.1257) #7
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %91 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool34.not = icmp eq i8 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool38.not = icmp eq i32 %call51, 0
  %spec.store.select172 = select i1 %tobool38.not, i32 1, i32 %call51
  %__ret29.1 = select i1 %tobool34.not, i32 %call51, i32 %spec.store.select172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool44.not = icmp eq i32 %__ret29.1, 0
  %not.tobool34.not = xor i1 %tobool34.not, true
  %93 = select i1 %not.tobool34.not, i1 true, i1 %tobool44.not
  br i1 %93, label %cleanup.if.end54_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.then28.if.end54_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %94 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %94)
  %.pr = load i8, ptr %stopped, align 4
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %if.end54.while.body_crit_edge, label %if.end54.while.end_crit_edge

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

lor.lhs.false:                                    ; preds = %auo_pixcir_collect_data.exit
  %95 = ptrtoint ptr %coord_y.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %coord_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp61 = icmp sgt i32 %96, 0
  br i1 %cmp61, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %auo_pixcir_collect_data.exit.if.then62_crit_edge
  %97 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %98, i32 noundef 3, i32 noundef 53, i32 noundef %83) #7
  %99 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input63, align 4
  %101 = ptrtoint ptr %coord_y.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %coord_y.i, align 4
  call void @input_event(ptr noundef %100, i32 noundef 3, i32 noundef 54, i32 noundef %102) #7
  %103 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %input63, align 4
  %105 = ptrtoint ptr %area_major.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %area_major.i, align 4
  call void @input_event(ptr noundef %104, i32 noundef 3, i32 noundef 48, i32 noundef %106) #7
  %107 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %input63, align 4
  %109 = ptrtoint ptr %area_minor.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %area_minor.i, align 4
  call void @input_event(ptr noundef %108, i32 noundef 3, i32 noundef 49, i32 noundef %110) #7
  %111 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %input63, align 4
  %113 = ptrtoint ptr %orientation.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %orientation.i, align 4
  call void @input_event(ptr noundef %112, i32 noundef 3, i32 noundef 52, i32 noundef %114) #7
  %115 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %116, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fingers.0.ph270)
  %cmp76 = icmp eq i32 %fingers.0.ph270, 0
  %spec.select = select i1 %cmp76, i32 0, i32 %abs.0.ph269
  %inc = add i32 %fingers.0.ph270, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %lor.lhs.false.for.inc_crit_edge
  %abs.3 = phi i32 [ %spec.select, %if.then62 ], [ %abs.0.ph269, %lor.lhs.false.for.inc_crit_edge ]
  %fingers.2 = phi i32 [ %inc, %if.then62 ], [ %fingers.0.ph270, %lor.lhs.false.for.inc_crit_edge ]
  %117 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx16.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp59.1 = icmp sgt i32 %118, 0
  br i1 %cmp59.1, label %for.inc.if.then62.1_crit_edge, label %lor.lhs.false.1

for.inc.if.then62.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %119 = ptrtoint ptr %coord_y.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %coord_y.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp61.1 = icmp sgt i32 %120, 0
  br i1 %cmp61.1, label %lor.lhs.false.1.if.then62.1_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

lor.lhs.false.1.if.then62.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62.1

if.then62.1:                                      ; preds = %lor.lhs.false.1.if.then62.1_crit_edge, %for.inc.if.then62.1_crit_edge
  %121 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %122, i32 noundef 3, i32 noundef 53, i32 noundef %118) #7
  %123 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %input63, align 4
  %125 = ptrtoint ptr %coord_y.1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %coord_y.1.i, align 4
  call void @input_event(ptr noundef %124, i32 noundef 3, i32 noundef 54, i32 noundef %126) #7
  %127 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %input63, align 4
  %129 = ptrtoint ptr %area_major.1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %area_major.1.i, align 4
  call void @input_event(ptr noundef %128, i32 noundef 3, i32 noundef 48, i32 noundef %130) #7
  %131 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %input63, align 4
  %133 = ptrtoint ptr %area_minor.1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %area_minor.1.i, align 4
  call void @input_event(ptr noundef %132, i32 noundef 3, i32 noundef 49, i32 noundef %134) #7
  %135 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %input63, align 4
  %137 = ptrtoint ptr %orientation.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %orientation.1.i, align 4
  call void @input_event(ptr noundef %136, i32 noundef 3, i32 noundef 52, i32 noundef %138) #7
  %139 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %140, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fingers.2)
  %cmp76.1 = icmp eq i32 %fingers.2, 0
  %inc.1 = add i32 %fingers.2, 1
  %spec.select282 = select i1 %cmp76.1, i32 1, i32 %abs.3
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then62.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %abs.3.1 = phi i32 [ %abs.3, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %spec.select282, %if.then62.1 ]
  %fingers.2.1 = phi i32 [ %fingers.2, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %inc.1, %if.then62.1 ]
  %141 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %input63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fingers.2.1)
  %cmp83 = icmp sgt i32 %fingers.2.1, 0
  %lnot.ext.i = zext i1 %cmp83 to i32
  call void @input_event(ptr noundef %142, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %abs.3.1)
  %cmp84 = icmp sgt i32 %abs.3.1, -1
  br i1 %cmp84, label %if.then86, label %for.inc.1.if.end93_crit_edge

for.inc.1.if.end93_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then86:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %input63, align 4
  %arrayidx88 = getelementptr [2 x %struct.auo_point_t], ptr %point, i32 0, i32 %abs.3.1
  %145 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx88, align 4
  call void @input_event(ptr noundef %144, i32 noundef 3, i32 noundef 0, i32 noundef %146) #7
  %147 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %input63, align 4
  %coord_y92 = getelementptr [2 x %struct.auo_point_t], ptr %point, i32 0, i32 %abs.3.1, i32 1
  %149 = ptrtoint ptr %coord_y92 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %coord_y92, align 4
  call void @input_event(ptr noundef %148, i32 noundef 3, i32 noundef 1, i32 noundef %150) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %for.inc.1.if.end93_crit_edge
  %151 = ptrtoint ptr %input63 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %input63, align 4
  call void @input_event(ptr noundef %152, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %153 = ptrtoint ptr %touch_ind_mode to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %touch_ind_mode, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool96.not = icmp eq i8 %154, 0
  br i1 %tobool96.not, label %if.end93.while.end_crit_edge, label %if.end98

if.end93.while.end_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end98:                                         ; preds = %if.end93
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 243) #7
  %155 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool109.not = icmp eq i8 %156, 0
  br i1 %tobool109.not, label %if.then126, label %if.end98.while.end_crit_edge

if.end98.while.end_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then126:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry127) #7
  %157 = call ptr @memset(ptr %__wq_entry127, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry127, i32 noundef 0) #7
  %call133264 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry127, i32 noundef 2) #7
  %158 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool136.not265.not = icmp eq i8 %159, 0
  br i1 %tobool136.not265.not, label %if.then126.cleanup156_crit_edge, label %if.then126.if.end163_crit_edge

if.then126.if.end163_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then126.cleanup156_crit_edge:                  ; preds = %if.then126
  br label %cleanup156

cleanup156:                                       ; preds = %cleanup156.cleanup156_crit_edge, %if.then126.cleanup156_crit_edge
  %__ret128.1267 = phi i32 [ %__ret128.1, %cleanup156.cleanup156_crit_edge ], [ 1, %if.then126.cleanup156_crit_edge ]
  %call155 = call i32 @schedule_timeout(i32 noundef %__ret128.1267) #7
  %call133 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry127, i32 noundef 2) #7
  %160 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %stopped, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool136.not = icmp eq i8 %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool141.not = icmp eq i32 %call155, 0
  %spec.store.select174 = select i1 %tobool141.not, i32 1, i32 %call155
  %__ret128.1 = select i1 %tobool136.not, i32 %call155, i32 %spec.store.select174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret128.1)
  %tobool148.not = icmp eq i32 %__ret128.1, 0
  %not.tobool136.not = xor i1 %tobool136.not, true
  %162 = select i1 %not.tobool136.not, i1 true, i1 %tobool148.not
  br i1 %162, label %cleanup156.if.end163_crit_edge, label %cleanup156.cleanup156_crit_edge

cleanup156.cleanup156_crit_edge:                  ; preds = %cleanup156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup156

cleanup156.if.end163_crit_edge:                   ; preds = %cleanup156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.end163:                                        ; preds = %cleanup156.if.end163_crit_edge, %if.then126.if.end163_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry127) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry127) #7
  %163 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %163)
  %.pr276 = load i8, ptr %stopped, align 4
  %tobool.not258 = icmp eq i8 %.pr276, 0
  br i1 %tobool.not258, label %if.end163.while.body.lr.ph_crit_edge, label %if.end163.while.end_crit_edge

if.end163.while.end_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end163.while.body.lr.ph_crit_edge:             ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end163.while.end_crit_edge, %if.end98.while.end_crit_edge, %if.end93.while.end_crit_edge, %if.end54.while.end_crit_edge, %if.end13.while.end_crit_edge, %if.then9.while.end_crit_edge, %if.then3, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %point) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @auo_pixcir_stop(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef 113, i32 noundef %call.i) #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, -9
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 113, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end10.i, label %if.end

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.51, i32 noundef 113, i32 noundef %call4.i) #10
  br label %do.end

do.end:                                           ; preds = %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call4.i, %do.end10.i ], [ %call.i, %do.end.i ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %4) #7
  %stopped = getelementptr inbounds %struct.auo_pixcir_ts, ptr %ts, i32 0, i32 6
  %5 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %wait = getelementptr inbounds %struct.auo_pixcir_ts, ptr %ts, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %call.i14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp.i15, label %do.end.i17, label %if.end.i20

do.end.i17:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.48, i32 noundef 115, i32 noundef %call.i14) #10
  br label %cleanup

if.end.i20:                                       ; preds = %if.end
  %8 = trunc i32 %call.i14 to i8
  %9 = and i8 %8, -4
  %conv.i19 = or i8 %9, 2
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 115, i8 noundef zeroext %conv.i19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i20.cleanup_crit_edge, label %do.end6.i

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end6.i:                                        ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.51, i32 noundef 115, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end6.i, %if.end.i20.cleanup_crit_edge, %do.end.i17, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call.i14, %do.end.i17 ], [ %call2.i, %do.end6.i ], [ 0, %if.end.i20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @auo_pixcir_start(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %auo_pixcir_power_mode.exit.thread, label %if.end.i

auo_pixcir_power_mode.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef 115, i32 noundef %call.i) #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %2 = trunc i32 %call.i to i8
  %conv.i = and i8 %2, -4
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 115, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %auo_pixcir_power_mode.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

auo_pixcir_power_mode.exit:                       ; preds = %if.end.i
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.51, i32 noundef 115, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %auo_pixcir_power_mode.exit.do.end_crit_edge, label %auo_pixcir_power_mode.exit.if.end_crit_edge

auo_pixcir_power_mode.exit.if.end_crit_edge:      ; preds = %auo_pixcir_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

auo_pixcir_power_mode.exit.do.end_crit_edge:      ; preds = %auo_pixcir_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %auo_pixcir_power_mode.exit.do.end_crit_edge, %auo_pixcir_power_mode.exit.thread
  %retval.0.i36 = phi i32 [ %call.i, %auo_pixcir_power_mode.exit.thread ], [ %call2.i, %auo_pixcir_power_mode.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i36) #10
  br label %cleanup

if.end:                                           ; preds = %auo_pixcir_power_mode.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %stopped = getelementptr inbounds %struct.auo_pixcir_ts, ptr %ts, i32 0, i32 6
  %3 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #7
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %do.end.i29, label %if.end.i32

do.end.i29:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i28 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.48, i32 noundef 113, i32 noundef %call.i26) #10
  br label %do.end10

if.end.i32:                                       ; preds = %if.end
  %8 = trunc i32 %call.i26 to i8
  %conv.i31 = or i8 %8, 8
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 113, i8 noundef zeroext %conv.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end10.i, label %if.end.i32.cleanup_crit_edge

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end10.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.51, i32 noundef 113, i32 noundef %call4.i) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end10.i, %do.end.i29
  %retval.0.i33.ph = phi i32 [ %call4.i, %do.end10.i ], [ %call.i26, %do.end.i29 ]
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i33.ph) #10
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.i32.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i36, %do.end ], [ %retval.0.i33.ph, %do.end10 ], [ 0, %if.end.i32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.auo_pixcir_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call4, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc i32 @auo_pixcir_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.if.end8_crit_edge, label %if.then5.unlock_crit_edge

if.then5.unlock_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef 115, i32 noundef %call.i26) #10
  br label %unlock

if.end.i:                                         ; preds = %if.end8
  %11 = trunc i32 %call.i26 to i8
  %12 = and i8 %11, -4
  %conv.i = or i8 %12, 1
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 115, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i27 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i27, label %if.end.i.unlock_crit_edge, label %do.end6.i

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.51, i32 noundef 115, i32 noundef %call2.i) #10
  br label %unlock

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call11 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call11, label %if.then12, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @auo_pixcir_stop(ptr noundef %1)
  br label %unlock

unlock:                                           ; preds = %if.then12, %if.else.unlock_crit_edge, %do.end6.i, %if.end.i.unlock_crit_edge, %do.end.i, %if.then5.unlock_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5.unlock_crit_edge ], [ %call13, %if.then12 ], [ 0, %if.else.unlock_crit_edge ], [ %call.i26, %do.end.i ], [ %call2.i, %do.end6.i ], [ 0, %if.end.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auo_pixcir_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.auo_pixcir_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #7
  %call5 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call5, label %if.then.unlock_crit_edge, label %if.then6

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @auo_pixcir_stop(ptr noundef %1)
  br label %unlock

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call10 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #7
  br i1 %call10, label %if.then11, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @auo_pixcir_start(ptr noundef %1)
  br label %unlock

unlock:                                           ; preds = %if.then11, %if.else.unlock_crit_edge, %if.then6, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.unlock_crit_edge ], [ %call7, %if.then6 ], [ %call12, %if.then11 ], [ 0, %if.else.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_auo_pixcir_ts__292_677_auo_pixcir_driver_init6, !1, !"__initcall__kmod_auo_pixcir_ts__292_677_auo_pixcir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 677, i32 1}
!2 = !{ptr @__exitcall_auo_pixcir_driver_exit, !1, !"__exitcall_auo_pixcir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 679, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 680, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 681, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 669, i32 11}
!12 = !{ptr @auo_pixcir_driver, !13, !"auo_pixcir_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 667, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 545, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @auo_pixcir_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @auo_pixcir_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @auo_pixcir_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 554, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 557, i32 4}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 559, i32 20}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 589, i32 25}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 591, i32 3}
!33 = !{ptr @auo_pixcir_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @auo_pixcir_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 598, i32 11}
!37 = !{ptr @auo_pixcir_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 600, i32 3}
!39 = !{ptr @auo_pixcir_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 607, i32 3}
!42 = !{ptr @auo_pixcir_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @auo_pixcir_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 620, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @auo_pixcir_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @auo_pixcir_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 631, i32 3}
!51 = !{ptr @auo_pixcir_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @auo_pixcir_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 643, i32 3}
!55 = !{ptr @auo_pixcir_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @auo_pixcir_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 483, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @auo_pixcir_parse_dt._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @auo_pixcir_parse_dt._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 489, i32 3}
!64 = !{ptr @auo_pixcir_parse_dt._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @auo_pixcir_parse_dt._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 493, i32 31}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 494, i32 3}
!70 = !{ptr @auo_pixcir_parse_dt._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @auo_pixcir_parse_dt._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 498, i32 31}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 499, i32 3}
!76 = !{ptr @auo_pixcir_parse_dt._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @auo_pixcir_parse_dt._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/of_gpio.h", i32 121, i32 37}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 348, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @auo_pixcir_start._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @auo_pixcir_start._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 359, i32 3}
!87 = !{ptr @auo_pixcir_start._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @auo_pixcir_start._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 263, i32 3}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @auo_pixcir_power_mode._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @auo_pixcir_power_mode._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 273, i32 3}
!96 = !{ptr @auo_pixcir_power_mode._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @auo_pixcir_power_mode._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 320, i32 3}
!100 = !{ptr @auo_pixcir_int_toggle._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @auo_pixcir_int_toggle._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @auo_pixcir_int_toggle._entry.54, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 333, i32 3}
!104 = !{ptr @auo_pixcir_int_toggle._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 290, i32 3}
!107 = !{ptr @auo_pixcir_int_config._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @auo_pixcir_int_config._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @auo_pixcir_int_config._entry.57, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 302, i32 3}
!111 = !{ptr @auo_pixcir_int_config._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 137, i32 3}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @auo_pixcir_collect_data._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @auo_pixcir_collect_data._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 145, i32 3}
!119 = !{ptr @auo_pixcir_collect_data._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @auo_pixcir_collect_data._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 157, i32 4}
!123 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @auo_pixcir_collect_data._entry.64, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @auo_pixcir_collect_data._entry_ptr.67, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 375, i32 3}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @auo_pixcir_stop._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @auo_pixcir_stop._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @auo_pixcir_ts_dt_idtable, !132, !"auo_pixcir_ts_dt_idtable", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 660, i32 34}
!133 = !{ptr @auo_pixcir_pm_ops, !134, !"auo_pixcir_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 465, i32 8}
!135 = !{ptr @auo_pixcir_idtable, !136, !"auo_pixcir_idtable", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/auo-pixcir-ts.c", i32 653, i32 35}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i8 0, i8 2}
!147 = !{i64 2155742108}
!148 = !{i64 2155738570}
