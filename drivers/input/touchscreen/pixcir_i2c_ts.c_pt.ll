; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/pixcir_i2c_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/pixcir_i2c_ts.c"
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
%struct.pixcir_i2c_chip_data = type { i8, i8 }
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
%struct.pixcir_i2c_ts_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.touchscreen_properties, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.pixcir_report_data = type { i32, [5 x %struct.input_mt_pos], [5 x i32] }
%struct.input_mt_pos = type { i16, i16 }

@__initcall__kmod_pixcir_i2c_ts__290_624_pixcir_i2c_ts_driver_init6 = internal global ptr @pixcir_i2c_ts_driver_init, section ".initcall6.init", align 4
@pixcir_i2c_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pixcir_i2c_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pixcir_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pixcir_dev_pm_ops, ptr null, ptr null }, ptr @pixcir_i2c_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pixcir_i2c_ts_driver_exit = internal global ptr @pixcir_i2c_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [94 x i8] c"pixcir_i2c_ts.author=Jianchun Bian <jcbian@pixcir.com.cn>, Dequan Meng <dqmeng@pixcir.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [56 x i8] c"pixcir_i2c_ts.description=Pixcir I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"pixcir_i2c_ts.file=drivers/input/touchscreen/pixcir_i2c_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"pixcir_i2c_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pixcir_ts\00", [22 x i8] zeroinitializer }, align 32
@pixcir_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pixcir,pixcir_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pixcir_ts_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pixcir,pixcir_tangoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pixcir_tangoc_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@pixcir_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pixcir_i2c_ts_suspend, ptr @pixcir_i2c_ts_resume, ptr @pixcir_i2c_ts_suspend, ptr @pixcir_i2c_ts_resume, ptr @pixcir_i2c_ts_suspend, ptr @pixcir_i2c_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pixcir_ts\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pixcir_ts_data to i32) }, %struct.i2c_device_id { [20 x i8] c"pixcir_tangoc\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pixcir_tangoc_data to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't locate chip data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pixcir_i2c_ts_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/pixcir_i2c_ts.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr = internal global ptr @pixcir_i2c_ts_probe._entry, section ".printk_index", align 4
@pixcir_i2c_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.8 = internal global ptr @pixcir_i2c_ts_probe._entry.6, section ".printk_index", align 4
@pixcir_i2c_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Touchscreen size is not specified\0A\00", [61 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.11 = internal global ptr @pixcir_i2c_ts_probe._entry.9, section ".printk_index", align 4
@pixcir_i2c_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error initializing Multi-Touch slots\0A\00", [58 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.14 = internal global ptr @pixcir_i2c_ts_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attb\00", [27 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 522, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request ATTB gpio: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.18 = internal global ptr @pixcir_i2c_ts_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request RESET gpio: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.22 = internal global ptr @pixcir_i2c_ts_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get wake gpio: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.26 = internal global ptr @pixcir_i2c_ts_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get enable gpio: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.30 = internal global ptr @pixcir_i2c_ts_probe._entry.28, section ".printk_index", align 4
@pixcir_i2c_ts_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 561, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.33 = internal global ptr @pixcir_i2c_ts_probe._entry.31, section ".printk_index", align 4
@pixcir_i2c_ts_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set IDLE mode\0A\00", [39 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_probe._entry_ptr.36 = internal global ptr @pixcir_i2c_ts_probe._entry.34, section ".printk_index", align 4
@pixcir_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set interrupt mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pixcir_start\00", [19 x i8] zeroinitializer }, align 32
@pixcir_start._entry_ptr = internal global ptr @pixcir_start._entry, section ".printk_index", align 4
@pixcir_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to enable interrupt generation: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pixcir_start._entry_ptr.41 = internal global ptr @pixcir_start._entry.39, section ".printk_index", align 4
@pixcir_set_int_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: can't read reg %d : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pixcir_set_int_mode\00", [44 x i8] zeroinitializer }, align 32
@pixcir_set_int_mode._entry_ptr = internal global ptr @pixcir_set_int_mode._entry, section ".printk_index", align 4
@pixcir_set_int_mode._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: can't write reg %d : %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pixcir_set_int_mode._entry_ptr.46 = internal global ptr @pixcir_set_int_mode._entry.44, section ".printk_index", align 4
@pixcir_int_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.47, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pixcir_int_enable\00", [46 x i8] zeroinitializer }, align 32
@pixcir_int_enable._entry_ptr = internal global ptr @pixcir_int_enable._entry, section ".printk_index", align 4
@pixcir_int_enable._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pixcir_int_enable._entry_ptr.49 = internal global ptr @pixcir_int_enable._entry.48, section ".printk_index", align 4
@pixcir_ts_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c_master_send failed(), ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pixcir_ts_parse\00", [16 x i8] zeroinitializer }, align 32
@pixcir_ts_parse._entry_ptr = internal global ptr @pixcir_ts_parse._entry, section ".printk_index", align 4
@pixcir_ts_parse._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c_master_recv failed(), ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@pixcir_ts_parse._entry_ptr.54 = internal global ptr @pixcir_ts_parse._entry.52, section ".printk_index", align 4
@pixcir_ts_report.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pixcir_i2c_ts\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pixcir_ts_report\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no free slot for id 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@pixcir_ts_report.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d: slot %d, x %d, y %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pixcir_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.59, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pixcir_set_power_mode\00", [42 x i8] zeroinitializer }, align 32
@pixcir_set_power_mode._entry_ptr = internal global ptr @pixcir_set_power_mode._entry, section ".printk_index", align 4
@pixcir_set_power_mode._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.59, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pixcir_set_power_mode._entry_ptr.61 = internal global ptr @pixcir_set_power_mode._entry.60, section ".printk_index", align 4
@pixcir_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable interrupt generation: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pixcir_stop\00", [20 x i8] zeroinitializer }, align 32
@pixcir_stop._entry_ptr = internal global ptr @pixcir_stop._entry, section ".printk_index", align 4
@pixcir_ts_data = internal constant { %struct.pixcir_i2c_chip_data, [30 x i8] } { %struct.pixcir_i2c_chip_data { i8 2, i8 0 }, [30 x i8] zeroinitializer }, align 32
@pixcir_tangoc_data = internal constant { %struct.pixcir_i2c_chip_data, [30 x i8] } { %struct.pixcir_i2c_chip_data { i8 5, i8 1 }, [30 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Failed to start\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pixcir_i2c_ts_suspend\00", [42 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_suspend._entry_ptr = internal global ptr @pixcir_i2c_ts_suspend._entry, section ".printk_index", align 4
@pixcir_i2c_ts_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed to stop\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pixcir_i2c_ts_resume\00", [43 x i8] zeroinitializer }, align 32
@pixcir_i2c_ts_resume._entry_ptr = internal global ptr @pixcir_i2c_ts_resume._entry, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"pixcir_i2c_ts_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 614, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 616, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"pixcir_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 606, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"pixcir_dev_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 462, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"pixcir_i2c_ts_id\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 598, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 481, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 487, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 504, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 511, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 517, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 521, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 526, i32 52 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 531, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 536, i32 51 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 541, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 545, i32 53 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 550, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 561, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 570, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 350, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 360, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 284, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 299, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 317, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 329, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 113, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 121, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 167, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 183, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 245, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 258, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 375, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"pixcir_ts_data\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 588, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"pixcir_tangoc_data\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 593, i32 42 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 421, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [45 x i8] c"../drivers/input/touchscreen/pixcir_i2c_ts.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 448, i32 5 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_pixcir_i2c_ts_driver_exit, ptr @__initcall__kmod_pixcir_i2c_ts__290_624_pixcir_i2c_ts_driver_init6, ptr @pixcir_i2c_ts_driver_exit, ptr @pixcir_i2c_ts_probe._entry, ptr @pixcir_i2c_ts_probe._entry.12, ptr @pixcir_i2c_ts_probe._entry.16, ptr @pixcir_i2c_ts_probe._entry.20, ptr @pixcir_i2c_ts_probe._entry.24, ptr @pixcir_i2c_ts_probe._entry.28, ptr @pixcir_i2c_ts_probe._entry.31, ptr @pixcir_i2c_ts_probe._entry.34, ptr @pixcir_i2c_ts_probe._entry.6, ptr @pixcir_i2c_ts_probe._entry.9, ptr @pixcir_i2c_ts_probe._entry_ptr, ptr @pixcir_i2c_ts_probe._entry_ptr.11, ptr @pixcir_i2c_ts_probe._entry_ptr.14, ptr @pixcir_i2c_ts_probe._entry_ptr.18, ptr @pixcir_i2c_ts_probe._entry_ptr.22, ptr @pixcir_i2c_ts_probe._entry_ptr.26, ptr @pixcir_i2c_ts_probe._entry_ptr.30, ptr @pixcir_i2c_ts_probe._entry_ptr.33, ptr @pixcir_i2c_ts_probe._entry_ptr.36, ptr @pixcir_i2c_ts_probe._entry_ptr.8, ptr @pixcir_i2c_ts_resume._entry, ptr @pixcir_i2c_ts_resume._entry_ptr, ptr @pixcir_i2c_ts_suspend._entry, ptr @pixcir_i2c_ts_suspend._entry_ptr, ptr @pixcir_int_enable._entry, ptr @pixcir_int_enable._entry.48, ptr @pixcir_int_enable._entry_ptr, ptr @pixcir_int_enable._entry_ptr.49, ptr @pixcir_set_int_mode._entry, ptr @pixcir_set_int_mode._entry.44, ptr @pixcir_set_int_mode._entry_ptr, ptr @pixcir_set_int_mode._entry_ptr.46, ptr @pixcir_set_power_mode._entry, ptr @pixcir_set_power_mode._entry.60, ptr @pixcir_set_power_mode._entry_ptr, ptr @pixcir_set_power_mode._entry_ptr.61, ptr @pixcir_start._entry, ptr @pixcir_start._entry.39, ptr @pixcir_start._entry_ptr, ptr @pixcir_start._entry_ptr.41, ptr @pixcir_stop._entry, ptr @pixcir_stop._entry_ptr, ptr @pixcir_ts_parse._entry, ptr @pixcir_ts_parse._entry.52, ptr @pixcir_ts_parse._entry_ptr, ptr @pixcir_ts_parse._entry_ptr.54, ptr @pixcir_i2c_ts_driver, ptr @.str, ptr @pixcir_of_match, ptr @pixcir_dev_pm_ops, ptr @pixcir_i2c_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @pixcir_ts_data, ptr @pixcir_tangoc_data, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_set_int_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_set_int_mode._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_int_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_int_enable._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_ts_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_ts_parse._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_set_power_mode._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_ts_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_tangoc_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixcir_i2c_ts_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_i2c_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pixcir_i2c_ts_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pixcir_i2c_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pixcir_i2c_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_i2c_ts_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %chip = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %chip, align 4
  %tobool4.not = icmp ne ptr %call2, null
  %tobool5.not = icmp eq ptr %id, null
  %or.cond = or i1 %tobool5.not, %tobool4.not
  br i1 %or.cond, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = inttoptr i32 %2 to ptr
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %chip, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %5 = phi ptr [ %3, %if.then6 ], [ %call2, %if.end.if.end8_crit_edge ]
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end19

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %input21 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %input21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %input21, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %call13, align 8
  %id23 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3
  %9 = ptrtoint ptr %id23 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %id23, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 31
  %10 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pixcir_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 32
  %11 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pixcir_input_close, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call13, i32 noundef 3, i32 noundef 53) #6
  tail call void @input_set_capability(ptr noundef nonnull %call13, i32 noundef 3, i32 noundef 54) #6
  %prop = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 7
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call13, i1 noundef zeroext true, ptr noundef %prop) #6
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 26
  %12 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end19.do.end31_crit_edge, label %input_abs_get_max.exit

if.end19.do.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

input_abs_get_max.exit:                           ; preds = %if.end19
  %maximum.i = getelementptr %struct.input_absinfo, ptr %13, i32 53, i32 2
  %14 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %input_abs_get_max.exit.do.end31_crit_edge, label %input_abs_get_max.exit218

input_abs_get_max.exit.do.end31_crit_edge:        ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

input_abs_get_max.exit218:                        ; preds = %input_abs_get_max.exit
  %maximum.i215 = getelementptr %struct.input_absinfo, ptr %13, i32 54, i32 2
  %16 = ptrtoint ptr %maximum.i215 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maximum.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  br i1 %tobool27.not, label %input_abs_get_max.exit218.do.end31_crit_edge, label %if.end32

input_abs_get_max.exit218.do.end31_crit_edge:     ; preds = %input_abs_get_max.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

do.end31:                                         ; preds = %input_abs_get_max.exit218.do.end31_crit_edge, %input_abs_get_max.exit.do.end31_crit_edge, %if.end19.do.end31_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end32:                                         ; preds = %input_abs_get_max.exit218
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv = zext i8 %21 to i32
  %call34 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call13, i32 noundef %conv, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 40, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call41 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 1) #6
  %gpio_attb = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %gpio_attb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %gpio_attb, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end53

if.then44:                                        ; preds = %if.end40
  %cmp.not = icmp eq ptr %call41, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then44.cleanup_crit_edge, label %do.end51

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %24) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end40
  %call54 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef 3) #6
  %gpio_reset = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call54, ptr %gpio_reset, align 4
  %cmp.i219 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then57, label %if.end67

