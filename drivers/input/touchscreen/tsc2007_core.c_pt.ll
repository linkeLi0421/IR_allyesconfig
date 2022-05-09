; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/tsc2007_core.c_pt.bc'
source_filename = "../drivers/input/touchscreen/tsc2007_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tsc2007 = type { ptr, [32 x i8], ptr, i16, i16, i16, i32, i32, i32, i32, ptr, i32, %struct.wait_queue_head, i8, ptr, ptr, %struct.mutex }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ts_event = type { i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsc2007_platform_data = type { i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@tsc2007_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c io error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsc2007_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/tsc2007_core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsc2007_xfer._entry_ptr = internal global ptr @tsc2007_xfer._entry, section ".printk_index", align 4
@tsc2007_xfer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsc2007\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"data: 0x%x, val: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_tsc2007__292_437_tsc2007_driver_init6 = internal global ptr @tsc2007_driver_init, section ".initcall6.init", align 4
@tsc2007_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tsc2007_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsc2007_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tsc2007_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tsc2007_driver_exit = internal global ptr @tsc2007_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [51 x i8] c"tsc2007.author=Kwangwoo Lee <kwlee@mtekvision.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [47 x i8] c"tsc2007.description=TSC2007 TouchScreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [47 x i8] c"tsc2007.file=drivers/input/touchscreen/tsc2007\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"tsc2007.license=GPL\00", section ".modinfo", align 1
@tsc2007_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tsc2007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsc2007_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tsc2007\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tsc2007_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->wait\00", [22 x i8] zeroinitializer }, align 32
@tsc2007_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ts->mlock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TSC2007 Touchscreen\00", [44 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register exit_platform_hw action, %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsc2007_probe\00", [18 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry_ptr = internal global ptr @tsc2007_probe._entry, section ".printk_index", align 4
@tsc2007_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry_ptr.16 = internal global ptr @tsc2007_probe._entry.14, section ".printk_index", align 4
@tsc2007_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to setup chip: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry_ptr.19 = internal global ptr @tsc2007_probe._entry.17, section ".printk_index", align 4
@tsc2007_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry_ptr.22 = internal global ptr @tsc2007_probe._entry.20, section ".printk_index", align 4
@tsc2007_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register with IIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tsc2007_probe._entry_ptr.25 = internal global ptr @tsc2007_probe._entry.23, section ".printk_index", align 4
@tsc2007_probe_pdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"x_plate_ohms is not set up in platform data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsc2007_probe_pdev\00", [45 x i8] zeroinitializer }, align 32
@tsc2007_probe_pdev._entry_ptr = internal global ptr @tsc2007_probe_pdev._entry, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,max-rt\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,fuzzx\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,fuzzy\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,fuzzz\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,poll-period\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,x-plate-ohms\00", [16 x i8] zeroinitializer }, align 32
@tsc2007_probe_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing ti,x-plate-ohms device property\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tsc2007_probe_properties\00", [39 x i8] zeroinitializer }, align 32
@tsc2007_probe_properties._entry_ptr = internal global ptr @tsc2007_probe_properties._entry, section ".printk_index", align 4
@tsc2007_probe_properties._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 270, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Pen down GPIO is not specified in properties\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tsc2007_probe_properties._entry_ptr.39 = internal global ptr @tsc2007_probe_properties._entry.36, section ".printk_index", align 4
@tsc2007_soft_irq.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsc2007_soft_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DOWN point(%4d,%4d), resistance (%4u)\0A\00", [57 x i8] zeroinitializer }, align 32
@tsc2007_soft_irq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ignored pressure %d\0A\00", [43 x i8] zeroinitializer }, align 32
@tsc2007_soft_irq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UP\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4095]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 38, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 48, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"tsc2007_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 428, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"tsc2007_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 422, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"tsc2007_idtable\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 415, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 339, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 340, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 343, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 345, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 367, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 383, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 393, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 400, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 407, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 290, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 237, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 242, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 245, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 248, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 251, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 256, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 259, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 270, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 138, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 157, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [44 x i8] c"../drivers/input/touchscreen/tsc2007_core.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 163, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_tsc2007_driver_exit, ptr @__initcall__kmod_tsc2007__292_437_tsc2007_driver_init6, ptr @tsc2007_driver_exit, ptr @tsc2007_probe._entry, ptr @tsc2007_probe._entry.14, ptr @tsc2007_probe._entry.17, ptr @tsc2007_probe._entry.20, ptr @tsc2007_probe._entry.23, ptr @tsc2007_probe._entry_ptr, ptr @tsc2007_probe._entry_ptr.16, ptr @tsc2007_probe._entry_ptr.19, ptr @tsc2007_probe._entry_ptr.22, ptr @tsc2007_probe._entry_ptr.25, ptr @tsc2007_probe_pdev._entry, ptr @tsc2007_probe_pdev._entry_ptr, ptr @tsc2007_probe_properties._entry, ptr @tsc2007_probe_properties._entry.36, ptr @tsc2007_probe_properties._entry_ptr, ptr @tsc2007_probe_properties._entry_ptr.39, ptr @tsc2007_xfer._entry, ptr @tsc2007_xfer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tsc2007_driver, ptr @tsc2007_of_match, ptr @tsc2007_idtable, ptr @tsc2007_probe.__key, ptr @.str.7, ptr @tsc2007_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe_pdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc2007_probe_properties._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsc2007_xfer(ptr nocapture noundef readonly %tsc, i8 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.tsc2007, ptr %tsc, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %5 = lshr i16 %4, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_xfer, %if.then8)) #8
          to label %do.end14 [label %if.then8], !srcloc !105

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv11 = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10, ptr noundef nonnull @.str.6, i32 noundef %call, i32 noundef %conv11) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %if.end
  %conv15 = zext i16 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv15, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tsc2007_calculate_resistance(ptr nocapture noundef readonly %tsc, ptr nocapture noundef %tc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tc, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %land.rhs [
    i16 4095, label %if.end.thread
    i16 0, label %entry.if.end19_crit_edge
  ], !prof !106

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %tc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %tc, align 2
  br label %if.end19

land.rhs:                                         ; preds = %entry
  %z1 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 2
  %4 = ptrtoint ptr %z1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %z1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %land.rhs.if.end19_crit_edge, label %if.then9, !prof !107

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %z2 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 3
  %6 = ptrtoint ptr %z2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %z2, align 2
  %conv10 = zext i16 %7 to i32
  %conv12 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv10, %conv12
  %conv14 = zext i16 %1 to i32
  %mul = mul i32 %sub, %conv14
  %x_plate_ohms = getelementptr inbounds %struct.tsc2007, ptr %tsc, i32 0, i32 4
  %8 = ptrtoint ptr %x_plate_ohms to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %x_plate_ohms, align 2
  %conv15 = zext i16 %9 to i32
  %mul16 = mul i32 %mul, %conv15
  %div = udiv i32 %mul16, %conv12
  %add = add i32 %div, 2047
  %shr = lshr i32 %add, 12
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %land.rhs.if.end19_crit_edge, %if.end.thread, %entry.if.end19_crit_edge
  %rt.0 = phi i32 [ %shr, %if.then9 ], [ 0, %land.rhs.if.end19_crit_edge ], [ 0, %if.end.thread ], [ 0, %entry.if.end19_crit_edge ]
  ret i32 %rt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tsc2007_is_pen_down(ptr nocapture noundef readonly %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_pendown_state = getelementptr inbounds %struct.tsc2007, ptr %ts, i32 0, i32 14
  %0 = ptrtoint ptr %get_pendown_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_pendown_state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.tsc2007, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call = tail call i32 %1(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2 = icmp ne i32 %call, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tsc2007_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsc2007_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tsc2007_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %val32.i = alloca i32, align 4
  %val64.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #8
  %8 = and i32 %call.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %model1.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %model1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %model1.i, align 4
  %x_plate_ohms.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %x_plate_ohms.i, align 2
  %x_plate_ohms2.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %x_plate_ohms2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %x_plate_ohms2.i, align 2
  %max_rt.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %max_rt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_rt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  %narrow.i = select i1 %tobool.not.i, i16 4095, i16 %16
  %max_rt4.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %max_rt4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %narrow.i, ptr %max_rt4.i, align 4
  %poll_period.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %poll_period.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %poll_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  %cond9.i = select i1 %tobool5.not.i, i32 1, i32 %19
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond9.i) #8
  %poll_period10.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %poll_period10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i.i, ptr %poll_period10.i, align 4
  %get_pendown_state.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_pendown_state.i, align 4
  %get_pendown_state11.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 14
  %23 = ptrtoint ptr %get_pendown_state11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %get_pendown_state11.i, align 4
  %clear_penirq.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %clear_penirq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clear_penirq.i, align 4
  %clear_penirq12.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %clear_penirq12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %clear_penirq12.i, align 4
  %fuzzx.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %fuzzx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fuzzx.i, align 4
  %fuzzx13.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %fuzzx13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fuzzx13.i, align 4
  %fuzzy.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %fuzzy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fuzzy.i, align 4
  %fuzzy14.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %fuzzy14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fuzzy14.i, align 4
  %fuzzz.i = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %fuzzz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fuzzz.i, align 4
  %fuzzz15.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %fuzzz15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fuzzz15.i, align 4
  %36 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %x_plate_ohms.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.i = icmp eq i16 %37, 0
  br i1 %cmp.i, label %if.end13.thread194, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end13.thread194:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #8
  %38 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %val32.i, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val64.i) #8
  %39 = ptrtoint ptr %val64.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %val64.i, align 8, !annotation !108
  %call.i.i165 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i165)
  %tobool.not.i166 = icmp eq i32 %call.i.i165, 0
  br i1 %tobool.not.i166, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val32.i, align 4
  %conv.i = trunc i32 %41 to i16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %.sink.i = phi i16 [ %conv.i, %if.then.i ], [ 4095, %if.else.if.end.i_crit_edge ]
  %42 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %.sink.i, ptr %42, align 4
  %call.i68.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool3.not.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val32.i, align 4
  %fuzzx.i167 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %fuzzx.i167 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %fuzzx.i167, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call.i69.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool7.not.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val32.i, align 4
  %fuzzy.i168 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 8
  %49 = ptrtoint ptr %fuzzy.i168 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fuzzy.i168, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end5.i.if.end9.i_crit_edge
  %call.i70.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool11.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val32.i, align 4
  %fuzzz.i169 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %fuzzz.i169 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %fuzzz.i169, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end13.i_crit_edge
  %call.i71.i = call i32 @device_property_read_u64_array(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %val64.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool15.not.i = icmp eq i32 %call.i71.i, 0
  br i1 %tobool15.not.i, label %if.else.i.i176, label %if.end13.i.if.end22.i_crit_edge

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.else.i.i176:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %val64.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %val64.i, align 8
  %conv17.i = trunc i64 %54 to i32
  %call2.i.i175 = call i32 @__msecs_to_jiffies(i32 noundef %conv17.i) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i.i176, %if.end13.i.if.end22.i_crit_edge
  %.sink74.i = phi i32 [ %call2.i.i175, %if.else.i.i176 ], [ 1, %if.end13.i.if.end22.i_crit_edge ]
  %poll_period21.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %poll_period21.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink74.i, ptr %poll_period21.i, align 4
  %call.i72.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %val32.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool24.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end13.thread200

if.then25.i:                                      ; preds = %if.end22.i
  %56 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val32.i, align 4
  %conv26.i = trunc i32 %57 to i16
  %x_plate_ohms.i177 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 4
  %58 = ptrtoint ptr %x_plate_ohms.i177 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv26.i, ptr %x_plate_ohms.i177, align 2
  %call29.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef null, i32 noundef 1) #8
  %gpiod.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call29.i, ptr %gpiod.i, align 4
  %cmp.i73.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i, label %if.end13, label %if.end35.i

