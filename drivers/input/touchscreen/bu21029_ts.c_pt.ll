; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/bu21029_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/bu21029_ts.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bu21029_ts_data = type { ptr, ptr, %struct.timer_list, ptr, ptr, i32, %struct.touchscreen_properties }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_bu21029_ts__288_480_bu21029_driver_init6 = internal global ptr @bu21029_driver_init, section ".initcall6.init", align 4
@bu21029_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bu21029_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bu21029_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bu21029_pm_ops, ptr null, ptr null }, ptr @bu21029_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bu21029_driver_exit = internal global ptr @bu21029_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"bu21029_ts.author=Zhu Yi <yi.zhu5@cn.bosch.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [66 x i8] c"bu21029_ts.description=Rohm BU21029 touchscreen controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [53 x i8] c"bu21029_ts.file=drivers/input/touchscreen/bu21029_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"bu21029_ts.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bu21029\00", [24 x i8] zeroinitializer }, align 32
@bu21029_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bu21029\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bu21029_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bu21029_suspend, ptr @bu21029_resume, ptr @bu21029_suspend, ptr @bu21029_resume, ptr @bu21029_suspend, ptr @bu21029_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bu21029_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bu21029\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bu21029_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"i2c functionality support is not sufficient\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bu21029_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/bu21029_ts.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr = internal global ptr @bu21029_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rohm,x-plate-ohms\00", [46 x i8] zeroinitializer }, align 32
@bu21029_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid 'x-plate-ohms' supplied: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.9 = internal global ptr @bu21029_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@bu21029_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to acquire 'vdd' supply: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.13 = internal global ptr @bu21029_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@bu21029_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to acquire 'reset' gpio: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.17 = internal global ptr @bu21029_probe._entry.15, section ".printk_index", align 4
@bu21029_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.20 = internal global ptr @bu21029_probe._entry.18, section ".printk_index", align 4
@bu21029_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&bu21029->timer)\00", [46 x i8] zeroinitializer }, align 32
@bu21029_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to request touch irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.24 = internal global ptr @bu21029_probe._entry.22, section ".printk_index", align 4
@bu21029_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@bu21029_probe._entry_ptr.27 = internal global ptr @bu21029_probe._entry.25, section ".printk_index", align 4
@bu21029_start_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to power up chip: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bu21029_start_chip\00", [45 x i8] zeroinitializer }, align 32
@bu21029_start_chip._entry_ptr = internal global ptr @bu21029_start_chip._entry, section ".printk_index", align 4
@bu21029_start_chip._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to read HW ID\0A\00", [42 x i8] zeroinitializer }, align 32
@bu21029_start_chip._entry_ptr.32 = internal global ptr @bu21029_start_chip._entry.30, section ".printk_index", align 4
@bu21029_start_chip._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported HW ID 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@bu21029_start_chip._entry_ptr.35 = internal global ptr @bu21029_start_chip._entry.33, section ".printk_index", align 4
@bu21029_start_chip._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to write %#02x to register %#02x: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@bu21029_start_chip._entry_ptr.38 = internal global ptr @bu21029_start_chip._entry.36, section ".printk_index", align 4
@bu21029_start_chip._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start autoscan\0A\00", [38 x i8] zeroinitializer }, align 32
@bu21029_start_chip._entry_ptr.41 = internal global ptr @bu21029_start_chip._entry.39, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"bu21029_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 471, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 473, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"bu21029_of_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 464, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"bu21029_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 455, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"bu21029_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 457, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 345, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 354, i32 49 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 357, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 362, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 366, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 372, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 376, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 383, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 389, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 409, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 416, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 271, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 284, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 289, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 300, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [42 x i8] c"../drivers/input/touchscreen/bu21029_ts.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 310, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bu21029_driver_exit, ptr @__initcall__kmod_bu21029_ts__288_480_bu21029_driver_init6, ptr @bu21029_driver_exit, ptr @bu21029_probe._entry, ptr @bu21029_probe._entry.11, ptr @bu21029_probe._entry.15, ptr @bu21029_probe._entry.18, ptr @bu21029_probe._entry.22, ptr @bu21029_probe._entry.25, ptr @bu21029_probe._entry.7, ptr @bu21029_probe._entry_ptr, ptr @bu21029_probe._entry_ptr.13, ptr @bu21029_probe._entry_ptr.17, ptr @bu21029_probe._entry_ptr.20, ptr @bu21029_probe._entry_ptr.24, ptr @bu21029_probe._entry_ptr.27, ptr @bu21029_probe._entry_ptr.9, ptr @bu21029_start_chip._entry, ptr @bu21029_start_chip._entry.30, ptr @bu21029_start_chip._entry.33, ptr @bu21029_start_chip._entry.36, ptr @bu21029_start_chip._entry.39, ptr @bu21029_start_chip._entry_ptr, ptr @bu21029_start_chip._entry_ptr.32, ptr @bu21029_start_chip._entry_ptr.35, ptr @bu21029_start_chip._entry_ptr.38, ptr @bu21029_start_chip._entry_ptr.41, ptr @bu21029_driver, ptr @.str, ptr @bu21029_of_ids, ptr @bu21029_pm_ops, ptr @bu21029_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @bu21029_probe.__key, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_start_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_start_chip._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_start_chip._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_start_chip._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21029_start_chip._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bu21029_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bu21029_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @bu21029_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 68419584
  call void @__sanitizer_cov_trace_const_cmp4(i32 68419584, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68419584
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 80, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %x_plate_ohms = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 5
  %call.i134 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %x_plate_ohms, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool8.not = icmp eq i32 %call.i134, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call.i134) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %vdd = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %vdd, align 4
  %cmp.i135 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end14
  %cmp.not = icmp eq ptr %call16, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then19.cleanup_crit_edge, label %do.end25

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %7) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  %call30 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 7) #5
  %reset_gpios = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpios to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call30, ptr %reset_gpios, align 4
  %cmp.i136 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end28
  %cmp36.not = icmp eq ptr %call30, inttoptr (i32 -517 to ptr)
  br i1 %cmp36.not, label %if.then33.cleanup_crit_edge, label %do.end40

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %9) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %call45 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end43
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 4
  %in_dev54 = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %in_dev54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call45, ptr %in_dev54, align 4
  %timer = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @bu21029_touch_release, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @bu21029_probe.__key) #5
  %12 = ptrtoint ptr %call45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %call45, align 8
  %id58 = getelementptr inbounds %struct.input_dev, ptr %call45, i32 0, i32 3
  %13 = ptrtoint ptr %id58 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 24, ptr %id58, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call45, i32 0, i32 31
  %14 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bu21029_start_chip, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call45, i32 0, i32 32
  %15 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bu21029_stop_chip, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call45, i32 noundef 1, i32 noundef 330) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call45, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call45, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call45, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.bu21029_ts_data, ptr %call.i, i32 0, i32 6
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call45, i1 noundef zeroext false, ptr noundef %prop) #5
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call45, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call60 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %18, ptr noundef null, ptr noundef nonnull @bu21029_touch_soft_irq, i32 noundef 532480, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call60) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end52
  %call68 = tail call i32 @input_register_device(ptr noundef nonnull %call45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call68) #8
  br label %cleanup

