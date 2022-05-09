; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/silead.c_pt.bc'
source_filename = "../drivers/input/touchscreen/silead.c"
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
%struct.silead_ts_data = type { ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], [64 x i8], %struct.touchscreen_properties, i32, i32, [10 x %struct.input_mt_pos], [10 x i32], [10 x i32], [4 x i32], i8, i8, i8, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_mt_pos = type { i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.silead_fw_data = type { i32, i32 }

@__initcall__kmod_silead__294_838_silead_ts_driver_init6 = internal global ptr @silead_ts_driver_init, section ".initcall6.init", align 4
@silead_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @silead_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @silead_ts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @silead_ts_pm, ptr null, ptr null }, ptr @silead_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_silead_ts_driver_exit = internal global ptr @silead_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [52 x i8] c"silead.author=Robert Dolca <robert.dolca@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [49 x i8] c"silead.description=Silead I2C touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [45 x i8] c"silead.file=drivers/input/touchscreen/silead\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [19 x i8] c"silead.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"silead_ts\00", [22 x i8] zeroinitializer }, align 32
@silead_ts_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silead,gsl1680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silead,gsl1688\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silead,gsl3670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silead,gsl3675\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silead,gsl3692\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@silead_ts_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @silead_ts_suspend, ptr @silead_ts_resume, ptr @silead_ts_suspend, ptr @silead_ts_resume, ptr @silead_ts_suspend, ptr @silead_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@silead_ts_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gsl1680\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"gsl1688\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"gsl3670\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"gsl3675\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"gsl3692\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mssl1680\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@silead_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C functionality check failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"silead_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/silead.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@silead_ts_probe._entry_ptr = internal global ptr @silead_ts_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@silead_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Shutdown GPIO request failed\0A\00", [34 x i8] zeroinitializer }, align 32
@silead_ts_probe._entry_ptr.11 = internal global ptr @silead_ts_probe._entry.9, section ".printk_index", align 4
@silead_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ request failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@silead_ts_probe._entry_ptr.14 = internal global ptr @silead_ts_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"silead/%s.fw\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silead,max-fingers\00", [45 x i8] zeroinitializer }, align 32
@silead_ts_read_props.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"silead\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"silead_ts_read_props\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Max fingers read error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"silead/%s\00", [22 x i8] zeroinitializer }, align 32
@silead_ts_read_props.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.22, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware file name read error. Using default.\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"silead,pen-supported\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"silead,pen-resolution-x\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"silead,pen-resolution-y\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"silead,stuck-controller-bug\00", [36 x i8] zeroinitializer }, align 32
@silead_ts_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 534, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"[Firmware Bug]: Stuck I2C bus: please ignore the next 'controller timed out' error\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"silead_ts_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@silead_ts_setup._entry_ptr = internal global ptr @silead_ts_setup._entry, section ".printk_index", align 4
@silead_ts_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chip ID read error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@silead_ts_setup._entry_ptr.32 = internal global ptr @silead_ts_setup._entry.30, section ".printk_index", align 4
@silead_ts_setup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Initialization error, status: 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@silead_ts_setup._entry_ptr.35 = internal global ptr @silead_ts_setup._entry.33, section ".printk_index", align 4
@silead_ts_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 497, ptr @.str.38, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Silead chip ID: 0x%8X\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silead_ts_get_id\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@silead_ts_get_id._entry_ptr = internal global ptr @silead_ts_get_id._entry, section ".printk_index", align 4
@silead_ts_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Registers clear error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"silead_ts_init\00", [17 x i8] zeroinitializer }, align 32
@silead_ts_init._entry_ptr = internal global ptr @silead_ts_init._entry, section ".printk_index", align 4
@silead_ts_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chip reset error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"silead_ts_reset\00", [16 x i8] zeroinitializer }, align 32
@silead_ts_reset._entry_ptr = internal global ptr @silead_ts_reset._entry, section ".printk_index", align 4
@silead_ts_load_fw.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"silead_ts_load_fw\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware file name: %s\00", [41 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware request error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry_ptr = internal global ptr @silead_ts_load_fw._entry, section ".printk_index", align 4
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"silead,efi-fw-min-max\00", [42 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 446, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Warning loading '%s' from filesystem failed, using EFI embedded copy.\0A\00", [57 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry_ptr.49 = internal global ptr @silead_ts_load_fw._entry.47, section ".printk_index", align 4
@silead_ts_load_fw._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.3, i32 447, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Warning pen support is known to be broken in the EFI embedded fw version\0A\00", [54 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry_ptr.52 = internal global ptr @silead_ts_load_fw._entry.50, section ".printk_index", align 4
@silead_ts_load_fw._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware load error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@silead_ts_load_fw._entry_ptr.55 = internal global ptr @silead_ts_load_fw._entry.53, section ".printk_index", align 4
@silead_ts_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Startup error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"silead_ts_startup\00", [46 x i8] zeroinitializer }, align 32
@silead_ts_startup._entry_ptr = internal global ptr @silead_ts_startup._entry, section ".printk_index", align 4
@silead_ts_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Status read error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"silead_ts_get_status\00", [43 x i8] zeroinitializer }, align 32
@silead_ts_get_status._entry_ptr = internal global ptr @silead_ts_get_status._entry, section ".printk_index", align 4
@silead_ts_request_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"silead_ts_request_input_dev\00", [36 x i8] zeroinitializer }, align 32
@silead_ts_request_input_dev._entry_ptr = internal global ptr @silead_ts_request_input_dev._entry, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"silead,home-button\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"input/ts\00", [23 x i8] zeroinitializer }, align 32
@silead_ts_request_input_dev._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@silead_ts_request_input_dev._entry_ptr.66 = internal global ptr @silead_ts_request_input_dev._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"silead_ts pen\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"input/pen\00", [22 x i8] zeroinitializer }, align 32
@silead_ts_request_pen_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register pen input device: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"silead_ts_request_pen_input_dev\00", [32 x i8] zeroinitializer }, align 32
@silead_ts_request_pen_input_dev._entry_ptr = internal global ptr @silead_ts_request_pen_input_dev._entry, section ".printk_index", align 4
@silead_ts_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Data read error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"silead_ts_read_data\00", [44 x i8] zeroinitializer }, align 32
@silead_ts_read_data._entry_ptr = internal global ptr @silead_ts_read_data._entry, section ".printk_index", align 4
@silead_ts_read_data._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 261, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"More touches reported then supported %d > %d\0A\00", [50 x i8] zeroinitializer }, align 32
@silead_ts_read_data._entry_ptr.75 = internal global ptr @silead_ts_read_data._entry.73, section ".printk_index", align 4
@silead_ts_read_data.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.72, ptr @.str.3, ptr @.str.76, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"x=%d y=%d hw_id=%d sw_id=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@silead_ts_resume.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silead_ts_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Reloading firmware after unsuccessful resume\0A\00", [50 x i8] zeroinitializer }, align 32
@silead_ts_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Resume error, status: 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@silead_ts_resume._entry_ptr = internal global ptr @silead_ts_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"silead_ts_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 828, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 832, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"silead_ts_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 817, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"silead_ts_pm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 787, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"silead_ts_id\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 789, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 666, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 687, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 688, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 708, i32 50 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 711, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 732, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 643, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 594, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 597, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 601, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 604, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 606, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 608, i32 55 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 609, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 610, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 527, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 534, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 547, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 569, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 497, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 348, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 377, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 405, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 433, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 437, i32 47 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 445, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 447, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 461, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 387, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 478, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 129, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 143, i32 37 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 147, i32 22 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 152, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 180, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 181, i32 26 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 186, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 255, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 260, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 306, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 775, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private constant [38 x i8] c"../drivers/input/touchscreen/silead.c\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 778, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_silead_ts_driver_exit, ptr @__initcall__kmod_silead__294_838_silead_ts_driver_init6, ptr @silead_ts_driver_exit, ptr @silead_ts_get_id._entry, ptr @silead_ts_get_id._entry_ptr, ptr @silead_ts_get_status._entry, ptr @silead_ts_get_status._entry_ptr, ptr @silead_ts_init._entry, ptr @silead_ts_init._entry_ptr, ptr @silead_ts_load_fw._entry, ptr @silead_ts_load_fw._entry.47, ptr @silead_ts_load_fw._entry.50, ptr @silead_ts_load_fw._entry.53, ptr @silead_ts_load_fw._entry_ptr, ptr @silead_ts_load_fw._entry_ptr.49, ptr @silead_ts_load_fw._entry_ptr.52, ptr @silead_ts_load_fw._entry_ptr.55, ptr @silead_ts_probe._entry, ptr @silead_ts_probe._entry.12, ptr @silead_ts_probe._entry.9, ptr @silead_ts_probe._entry_ptr, ptr @silead_ts_probe._entry_ptr.11, ptr @silead_ts_probe._entry_ptr.14, ptr @silead_ts_read_data._entry, ptr @silead_ts_read_data._entry.73, ptr @silead_ts_read_data._entry_ptr, ptr @silead_ts_read_data._entry_ptr.75, ptr @silead_ts_request_input_dev._entry, ptr @silead_ts_request_input_dev._entry.64, ptr @silead_ts_request_input_dev._entry_ptr, ptr @silead_ts_request_input_dev._entry_ptr.66, ptr @silead_ts_request_pen_input_dev._entry, ptr @silead_ts_request_pen_input_dev._entry_ptr, ptr @silead_ts_reset._entry, ptr @silead_ts_reset._entry_ptr, ptr @silead_ts_resume._entry, ptr @silead_ts_resume._entry_ptr, ptr @silead_ts_setup._entry, ptr @silead_ts_setup._entry.30, ptr @silead_ts_setup._entry.33, ptr @silead_ts_setup._entry_ptr, ptr @silead_ts_setup._entry_ptr.32, ptr @silead_ts_setup._entry_ptr.35, ptr @silead_ts_startup._entry, ptr @silead_ts_startup._entry_ptr, ptr @silead_ts_driver, ptr @.str, ptr @silead_ts_of_match, ptr @silead_ts_pm, ptr @silead_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_setup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_load_fw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_load_fw._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_load_fw._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_request_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_request_input_dev._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_request_pen_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_read_data._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silead_ts_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @silead_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @silead_ts_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @silead_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @silead_ts_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @silead_ts_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 201326593
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326593, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326593
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 276, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %fw_name.i = getelementptr inbounds %struct.silead_ts_data, ptr %call.i, i32 0, i32 5
  %call.i119 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name.i, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef %id) #7
  tail call fastcc void @silead_ts_read_props(ptr noundef %client)
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %regulators = getelementptr inbounds %struct.silead_ts_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %regulators, align 4
  %arrayidx14 = getelementptr %struct.silead_ts_data, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.7, ptr %arrayidx14, align 4
  %call17 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %regulators) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call23 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call.i120 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @silead_disable_regulator, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end30, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i121 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #7
  %gpio_power = getelementptr inbounds %struct.silead_ts_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %gpio_power to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31, ptr %gpio_power, align 4
  %cmp.i122 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.end30
  %cmp37.not = icmp eq ptr %call31, inttoptr (i32 -517 to ptr)
  br i1 %cmp37.not, label %if.then34.if.end42_crit_edge, label %do.end41

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.then34.if.end42_crit_edge
  %13 = ptrtoint ptr %gpio_power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_power, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end30
  %call46 = tail call fastcc i32 @silead_ts_setup(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = tail call fastcc i32 @silead_ts_request_input_dev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %call54 = tail call fastcc i32 @silead_ts_request_pen_input_dev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call60 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %17, ptr noundef null, ptr noundef nonnull @silead_ts_threaded_irq_handler, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #7
  %18 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call60, label %do.end67 [
    i32 0, label %if.end69
    i32 -517, label %if.end57.cleanup_crit_edge
  ]

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call60) #10
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end67, %if.end57.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end42, %devm_add_action_or_reset.exit, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %15, %if.end42 ], [ 0, %if.end69 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ %call.i120, %devm_add_action_or_reset.exit ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ], [ %call60, %if.end57.cleanup_crit_edge ], [ %call60, %do.end67 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @silead_ts_read_props(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %str = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #7
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %str, align 4, !annotation !179
  %max_fingers = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %max_fingers, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silead_ts_read_props.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silead_ts_read_props, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !180

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silead_ts_read_props.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %3 = ptrtoint ptr %max_fingers to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %max_fingers, align 4
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %call10 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull %str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %do.body14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %fw_name = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %str, align 4
  %call13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef %5)
  br label %if.end30

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silead_ts_read_props.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silead_ts_read_props, %if.then26)) #7
          to label %if.end30 [label %if.then26], !srcloc !180

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silead_ts_read_props.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.22) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body14, %if.then12
  %call.i52 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.23) #7
  %pen_supported = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 14
  %frombool32 = zext i1 %call.i52 to i8
  %6 = ptrtoint ptr %pen_supported to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool32, ptr %pen_supported, align 1
  %pen_x_res = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 16
  %call.i53 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef %pen_x_res, i32 noundef 1) #7
  %pen_y_res = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 17
  %call.i54 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %pen_y_res, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @silead_disable_regulator(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.silead_ts_data, ptr %arg, i32 0, i32 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_setup(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %chip_id.i81 = alloca i32, align 4
  %chip_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i71 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  tail call void @pm_runtime_allow(ptr noundef %dev) #7
  %call.i72 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 0) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id.i) #7
  %2 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chip_id.i, align 4, !annotation !179
  %call1.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -4, i8 noundef zeroext 4, ptr noundef nonnull %chip_id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.silead_ts_get_id.exit_crit_edge, label %if.end.i