if.then57:                                        ; preds = %if.end53
  %cmp60.not = icmp eq ptr %call54, inttoptr (i32 -517 to ptr)
  br i1 %cmp60.not, label %if.then57.cleanup_crit_edge, label %do.end65

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end65:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call54 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %26) #9
  br label %cleanup

if.end67:                                         ; preds = %if.end53
  %call68 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef 7) #6
  %gpio_wake = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %gpio_wake to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call68, ptr %gpio_wake, align 4
  %cmp.i220 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end67
  %cmp74.not = icmp eq ptr %call68, inttoptr (i32 -517 to ptr)
  br i1 %cmp74.not, label %if.then71.cleanup_crit_edge, label %do.end79

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end79:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call68 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %28) #9
  br label %cleanup

if.end81:                                         ; preds = %if.end67
  %call82 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef 7) #6
  %gpio_enable = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call82, ptr %gpio_enable, align 4
  %cmp.i221 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then85, label %if.end95

if.then85:                                        ; preds = %if.end81
  %cmp88.not = icmp eq ptr %call82, inttoptr (i32 -517 to ptr)
  br i1 %cmp88.not, label %if.then85.cleanup_crit_edge, label %do.end93

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end93:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call82 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %30) #9
  br label %cleanup

if.end95:                                         ; preds = %if.end81
  %tobool97.not = icmp eq ptr %call82, null
  br i1 %tobool97.not, label %if.end95.if.end99_crit_edge, label %if.then98

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 100) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end95.if.end99_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call102 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef null, ptr noundef nonnull @pixcir_ts_isr, i32 noundef 8194, ptr noundef %name, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end109, label %do.end107

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %34) #9
  br label %cleanup