if.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i137 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i137 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i137, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end73, %do.end65, %do.end50, %do.end40, %if.then33.cleanup_crit_edge, %do.end25, %if.then19.cleanup_crit_edge, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i134, %do.end12 ], [ %call60, %do.end65 ], [ %call68, %do.end73 ], [ 0, %if.end75 ], [ -12, %do.end50 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %7, %do.end25 ], [ -517, %if.then19.cleanup_crit_edge ], [ %9, %do.end40 ], [ -517, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bu21029_touch_release(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %in_dev = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #5
  %2 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_dev, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %4 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_dev, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_start_chip(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %hwid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hwid) #5
  %4 = ptrtoint ptr %hwid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %hwid, align 2, !annotation !91
  %vdd = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.28, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpios = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reset_gpios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpios, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %8, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 2) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %call7 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 112, i8 noundef zeroext 2, ptr noundef nonnull %hwid) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.31) #8
  br label %err_out

if.end13:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %hwid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hwid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 553, i16 %10)
  %cmp14.not = icmp eq i16 %10, 553
  br i1 %cmp14.not, label %for.body.preheader, label %do.end19

for.body.preheader:                               ; preds = %if.end13
  %call26 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %for.body.preheader.do.end32_crit_edge, label %for.cond

for.body.preheader.do.end32_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %10 to i32
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.34, i32 noundef %conv) #8
  br label %err_out