if.then.silead_ts_get_id.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_get_id.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_id.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #7
  %chip_id2.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %chip_id2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %chip_id2.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %5) #10
  br label %silead_ts_get_id.exit

silead_ts_get_id.exit:                            ; preds = %if.end.i, %if.then.silead_ts_get_id.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id.i) #7
  call void @pm_runtime_forbid(ptr noundef %dev) #7
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %silead_ts_get_id.exit, %entry.if.end_crit_edge
  %driver_data.i.i.i73 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i73, align 4
  %gpio_power.i = getelementptr inbounds %struct.silead_ts_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %gpio_power.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_power.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.silead_ts_set_power.exit_crit_edge, label %if.then.i

if.end.silead_ts_set_power.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_set_power.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %10, i32 noundef 0) #7
  call void @msleep(i32 noundef 20) #7
  br label %silead_ts_set_power.exit

silead_ts_set_power.exit:                         ; preds = %if.then.i, %if.end.silead_ts_set_power.exit_crit_edge
  %11 = ptrtoint ptr %driver_data.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i73, align 4
  %gpio_power.i76 = getelementptr inbounds %struct.silead_ts_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %gpio_power.i76 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_power.i76, align 4
  %tobool.not.i77 = icmp eq ptr %14, null
  br i1 %tobool.not.i77, label %silead_ts_set_power.exit.silead_ts_set_power.exit80_crit_edge, label %if.then.i78