if.end13.thread200:                               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val64.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #8
  br label %cleanup

if.end35.i:                                       ; preds = %if.then25.i
  %tobool37.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool37.not.i, label %do.end42.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_pendown_state.i179 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 14
  %60 = ptrtoint ptr %get_pendown_state.i179 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tsc2007_get_pendown_state_gpio, ptr %get_pendown_state.i179, align 4
  br label %if.end13.thread197

do.end42.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %if.end13.thread197

if.end13.thread197:                               ; preds = %do.end42.i, %if.then38.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val64.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #8
  br label %if.end16

if.end13:                                         ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call29.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val64.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end13.thread197, %if.then8.if.end16_crit_edge
  %call18 = call ptr @devm_input_allocate_device(ptr noundef %dev) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client22 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %client22 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %client, ptr %client22, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %irq23 = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 11
  %66 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %irq23, align 4
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call18, ptr %call.i, align 4
  %wait = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 12
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @tsc2007_probe.__key) #8
  %mlock = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 16
  call void @__mutex_init(ptr noundef %mlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tsc2007_probe.__key.8) #8
  %phys = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %68 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i181 = icmp eq ptr %69, null
  br i1 %tobool.not.i181, label %if.end.i182, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i182:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i182, %if.end21.dev_name.exit_crit_edge
  %retval.0.i183 = phi ptr [ %71, %if.end.i182 ], [ %69, %if.end21.dev_name.exit_crit_edge ]
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i183)
  %72 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.11, ptr %call18, align 8
  %phys32 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 1
  %73 = ptrtoint ptr %phys32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %phys, ptr %phys32, align 4
  %id33 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3
  %74 = ptrtoint ptr %id33 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 24, ptr %id33, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 31
  %75 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @tsc2007_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 32
  %76 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @tsc2007_close, ptr %close, align 4
  %driver_data.i.i184 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 8
  %77 = ptrtoint ptr %driver_data.i.i184 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i.i184, align 4
  call void @input_set_capability(ptr noundef nonnull %call18, i32 noundef 1, i32 noundef 330) #8
  %fuzzx = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 7
  %78 = ptrtoint ptr %fuzzx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fuzzx, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %79, i32 noundef 0) #8
  %fuzzy = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 8
  %80 = ptrtoint ptr %fuzzy to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fuzzy, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef %81, i32 noundef 0) #8
  %fuzzz = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 9
  %82 = ptrtoint ptr %fuzzz to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fuzzz, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef %83, i32 noundef 0) #8
  br i1 %tobool7.not, label %dev_name.exit.if.end54_crit_edge, label %if.then35