for.cond:                                         ; preds = %for.body.preheader
  %call26.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext -90) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  br i1 %cmp27.1, label %for.cond.do.end32_crit_edge, label %for.cond.1

for.cond.do.end32_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.cond.1:                                       ; preds = %for.cond
  %call26.2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext -55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %cmp27.2 = icmp slt i32 %call26.2, 0
  br i1 %cmp27.2, label %for.cond.1.do.end32_crit_edge, label %for.cond.2

for.cond.1.do.end32_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.cond.2:                                       ; preds = %for.cond.1
  %call26.3 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 88, i8 noundef zeroext 66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %cmp27.3 = icmp slt i32 %call26.3, 0
  br i1 %cmp27.3, label %for.cond.2.do.end32_crit_edge, label %for.cond.3

for.cond.2.do.end32_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.cond.3:                                       ; preds = %for.cond.2
  %call26.4 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 96, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.4)
  %cmp27.4 = icmp slt i32 %call26.4, 0
  br i1 %cmp27.4, label %for.cond.3.do.end32_crit_edge, label %for.cond.4

for.cond.3.do.end32_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.cond.4:                                       ; preds = %for.cond.3
  %call41 = call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %if.end49

do.end32:                                         ; preds = %for.cond.3.do.end32_crit_edge, %for.cond.2.do.end32_crit_edge, %for.cond.1.do.end32_crit_edge, %for.cond.do.end32_crit_edge, %for.body.preheader.do.end32_crit_edge
  %.lcssa87 = phi i32 [ 0, %for.body.preheader.do.end32_crit_edge ], [ 8, %for.cond.do.end32_crit_edge ], [ 16, %for.cond.1.do.end32_crit_edge ], [ 88, %for.cond.2.do.end32_crit_edge ], [ 96, %for.cond.3.do.end32_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.body.preheader.do.end32_crit_edge ], [ 166, %for.cond.do.end32_crit_edge ], [ 201, %for.cond.1.do.end32_crit_edge ], [ 66, %for.cond.2.do.end32_crit_edge ], [ 119, %for.cond.3.do.end32_crit_edge ]
  %call26.lcssa = phi i32 [ %call26, %for.body.preheader.do.end32_crit_edge ], [ %call26.1, %for.cond.do.end32_crit_edge ], [ %call26.2, %for.cond.1.do.end32_crit_edge ], [ %call26.3, %for.cond.2.do.end32_crit_edge ], [ %call26.4, %for.cond.3.do.end32_crit_edge ]
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.37, i32 noundef %.lcssa, i32 noundef %.lcssa87, i32 noundef %call26.lcssa) #8
  br label %err_out

do.end47:                                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  %dev48 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.40) #8
  br label %err_out

if.end49:                                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %14) #5
  br label %cleanup

err_out:                                          ; preds = %do.end47, %do.end32, %do.end19, %do.end11
  %error.0 = phi i32 [ %call7, %do.end11 ], [ -19, %do.end19 ], [ %call26.lcssa, %do.end32 ], [ %call41, %do.end47 ]
  %15 = ptrtoint ptr %reset_gpios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpios, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %err_out.bu21029_put_chip_in_reset.exit_crit_edge, label %if.then.i

err_out.bu21029_put_chip_in_reset.exit_crit_edge: ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_put_chip_in_reset.exit

if.then.i:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %16, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 50, i32 noundef 1000, i32 noundef 2) #5
  br label %bu21029_put_chip_in_reset.exit