silead_ts_set_power.exit.silead_ts_set_power.exit80_crit_edge: ; preds = %silead_ts_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_set_power.exit80

if.then.i78:                                      ; preds = %silead_ts_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 1) #7
  call void @msleep(i32 noundef 20) #7
  br label %silead_ts_set_power.exit80

silead_ts_set_power.exit80:                       ; preds = %if.then.i78, %silead_ts_set_power.exit.silead_ts_set_power.exit80_crit_edge
  %15 = ptrtoint ptr %driver_data.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id.i81) #7
  %17 = ptrtoint ptr %chip_id.i81 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %chip_id.i81, align 4, !annotation !179
  %call1.i83 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -4, i8 noundef zeroext 4, ptr noundef nonnull %chip_id.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %cmp.i84 = icmp slt i32 %call1.i83, 0
  br i1 %cmp.i84, label %do.end15, label %if.end17

do.end15:                                         ; preds = %silead_ts_set_power.exit80
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id.i81) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call1.i83) #10
  br label %cleanup

if.end17:                                         ; preds = %silead_ts_set_power.exit80
  %18 = ptrtoint ptr %chip_id.i81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_id.i81, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  %chip_id2.i85 = getelementptr inbounds %struct.silead_ts_data, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %chip_id2.i85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %chip_id2.i85, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id.i81) #7
  %22 = ptrtoint ptr %driver_data.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i73, align 4
  %call1.i91 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext -120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %if.end.i93, label %if.end17.silead_ts_init.exit_crit_edge

if.end17.silead_ts_init.exit_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_init.exit

if.end.i93:                                       ; preds = %if.end17
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %max_fingers.i = getelementptr inbounds %struct.silead_ts_data, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %max_fingers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_fingers.i, align 4
  %conv.i = trunc i32 %25 to i8
  %call2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -128, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i93.silead_ts_init.exit_crit_edge

if.end.i93.silead_ts_init.exit_crit_edge:         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_init.exit

if.end5.i:                                        ; preds = %if.end.i93
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -28, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.silead_ts_init.exit_crit_edge

if.end5.i.silead_ts_init.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_init.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call10.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end21, label %if.end9.i.silead_ts_init.exit_crit_edge

if.end9.i.silead_ts_init.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_init.exit