if.end109:                                        ; preds = %if.end99
  %35 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_reset, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  %cmp.i.i = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end109.pixcir_reset.exit_crit_edge, label %if.then.i

if.end109.pixcir_reset.exit_crit_edge:            ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_reset.exit

if.then.i:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %36, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %39, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %pixcir_reset.exit

pixcir_reset.exit:                                ; preds = %if.then.i, %if.end109.pixcir_reset.exit_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %gpio_wake to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpio_wake, align 4
  %tobool.not.i222 = icmp eq ptr %43, null
  br i1 %tobool.not.i222, label %pixcir_reset.exit.if.end5.i_crit_edge, label %if.then3.i

pixcir_reset.exit.if.end5.i_crit_edge:            ; preds = %pixcir_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %pixcir_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %43, i32 noundef 1) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %pixcir_reset.exit.if.end5.i_crit_edge
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call.i223 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp7.i = icmp slt i32 %call.i223, 0
  br i1 %cmp7.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.59, i32 noundef 51, i32 noundef %call.i223) #9
  br label %do.end115

if.end9.i:                                        ; preds = %if.end5.i
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = trunc i32 %call.i223 to i8
  %49 = and i8 %48, -8
  %conv.i = or i8 %49, 5
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 51, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end116

do.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.59, i32 noundef 51, i32 noundef %call12.i) #9
  br label %do.end115