bu21029_put_chip_in_reset.exit:                   ; preds = %if.then.i, %err_out.bu21029_put_chip_in_reset.exit_crit_edge
  %17 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdd, align 4
  %call52 = call i32 @regulator_disable(ptr noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %bu21029_put_chip_in_reset.exit, %if.end49, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %error.0, %bu21029_put_chip_in_reset.exit ], [ 0, %if.end49 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hwid) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bu21029_stop_chip(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %timer = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  %reset_gpios.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reset_gpios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpios.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.bu21029_put_chip_in_reset.exit_crit_edge, label %if.then.i

entry.bu21029_put_chip_in_reset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_put_chip_in_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 1000, i32 noundef 2) #5
  br label %bu21029_put_chip_in_reset.exit

bu21029_put_chip_in_reset.exit:                   ; preds = %if.then.i, %entry.bu21029_put_chip_in_reset.exit_crit_edge
  %vdd = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_touch_soft_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %9, i8 noundef zeroext -128, i8 noundef zeroext 8, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %in_dev.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %in_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_dev.i, align 4
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.input_abs_get_max.exit.i_crit_edge, label %cond.true.i.i

if.end.input_abs_get_max.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit.i

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %13, i32 24, i32 2
  %14 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maximum.i.i, align 4
  br label %input_abs_get_max.exit.i

input_abs_get_max.exit.i:                         ; preds = %cond.true.i.i, %if.end.input_abs_get_max.exit.i_crit_edge
  %cond.i.i = phi i32 [ %15, %cond.true.i.i ], [ 0, %if.end.input_abs_get_max.exit.i_crit_edge ]
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 8
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 1
  %20 = lshr i8 %19, 4
  %21 = zext i8 %20 to i32
  %or.i = or i32 %shl.i, %21
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 2
  %conv5.i = zext i8 %23 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %26 = lshr i8 %25, 4
  %27 = zext i8 %26 to i32
  %or10.i = or i32 %shl6.i, %27
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 4
  %conv13.i = zext i8 %29 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %32 = lshr i8 %31, 4
  %33 = zext i8 %32 to i32
  %or18.i = or i32 %shl14.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18.i)
  %tobool.not.i = icmp eq i32 %or18.i, 0
  br i1 %tobool.not.i, label %input_abs_get_max.exit.i.bu21029_touch_report.exit_crit_edge, label %land.lhs.true.i

input_abs_get_max.exit.i.bu21029_touch_report.exit_crit_edge: ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_touch_report.exit

land.lhs.true.i:                                  ; preds = %input_abs_get_max.exit.i
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %36 = lshr i8 %35, 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 2
  %conv21.i = zext i8 %38 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 4
  %39 = zext i8 %36 to i32
  %or26.i = or i32 %shl22.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i)
  %tobool30.not.i = icmp eq i32 %or26.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i.bu21029_touch_report.exit_crit_edge, label %if.then.i

land.lhs.true.i.bu21029_touch_report.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_touch_report.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %sub.i = sub nsw i32 %or26.i, %or18.i
  %mul.i = mul nsw i32 %sub.i, %or.i
  %x_plate_ohms.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %data, i32 0, i32 5
  %40 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %x_plate_ohms.i, align 4
  %mul34.i = mul i32 %mul.i, %41
  %div.i = udiv i32 %mul34.i, %or18.i
  %add.i = add i32 %div.i, 2048
  %div3772.i = lshr i32 %add.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %div3772.i)
  %cmp.not.i = icmp ult i32 %cond.i.i, %div3772.i
  br i1 %cmp.not.i, label %if.then.i.bu21029_touch_report.exit_crit_edge, label %if.then39.i

if.then.i.bu21029_touch_report.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_touch_report.exit