silead_ts_init.exit:                              ; preds = %if.end9.i.silead_ts_init.exit_crit_edge, %if.end5.i.silead_ts_init.exit_crit_edge, %if.end.i93.silead_ts_init.exit_crit_edge, %if.end17.silead_ts_init.exit_crit_edge
  %error.0.i = phi i32 [ %call1.i91, %if.end17.silead_ts_init.exit_crit_edge ], [ %call2.i, %if.end.i93.silead_ts_init.exit_crit_edge ], [ %call6.i, %if.end5.i.silead_ts_init.exit_crit_edge ], [ %call10.i, %if.end9.i.silead_ts_init.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %error.0.i) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end9.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call22 = call fastcc i32 @silead_ts_reset(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call fastcc i32 @silead_ts_load_fw(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call.i96 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end33, label %silead_ts_startup.exit

silead_ts_startup.exit:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call.i96) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @msleep(i32 noundef 30) #7
  %call34 = call fastcc i32 @silead_ts_get_status(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %call34)
  %cmp.not = icmp eq i32 %call34, 1515870810
  br i1 %cmp.not, label %if.end33.cleanup_crit_edge, label %do.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call34) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end33.cleanup_crit_edge, %silead_ts_startup.exit, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %silead_ts_init.exit, %do.end15
  %retval.0 = phi i32 [ %call1.i83, %do.end15 ], [ -19, %do.end38 ], [ %error.0.i, %silead_ts_init.exit ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call.i96, %silead_ts_startup.exit ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_request_input_dev(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #7
  %input = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %input, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 53, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  tail call void @input_set_abs_params(ptr noundef %4, i32 noundef 54, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %prop = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 6
  tail call void @touchscreen_parse_properties(ptr noundef %6, i1 noundef zeroext true, ptr noundef %prop) #7
  %efi_fw_min_max_set.i = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 13
  %7 = ptrtoint ptr %efi_fw_min_max_set.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %efi_fw_min_max_set.i, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.silead_apply_efi_fw_min_max.exit_crit_edge, label %if.end.i

if.end.silead_apply_efi_fw_min_max.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_apply_efi_fw_min_max.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %absinfo.i, align 8
  %efi_fw_min_max.i = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %efi_fw_min_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %efi_fw_min_max.i, align 4
  %minimum.i = getelementptr %struct.input_absinfo, ptr %12, i32 53, i32 1
  %15 = ptrtoint ptr %minimum.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %minimum.i, align 4
  %arrayidx6.i = getelementptr %struct.silead_ts_data, ptr %data, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %maximum.i = getelementptr %struct.input_absinfo, ptr %12, i32 53, i32 2
  %18 = ptrtoint ptr %maximum.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %maximum.i, align 4
  %arrayidx8.i = getelementptr %struct.silead_ts_data, ptr %data, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.i, align 4
  %minimum9.i = getelementptr %struct.input_absinfo, ptr %12, i32 54, i32 1
  %21 = ptrtoint ptr %minimum9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %minimum9.i, align 4
  %arrayidx11.i = getelementptr %struct.silead_ts_data, ptr %data, i32 0, i32 12, i32 3
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  %maximum12.i = getelementptr %struct.input_absinfo, ptr %12, i32 54, i32 2
  %24 = ptrtoint ptr %maximum12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %maximum12.i, align 4
  %invert_x.i = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %invert_x.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %invert_x.i, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not.i = icmp eq i8 %26, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then14.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %17, %14
  %27 = ptrtoint ptr %maximum.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %maximum.i, align 4
  %28 = ptrtoint ptr %minimum.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %minimum.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end.i.if.end18.i_crit_edge
  %invert_y.i = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %invert_y.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %invert_y.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not.i = icmp eq i8 %30, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end26.i_crit_edge, label %if.then21.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %minimum9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minimum9.i, align 4
  %33 = ptrtoint ptr %maximum12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maximum12.i, align 4
  %sub24.i = sub i32 %34, %32
  store i32 %sub24.i, ptr %maximum12.i, align 4
  store i32 0, ptr %minimum9.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end26.i_crit_edge
  %swap_x_y.i = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %swap_x_y.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %swap_x_y.i, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not.i = icmp eq i8 %36, 0
  br i1 %tobool28.not.i, label %if.end26.i.silead_apply_efi_fw_min_max.exit_crit_edge, label %do.body.i

if.end26.i.silead_apply_efi_fw_min_max.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_apply_efi_fw_min_max.exit

do.body.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %minimum.i, align 4
  %39 = ptrtoint ptr %minimum9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %minimum9.i, align 4
  store i32 %40, ptr %minimum.i, align 4
  store i32 %38, ptr %minimum9.i, align 4
  %41 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maximum.i, align 4
  %43 = ptrtoint ptr %maximum12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maximum12.i, align 4
  store i32 %44, ptr %maximum.i, align 4
  store i32 %42, ptr %maximum12.i, align 4
  br label %silead_apply_efi_fw_min_max.exit

silead_apply_efi_fw_min_max.exit:                 ; preds = %do.body.i, %if.end26.i.silead_apply_efi_fw_min_max.exit_crit_edge, %if.end.silead_apply_efi_fw_min_max.exit_crit_edge
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input, align 4
  %max_fingers = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 7
  %47 = ptrtoint ptr %max_fingers to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_fingers, align 4
  %call7 = tail call i32 @input_mt_init_slots(ptr noundef %46, i32 noundef %48, i32 noundef 14) #7
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.62) #7
  br i1 %call.i, label %if.then9, label %silead_apply_efi_fw_min_max.exit.if.end11_crit_edge

silead_apply_efi_fw_min_max.exit.if.end11_crit_edge: ; preds = %silead_apply_efi_fw_min_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %silead_apply_efi_fw_min_max.exit
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input, align 4
  tail call void @input_set_capability(ptr noundef %50, i32 noundef 1, i32 noundef 125) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %silead_apply_efi_fw_min_max.exit.if.end11_crit_edge
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str, ptr %52, align 8
  %54 = load ptr, ptr %input, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.63, ptr %phys, align 4
  %56 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 24, ptr %id, align 4
  %58 = load ptr, ptr %input, align 4
  %call16 = tail call i32 @input_register_device(ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end11.cleanup_crit_edge, label %do.end21

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %call16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ -12, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_request_pen_input_dev(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %pen_supported = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %pen_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_supported, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #7
  %pen_input = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %pen_input to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %pen_input, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  %5 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pen_input, align 4
  tail call void @input_set_abs_params(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #7
  %7 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pen_input, align 4
  tail call void @input_set_capability(ptr noundef %8, i32 noundef 1, i32 noundef 330) #7
  %9 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pen_input, align 4
  tail call void @input_set_capability(ptr noundef %10, i32 noundef 1, i32 noundef 320) #7
  %11 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pen_input, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %propbit) #7
  %13 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pen_input, align 4
  %prop = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 6
  tail call void @touchscreen_parse_properties(ptr noundef %14, i1 noundef zeroext false, ptr noundef %prop) #7
  %15 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pen_input, align 4
  %pen_x_res = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 16
  %17 = ptrtoint ptr %pen_x_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pen_x_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %16) #7
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 26
  %19 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end5.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end5.input_abs_set_res.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i = getelementptr %struct.input_absinfo, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end5.input_abs_set_res.exit_crit_edge
  %22 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pen_input, align 4
  %pen_y_res = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 17
  %24 = ptrtoint ptr %pen_y_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pen_y_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %23) #7
  %absinfo.i43 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 26
  %26 = ptrtoint ptr %absinfo.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %absinfo.i43, align 8
  %tobool.not.i44 = icmp eq ptr %27, null
  br i1 %tobool.not.i44, label %input_abs_set_res.exit.input_abs_set_res.exit47_crit_edge, label %if.then.i46

input_abs_set_res.exit.input_abs_set_res.exit47_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit47

if.then.i46:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i45 = getelementptr %struct.input_absinfo, ptr %27, i32 1, i32 5
  %28 = ptrtoint ptr %resolution.i45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %resolution.i45, align 4
  br label %input_abs_set_res.exit47

input_abs_set_res.exit47:                         ; preds = %if.then.i46, %input_abs_set_res.exit.input_abs_set_res.exit47_crit_edge
  %29 = ptrtoint ptr %pen_input to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pen_input, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.67, ptr %30, align 8
  %32 = load ptr, ptr %pen_input, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.68, ptr %phys, align 4
  %input = getelementptr inbounds %struct.silead_ts_data, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 24, ptr %id, align 4
  %37 = load ptr, ptr %pen_input, align 4
  %call17 = tail call i32 @input_register_device(ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %input_abs_set_res.exit47.cleanup_crit_edge, label %do.end

input_abs_set_res.exit47.cleanup_crit_edge:       ; preds = %input_abs_set_res.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %input_abs_set_res.exit47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %call17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %input_abs_set_res.exit47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %input_abs_set_res.exit47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @silead_ts_threaded_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  tail call fastcc void @silead_ts_read_data(ptr noundef %1)
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_reset(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext -120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -28, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -68, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  br label %cleanup

do.end:                                           ; preds = %if.end4.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call1, %if.end.do.end_crit_edge ], [ %call5, %if.end4.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %error.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8
  %retval.0 = phi i32 [ %error.0, %do.end ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_load_fw(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silead_ts_load_fw.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silead_ts_load_fw, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_name = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silead_ts_load_fw.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef %fw_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fw_name5 = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 5
  %call7 = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef %fw_name5, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.if.end36_crit_edge, label %if.then9

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then9:                                         ; preds = %do.end
  %call12 = call i32 @firmware_request_platform(ptr noundef nonnull %fw, ptr noundef %fw_name5, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %call12) #10
  br label %cleanup

if.end18:                                         ; preds = %if.then9
  %efi_fw_min_max = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 12
  %call20 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.46, ptr noundef %efi_fw_min_max, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %efi_fw_min_max_set = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %efi_fw_min_max_set to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %efi_fw_min_max_set, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %pen_supported = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %pen_supported to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pen_supported, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool24.not = icmp eq i8 %5, 0
  br i1 %tobool24.not, label %if.end23.if.end36_crit_edge, label %do.end28

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef %fw_name5) #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.51) #10
  %6 = ptrtoint ptr %pen_supported to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pen_supported, align 1
  br label %if.end36

if.end36:                                         ; preds = %do.end28, %if.end23.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %error.0 = phi i32 [ %call20, %do.end28 ], [ %call20, %if.end23.if.end36_crit_edge ], [ 0, %do.end.if.end36_crit_edge ]
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %data37 = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp83.not = icmp ult i32 %10, 8
  br i1 %cmp83.not, label %if.end36.for.end_crit_edge, label %for.body.preheader

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end36
  %div80 = lshr i32 %10, 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %div80
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.084 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.silead_fw_data, ptr %12, i32 %i.084
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %14 to i8
  %val = getelementptr %struct.silead_fw_data, ptr %12, i32 %i.084, i32 1
  %call39 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext 4, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.cond, label %do.end44

do.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call39) #10
  br label %for.end

for.end:                                          ; preds = %do.end44, %for.cond.for.end_crit_edge, %if.end36.for.end_crit_edge
  %error.2 = phi i32 [ %call39, %do.end44 ], [ %error.0, %if.end36.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end17
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ %error.2, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @silead_ts_get_status(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !179
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -80, i8 noundef zeroext 4, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_platform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @silead_ts_read_data(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %pos.i = alloca %struct.input_mt_pos, align 2
  %buf = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %buf) #7
  %4 = call ptr @memset(ptr %buf, i32 255, i32 44)
  %call3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -128, i8 noundef zeroext 44, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.71, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  %max_fingers = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %max_fingers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_fingers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp4 = icmp ult i32 %8, %conv
  br i1 %cmp4, label %do.end9, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.74, i32 noundef %conv, i32 noundef %8) #10
  %9 = ptrtoint ptr %max_fingers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_fingers, align 4
  %conv14 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %buf, align 1
  br label %if.end16

if.end16:                                         ; preds = %do.end9, %if.end.if.end16_crit_edge
  %add.ptr.i = getelementptr inbounds i8, ptr %buf, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #7
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %pos.i, align 2, !annotation !179
  %13 = getelementptr inbounds %struct.input_mt_pos, ptr %pos.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %13, align 2, !annotation !179
  %pen_supported.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %pen_supported.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pen_supported.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end16.silead_ts_handle_pen_data.exit_crit_edge, label %lor.lhs.false.i

if.end16.silead_ts_handle_pen_data.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit

lor.lhs.false.i:                                  ; preds = %if.end16
  %arrayidx.i = getelementptr inbounds i8, ptr %buf, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 0
  br i1 %cmp.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.silead_ts_handle_pen_data.exit_crit_edge

lor.lhs.false.i.silead_ts_handle_pen_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx3.i = getelementptr inbounds i8, ptr %buf, i32 3
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp5.not.i = icmp eq i8 %20, 0
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false2.i.silead_ts_handle_pen_data.exit_crit_edge

lor.lhs.false2.i.silead_ts_handle_pen_data.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %22, label %if.end.i.silead_ts_handle_pen_data.exit.thread168_crit_edge [
    i8 0, label %land.lhs.true.i
    i8 1, label %land.lhs.true30.i
  ]

if.end.i.silead_ts_handle_pen_data.exit.thread168_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit.thread168

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx11.i = getelementptr inbounds i8, ptr %buf, i32 1
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp13.i = icmp eq i8 %25, 0
  br i1 %cmp13.i, label %land.lhs.true15.i, label %silead_ts_handle_pen_data.exit.thread170

silead_ts_handle_pen_data.exit.thread170:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  br label %for.end

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %pen_down.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %pen_down.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pen_down.i, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool16.not.i = icmp eq i8 %27, 0
  br i1 %tobool16.not.i, label %land.lhs.true15.i.silead_ts_handle_pen_data.exit_crit_edge, label %if.then18.i

land.lhs.true15.i.silead_ts_handle_pen_data.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit

if.then18.i:                                      ; preds = %land.lhs.true15.i
  %pen_up_count.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %pen_up_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pen_up_count.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %pen_up_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i)
  %cmp20.i = icmp eq i32 %inc.i, 6
  br i1 %cmp20.i, label %if.then22.i, label %if.then18.i.silead_ts_handle_pen_data.exit.thread_crit_edge

if.then18.i.silead_ts_handle_pen_data.exit.thread_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit.thread

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %pen_down.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pen_down.i, align 2
  br label %sync.i

land.lhs.true30.i:                                ; preds = %if.end.i
  %arrayidx31.i = getelementptr inbounds i8, ptr %buf, i32 1
  %31 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %32)
  %cmp33.i = icmp eq i8 %32, 8
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true30.i.silead_ts_handle_pen_data.exit.thread168_crit_edge

land.lhs.true30.i.silead_ts_handle_pen_data.exit.thread168_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_handle_pen_data.exit.thread168

if.then35.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #9
  %prop.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 6
  %arrayidx36.i = getelementptr inbounds i8, ptr %buf, i32 6
  %33 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx36.i, align 1
  %35 = and i16 %34, -241
  %36 = call i16 @llvm.bswap.i16(i16 %35) #7
  %and.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %add.ptr.i, align 1
  %39 = and i16 %38, -241
  %40 = call i16 @llvm.bswap.i16(i16 %39) #7
  %and41.i = zext i16 %40 to i32
  call void @touchscreen_set_mt_pos(ptr noundef nonnull %pos.i, ptr noundef %prop.i, i32 noundef %and.i, i32 noundef %and41.i) #7
  %pen_input.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pen_input.i, align 4
  %43 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %pos.i, align 2
  %conv42.i = sext i16 %44 to i32
  call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 0, i32 noundef %conv42.i) #7
  %45 = ptrtoint ptr %pen_input.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pen_input.i, align 4
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %13, align 2
  %conv44.i = sext i16 %48 to i32
  call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 1, i32 noundef %conv44.i) #7
  %pen_up_count45.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %pen_up_count45.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %pen_up_count45.i, align 4
  %pen_down46.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 15
  %50 = ptrtoint ptr %pen_down46.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %pen_down46.i, align 2
  br label %sync.i

sync.i:                                           ; preds = %if.then35.i, %if.then22.i
  %pen_input48.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %pen_input48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pen_input48.i, align 4
  %pen_down49.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %pen_down49.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pen_down49.i, align 2, !range !181
  %55 = zext i8 %54 to i32
  call void @input_event(ptr noundef %52, i32 noundef 1, i32 noundef 320, i32 noundef %55) #7
  %56 = ptrtoint ptr %pen_input48.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pen_input48.i, align 4
  %58 = ptrtoint ptr %pen_down49.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pen_down49.i, align 2, !range !181
  %60 = zext i8 %59 to i32
  call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef 330, i32 noundef %60) #7
  %61 = ptrtoint ptr %pen_input48.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pen_input48.i, align 4
  call void @input_event(ptr noundef %62, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %silead_ts_handle_pen_data.exit.thread

silead_ts_handle_pen_data.exit.thread:            ; preds = %sync.i, %if.then18.i.silead_ts_handle_pen_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  br label %sync

silead_ts_handle_pen_data.exit.thread168:         ; preds = %land.lhs.true30.i.silead_ts_handle_pen_data.exit.thread168_crit_edge, %if.end.i.silead_ts_handle_pen_data.exit.thread168_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  br label %for.body.lr.ph

silead_ts_handle_pen_data.exit:                   ; preds = %land.lhs.true15.i.silead_ts_handle_pen_data.exit_crit_edge, %lor.lhs.false2.i.silead_ts_handle_pen_data.exit_crit_edge, %lor.lhs.false.i.silead_ts_handle_pen_data.exit_crit_edge, %if.end16.silead_ts_handle_pen_data.exit_crit_edge
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %63)
  %.pr = load i8, ptr %buf, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp24157.not = icmp eq i8 %.pr, 0
  br i1 %cmp24157.not, label %silead_ts_handle_pen_data.exit.for.end_crit_edge, label %silead_ts_handle_pen_data.exit.for.body.lr.ph_crit_edge