dev_name.exit.if.end54_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then35:                                        ; preds = %dev_name.exit
  %exit_platform_hw = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 10
  %84 = ptrtoint ptr %exit_platform_hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %exit_platform_hw, align 4
  %tobool36.not = icmp eq ptr %85, null
  br i1 %tobool36.not, label %if.then35.if.end48_crit_edge, label %if.then37

if.then35.if.end48_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then37:                                        ; preds = %if.then35
  %call40 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tsc2007_call_exit_platform_hw, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then37.if.end48_crit_edge, label %do.end45

if.then37.if.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call40) #11
  br label %cleanup

if.end48:                                         ; preds = %if.then37.if.end48_crit_edge, %if.then35.if.end48_crit_edge
  %init_platform_hw = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 9
  %86 = ptrtoint ptr %init_platform_hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_platform_hw, align 4
  %tobool49.not = icmp eq ptr %87, null
  br i1 %tobool49.not, label %if.end48.if.end54_crit_edge, label %if.then50

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 %87() #8
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end48.if.end54_crit_edge, %dev_name.exit.if.end54_crit_edge
  %88 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq23, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %90 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call59 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %89, ptr noundef nonnull @tsc2007_hard_irq, ptr noundef nonnull @tsc2007_soft_irq, i32 noundef 8192, ptr noundef %93, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %95, i32 noundef %call59) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end54
  %stopped.i = getelementptr inbounds %struct.tsc2007, ptr %call.i, i32 0, i32 13
  %96 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %stopped.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  call void @arm_heavy_mb() #8
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %97 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq23, align 4
  call void @disable_irq(i32 noundef %98) #8
  %99 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %client22, align 4
  %call.i185 = call i32 @i2c_smbus_read_word_data(ptr noundef %100, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %tsc2007_xfer.exit.thread, label %if.end.i189

tsc2007_xfer.exit.thread:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %client22, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i185) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call.i185) #11
  br label %cleanup