do.end115:                                        ; preds = %do.end18.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call12.i, %do.end18.i ], [ %call.i223, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #9
  br label %cleanup

if.end116:                                        ; preds = %if.end9.i
  %call117 = tail call fastcc i32 @pixcir_stop(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %if.end116
  %call121 = tail call i32 @input_register_device(ptr noundef nonnull %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end124:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i224 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %50 = ptrtoint ptr %driver_data.i.i224 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i224, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.end120.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %do.end115, %do.end107, %do.end93, %if.then85.cleanup_crit_edge, %do.end79, %if.then71.cleanup_crit_edge, %do.end65, %if.then57.cleanup_crit_edge, %do.end51, %if.then44.cleanup_crit_edge, %do.end39, %do.end31, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %do.end39 ], [ %call102, %do.end107 ], [ %retval.0.i.ph, %do.end115 ], [ 0, %if.end124 ], [ -22, %do.end31 ], [ -12, %do.end18 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %24, %do.end51 ], [ -517, %if.then44.cleanup_crit_edge ], [ %26, %do.end65 ], [ -517, %if.then57.cleanup_crit_edge ], [ %28, %do.end79 ], [ -517, %if.then71.cleanup_crit_edge ], [ %30, %do.end93 ], [ -517, %if.then85.cleanup_crit_edge ], [ %call117, %if.end116.cleanup_crit_edge ], [ %call121, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @pixcir_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pixcir_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @pixcir_stop(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_ts_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %rdbuf.i = alloca [27 x i8], align 1
  %wrbuf.i = alloca [1 x i8], align 1
  %report = alloca %struct.pixcir_report_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %report) #6
  %running = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not11 = icmp eq i8 %1, 0
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds [27 x i8], ptr %rdbuf.i, i32 0, i32 2
  %chip1.i = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %dev_id, i32 0, i32 6
  %prop.i = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %dev_id, i32 0, i32 7
  %gpio_attb = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %dev_id, i32 0, i32 2
  %arrayidx39.i = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 0
  %add.ptr.i = getelementptr inbounds [27 x i8], ptr %rdbuf.i, i32 0, i32 4
  %add.ptr51.i = getelementptr inbounds [27 x i8], ptr %rdbuf.i, i32 0, i32 6
  %arrayidx49.i = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 0
  %add.ptr50.i = getelementptr inbounds [27 x i8], ptr %rdbuf.i, i32 0, i32 7
  %arrayidx39.i.1 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 1
  %arrayidx49.i.1 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 1
  %arrayidx39.i.2 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 2
  %arrayidx49.i.2 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 2
  %arrayidx39.i.3 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 3
  %arrayidx49.i.3 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 3
  %arrayidx39.i.4 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 4
  %arrayidx49.i.4 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 4
  %arrayidx39.i.5 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 5
  %arrayidx49.i.5 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 5
  %arrayidx39.i.6 = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 6
  %arrayidx49.i.6 = getelementptr %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %rdbuf.i) #6
  %3 = call ptr @memset(ptr %rdbuf.i, i32 255, i32 27)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wrbuf.i) #6
  %4 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wrbuf.i, align 1
  %5 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1.i, align 4
  %7 = call ptr @memset(ptr %report, i32 0, i32 44)
  %has_hw_ids.i = getelementptr inbounds %struct.pixcir_i2c_chip_data, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %6, align 1
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %wrbuf.i, i32 noundef 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp5.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp5.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %call.i.i) #9
  br label %pixcir_ts_parse.exit

if.end9.i:                                        ; preds = %while.body
  %conv.i = zext i8 %11 to i32
  %16 = or i8 %9, 4
  %add.i = zext i8 %16 to i32
  %mul.i = mul nuw nsw i32 %conv.i, %add.i
  %17 = call i32 @llvm.umin.i32(i32 %mul.i, i32 25) #6
  %18 = add nuw nsw i32 %17, 2
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %call.i87.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %rdbuf.i, i32 noundef %18, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i87.i, i32 %18)
  %cmp13.not.i = icmp eq i32 %call.i87.i, %18
  br i1 %cmp13.not.i, label %if.end21.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %call.i87.i) #9
  br label %pixcir_ts_parse.exit

if.end21.i:                                       ; preds = %if.end9.i
  %23 = ptrtoint ptr %rdbuf.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rdbuf.i, align 1
  %25 = and i8 %24, 7
  %26 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip1.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = call i8 @llvm.umin.i8(i8 %25, i8 %29) #6
  %conv34.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv34.i, ptr %report, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp3788.not.i = icmp eq i8 %30, 0
  br i1 %cmp3788.not.i, label %if.end21.i.pixcir_ts_parse.exit_crit_edge, label %for.body.i

if.end21.i.pixcir_ts_parse.exit_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i:                                       ; preds = %if.end21.i
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %2, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33) #6
  %conv41.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %add.ptr.i, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #6
  %conv43.i = zext i16 %37 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i, ptr noundef %prop.i, i32 noundef %conv41.i, i32 noundef %conv43.i) #6
  %38 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool45.not.i = icmp eq i8 %39, 0
  br i1 %tobool45.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then46.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then46.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr51.i, align 1
  %conv48.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv48.i, ptr %arrayidx49.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then46.i, %for.body.i.for.inc.i_crit_edge
  %bufptr.1.i = phi ptr [ %add.ptr50.i, %if.then46.i ], [ %add.ptr51.i, %for.body.i.for.inc.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %exitcond.not.i = icmp eq i8 %30, 1
  br i1 %exitcond.not.i, label %for.inc.i.pixcir_ts_parse.exit_crit_edge, label %for.body.i.1

for.inc.i.pixcir_ts_parse.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %43 = ptrtoint ptr %bufptr.1.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %bufptr.1.i, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44) #6
  %conv41.i.1 = zext i16 %45 to i32
  %add.ptr.i.1 = getelementptr i8, ptr %bufptr.1.i, i32 2
  %46 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr.i.1, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47) #6
  %conv43.i.1 = zext i16 %48 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.1, ptr noundef %prop.i, i32 noundef %conv41.i.1, i32 noundef %conv43.i.1) #6
  %49 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool45.not.i.1 = icmp eq i8 %50, 0
  %add.ptr51.i.1 = getelementptr i8, ptr %bufptr.1.i, i32 4
  br i1 %tobool45.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.then46.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