if.then39.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prop.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %data, i32 0, i32 6
  call void @touchscreen_report_pos(ptr noundef %11, ptr noundef %prop.i, i32 noundef %or.i, i32 noundef %or10.i, i1 noundef zeroext false) #5
  %42 = ptrtoint ptr %in_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_dev.i, align 4
  %sub44.i = sub i32 %cond.i.i, %div3772.i
  call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 24, i32 noundef %sub44.i) #5
  %44 = ptrtoint ptr %in_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %in_dev.i, align 4
  call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %46 = ptrtoint ptr %in_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in_dev.i, align 4
  call void @input_event(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %bu21029_touch_report.exit

bu21029_touch_report.exit:                        ; preds = %if.then39.i, %if.then.i.bu21029_touch_report.exit_crit_edge, %land.lhs.true.i.bu21029_touch_report.exit_crit_edge, %input_abs_get_max.exit.i.bu21029_touch_report.exit_crit_edge
  %timer = getelementptr inbounds %struct.bu21029_ts_data, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 5
  %call3 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #5
  br label %out

out:                                              ; preds = %bu21029_touch_report.exit, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end8_crit_edge

device_may_wakeup.exit.if.end8_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %in_dev = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %7 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_dev, align 4
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %8) #5
  br i1 %call3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  %9 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %16) #5
  %timer.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %12, i32 0, i32 2
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #5
  %reset_gpios.i.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %reset_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset_gpios.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then4.bu21029_stop_chip.exit_crit_edge, label %if.then.i.i

if.then4.bu21029_stop_chip.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %bu21029_stop_chip.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %18, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 1000, i32 noundef 2) #5
  br label %bu21029_stop_chip.exit

bu21029_stop_chip.exit:                           ; preds = %if.then.i.i, %if.then4.bu21029_stop_chip.exit_crit_edge
  %vdd.i = getelementptr inbounds %struct.bu21029_ts_data, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdd.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %20) #5
  br label %if.end

if.end:                                           ; preds = %bu21029_stop_chip.exit, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_dev, align 4
  %mutex7 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex7) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %device_may_wakeup.exit.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21029_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end9_crit_edge

device_may_wakeup.exit.if.end9_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %in_dev = getelementptr inbounds %struct.bu21029_ts_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %7 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_dev, align 4
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %8) #5
  br i1 %call3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in_dev, align 4
  %call6 = tail call i32 @bu21029_start_chip(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_dev, align 4
  %mutex8 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex8) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %device_may_wakeup.exit.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_bu21029_ts__288_480_bu21029_driver_init6, !1, !"__initcall__kmod_bu21029_ts__288_480_bu21029_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 480, i32 1}
!2 = !{ptr @__exitcall_bu21029_driver_exit, !1, !"__exitcall_bu21029_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 482, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 483, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 484, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 473, i32 12}
!12 = !{ptr @bu21029_driver, !13, !"bu21029_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 471, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 345, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bu21029_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bu21029_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 354, i32 49}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 357, i32 3}
!26 = !{ptr @bu21029_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bu21029_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 362, i32 50}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 366, i32 4}
!32 = !{ptr @bu21029_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bu21029_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 372, i32 14}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 376, i32 4}
!38 = !{ptr @bu21029_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bu21029_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 383, i32 3}
!42 = !{ptr @bu21029_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bu21029_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bu21029_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 389, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 409, i32 3}
!49 = !{ptr @bu21029_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bu21029_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 416, i32 3}
!53 = !{ptr @bu21029_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bu21029_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 271, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @bu21029_start_chip._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @bu21029_start_chip._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 284, i32 3}
!62 = !{ptr @bu21029_start_chip._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @bu21029_start_chip._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 289, i32 3}
!66 = !{ptr @bu21029_start_chip._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bu21029_start_chip._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 300, i32 4}
!70 = !{ptr @bu21029_start_chip._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bu21029_start_chip._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 310, i32 3}
!74 = !{ptr @bu21029_start_chip._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @bu21029_start_chip._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @bu21029_of_ids, !77, !"bu21029_of_ids", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 464, i32 34}
!78 = !{ptr @bu21029_pm_ops, !79, !"bu21029_pm_ops", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 455, i32 8}
!80 = !{ptr @bu21029_ids, !81, !"bu21029_ids", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/bu21029_ts.c", i32 457, i32 35}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