if.end.i189:                                      ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_probe, %if.then8.i190)) #8
          to label %tsc2007_xfer.exit [label %if.then8.i190], !srcloc !105

if.then8.i190:                                    ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i188 = trunc i32 %call.i185 to i16
  %103 = call i16 @llvm.bswap.i16(i16 %conv.i188) #8
  %104 = lshr i16 %103, 4
  %105 = ptrtoint ptr %client22 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %client22, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %106, i32 0, i32 4
  %conv11.i = zext i16 %104 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i, ptr noundef nonnull @.str.6, i32 noundef %call.i185, i32 noundef %conv11.i) #8
  br label %tsc2007_xfer.exit

tsc2007_xfer.exit:                                ; preds = %if.then8.i190, %if.end.i189
  %call75 = call i32 @input_register_device(ptr noundef nonnull %call18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %tsc2007_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call75) #11
  br label %cleanup

if.end82:                                         ; preds = %tsc2007_xfer.exit
  %call83 = call i32 @tsc2007_iio_configure(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %do.end88

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call83) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.end82.cleanup_crit_edge, %do.end80, %tsc2007_xfer.exit.thread, %do.end64, %do.end45, %if.end16.cleanup_crit_edge, %if.end13, %if.end13.thread200, %if.end13.thread194, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %do.end45 ], [ %call59, %do.end64 ], [ %call.i185, %tsc2007_xfer.exit.thread ], [ %call75, %do.end80 ], [ %call83, %do.end88 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %61, %if.end13 ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ -22, %if.end13.thread194 ], [ -22, %if.end13.thread200 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_open(ptr nocapture noundef readonly %input_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %irq = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %4) #8
  %client.i = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tsc2007_xfer.exit.thread, label %if.end.i

tsc2007_xfer.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i) #11
  %9 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %wait.i = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %11) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_open, %if.then8.i)) #8
          to label %cleanup [label %if.then8.i], !srcloc !105

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %call.i to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %13 = lshr i16 %12, 4
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %conv11.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i, ptr noundef nonnull @.str.6, i32 noundef %call.i, i32 noundef %conv11.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i, %tsc2007_xfer.exit.thread
  %retval.0 = phi i32 [ %call.i, %tsc2007_xfer.exit.thread ], [ 0, %if.end.i ], [ 0, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc2007_close(ptr nocapture noundef readonly %input_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped.i = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %wait.i = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %irq.i = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc2007_call_exit_platform_hw(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %exit_platform_hw = getelementptr inbounds %struct.tsc2007_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %exit_platform_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit_platform_hw, align 4
  tail call void %3() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_hard_irq(i32 noundef %irq, ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_pendown_state.i = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 14
  %0 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tsc2007_is_pen_down.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tsc2007_is_pen_down.exit:                         ; preds = %entry
  %client.i = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 2
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 %1(ptr noundef %dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.i.not, label %if.end, label %tsc2007_is_pen_down.exit.cleanup_crit_edge

tsc2007_is_pen_down.exit.cleanup_crit_edge:       ; preds = %tsc2007_is_pen_down.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %tsc2007_is_pen_down.exit
  %clear_penirq = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 15
  %4 = ptrtoint ptr %clear_penirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_penirq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %tsc2007_is_pen_down.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %tsc2007_is_pen_down.exit.cleanup_crit_edge ], [ 1, %if.then1 ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_soft_irq(i32 noundef %irq, ptr noundef %handle) #0 align 64 {
entry:
  %tc = alloca %struct.ts_event, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc) #8
  %2 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 3
  %client.i = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 2
  %stopped = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 13
  %5 = ptrtoint ptr %tc to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %tc, align 8
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stopped, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not188 = icmp eq i8 %7, 0
  br i1 %tobool.not188, label %land.rhs.lr.ph, label %entry.do.body94_crit_edge

entry.do.body94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

land.rhs.lr.ph:                                   ; preds = %entry
  %get_pendown_state.i = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 14
  %mlock = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 16
  %x_plate_ohms.i = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 4
  %max_rt = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 5
  %poll_period = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 6
  %wait = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 12
  br label %land.rhs

land.rhs:                                         ; preds = %if.end92.land.rhs_crit_edge, %land.rhs.lr.ph
  %8 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.rhs.while.body_crit_edge, label %tsc2007_is_pen_down.exit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

tsc2007_is_pen_down.exit:                         ; preds = %land.rhs
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call.i = call i32 %9(ptr noundef %dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.i.not, label %tsc2007_is_pen_down.exit.do.body94_crit_edge, label %tsc2007_is_pen_down.exit.while.body_crit_edge

tsc2007_is_pen_down.exit.while.body_crit_edge:    ; preds = %tsc2007_is_pen_down.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

tsc2007_is_pen_down.exit.do.body94_crit_edge:     ; preds = %tsc2007_is_pen_down.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

while.body:                                       ; preds = %tsc2007_is_pen_down.exit.while.body_crit_edge, %land.rhs.while.body_crit_edge
  call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #8
  call fastcc void @tsc2007_read_values(ptr noundef %handle, ptr noundef nonnull %tc)
  call void @mutex_unlock(ptr noundef %mlock) #8
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tc, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %13, label %land.rhs.i [
    i16 4095, label %if.end.thread.i
    i16 0, label %while.body.land.lhs.true_crit_edge
  ], !prof !106

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.thread.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %tc, align 8
  br label %land.lhs.true

land.rhs.i:                                       ; preds = %while.body
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool6.not.i = icmp eq i16 %17, 0
  br i1 %tobool6.not.i, label %land.rhs.i.land.lhs.true_crit_edge, label %tsc2007_calculate_resistance.exit, !prof !107

land.rhs.i.land.lhs.true_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

tsc2007_calculate_resistance.exit:                ; preds = %land.rhs.i
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %4, align 2
  %conv10.i = zext i16 %19 to i32
  %conv12.i = zext i16 %17 to i32
  %sub.i = sub nsw i32 %conv10.i, %conv12.i
  %conv14.i = zext i16 %13 to i32
  %mul.i = mul i32 %sub.i, %conv14.i
  %20 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %x_plate_ohms.i, align 2
  %conv15.i = zext i16 %21 to i32
  %mul16.i = mul i32 %mul.i, %conv15.i
  %div.i = udiv i32 %mul16.i, %conv12.i
  %add.i = add i32 %div.i, 2047
  %shr.i = lshr i32 %add.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %tobool4.not = icmp ult i32 %add.i, 4096
  br i1 %tobool4.not, label %tsc2007_calculate_resistance.exit.land.lhs.true_crit_edge, label %if.end

tsc2007_calculate_resistance.exit.land.lhs.true_crit_edge: ; preds = %tsc2007_calculate_resistance.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %tsc2007_calculate_resistance.exit.land.lhs.true_crit_edge, %land.rhs.i.land.lhs.true_crit_edge, %if.end.thread.i, %while.body.land.lhs.true_crit_edge
  %22 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool5.not = icmp eq ptr %23, null
  br i1 %tobool5.not, label %land.lhs.true.do.body94_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.do.body94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

if.end:                                           ; preds = %tsc2007_calculate_resistance.exit
  %24 = ptrtoint ptr %max_rt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_rt, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp.not = icmp ugt i32 %shr.i, %conv
  br i1 %cmp.not, label %do.body22, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %rt.0.i170192 = phi i32 [ %shr.i, %if.end.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_soft_irq, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !105

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %tc to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tc, align 8
  %conv13 = zext i16 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %2, align 2
  %conv14 = zext i16 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_soft_irq.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %rt.0.i170192) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %32 = ptrtoint ptr %max_rt to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_rt, align 4
  %conv17 = zext i16 %33 to i32
  %sub = sub nsw i32 %conv17, %rt.0.i170192
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 1) #8
  %34 = ptrtoint ptr %tc to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tc, align 8
  %conv19 = zext i16 %35 to i32
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %conv19) #8
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %2, align 2
  %conv21 = zext i16 %37 to i32
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %conv21) #8
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %sub) #8
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end40

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_soft_irq, %if.then34)) #8
          to label %if.end40 [label %if.then34], !srcloc !105

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i, align 4
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_soft_irq.__UNIQUE_ID_ddebug290, ptr noundef %dev36, ptr noundef nonnull @.str.42, i32 noundef %shr.i) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %do.body22, %do.end
  %40 = ptrtoint ptr %poll_period to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %poll_period, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 160) #8
  %42 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stopped, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool48.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool59.not179 = icmp eq i32 %41, 0
  %tobool59.not = select i1 %tobool48.not, i1 %tobool59.not179, i1 false
  %not.tobool48.not = xor i1 %tobool48.not, true
  %44 = select i1 %not.tobool48.not, i1 true, i1 %tobool59.not
  br i1 %44, label %if.end40.if.end92_crit_edge, label %if.then63