if.then46.i.1:                                    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %add.ptr51.i.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr51.i.1, align 1
  %conv48.i.1 = zext i8 %52 to i32
  %53 = ptrtoint ptr %arrayidx49.i.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv48.i.1, ptr %arrayidx49.i.1, align 4
  %add.ptr50.i.1 = getelementptr i8, ptr %bufptr.1.i, i32 5
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then46.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  %bufptr.1.i.1 = phi ptr [ %add.ptr50.i.1, %if.then46.i.1 ], [ %add.ptr51.i.1, %for.body.i.1.for.inc.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %exitcond.not.i.1 = icmp eq i8 %30, 2
  br i1 %exitcond.not.i.1, label %for.inc.i.1.pixcir_ts_parse.exit_crit_edge, label %for.body.i.2

for.inc.i.1.pixcir_ts_parse.exit_crit_edge:       ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.2:                                     ; preds = %for.inc.i.1
  %54 = ptrtoint ptr %bufptr.1.i.1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %bufptr.1.i.1, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #6
  %conv41.i.2 = zext i16 %56 to i32
  %add.ptr.i.2 = getelementptr i8, ptr %bufptr.1.i.1, i32 2
  %57 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %add.ptr.i.2, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58) #6
  %conv43.i.2 = zext i16 %59 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.2, ptr noundef %prop.i, i32 noundef %conv41.i.2, i32 noundef %conv43.i.2) #6
  %60 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool45.not.i.2 = icmp eq i8 %61, 0
  %add.ptr51.i.2 = getelementptr i8, ptr %bufptr.1.i.1, i32 4
  br i1 %tobool45.not.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.then46.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.2

if.then46.i.2:                                    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %add.ptr51.i.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr51.i.2, align 1
  %conv48.i.2 = zext i8 %63 to i32
  %64 = ptrtoint ptr %arrayidx49.i.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv48.i.2, ptr %arrayidx49.i.2, align 4
  %add.ptr50.i.2 = getelementptr i8, ptr %bufptr.1.i.1, i32 5
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then46.i.2, %for.body.i.2.for.inc.i.2_crit_edge
  %bufptr.1.i.2 = phi ptr [ %add.ptr50.i.2, %if.then46.i.2 ], [ %add.ptr51.i.2, %for.body.i.2.for.inc.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %exitcond.not.i.2 = icmp eq i8 %30, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.pixcir_ts_parse.exit_crit_edge, label %for.body.i.3

for.inc.i.2.pixcir_ts_parse.exit_crit_edge:       ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.3:                                     ; preds = %for.inc.i.2
  %65 = ptrtoint ptr %bufptr.1.i.2 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %bufptr.1.i.2, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66) #6
  %conv41.i.3 = zext i16 %67 to i32
  %add.ptr.i.3 = getelementptr i8, ptr %bufptr.1.i.2, i32 2
  %68 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %add.ptr.i.3, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69) #6
  %conv43.i.3 = zext i16 %70 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.3, ptr noundef %prop.i, i32 noundef %conv41.i.3, i32 noundef %conv43.i.3) #6
  %71 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool45.not.i.3 = icmp eq i8 %72, 0
  %add.ptr51.i.3 = getelementptr i8, ptr %bufptr.1.i.2, i32 4
  br i1 %tobool45.not.i.3, label %for.body.i.3.for.inc.i.3_crit_edge, label %if.then46.i.3

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.3

if.then46.i.3:                                    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %add.ptr51.i.3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr51.i.3, align 1
  %conv48.i.3 = zext i8 %74 to i32
  %75 = ptrtoint ptr %arrayidx49.i.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv48.i.3, ptr %arrayidx49.i.3, align 4
  %add.ptr50.i.3 = getelementptr i8, ptr %bufptr.1.i.2, i32 5
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then46.i.3, %for.body.i.3.for.inc.i.3_crit_edge
  %bufptr.1.i.3 = phi ptr [ %add.ptr50.i.3, %if.then46.i.3 ], [ %add.ptr51.i.3, %for.body.i.3.for.inc.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %exitcond.not.i.3 = icmp eq i8 %30, 4
  br i1 %exitcond.not.i.3, label %for.inc.i.3.pixcir_ts_parse.exit_crit_edge, label %for.body.i.4

for.inc.i.3.pixcir_ts_parse.exit_crit_edge:       ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.4:                                     ; preds = %for.inc.i.3
  %76 = ptrtoint ptr %bufptr.1.i.3 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %bufptr.1.i.3, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %77) #6
  %conv41.i.4 = zext i16 %78 to i32
  %add.ptr.i.4 = getelementptr i8, ptr %bufptr.1.i.3, i32 2
  %79 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %add.ptr.i.4, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #6
  %conv43.i.4 = zext i16 %81 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.4, ptr noundef %prop.i, i32 noundef %conv41.i.4, i32 noundef %conv43.i.4) #6
  %82 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool45.not.i.4 = icmp eq i8 %83, 0
  %add.ptr51.i.4 = getelementptr i8, ptr %bufptr.1.i.3, i32 4
  br i1 %tobool45.not.i.4, label %for.body.i.4.for.inc.i.4_crit_edge, label %if.then46.i.4