silead_ts_handle_pen_data.exit.for.body.lr.ph_crit_edge: ; preds = %silead_ts_handle_pen_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

silead_ts_handle_pen_data.exit.for.end_crit_edge: ; preds = %silead_ts_handle_pen_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %silead_ts_handle_pen_data.exit.for.body.lr.ph_crit_edge, %silead_ts_handle_pen_data.exit.thread168
  %prop = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %softbutton_pressed.0.off0161 = phi i1 [ false, %for.body.lr.ph ], [ %softbutton_pressed.1.off0, %for.inc.for.body_crit_edge ]
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc48, %for.inc.for.body_crit_edge ]
  %touch_nr.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %touch_nr.1, %for.inc.for.body_crit_edge ]
  %buf.pn158 = phi ptr [ %buf, %for.body.lr.ph ], [ %bufp.0162, %for.inc.for.body_crit_edge ]
  %bufp.0162 = getelementptr i8, ptr %buf.pn158, i32 4
  %arrayidx26 = getelementptr i8, ptr %buf.pn158, i32 5
  %64 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %65)
  %tobool.not = icmp ult i8 %65, 16
  br i1 %tobool.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %.mask = and i8 %65, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.mask)
  %cmp29 = icmp eq i8 %.mask, 16
  %spec.select = select i1 %cmp29, i1 true, i1 %softbutton_pressed.0.off0161
  br label %for.inc