if.end40.if.end92_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then63:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %45 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %46 = ptrtoint ptr %poll_period to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %poll_period, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call66180 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %48 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %stopped, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool69.not181 = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool74.not182 = icmp eq i32 %47, 0
  %spec.store.select120183 = select i1 %tobool74.not182, i32 1, i32 %47
  %__ret64.1184 = select i1 %tobool69.not181, i32 %47, i32 %spec.store.select120183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret64.1184)
  %tobool81.not185 = icmp eq i32 %__ret64.1184, 0
  %not.tobool69.not186 = xor i1 %tobool69.not181, true
  %50 = select i1 %not.tobool69.not186, i1 true, i1 %tobool81.not185
  br i1 %50, label %if.then63.for.end_crit_edge, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  br label %cleanup

if.then63.for.end_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then63.cleanup_crit_edge
  %__ret64.1187 = phi i32 [ %__ret64.1, %cleanup.cleanup_crit_edge ], [ %__ret64.1184, %if.then63.cleanup_crit_edge ]
  %call89 = call i32 @schedule_timeout(i32 noundef %__ret64.1187) #8
  %call66 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %51 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %stopped, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool69.not = icmp eq i8 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool74.not = icmp eq i32 %call89, 0
  %spec.store.select120 = select i1 %tobool74.not, i32 1, i32 %call89
  %__ret64.1 = select i1 %tobool69.not, i32 %call89, i32 %spec.store.select120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret64.1)
  %tobool81.not = icmp eq i32 %__ret64.1, 0
  %not.tobool69.not = xor i1 %tobool69.not, true
  %53 = select i1 %not.tobool69.not, i1 true, i1 %tobool81.not
  br i1 %53, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then63.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end92