for.body.i.4.for.inc.i.4_crit_edge:               ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.4

if.then46.i.4:                                    ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %add.ptr51.i.4 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr51.i.4, align 1
  %conv48.i.4 = zext i8 %85 to i32
  %86 = ptrtoint ptr %arrayidx49.i.4 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv48.i.4, ptr %arrayidx49.i.4, align 4
  %add.ptr50.i.4 = getelementptr i8, ptr %bufptr.1.i.3, i32 5
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then46.i.4, %for.body.i.4.for.inc.i.4_crit_edge
  %bufptr.1.i.4 = phi ptr [ %add.ptr50.i.4, %if.then46.i.4 ], [ %add.ptr51.i.4, %for.body.i.4.for.inc.i.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %exitcond.not.i.4 = icmp eq i8 %30, 5
  br i1 %exitcond.not.i.4, label %for.inc.i.4.pixcir_ts_parse.exit_crit_edge, label %for.body.i.5

for.inc.i.4.pixcir_ts_parse.exit_crit_edge:       ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.5:                                     ; preds = %for.inc.i.4
  %87 = ptrtoint ptr %bufptr.1.i.4 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %bufptr.1.i.4, align 1
  %89 = call i16 @llvm.bswap.i16(i16 %88) #6
  %conv41.i.5 = zext i16 %89 to i32
  %add.ptr.i.5 = getelementptr i8, ptr %bufptr.1.i.4, i32 2
  %90 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %add.ptr.i.5, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #6
  %conv43.i.5 = zext i16 %92 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.5, ptr noundef %prop.i, i32 noundef %conv41.i.5, i32 noundef %conv43.i.5) #6
  %93 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool45.not.i.5 = icmp eq i8 %94, 0
  %add.ptr51.i.5 = getelementptr i8, ptr %bufptr.1.i.4, i32 4
  br i1 %tobool45.not.i.5, label %for.body.i.5.for.inc.i.5_crit_edge, label %if.then46.i.5

for.body.i.5.for.inc.i.5_crit_edge:               ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.5

if.then46.i.5:                                    ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %add.ptr51.i.5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr51.i.5, align 1
  %conv48.i.5 = zext i8 %96 to i32
  %97 = ptrtoint ptr %arrayidx49.i.5 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv48.i.5, ptr %arrayidx49.i.5, align 4
  %add.ptr50.i.5 = getelementptr i8, ptr %bufptr.1.i.4, i32 5
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then46.i.5, %for.body.i.5.for.inc.i.5_crit_edge
  %bufptr.1.i.5 = phi ptr [ %add.ptr50.i.5, %if.then46.i.5 ], [ %add.ptr51.i.5, %for.body.i.5.for.inc.i.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %exitcond.not.i.5 = icmp eq i8 %30, 6
  br i1 %exitcond.not.i.5, label %for.inc.i.5.pixcir_ts_parse.exit_crit_edge, label %for.body.i.6

for.inc.i.5.pixcir_ts_parse.exit_crit_edge:       ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

for.body.i.6:                                     ; preds = %for.inc.i.5
  %98 = ptrtoint ptr %bufptr.1.i.5 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %bufptr.1.i.5, align 1
  %100 = call i16 @llvm.bswap.i16(i16 %99) #6
  %conv41.i.6 = zext i16 %100 to i32
  %add.ptr.i.6 = getelementptr i8, ptr %bufptr.1.i.5, i32 2
  %101 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %add.ptr.i.6, align 1
  %103 = call i16 @llvm.bswap.i16(i16 %102) #6
  %conv43.i.6 = zext i16 %103 to i32
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx39.i.6, ptr noundef %prop.i, i32 noundef %conv41.i.6, i32 noundef %conv43.i.6) #6
  %104 = ptrtoint ptr %has_hw_ids.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_hw_ids.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool45.not.i.6 = icmp eq i8 %105, 0
  br i1 %tobool45.not.i.6, label %for.body.i.6.pixcir_ts_parse.exit_crit_edge, label %if.then46.i.6

for.body.i.6.pixcir_ts_parse.exit_crit_edge:      ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %pixcir_ts_parse.exit

if.then46.i.6:                                    ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr51.i.6 = getelementptr i8, ptr %bufptr.1.i.5, i32 4
  %106 = ptrtoint ptr %add.ptr51.i.6 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr51.i.6, align 1
  %conv48.i.6 = zext i8 %107 to i32
  %108 = ptrtoint ptr %arrayidx49.i.6 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv48.i.6, ptr %arrayidx49.i.6, align 4
  br label %pixcir_ts_parse.exit