if.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34 = getelementptr i8, ptr %buf.pn158, i32 7
  %66 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx34, align 1
  %68 = lshr i8 %67, 4
  %69 = zext i8 %68 to i32
  %arrayidx38 = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 11, i32 %touch_nr.0159
  %70 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 9, i32 %touch_nr.0159
  %arrayidx40 = getelementptr i8, ptr %buf.pn158, i32 6
  %71 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %arrayidx40, align 1
  %73 = and i16 %72, -241
  %74 = call i16 @llvm.bswap.i16(i16 %73)
  %and43 = zext i16 %74 to i32
  %75 = ptrtoint ptr %bufp.0162 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %bufp.0162, align 1
  %77 = and i16 %76, -241
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %and47 = zext i16 %78 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39, ptr noundef %prop, i32 noundef %and43, i32 noundef %and47) #7
  %inc = add i32 %touch_nr.0159, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then28
  %touch_nr.1 = phi i32 [ %inc, %if.end33 ], [ %touch_nr.0159, %if.then28 ]
  %softbutton_pressed.1.off0 = phi i1 [ %softbutton_pressed.0.off0161, %if.end33 ], [ %spec.select, %if.then28 ]
  %inc48 = add nuw nsw i32 %i.0160, 1
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf, align 1
  %conv23 = zext i8 %80 to i32
  %cmp24 = icmp ult i32 %inc48, %conv23
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %silead_ts_handle_pen_data.exit.for.end_crit_edge, %silead_ts_handle_pen_data.exit.thread170
  %touch_nr.0.lcssa = phi i32 [ 0, %silead_ts_handle_pen_data.exit.for.end_crit_edge ], [ 0, %silead_ts_handle_pen_data.exit.thread170 ], [ %touch_nr.1, %for.inc.for.end_crit_edge ]
  %softbutton_pressed.0.off0.lcssa = phi i1 [ false, %silead_ts_handle_pen_data.exit.for.end_crit_edge ], [ false, %silead_ts_handle_pen_data.exit.thread170 ], [ %softbutton_pressed.1.off0, %for.inc.for.end_crit_edge ]
  %slots = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 10
  %pos51 = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 9
  %call53 = call i32 @input_mt_assign_slots(ptr noundef %3, ptr noundef %slots, ptr noundef %pos51, i32 noundef %touch_nr.0.lcssa, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %touch_nr.0.lcssa)
  %cmp55165 = icmp sgt i32 %touch_nr.0.lcssa, 0
  br i1 %cmp55165, label %for.end.for.body57_crit_edge, label %for.end.sync_crit_edge