if.end92:                                         ; preds = %for.end, %if.end40.if.end92_crit_edge
  %54 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %stopped, align 4, !range !111
  %tobool.not = icmp eq i8 %55, 0
  br i1 %tobool.not, label %if.end92.land.rhs_crit_edge, label %if.end92.do.body94_crit_edge

if.end92.do.body94_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body94

if.end92.land.rhs_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.body94:                                        ; preds = %if.end92.do.body94_crit_edge, %land.lhs.true.do.body94_crit_edge, %tsc2007_is_pen_down.exit.do.body94_crit_edge, %entry.do.body94_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_soft_irq, %if.then106)) #8
          to label %do.end111 [label %if.then106], !srcloc !105

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client.i, align 4
  %dev108 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_soft_irq.__UNIQUE_ID_ddebug291, ptr noundef %dev108, ptr noundef nonnull @.str.43) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.body94
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #8
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #8
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %clear_penirq = getelementptr inbounds %struct.tsc2007, ptr %handle, i32 0, i32 15
  %58 = ptrtoint ptr %clear_penirq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clear_penirq, align 4
  %tobool112.not = icmp eq ptr %59, null
  br i1 %tobool112.not, label %do.end111.if.end115_crit_edge, label %if.then113

do.end111.if.end115_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then113:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void %59() #8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %do.end111.if.end115_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsc2007_iio_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc2007_get_pendown_state_gpio(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpiod = getelementptr inbounds %struct.tsc2007, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod, align 4
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsc2007_read_values(ptr nocapture noundef readonly %tsc, ptr nocapture noundef writeonly %tc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.tsc2007, ptr %tsc, i32 0, i32 2
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext -44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %call.i) #11
  br label %tsc2007_xfer.exit