pixcir_ts_parse.exit:                             ; preds = %if.then46.i.6, %for.body.i.6.pixcir_ts_parse.exit_crit_edge, %for.inc.i.5.pixcir_ts_parse.exit_crit_edge, %for.inc.i.4.pixcir_ts_parse.exit_crit_edge, %for.inc.i.3.pixcir_ts_parse.exit_crit_edge, %for.inc.i.2.pixcir_ts_parse.exit_crit_edge, %for.inc.i.1.pixcir_ts_parse.exit_crit_edge, %for.inc.i.pixcir_ts_parse.exit_crit_edge, %if.end21.i.pixcir_ts_parse.exit_crit_edge, %do.end18.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wrbuf.i) #6
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %rdbuf.i) #6
  call fastcc void @pixcir_ts_report(ptr noundef %dev_id, ptr noundef nonnull %report)
  %109 = ptrtoint ptr %gpio_attb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gpio_attb, align 4
  %call = call i32 @gpiod_get_value_cansleep(ptr noundef %110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %if.then

if.then:                                          ; preds = %pixcir_ts_parse.exit
  %111 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %report, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool2.not = icmp eq i32 %112, 0
  br i1 %tobool2.not, label %if.then.while.end_crit_edge, label %if.then3

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %dev_id, i32 0, i32 1
  %113 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %input, align 4
  call void @input_mt_sync_frame(ptr noundef %114) #6
  %115 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %116, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %while.end

if.end5:                                          ; preds = %pixcir_ts_parse.exit
  call void @msleep(i32 noundef 20) #6
  %117 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %running, align 4, !range !149
  %tobool.not = icmp eq i8 %118, 0
  br i1 %tobool.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %if.then3, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %report) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pixcir_stop(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.47, i32 noundef 52, i32 noundef %call.i) #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %4 = trunc i32 %call.i to i8
  %conv.i = and i8 %4, -9
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 52, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end12.i, label %if.end

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, i32 noundef 52, i32 noundef %call6.i) #9
  br label %do.end

do.end:                                           ; preds = %do.end12.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call6.i, %do.end12.i ], [ %call.i, %do.end.i ]
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %running = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 8
  %7 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %11) #6
  %gpio_enable = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 4
  %12 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_enable, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %13, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pixcir_start(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %gpio_enable = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_enable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef %call.i) #9
  br label %do.end

if.end6.i:                                        ; preds = %if.end
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %8 = trunc i32 %call.i to i8
  %9 = and i8 %8, -8
  %conv.i = or i8 %9, 2
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 52, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end14.i, label %if.end5

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 52, i32 noundef %call8.i) #9
  br label %do.end

do.end:                                           ; preds = %do.end14.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call8.i, %do.end14.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end6.i
  %running = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 8
  %10 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 4
  %dev1.i28 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %do.end.i31, label %if.end.i

do.end.i31:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i28, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.47, i32 noundef 52, i32 noundef %call.i29) #9
  br label %do.end14

if.end.i:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ts, align 4
  %15 = trunc i32 %call.i29 to i8
  %conv.i32 = or i8 %15, 8
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 52, i8 noundef zeroext %conv.i32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end12.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i28, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, i32 noundef 52, i32 noundef %call6.i) #9
  br label %do.end14

do.end14:                                         ; preds = %do.end12.i, %do.end.i31
  %retval.0.i33.ph = phi i32 [ %call6.i, %do.end12.i ], [ %call.i29, %do.end.i31 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i33.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i33.ph, %do.end14 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pixcir_ts_report(ptr nocapture noundef readonly %ts, ptr noundef %report) unnamed_addr #2 align 64 {
entry:
  %slots = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %slots) #6
  %0 = call ptr @memset(ptr %slots, i32 255, i32 20)
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ts, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  %chip2 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 6
  %3 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip2, align 4
  %5 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %report, align 4
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 5)
  %has_hw_ids = getelementptr inbounds %struct.pixcir_i2c_chip_data, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %has_hw_ids to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_hw_ids, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then4, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 1
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  %pos = getelementptr inbounds %struct.pixcir_report_data, ptr %report, i32 0, i32 1
  %call = call i32 @input_mt_assign_slots(ptr noundef %11, ptr noundef nonnull %slots, ptr noundef %pos, i32 noundef %7, i32 noundef 0) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp798 = icmp sgt i32 %6, 0
  br i1 %cmp798, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %input11 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 1
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %has_hw_ids to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_hw_ids, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  %14 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input11, align 4
  %arrayidx = getelementptr %struct.pixcir_report_data, ptr %report, i32 0, i32 2, i32 %i.099
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call12 = call i32 @input_mt_get_slot_by_key(ptr noundef %15, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body, label %if.then10.if.end25_crit_edge

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pixcir_ts_report.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pixcir_ts_report, %if.then19)) #6
          to label %for.inc [label %if.then19], !srcloc !152

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pixcir_ts_report.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %19) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr [5 x i32], ptr %slots, i32 0, i32 %i.099
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then10.if.end25_crit_edge
  %slot.0 = phi i32 [ %call12, %if.then10.if.end25_crit_edge ], [ %21, %if.else ]
  %22 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input11, align 4
  call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 47, i32 noundef %slot.0) #6
  %24 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input11, align 4
  %call28 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %25, i32 noundef 0, i1 noundef zeroext true) #6
  %26 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input11, align 4
  %arrayidx31 = getelementptr %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 %i.099
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx31, align 4
  %conv = sext i16 %29 to i32
  call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 53, i32 noundef %conv) #6
  %30 = ptrtoint ptr %input11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input11, align 4
  %y = getelementptr %struct.pixcir_report_data, ptr %report, i32 0, i32 1, i32 %i.099, i32 1
  %32 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %y, align 2
  %conv35 = sext i16 %33 to i32
  call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 54, i32 noundef %conv35) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pixcir_ts_report.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pixcir_ts_report, %if.then48)) #6
          to label %for.inc [label %if.then48], !srcloc !152