for.end.sync_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sync

for.end.for.body57_crit_edge:                     ; preds = %for.end
  br label %for.body57

for.body57:                                       ; preds = %for.inc88.for.body57_crit_edge, %for.end.for.body57_crit_edge
  %i.1166 = phi i32 [ %inc89, %for.inc88.for.body57_crit_edge ], [ 0, %for.end.for.body57_crit_edge ]
  %arrayidx59 = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 10, i32 %i.1166
  %81 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx59, align 4
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %82) #7
  %call60 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #7
  %arrayidx62 = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 9, i32 %i.1166
  %83 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx62, align 4
  %conv63 = sext i16 %84 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv63) #7
  %y = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 9, i32 %i.1166, i32 1
  %85 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %y, align 2
  %conv66 = sext i16 %86 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv66) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silead_ts_read_data.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silead_ts_read_data, %if.then72)) #7
          to label %for.inc88 [label %if.then72], !srcloc !180

if.then72:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx62, align 4
  %conv76 = sext i16 %88 to i32
  %89 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %y, align 2
  %conv80 = sext i16 %90 to i32
  %arrayidx82 = getelementptr %struct.silead_ts_data, ptr %1, i32 0, i32 11, i32 %i.1166
  %91 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx82, align 4
  %93 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silead_ts_read_data.__UNIQUE_ID_ddebug289, ptr noundef %dev2, ptr noundef nonnull @.str.76, i32 noundef %conv76, i32 noundef %conv80, i32 noundef %92, i32 noundef %94) #7
  br label %for.inc88

for.inc88:                                        ; preds = %if.then72, %for.body57
  %inc89 = add nuw nsw i32 %i.1166, 1
  %exitcond.not = icmp eq i32 %inc89, %touch_nr.0.lcssa
  br i1 %exitcond.not, label %for.inc88.sync_crit_edge, label %for.inc88.for.body57_crit_edge

for.inc88.for.body57_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

for.inc88.sync_crit_edge:                         ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #9
  br label %sync

sync:                                             ; preds = %for.inc88.sync_crit_edge, %for.end.sync_crit_edge, %silead_ts_handle_pen_data.exit.thread
  %softbutton_pressed.2.off0 = phi i1 [ false, %silead_ts_handle_pen_data.exit.thread ], [ %softbutton_pressed.0.off0.lcssa, %for.end.sync_crit_edge ], [ %softbutton_pressed.0.off0.lcssa, %for.inc88.sync_crit_edge ]
  call void @input_mt_sync_frame(ptr noundef %3) #7
  %lnot.ext.i = zext i1 %softbutton_pressed.2.off0 to i32
  call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 125, i32 noundef %lnot.ext.i) #7
  call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sync, %do.end
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_set_mt_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @silead_ts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %gpio_power.i = getelementptr inbounds %struct.silead_ts_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_power.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_power.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.silead_ts_set_power.exit_crit_edge, label %if.then.i

entry.silead_ts_set_power.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_set_power.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 20) #7
  br label %silead_ts_set_power.exit

silead_ts_set_power.exit:                         ; preds = %if.then.i, %entry.silead_ts_set_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @silead_ts_resume(ptr noundef %dev) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %gpio_power.i = getelementptr inbounds %struct.silead_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpio_power.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_power.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.silead_ts_set_power.exit_crit_edge, label %if.then.i

entry.silead_ts_set_power.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %silead_ts_set_power.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  br label %silead_ts_set_power.exit

silead_ts_set_power.exit:                         ; preds = %if.then.i, %entry.silead_ts_set_power.exit_crit_edge
  %call57 = call fastcc i32 @silead_ts_reset(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool.not58 = icmp eq i32 %call57, 0
  br i1 %tobool.not58, label %silead_ts_set_power.exit.if.end_crit_edge, label %silead_ts_set_power.exit.cleanup_crit_edge

silead_ts_set_power.exit.cleanup_crit_edge:       ; preds = %silead_ts_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

silead_ts_set_power.exit.if.end_crit_edge:        ; preds = %silead_ts_set_power.exit
  br label %if.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %silead_ts_set_power.exit.if.end_crit_edge
  %second_try.0.off059 = phi i1 [ true, %do.end.if.end_crit_edge ], [ false, %silead_ts_set_power.exit.if.end_crit_edge ]
  br i1 %second_try.0.off059, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @silead_ts_load_fw(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i45 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i45, label %if.end11, label %silead_ts_startup.exit

silead_ts_startup.exit:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @msleep(i32 noundef 30) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #7
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4, !annotation !179
  %call.i46 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext -80, i8 noundef zeroext 4, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i = icmp slt i32 %call.i46, 0
  br i1 %cmp.i, label %silead_ts_get_status.exit.thread, label %silead_ts_get_status.exit

silead_ts_get_status.exit.thread:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call.i46) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  br label %if.then13

silead_ts_get_status.exit:                        ; preds = %if.end11
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515870810, i32 %6)
  %cmp.not = icmp eq i32 %6, 1515870810
  br i1 %cmp.not, label %if.end27, label %silead_ts_get_status.exit.if.then13_crit_edge