if.end.i:                                         ; preds = %entry
  %conv.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %5 = lshr i16 %4, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_read_values, %if.then8.i)) #8
          to label %do.end14.i [label %if.then8.i], !srcloc !105

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv11.i = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i, ptr noundef nonnull @.str.6, i32 noundef %call.i, i32 noundef %conv11.i) #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then8.i, %if.end.i
  %conv15.i = zext i16 %5 to i32
  br label %tsc2007_xfer.exit

tsc2007_xfer.exit:                                ; preds = %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv15.i, %do.end14.i ]
  %conv = trunc i32 %retval.0.i to i16
  %y = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 1
  %8 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %y, align 2
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %call.i16 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext -60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.end.i19, label %if.end.i21

do.end.i19:                                       ; preds = %tsc2007_xfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str, i32 noundef %call.i16) #11
  br label %tsc2007_xfer.exit28

if.end.i21:                                       ; preds = %tsc2007_xfer.exit
  %conv.i20 = trunc i32 %call.i16 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i20) #8
  %14 = lshr i16 %13, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_read_values, %if.then8.i24)) #8
          to label %do.end14.i26 [label %if.then8.i24], !srcloc !105

if.then8.i24:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev10.i22 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %conv11.i23 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i22, ptr noundef nonnull @.str.6, i32 noundef %call.i16, i32 noundef %conv11.i23) #8
  br label %do.end14.i26

do.end14.i26:                                     ; preds = %if.then8.i24, %if.end.i21
  %conv15.i25 = zext i16 %14 to i32
  br label %tsc2007_xfer.exit28

tsc2007_xfer.exit28:                              ; preds = %do.end14.i26, %do.end.i19
  %retval.0.i27 = phi i32 [ %call.i16, %do.end.i19 ], [ %conv15.i25, %do.end14.i26 ]
  %conv2 = trunc i32 %retval.0.i27 to i16
  %17 = ptrtoint ptr %tc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv2, ptr %tc, align 2
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %call.i30 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %19, i8 noundef zeroext -28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %do.end.i33, label %if.end.i35

do.end.i33:                                       ; preds = %tsc2007_xfer.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32, ptr noundef nonnull @.str, i32 noundef %call.i30) #11
  br label %tsc2007_xfer.exit42

if.end.i35:                                       ; preds = %tsc2007_xfer.exit28
  %conv.i34 = trunc i32 %call.i30 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv.i34) #8
  %23 = lshr i16 %22, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_read_values, %if.then8.i38)) #8
          to label %do.end14.i40 [label %if.then8.i38], !srcloc !105

if.then8.i38:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  %dev10.i36 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %conv11.i37 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i36, ptr noundef nonnull @.str.6, i32 noundef %call.i30, i32 noundef %conv11.i37) #8
  br label %do.end14.i40

do.end14.i40:                                     ; preds = %if.then8.i38, %if.end.i35
  %conv15.i39 = zext i16 %23 to i32
  br label %tsc2007_xfer.exit42

tsc2007_xfer.exit42:                              ; preds = %do.end14.i40, %do.end.i33
  %retval.0.i41 = phi i32 [ %call.i30, %do.end.i33 ], [ %conv15.i39, %do.end14.i40 ]
  %conv4 = trunc i32 %retval.0.i41 to i16
  %z1 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 2
  %26 = ptrtoint ptr %z1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv4, ptr %z1, align 2
  %27 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i, align 4
  %call.i44 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %28, i8 noundef zeroext -12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %do.end.i47, label %if.end.i49

do.end.i47:                                       ; preds = %tsc2007_xfer.exit42
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i, align 4
  %dev.i46 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i46, ptr noundef nonnull @.str, i32 noundef %call.i44) #11
  br label %tsc2007_xfer.exit56

if.end.i49:                                       ; preds = %tsc2007_xfer.exit42
  %conv.i48 = trunc i32 %call.i44 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv.i48) #8
  %32 = lshr i16 %31, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_read_values, %if.then8.i52)) #8
          to label %do.end14.i54 [label %if.then8.i52], !srcloc !105