if.then48:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx31, align 4
  %conv52 = sext i16 %35 to i32
  %36 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %y, align 2
  %conv56 = sext i16 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pixcir_ts_report.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %i.099, i32 noundef %slot.0, i32 noundef %conv52, i32 noundef %conv56) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.end25, %if.then19, %do.body
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  %input60 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %ts, i32 0, i32 1
  %38 = ptrtoint ptr %input60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input60, align 4
  call void @input_mt_sync_frame(ptr noundef %39) #6
  %40 = ptrtoint ptr %input60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input60, align 4
  call void @input_event(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %slots) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_set_mt_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_i2c_ts_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call4, label %if.then.unlock_crit_edge, label %if.then5

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc i32 @pixcir_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.unlock_crit_edge, label %do.end

if.then5.unlock_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #9
  br label %unlock

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call9 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call9, label %if.then10, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @pixcir_stop(ptr noundef %1)
  br label %unlock

unlock:                                           ; preds = %if.then10, %if.else.unlock_crit_edge, %do.end, %if.then5.unlock_crit_edge, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.unlock_crit_edge ], [ %call6, %do.end ], [ 0, %if.then5.unlock_crit_edge ], [ %call11, %if.then10 ], [ 0, %if.else.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pixcir_i2c_ts_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.pixcir_i2c_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call4, label %if.then.unlock_crit_edge, label %if.then5

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc i32 @pixcir_stop(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.unlock_crit_edge, label %do.end

if.then5.unlock_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #9
  br label %unlock

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call9 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call9, label %if.then10, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @pixcir_start(ptr noundef %1)
  br label %unlock

unlock:                                           ; preds = %if.then10, %if.else.unlock_crit_edge, %do.end, %if.then5.unlock_crit_edge, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.unlock_crit_edge ], [ %call6, %do.end ], [ 0, %if.then5.unlock_crit_edge ], [ %call11, %if.then10 ], [ 0, %if.else.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__initcall__kmod_pixcir_i2c_ts__290_624_pixcir_i2c_ts_driver_init6, !1, !"__initcall__kmod_pixcir_i2c_ts__290_624_pixcir_i2c_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 624, i32 1}
!2 = !{ptr @__exitcall_pixcir_i2c_ts_driver_exit, !1, !"__exitcall_pixcir_i2c_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 626, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 627, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 628, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 616, i32 11}
!12 = !{ptr @pixcir_i2c_ts_driver, !13, !"pixcir_i2c_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 614, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 481, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pixcir_i2c_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pixcir_i2c_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 487, i32 3}
!24 = !{ptr @pixcir_i2c_ts_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 504, i32 3}
!28 = !{ptr @pixcir_i2c_ts_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 511, i32 3}
!32 = !{ptr @pixcir_i2c_ts_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 517, i32 42}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 521, i32 4}
!38 = !{ptr @pixcir_i2c_ts_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 526, i32 52}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 531, i32 4}
!44 = !{ptr @pixcir_i2c_ts_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 536, i32 51}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 541, i32 4}
!50 = !{ptr @pixcir_i2c_ts_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 545, i32 53}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 550, i32 4}
!56 = !{ptr @pixcir_i2c_ts_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 561, i32 3}
!60 = !{ptr @pixcir_i2c_ts_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 570, i32 3}
!64 = !{ptr @pixcir_i2c_ts_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pixcir_i2c_ts_probe._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 350, i32 3}
!68 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pixcir_start._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pixcir_start._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 360, i32 3}
!73 = !{ptr @pixcir_start._entry.39, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pixcir_start._entry_ptr.41, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 284, i32 3}
!77 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pixcir_set_int_mode._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pixcir_set_int_mode._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 299, i32 3}
!82 = !{ptr @pixcir_set_int_mode._entry.44, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pixcir_set_int_mode._entry_ptr.46, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 317, i32 3}
!86 = !{ptr @pixcir_int_enable._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pixcir_int_enable._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @pixcir_int_enable._entry.48, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 329, i32 3}
!90 = !{ptr @pixcir_int_enable._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 113, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pixcir_ts_parse._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @pixcir_ts_parse._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 121, i32 3}
!98 = !{ptr @pixcir_ts_parse._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @pixcir_ts_parse._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 167, i32 5}
!102 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pixcir_ts_report.__UNIQUE_ID_ddebug288, !101, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 183, i32 3}
!107 = !{ptr @pixcir_ts_report.__UNIQUE_ID_ddebug289, !106, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 245, i32 3}
!110 = !{ptr @pixcir_set_power_mode._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pixcir_set_power_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @pixcir_set_power_mode._entry.60, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 258, i32 3}
!114 = !{ptr @pixcir_set_power_mode._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 375, i32 3}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pixcir_stop._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @pixcir_stop._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @pixcir_of_match, !121, !"pixcir_of_match", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 606, i32 34}
!122 = !{ptr @pixcir_ts_data, !123, !"pixcir_ts_data", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 588, i32 42}
!124 = !{ptr @pixcir_tangoc_data, !125, !"pixcir_tangoc_data", i1 false, i1 false}
!125 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 593, i32 42}
!126 = !{ptr @pixcir_dev_pm_ops, !127, !"pixcir_dev_pm_ops", i1 false, i1 false}
!127 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 462, i32 8}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 421, i32 5}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @pixcir_i2c_ts_suspend._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @pixcir_i2c_ts_suspend._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 448, i32 5}
!135 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @pixcir_i2c_ts_resume._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @pixcir_i2c_ts_resume._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @pixcir_i2c_ts_id, !139, !"pixcir_i2c_ts_id", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/pixcir_i2c_ts.c", i32 598, i32 35}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i8 0, i8 2}
!150 = !{i64 2155715200}
!151 = !{i64 2155711466}
!152 = !{i64 2148782316, i64 2148782321, i64 2148782334, i64 2148782378, i64 2148782412, i64 2148782433}