silead_ts_get_status.exit.if.then13_crit_edge:    ; preds = %silead_ts_get_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %silead_ts_get_status.exit.if.then13_crit_edge, %silead_ts_get_status.exit.thread
  %retval.0.i5053 = phi i32 [ %call.i46, %silead_ts_get_status.exit.thread ], [ %7, %silead_ts_get_status.exit.if.then13_crit_edge ]
  br i1 %second_try.0.off059, label %do.end26, label %if.then15

if.then15:                                        ; preds = %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silead_ts_resume.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silead_ts_resume, %if.then21)) #7
          to label %do.end [label %if.then21], !srcloc !180

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silead_ts_resume.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.78) #7
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.then15
  %call = call fastcc i32 @silead_ts_reset(ptr noundef %add.ptr)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end26:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %retval.0.i5053) #10
  br label %cleanup

if.end27:                                         ; preds = %silead_ts_get_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end26, %do.end.cleanup_crit_edge, %silead_ts_startup.exit, %if.then2.cleanup_crit_edge, %silead_ts_set_power.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end26 ], [ 0, %if.end27 ], [ %call.i, %silead_ts_startup.exit ], [ %call57, %silead_ts_set_power.exit.cleanup_crit_edge ], [ %call, %do.end.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !158, !160, !162, !163, !164, !166, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_silead__294_838_silead_ts_driver_init6, !1, !"__initcall__kmod_silead__294_838_silead_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/silead.c", i32 838, i32 1}
!2 = !{ptr @__exitcall_silead_ts_driver_exit, !1, !"__exitcall_silead_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/silead.c", i32 840, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/silead.c", i32 841, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/silead.c", i32 842, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/silead.c", i32 832, i32 11}
!12 = !{ptr @silead_ts_driver, !13, !"silead_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/silead.c", i32 828, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/silead.c", i32 666, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @silead_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @silead_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/silead.c", i32 687, i32 31}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/silead.c", i32 688, i32 31}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/silead.c", i32 708, i32 50}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/silead.c", i32 711, i32 4}
!30 = !{ptr @silead_ts_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @silead_ts_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/silead.c", i32 732, i32 4}
!34 = !{ptr @silead_ts_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @silead_ts_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/silead.c", i32 643, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/silead.c", i32 594, i32 40}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/silead.c", i32 597, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @silead_ts_read_props.__UNIQUE_ID_ddebug291, !41, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/silead.c", i32 601, i32 43}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/silead.c", i32 604, i32 5}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/silead.c", i32 606, i32 3}
!51 = !{ptr @silead_ts_read_props.__UNIQUE_ID_ddebug292, !50, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/silead.c", i32 608, i32 55}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/silead.c", i32 609, i32 32}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/silead.c", i32 610, i32 32}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/silead.c", i32 527, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/silead.c", i32 534, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @silead_ts_setup._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @silead_ts_setup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/silead.c", i32 547, i32 3}
!68 = !{ptr @silead_ts_setup._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @silead_ts_setup._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/silead.c", i32 569, i32 3}
!72 = !{ptr @silead_ts_setup._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @silead_ts_setup._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/silead.c", i32 497, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @silead_ts_get_id._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @silead_ts_get_id._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/silead.c", i32 348, i32 2}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @silead_ts_init._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @silead_ts_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/silead.c", i32 377, i32 2}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @silead_ts_reset._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @silead_ts_reset._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/silead.c", i32 405, i32 2}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @silead_ts_load_fw.__UNIQUE_ID_ddebug290, !91, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/silead.c", i32 433, i32 4}
!96 = !{ptr @silead_ts_load_fw._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @silead_ts_load_fw._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/silead.c", i32 437, i32 47}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/silead.c", i32 445, i32 4}
!102 = !{ptr @silead_ts_load_fw._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @silead_ts_load_fw._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/silead.c", i32 447, i32 4}
!106 = !{ptr @silead_ts_load_fw._entry.50, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @silead_ts_load_fw._entry_ptr.52, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/silead.c", i32 461, i32 4}
!110 = !{ptr @silead_ts_load_fw._entry.53, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @silead_ts_load_fw._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/silead.c", i32 387, i32 3}
!114 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @silead_ts_startup._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @silead_ts_startup._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/silead.c", i32 478, i32 3}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @silead_ts_get_status._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @silead_ts_get_status._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/silead.c", i32 129, i32 3}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @silead_ts_request_input_dev._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @silead_ts_request_input_dev._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/silead.c", i32 143, i32 37}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/silead.c", i32 147, i32 22}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/silead.c", i32 152, i32 3}
!133 = !{ptr @silead_ts_request_input_dev._entry.64, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @silead_ts_request_input_dev._entry_ptr.66, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/silead.c", i32 180, i32 26}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/touchscreen/silead.c", i32 181, i32 26}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/touchscreen/silead.c", i32 186, i32 3}
!141 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @silead_ts_request_pen_input_dev._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @silead_ts_request_pen_input_dev._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/touchscreen/silead.c", i32 255, i32 3}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @silead_ts_read_data._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @silead_ts_read_data._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/touchscreen/silead.c", i32 260, i32 3}
!151 = !{ptr @silead_ts_read_data._entry.73, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @silead_ts_read_data._entry_ptr.75, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/silead.c", i32 306, i32 3}
!155 = !{ptr @silead_ts_read_data.__UNIQUE_ID_ddebug289, !154, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!156 = !{ptr @silead_ts_of_match, !157, !"silead_ts_of_match", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/silead.c", i32 817, i32 34}
!158 = !{ptr @silead_ts_pm, !159, !"silead_ts_pm", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/silead.c", i32 787, i32 8}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/silead.c", i32 775, i32 4}
!162 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @silead_ts_resume.__UNIQUE_ID_ddebug293, !161, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/silead.c", i32 778, i32 3}
!166 = !{ptr @silead_ts_resume._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @silead_ts_resume._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @silead_ts_id, !169, !"silead_ts_id", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/silead.c", i32 789, i32 35}
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
!180 = !{i64 2149007599, i64 2149007604, i64 2149007617, i64 2149007661, i64 2149007695, i64 2149007716}
!181 = !{i8 0, i8 2}