if.then8.i52:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i, align 4
  %dev10.i50 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %conv11.i51 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i50, ptr noundef nonnull @.str.6, i32 noundef %call.i44, i32 noundef %conv11.i51) #8
  br label %do.end14.i54

do.end14.i54:                                     ; preds = %if.then8.i52, %if.end.i49
  %conv15.i53 = zext i16 %32 to i32
  br label %tsc2007_xfer.exit56

tsc2007_xfer.exit56:                              ; preds = %do.end14.i54, %do.end.i47
  %retval.0.i55 = phi i32 [ %call.i44, %do.end.i47 ], [ %conv15.i53, %do.end14.i54 ]
  %conv6 = trunc i32 %retval.0.i55 to i16
  %z2 = getelementptr inbounds %struct.ts_event, ptr %tc, i32 0, i32 3
  %35 = ptrtoint ptr %z2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv6, ptr %z2, align 2
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i, align 4
  %call.i58 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %37, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %do.end.i61, label %if.end.i63

do.end.i61:                                       ; preds = %tsc2007_xfer.exit56
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i, align 4
  %dev.i60 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str, i32 noundef %call.i58) #11
  br label %tsc2007_xfer.exit70

if.end.i63:                                       ; preds = %tsc2007_xfer.exit56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc2007_read_values, %if.then8.i66)) #8
          to label %tsc2007_xfer.exit70 [label %if.then8.i66], !srcloc !105

if.then8.i66:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i62 = trunc i32 %call.i58 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv.i62) #8
  %41 = lshr i16 %40, 4
  %42 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i, align 4
  %dev10.i64 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  %conv11.i65 = zext i16 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc2007_xfer.__UNIQUE_ID_ddebug288, ptr noundef %dev10.i64, ptr noundef nonnull @.str.6, i32 noundef %call.i58, i32 noundef %conv11.i65) #8
  br label %tsc2007_xfer.exit70

tsc2007_xfer.exit70:                              ; preds = %if.then8.i66, %if.end.i63, %do.end.i61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 38, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tsc2007_xfer._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tsc2007_xfer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 48, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tsc2007_xfer.__UNIQUE_ID_ddebug288, !9, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_tsc2007__292_437_tsc2007_driver_init6, !13, !"__initcall__kmod_tsc2007__292_437_tsc2007_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 437, i32 1}
!14 = !{ptr @__exitcall_tsc2007_driver_exit, !13, !"__exitcall_tsc2007_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 439, i32 1}
!17 = !{ptr @__UNIQUE_ID_description294, !18, !"__UNIQUE_ID_description294", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 440, i32 1}
!19 = !{ptr @__UNIQUE_ID_file295, !20, !"__UNIQUE_ID_file295", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 441, i32 1}
!21 = !{ptr @__UNIQUE_ID_license296, !20, !"__UNIQUE_ID_license296", i1 false, i1 false}
!22 = !{ptr @tsc2007_driver, !23, !"tsc2007_driver", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 428, i32 26}
!24 = !{ptr @tsc2007_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 339, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tsc2007_probe.__key.8, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 340, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 343, i32 4}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 345, i32 20}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 367, i32 5}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tsc2007_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tsc2007_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 383, i32 3}
!41 = !{ptr @tsc2007_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tsc2007_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 393, i32 3}
!45 = !{ptr @tsc2007_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tsc2007_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 400, i32 3}
!49 = !{ptr @tsc2007_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tsc2007_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 407, i32 3}
!53 = !{ptr @tsc2007_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tsc2007_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 290, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tsc2007_probe_pdev._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tsc2007_probe_pdev._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 237, i32 37}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 242, i32 37}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 245, i32 37}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 248, i32 37}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 251, i32 37}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 256, i32 37}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 259, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tsc2007_probe_properties._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tsc2007_probe_properties._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 270, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tsc2007_probe_properties._entry.36, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @tsc2007_probe_properties._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 138, i32 4}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug289, !83, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 157, i32 4}
!88 = !{ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 163, i32 2}
!91 = !{ptr @tsc2007_soft_irq.__UNIQUE_ID_ddebug291, !90, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!92 = !{ptr @tsc2007_of_match, !93, !"tsc2007_of_match", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 422, i32 34}
!94 = !{ptr @tsc2007_idtable, !95, !"tsc2007_idtable", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/tsc2007_core.c", i32 415, i32 35}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2148962023, i64 2148962028, i64 2148962041, i64 2148962085, i64 2148962119, i64 2148962140}
!106 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"auto-init"}
!109 = !{i64 2155636650}
!110 = !{i64 2155636908}
!111 = !{i8 0, i8 2}
