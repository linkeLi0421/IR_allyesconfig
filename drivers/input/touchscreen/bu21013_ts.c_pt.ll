; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/bu21013_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/bu21013_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.bu21013_ts = type { ptr, ptr, %struct.touchscreen_properties, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@__initcall__kmod_bu21013_ts__288_628_bu21013_driver_init6 = internal global ptr @bu21013_driver_init, section ".initcall6.init", align 4
@bu21013_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bu21013_probe, ptr @bu21013_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bu21013_dev_pm_ops, ptr null, ptr null }, ptr @bu21013_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bu21013_driver_exit = internal global ptr @bu21013_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [53 x i8] c"bu21013_ts.file=drivers/input/touchscreen/bu21013_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [26 x i8] c"bu21013_ts.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [67 x i8] c"bu21013_ts.author=Naveen Kumar G <naveen.gaddipati@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"bu21013_ts.description=bu21013 touch screen controller driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bu21013_tp\00", [21 x i8] zeroinitializer }, align 32
@bu21013_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bu21013_suspend, ptr @bu21013_resume, ptr @bu21013_suspend, ptr @bu21013_resume, ptr @bu21013_suspend, ptr @bu21013_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bu21013_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bu21013_tp\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bu21013_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i2c smbus byte data not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bu21013_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/bu21013_ts.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr = internal global ptr @bu21013_probe._entry, section ".printk_index", align 4
@bu21013_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No IRQ set up\0A\00", [17 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.8 = internal global ptr @bu21013_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rohm,flip-x\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rohm,flip-y\00", [20 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device memory alloc failed\0A\00", [36 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.13 = internal global ptr @bu21013_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rohm,touch-max-x\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rohm,touch-max-y\00", [47 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize MT slots\00", [34 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.18 = internal global ptr @bu21013_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regulator_get failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.22 = internal global ptr @bu21013_probe._entry.20, section ".printk_index", align 4
@bu21013_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regulator enable failed\0A\00", [39 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.25 = internal global ptr @bu21013_probe._entry.23, section ".printk_index", align 4
@bu21013_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to install power off handler\0A\00", [59 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.28 = internal global ptr @bu21013_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get CS GPIO\0A\00", [41 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.32 = internal global ptr @bu21013_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BU21013 CS\00", [21 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to install chip disable handler\0A\00", [56 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.36 = internal global ptr @bu21013_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"touch\00", [26 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get INT GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.40 = internal global ptr @bu21013_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BU21013 INT\00", [20 x i8] zeroinitializer }, align 32
@bu21013_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error in bu21013 config\0A\00", [39 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.44 = internal global ptr @bu21013_probe._entry.42, section ".printk_index", align 4
@bu21013_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.47 = internal global ptr @bu21013_probe._entry.45, section ".printk_index", align 4
@bu21013_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@bu21013_probe._entry_ptr.50 = internal global ptr @bu21013_probe._entry.48, section ".printk_index", align 4
@bu21013_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BU21013_RESET reg write failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bu21013_init_chip\00", [46 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr = internal global ptr @bu21013_init_chip._entry, section ".printk_index", align 4
@bu21013_init_chip._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BU21013_SENSOR_0_7 reg write failed\0A\00", [59 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.55 = internal global ptr @bu21013_init_chip._entry.53, section ".printk_index", align 4
@bu21013_init_chip._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BU21013_SENSOR_8_15 reg write failed\0A\00", [58 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.58 = internal global ptr @bu21013_init_chip._entry.56, section ".printk_index", align 4
@bu21013_init_chip._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BU21013_SENSOR_16_23 reg write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.61 = internal global ptr @bu21013_init_chip._entry.59, section ".printk_index", align 4
@bu21013_init_chip._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BU21013_POS_MODE1 reg write failed\0A\00", [60 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.64 = internal global ptr @bu21013_init_chip._entry.62, section ".printk_index", align 4
@bu21013_init_chip._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BU21013_POS_MODE2 reg write failed\0A\00", [60 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.67 = internal global ptr @bu21013_init_chip._entry.65, section ".printk_index", align 4
@bu21013_init_chip._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.52, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BU21013_CLK_MODE reg write failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.70 = internal global ptr @bu21013_init_chip._entry.68, section ".printk_index", align 4
@bu21013_init_chip._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.52, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BU21013_IDLE reg write failed\0A\00", [33 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.73 = internal global ptr @bu21013_init_chip._entry.71, section ".printk_index", align 4
@bu21013_init_chip._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.52, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BU21013_INT_MODE reg write failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.76 = internal global ptr @bu21013_init_chip._entry.74, section ".printk_index", align 4
@bu21013_init_chip._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.52, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BU21013_FILTER reg write failed\0A\00", [63 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.79 = internal global ptr @bu21013_init_chip._entry.77, section ".printk_index", align 4
@bu21013_init_chip._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.52, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BU21013_TH_ON reg write failed\0A\00", [32 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.82 = internal global ptr @bu21013_init_chip._entry.80, section ".printk_index", align 4
@bu21013_init_chip._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.52, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BU21013_TH_OFF reg write failed\0A\00", [63 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.85 = internal global ptr @bu21013_init_chip._entry.83, section ".printk_index", align 4
@bu21013_init_chip._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.52, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BU21013_GAIN reg write failed\0A\00", [33 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.88 = internal global ptr @bu21013_init_chip._entry.86, section ".printk_index", align 4
@bu21013_init_chip._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.52, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BU21013_OFFSET_MODE reg write failed\0A\00", [58 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.91 = internal global ptr @bu21013_init_chip._entry.89, section ".printk_index", align 4
@bu21013_init_chip._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.52, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BU21013_XY_EDGE reg write failed\0A\00", [62 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.94 = internal global ptr @bu21013_init_chip._entry.92, section ".printk_index", align 4
@bu21013_init_chip._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.52, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BU21013_REG_DONE reg write failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bu21013_init_chip._entry_ptr.97 = internal global ptr @bu21013_init_chip._entry.95, section ".printk_index", align 4
@bu21013_gpio_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bu21013_gpio_irq\00", [47 x i8] zeroinitializer }, align 32
@bu21013_gpio_irq._entry_ptr = internal global ptr @bu21013_gpio_irq._entry, section ".printk_index", align 4
@bu21013_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to re-enable regulator when resuming\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bu21013_resume\00", [17 x i8] zeroinitializer }, align 32
@bu21013_resume._entry_ptr = internal global ptr @bu21013_resume._entry, section ".printk_index", align 4
@bu21013_resume._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to reinitialize chip when resuming\0A\00", [53 x i8] zeroinitializer }, align 32
@bu21013_resume._entry_ptr.104 = internal global ptr @bu21013_resume._entry.102, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"bu21013_driver\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 618, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 620, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"bu21013_dev_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 610, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"bu21013_id\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 612, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 418, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 423, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 433, i32 55 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 434, i32 55 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 438, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 448, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 449, i32 41 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 475, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 479, i32 51 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 481, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 487, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 493, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 498, i32 46 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 502, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 505, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 510, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 517, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 521, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 526, i32 42 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 531, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 539, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 546, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 269, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 277, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 284, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 291, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 299, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 310, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 318, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 326, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 333, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 341, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 348, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 355, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 362, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 369, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 379, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 386, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 245, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 590, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private constant [42 x i8] c"../drivers/input/touchscreen/bu21013_ts.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 597, i32 4 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_bu21013_driver_exit, ptr @__initcall__kmod_bu21013_ts__288_628_bu21013_driver_init6, ptr @bu21013_driver_exit, ptr @bu21013_gpio_irq._entry, ptr @bu21013_gpio_irq._entry_ptr, ptr @bu21013_init_chip._entry, ptr @bu21013_init_chip._entry.53, ptr @bu21013_init_chip._entry.56, ptr @bu21013_init_chip._entry.59, ptr @bu21013_init_chip._entry.62, ptr @bu21013_init_chip._entry.65, ptr @bu21013_init_chip._entry.68, ptr @bu21013_init_chip._entry.71, ptr @bu21013_init_chip._entry.74, ptr @bu21013_init_chip._entry.77, ptr @bu21013_init_chip._entry.80, ptr @bu21013_init_chip._entry.83, ptr @bu21013_init_chip._entry.86, ptr @bu21013_init_chip._entry.89, ptr @bu21013_init_chip._entry.92, ptr @bu21013_init_chip._entry.95, ptr @bu21013_init_chip._entry_ptr, ptr @bu21013_init_chip._entry_ptr.55, ptr @bu21013_init_chip._entry_ptr.58, ptr @bu21013_init_chip._entry_ptr.61, ptr @bu21013_init_chip._entry_ptr.64, ptr @bu21013_init_chip._entry_ptr.67, ptr @bu21013_init_chip._entry_ptr.70, ptr @bu21013_init_chip._entry_ptr.73, ptr @bu21013_init_chip._entry_ptr.76, ptr @bu21013_init_chip._entry_ptr.79, ptr @bu21013_init_chip._entry_ptr.82, ptr @bu21013_init_chip._entry_ptr.85, ptr @bu21013_init_chip._entry_ptr.88, ptr @bu21013_init_chip._entry_ptr.91, ptr @bu21013_init_chip._entry_ptr.94, ptr @bu21013_init_chip._entry_ptr.97, ptr @bu21013_probe._entry, ptr @bu21013_probe._entry.11, ptr @bu21013_probe._entry.16, ptr @bu21013_probe._entry.20, ptr @bu21013_probe._entry.23, ptr @bu21013_probe._entry.26, ptr @bu21013_probe._entry.30, ptr @bu21013_probe._entry.34, ptr @bu21013_probe._entry.38, ptr @bu21013_probe._entry.42, ptr @bu21013_probe._entry.45, ptr @bu21013_probe._entry.48, ptr @bu21013_probe._entry.6, ptr @bu21013_probe._entry_ptr, ptr @bu21013_probe._entry_ptr.13, ptr @bu21013_probe._entry_ptr.18, ptr @bu21013_probe._entry_ptr.22, ptr @bu21013_probe._entry_ptr.25, ptr @bu21013_probe._entry_ptr.28, ptr @bu21013_probe._entry_ptr.32, ptr @bu21013_probe._entry_ptr.36, ptr @bu21013_probe._entry_ptr.40, ptr @bu21013_probe._entry_ptr.44, ptr @bu21013_probe._entry_ptr.47, ptr @bu21013_probe._entry_ptr.50, ptr @bu21013_probe._entry_ptr.8, ptr @bu21013_resume._entry, ptr @bu21013_resume._entry.102, ptr @bu21013_resume._entry_ptr, ptr @bu21013_resume._entry_ptr.104, ptr @bu21013_driver, ptr @.str, ptr @bu21013_dev_pm_ops, ptr @bu21013_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_init_chip._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_gpio_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bu21013_resume._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21013_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bu21013_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bu21013_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bu21013_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21013_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %max_x = alloca i32, align 4
  %max_y = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_x) #7
  %0 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_x, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_y) #7
  %1 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_y, align 4
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev6, i32 noundef 44, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 4
  %call.i259 = tail call zeroext i1 @device_property_present(ptr noundef %dev6, ptr noundef nonnull @.str.9) #7
  %x_flip = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 8
  %frombool = zext i1 %call.i259 to i8
  %11 = ptrtoint ptr %x_flip to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %x_flip, align 4
  %call.i260 = tail call zeroext i1 @device_property_present(ptr noundef %dev6, ptr noundef nonnull @.str.10) #7
  %y_flip = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 9
  %frombool18 = zext i1 %call.i260 to i8
  %12 = ptrtoint ptr %y_flip to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool18, ptr %y_flip, align 1
  %call20 = tail call ptr @devm_input_allocate_device(ptr noundef %dev6) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %in_dev28 = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %in_dev28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %in_dev28, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call20, i32 0, i32 40, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %15 = ptrtoint ptr %call20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str, ptr %call20, align 8
  %id29 = getelementptr inbounds %struct.input_dev, ptr %call20, i32 0, i32 3
  %16 = ptrtoint ptr %id29 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 24, ptr %id29, align 4
  %call.i261 = call i32 @device_property_read_u32_array(ptr noundef %dev6, ptr noundef nonnull @.str.14, ptr noundef nonnull %max_x, i32 noundef 1) #7
  %call.i262 = call i32 @device_property_read_u32_array(ptr noundef %dev6, ptr noundef nonnull @.str.15, ptr noundef nonnull %max_y, i32 noundef 1) #7
  %17 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_x, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call20, i32 noundef 53, i32 noundef 0, i32 noundef %18, i32 noundef 0, i32 noundef 0) #7
  %19 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_y, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call20, i32 noundef 54, i32 noundef 0, i32 noundef %20, i32 noundef 0, i32 noundef 0) #7
  %props = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %call20, i1 noundef zeroext true, ptr noundef %props) #7
  %invert_x = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %invert_x to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %invert_x, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %land.lhs.true, label %if.end27.if.end40_crit_edge

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end27
  %call.i263 = call zeroext i1 @device_property_present(ptr noundef %dev6, ptr noundef nonnull @.str.9) #7
  br i1 %call.i263, label %if.then38, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %call20, i32 0, i32 26
  %23 = ptrtoint ptr %absinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %absinfo, align 8
  %minimum = getelementptr %struct.input_absinfo, ptr %24, i32 53, i32 1
  %25 = ptrtoint ptr %minimum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minimum, align 4
  %maximum = getelementptr %struct.input_absinfo, ptr %24, i32 53, i32 2
  %27 = ptrtoint ptr %maximum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maximum, align 4
  %sub = sub i32 %28, %26
  store i32 %sub, ptr %maximum, align 4
  store i32 0, ptr %minimum, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true.if.end40_crit_edge, %if.end27.if.end40_crit_edge
  %invert_y = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %invert_y to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %invert_y, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool42.not = icmp eq i8 %30, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end40.if.end53_crit_edge

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true43:                                  ; preds = %if.end40
  %call.i264 = call zeroext i1 @device_property_present(ptr noundef %dev6, ptr noundef nonnull @.str.10) #7
  br i1 %call.i264, label %if.then46, label %land.lhs.true43.if.end53_crit_edge

land.lhs.true43.if.end53_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  %absinfo47 = getelementptr inbounds %struct.input_dev, ptr %call20, i32 0, i32 26
  %31 = ptrtoint ptr %absinfo47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %absinfo47, align 8
  %minimum49 = getelementptr %struct.input_absinfo, ptr %32, i32 54, i32 1
  %33 = ptrtoint ptr %minimum49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %minimum49, align 4
  %maximum50 = getelementptr %struct.input_absinfo, ptr %32, i32 54, i32 2
  %35 = ptrtoint ptr %maximum50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maximum50, align 4
  %sub51 = sub i32 %36, %34
  store i32 %sub51, ptr %maximum50, align 4
  store i32 0, ptr %minimum49, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %land.lhs.true43.if.end53_crit_edge, %if.end40.if.end53_crit_edge
  %call54 = call i32 @input_mt_init_slots(ptr noundef nonnull %call20, i32 noundef 2, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %call63 = call ptr @devm_regulator_get(ptr noundef %dev6, ptr noundef nonnull @.str.19) #7
  %regulator = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call63, ptr %regulator, align 4
  %cmp.i265 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %do.end69, label %if.end73

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.21) #10
  %38 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regulator, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %call75 = call i32 @regulator_enable(ptr noundef %call63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %call.i266 = call i32 @devm_add_action(ptr noundef %dev6, ptr noundef nonnull @bu21013_power_off, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool.not.i = icmp eq i32 %call.i266, 0
  br i1 %tobool.not.i, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regulator, align 4
  %call.i274 = call i32 @regulator_disable(ptr noundef %42) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %call93 = call ptr @devm_gpiod_get(ptr noundef %dev6, ptr noundef nonnull @.str.29, i32 noundef 7) #7
  %cs_gpiod = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call93, ptr %cs_gpiod, align 4
  %cmp.i.i = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  %44 = ptrtoint ptr %call93 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %44, i32 0
  %45 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.end101 [
    i32 0, label %if.end104
    i32 -517, label %if.end91.cleanup_crit_edge
  ]

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end104:                                        ; preds = %if.end91
  %call106 = call i32 @gpiod_set_consumer_name(ptr noundef %call93, ptr noundef nonnull @.str.33) #7
  %call.i267 = call i32 @devm_add_action(ptr noundef %dev6, ptr noundef nonnull @bu21013_disable_chip, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool.not.i268 = icmp eq i32 %call.i267, 0
  br i1 %tobool.not.i268, label %if.end115, label %do.end113

do.end113:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cs_gpiod, align 4
  call void @gpiod_set_value(ptr noundef %47, i32 noundef 0) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end115:                                        ; preds = %if.end104
  %call117 = call ptr @devm_gpiod_get_optional(ptr noundef %dev6, ptr noundef nonnull @.str.37, i32 noundef 1) #7
  %int_gpiod = getelementptr inbounds %struct.bu21013_ts, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %int_gpiod to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call117, ptr %int_gpiod, align 4
  %cmp.i.i271 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  %49 = ptrtoint ptr %call117 to i32
  %spec.select.i272 = select i1 %cmp.i.i271, i32 %49, i32 0
  %50 = zext i32 %spec.select.i272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %spec.select.i272, label %do.end126 [
    i32 0, label %if.end129
    i32 -517, label %if.end115.cleanup_crit_edge
  ]

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end126:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end129:                                        ; preds = %if.end115
  %tobool131.not = icmp eq ptr %call117, null
  br i1 %tobool131.not, label %if.end129.if.end135_crit_edge, label %if.then132

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call117, ptr noundef nonnull @.str.41) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129.if.end135_crit_edge
  %call136 = call fastcc i32 @bu21013_init_chip(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end143:                                        ; preds = %if.end135
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %call146 = call i32 @devm_request_threaded_irq(ptr noundef %dev6, i32 noundef %52, ptr noundef null, ptr noundef nonnull @bu21013_gpio_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end154, label %do.end151

do.end151:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.46, i32 noundef %54) #10
  br label %cleanup

if.end154:                                        ; preds = %if.end143
  %call155 = call i32 @input_register_device(ptr noundef nonnull %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end162, label %do.end160

do.end160:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end162:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i273 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %55 = ptrtoint ptr %driver_data.i.i273 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i273, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %do.end160, %do.end151, %do.end141, %do.end126, %if.end115.cleanup_crit_edge, %do.end113, %do.end101, %if.end91.cleanup_crit_edge, %do.end89, %do.end80, %do.end69, %do.end59, %do.end25, %if.end7.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %call54, %do.end59 ], [ %40, %do.end69 ], [ %call75, %do.end80 ], [ %call.i266, %do.end89 ], [ %call.i267, %do.end113 ], [ %call136, %do.end141 ], [ %call146, %do.end151 ], [ %call155, %do.end160 ], [ 0, %if.end162 ], [ -12, %do.end25 ], [ -22, %do.end5 ], [ -5, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %spec.select.i, %if.end91.cleanup_crit_edge ], [ %spec.select.i, %do.end101 ], [ %spec.select.i272, %if.end115.cleanup_crit_edge ], [ %spec.select.i272, %do.end126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_x) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bu21013_remove(ptr nocapture noundef readonly %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %touch_stopped = getelementptr inbounds %struct.bu21013_ts, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %touch_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %touch_stopped, align 2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bu21013_power_off(ptr nocapture noundef readonly %_ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regulator = getelementptr inbounds %struct.bu21013_ts, ptr %_ts, i32 0, i32 3
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bu21013_disable_chip(ptr nocapture noundef readonly %_ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpiod = getelementptr inbounds %struct.bu21013_ts, ptr %_ts, i32 0, i32 4
  %0 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bu21013_init_chip(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -19, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 30) #7
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -16, i8 noundef zeroext 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -15, i8 noundef zeroext -4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -14, i8 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end17
  %call26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -13, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %if.end25.cleanup.sink.split_crit_edge

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end25
  %call34 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -12, i8 noundef zeroext -105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end41:                                         ; preds = %if.end33
  %call42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -11, i8 noundef zeroext -127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %if.end41.cleanup.sink.split_crit_edge

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end49:                                         ; preds = %if.end41
  %call50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -6, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %if.end49.cleanup.sink.split_crit_edge

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end57:                                         ; preds = %if.end49
  %call58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -23, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %if.end57.cleanup.sink.split_crit_edge

if.end57.cleanup.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end65:                                         ; preds = %if.end57
  %call66 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -5, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %if.end65.cleanup.sink.split_crit_edge

if.end65.cleanup.sink.split_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end73:                                         ; preds = %if.end65
  %call74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -4, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %if.end73.cleanup.sink.split_crit_edge

if.end73.cleanup.sink.split_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end81:                                         ; preds = %if.end73
  %call82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -3, i8 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %if.end81.cleanup.sink.split_crit_edge

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end89:                                         ; preds = %if.end81
  %call90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -22, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end97, label %if.end89.cleanup.sink.split_crit_edge

if.end89.cleanup.sink.split_crit_edge:            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end97:                                         ; preds = %if.end89
  %call98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -21, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %if.end97.cleanup.sink.split_crit_edge

if.end97.cleanup.sink.split_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end105:                                        ; preds = %if.end97
  %call106 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -20, i8 noundef zeroext -91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %if.end105.cleanup.sink.split_crit_edge

if.end105.cleanup.sink.split_crit_edge:           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end113:                                        ; preds = %if.end105
  %call114 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -17, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end113.cleanup_crit_edge, label %if.end113.cleanup.sink.split_crit_edge

if.end113.cleanup.sink.split_crit_edge:           ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end113.cleanup.sink.split_crit_edge, %if.end105.cleanup.sink.split_crit_edge, %if.end97.cleanup.sink.split_crit_edge, %if.end89.cleanup.sink.split_crit_edge, %if.end81.cleanup.sink.split_crit_edge, %if.end73.cleanup.sink.split_crit_edge, %if.end65.cleanup.sink.split_crit_edge, %if.end57.cleanup.sink.split_crit_edge, %if.end49.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %if.end33.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.96.sink = phi ptr [ @.str.51, %entry.cleanup.sink.split_crit_edge ], [ @.str.54, %if.end.cleanup.sink.split_crit_edge ], [ @.str.57, %if.end9.cleanup.sink.split_crit_edge ], [ @.str.60, %if.end17.cleanup.sink.split_crit_edge ], [ @.str.63, %if.end25.cleanup.sink.split_crit_edge ], [ @.str.66, %if.end33.cleanup.sink.split_crit_edge ], [ @.str.69, %if.end41.cleanup.sink.split_crit_edge ], [ @.str.72, %if.end49.cleanup.sink.split_crit_edge ], [ @.str.75, %if.end57.cleanup.sink.split_crit_edge ], [ @.str.78, %if.end65.cleanup.sink.split_crit_edge ], [ @.str.81, %if.end73.cleanup.sink.split_crit_edge ], [ @.str.84, %if.end81.cleanup.sink.split_crit_edge ], [ @.str.87, %if.end89.cleanup.sink.split_crit_edge ], [ @.str.90, %if.end97.cleanup.sink.split_crit_edge ], [ @.str.93, %if.end105.cleanup.sink.split_crit_edge ], [ @.str.96, %if.end113.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %if.end9.cleanup.sink.split_crit_edge ], [ %call18, %if.end17.cleanup.sink.split_crit_edge ], [ %call26, %if.end25.cleanup.sink.split_crit_edge ], [ %call34, %if.end33.cleanup.sink.split_crit_edge ], [ %call42, %if.end41.cleanup.sink.split_crit_edge ], [ %call50, %if.end49.cleanup.sink.split_crit_edge ], [ %call58, %if.end57.cleanup.sink.split_crit_edge ], [ %call66, %if.end65.cleanup.sink.split_crit_edge ], [ %call74, %if.end73.cleanup.sink.split_crit_edge ], [ %call82, %if.end81.cleanup.sink.split_crit_edge ], [ %call90, %if.end89.cleanup.sink.split_crit_edge ], [ %call98, %if.end97.cleanup.sink.split_crit_edge ], [ %call106, %if.end105.cleanup.sink.split_crit_edge ], [ %call114, %if.end113.cleanup.sink.split_crit_edge ]
  %dev120 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120, ptr noundef nonnull %.str.96.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end113.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end113.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21013_gpio_irq(i32 noundef %irq, ptr noundef %device_data) #2 align 64 {
entry:
  %pos.i = alloca [2 x %struct.input_mt_pos], align 8
  %slots.i = alloca [2 x i32], align 4
  %buf.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_dev.i = getelementptr inbounds %struct.bu21013_ts, ptr %device_data, i32 0, i32 1
  %0 = getelementptr inbounds %struct.input_mt_pos, ptr %pos.i, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [2 x i32], ptr %slots.i, i32 0, i32 1
  %4 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 3
  %7 = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 7
  %props.i = getelementptr inbounds %struct.bu21013_ts, ptr %device_data, i32 0, i32 2
  %arrayidx992.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 4
  %arrayidx996.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 5
  %arrayidx999.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 6
  %arrayidx992.1.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 8
  %arrayidx996.1.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 9
  %arrayidx999.1.i = getelementptr inbounds [11 x i8], ptr %buf.i, i32 0, i32 10
  %touch_stopped = getelementptr inbounds %struct.bu21013_ts, ptr %device_data, i32 0, i32 10
  %int_gpiod = getelementptr inbounds %struct.bu21013_ts, ptr %device_data, i32 0, i32 5
  %y1063.i = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 0, i32 1
  %arrayidx1057.i.1 = getelementptr inbounds [2 x i32], ptr %slots.i, i32 0, i32 1
  %arrayidx1059.i.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 1
  %y1063.i.1 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then11, %entry
  %8 = ptrtoint ptr %in_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #7
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %pos.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slots.i) #7
  %11 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %slots.i, align 4, !annotation !181
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %3, align 4, !annotation !181
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #7
  %13 = call ptr @memset(ptr %buf.i, i32 255, i32 11)
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %15, i8 noundef zeroext 112, i8 noundef zeroext 11, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 11
  br i1 %cmp1.i.i, label %do.body.cond.false.i_crit_edge, label %for.cond.i.i

do.body.cond.false.i_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.cond.i.i:                                     ; preds = %do.body
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %call.1.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %17, i8 noundef zeroext 112, i8 noundef zeroext 11, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.1.i.i)
  %cmp1.1.i.i = icmp eq i32 %call.1.i.i, 11
  br i1 %cmp1.1.i.i, label %for.cond.i.i.cond.false.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.cond.false.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %call.2.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %19, i8 noundef zeroext 112, i8 noundef zeroext 11, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.2.i.i)
  %cmp1.2.i.i = icmp eq i32 %call.2.i.i, 11
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.cond.false.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.cond.false.i_crit_edge:            ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %20 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_data, align 4
  %call.3.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %21, i8 noundef zeroext 112, i8 noundef zeroext 11, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.3.i.i)
  %cmp1.3.i.i = icmp eq i32 %call.3.i.i, 11
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.cond.false.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.cond.false.i_crit_edge:            ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %22 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_data, align 4
  %call.4.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %23, i8 noundef zeroext 112, i8 noundef zeroext 11, ptr noundef nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.4.i.i)
  %cmp1.4.i.i = icmp eq i32 %call.4.i.i, 11
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.cond.false.i_crit_edge, label %do.end

for.cond.3.i.i.cond.false.i_crit_edge:            ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.cond.3.i.i.cond.false.i_crit_edge, %for.cond.2.i.i.cond.false.i_crit_edge, %for.cond.1.i.i.cond.false.i_crit_edge, %for.cond.i.i.cond.false.i_crit_edge, %do.body.cond.false.i_crit_edge
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf.i, align 1
  %26 = and i8 %25, 63
  %and.i = zext i8 %26 to i32
  %call.i1107.i = call i32 @__sw_hweight32(i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1107.i)
  %tobool382.not.i = icmp eq i32 %call.i1107.i, 0
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %5, align 1
  %29 = and i8 %28, 31
  %and388.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %and388.i, 8
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %and385.i = zext i8 %31 to i32
  %or.i = or i32 %shl.i, %and385.i
  %32 = lshr i32 %or.i, 2
  %call.i1108.i = call i32 @__sw_hweight32(i32 noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1108.i)
  %tobool979.not.i = icmp eq i32 %call.i1108.i, 0
  %or.cond.i = select i1 %tobool382.not.i, i1 true, i1 %tobool979.not.i
  br i1 %or.cond.i, label %cond.false.i.if.end_crit_edge, label %for.cond.preheader.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader.i:                             ; preds = %cond.false.i
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv990.i = zext i8 %34 to i32
  %shl991.i = shl nuw nsw i32 %conv990.i, 2
  %35 = ptrtoint ptr %arrayidx992.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx992.i, align 1
  %37 = and i8 %36, 3
  %and994.i = zext i8 %37 to i32
  %or995.i = or i32 %shl991.i, %and994.i
  %38 = ptrtoint ptr %arrayidx996.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx996.i, align 1
  %conv997.i = zext i8 %39 to i32
  %shl998.i = shl nuw nsw i32 %conv997.i, 2
  %40 = ptrtoint ptr %arrayidx999.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx999.i, align 1
  %42 = and i8 %41, 3
  %and1001.i = zext i8 %42 to i32
  %or1002.i = or i32 %shl998.i, %and1001.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or995.i)
  %cmp1003.not.i = icmp eq i32 %or995.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or1002.i)
  %cmp1005.not.i = icmp eq i32 %or1002.i, 0
  %or.cond1106.i = select i1 %cmp1003.not.i, i1 true, i1 %cmp1005.not.i
  br i1 %or.cond1106.i, label %for.cond.preheader.i.if.end1009.i_crit_edge, label %if.then1007.i

for.cond.preheader.i.if.end1009.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1009.i

if.then1007.i:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @touchscreen_set_mt_pos(ptr noundef nonnull %pos.i, ptr noundef %props.i, i32 noundef %or995.i, i32 noundef %or1002.i) #7
  br label %if.end1009.i

if.end1009.i:                                     ; preds = %if.then1007.i, %for.cond.preheader.i.if.end1009.i_crit_edge
  %finger_down_count.1.i = phi i32 [ 1, %if.then1007.i ], [ 0, %for.cond.preheader.i.if.end1009.i_crit_edge ]
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %7, align 1
  %conv990.1.i = zext i8 %44 to i32
  %shl991.1.i = shl nuw nsw i32 %conv990.1.i, 2
  %45 = ptrtoint ptr %arrayidx992.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx992.1.i, align 1
  %47 = and i8 %46, 3
  %and994.1.i = zext i8 %47 to i32
  %or995.1.i = or i32 %shl991.1.i, %and994.1.i
  %48 = ptrtoint ptr %arrayidx996.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx996.1.i, align 1
  %conv997.1.i = zext i8 %49 to i32
  %shl998.1.i = shl nuw nsw i32 %conv997.1.i, 2
  %50 = ptrtoint ptr %arrayidx999.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx999.1.i, align 1
  %52 = and i8 %51, 3
  %and1001.1.i = zext i8 %52 to i32
  %or1002.1.i = or i32 %shl998.1.i, %and1001.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or995.1.i)
  %cmp1003.not.1.i = icmp eq i32 %or995.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or1002.1.i)
  %cmp1005.not.1.i = icmp eq i32 %or1002.1.i, 0
  %or.cond1106.1.i = select i1 %cmp1003.not.1.i, i1 true, i1 %cmp1005.not.1.i
  br i1 %or.cond1106.1.i, label %if.end1049.i, label %if.end1009.1.i

if.end1009.1.i:                                   ; preds = %if.end1009.i
  %inc.1.i = add nuw nsw i32 %finger_down_count.1.i, 1
  %arrayidx1008.1.i = getelementptr [2 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 %finger_down_count.1.i
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx1008.1.i, ptr noundef %props.i, i32 noundef %or995.1.i, i32 noundef %or1002.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.1.i)
  %cmp1011.i = icmp eq i32 %inc.1.i, 2
  br i1 %cmp1011.i, label %land.lhs.true1013.i, label %if.end1009.1.i.if.end1049.thread.i_crit_edge

if.end1009.1.i.if.end1049.thread.i_crit_edge:     ; preds = %if.end1009.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1049.thread.i

land.lhs.true1013.i:                              ; preds = %if.end1009.1.i
  %53 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pos.i, align 8
  %conv1016.i = sext i16 %54 to i32
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %1, align 4
  %conv1019.i = sext i16 %56 to i32
  %sub.i = sub nsw i32 %conv1016.i, %conv1019.i
  %57 = call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %57)
  %cmp1027.i = icmp ult i32 %57, 16
  br i1 %cmp1027.i, label %land.lhs.true1013.i.if.end_crit_edge, label %lor.lhs.false1029.i

land.lhs.true1013.i.if.end_crit_edge:             ; preds = %land.lhs.true1013.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false1029.i:                              ; preds = %land.lhs.true1013.i
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %0, align 2
  %conv1033.i = sext i16 %59 to i32
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %2, align 2
  %conv1036.i = sext i16 %61 to i32
  %sub1037.i = sub nsw i32 %conv1033.i, %conv1036.i
  %62 = call i32 @llvm.abs.i32(i32 %sub1037.i, i1 true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %62)
  %cmp1046.i = icmp ult i32 %62, 16
  br i1 %cmp1046.i, label %lor.lhs.false1029.i.if.end_crit_edge, label %lor.lhs.false1029.i.if.end1049.thread.i_crit_edge

lor.lhs.false1029.i.if.end1049.thread.i_crit_edge: ; preds = %lor.lhs.false1029.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1049.thread.i

lor.lhs.false1029.i.if.end_crit_edge:             ; preds = %lor.lhs.false1029.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end1049.thread.i:                              ; preds = %lor.lhs.false1029.i.if.end1049.thread.i_crit_edge, %if.end1009.1.i.if.end1049.thread.i_crit_edge
  %call10521119.i = call i32 @input_mt_assign_slots(ptr noundef %9, ptr noundef nonnull %slots.i, ptr noundef nonnull %pos.i, i32 noundef %inc.1.i, i32 noundef 16) #7
  br label %for.body1056.i

if.end1049.i:                                     ; preds = %if.end1009.i
  %call1052.i = call i32 @input_mt_assign_slots(ptr noundef %9, ptr noundef nonnull %slots.i, ptr noundef nonnull %pos.i, i32 noundef %finger_down_count.1.i, i32 noundef 16) #7
  br i1 %or.cond1106.i, label %if.end1049.i.for.end1067.i_crit_edge, label %if.end1049.i.for.body1056.i_crit_edge

if.end1049.i.for.body1056.i_crit_edge:            ; preds = %if.end1049.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body1056.i

if.end1049.i.for.end1067.i_crit_edge:             ; preds = %if.end1049.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end1067.i

for.body1056.i:                                   ; preds = %if.end1049.i.for.body1056.i_crit_edge, %if.end1049.thread.i
  %finger_down_count.1.111171121.i = phi i32 [ %inc.1.i, %if.end1049.thread.i ], [ 1, %if.end1049.i.for.body1056.i_crit_edge ]
  %63 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %slots.i, align 4
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %64) #7
  %call1058.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %9, i32 noundef 0, i1 noundef zeroext true) #7
  %65 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pos.i, align 8
  %conv1061.i = sext i16 %66 to i32
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 53, i32 noundef %conv1061.i) #7
  %67 = ptrtoint ptr %y1063.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %y1063.i, align 2
  %conv1064.i = sext i16 %68 to i32
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 54, i32 noundef %conv1064.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %finger_down_count.1.111171121.i)
  %exitcond.not.i = icmp eq i32 %finger_down_count.1.111171121.i, 1
  br i1 %exitcond.not.i, label %for.body1056.i.for.end1067.i_crit_edge, label %for.body1056.i.1

for.body1056.i.for.end1067.i_crit_edge:           ; preds = %for.body1056.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end1067.i

for.body1056.i.1:                                 ; preds = %for.body1056.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %arrayidx1057.i.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx1057.i.1, align 4
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 47, i32 noundef %70) #7
  %call1058.i.1 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %9, i32 noundef 0, i1 noundef zeroext true) #7
  %71 = ptrtoint ptr %arrayidx1059.i.1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx1059.i.1, align 4
  %conv1061.i.1 = sext i16 %72 to i32
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 53, i32 noundef %conv1061.i.1) #7
  %73 = ptrtoint ptr %y1063.i.1 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %y1063.i.1, align 2
  %conv1064.i.1 = sext i16 %74 to i32
  call void @input_event(ptr noundef %9, i32 noundef 3, i32 noundef 54, i32 noundef %conv1064.i.1) #7
  br label %for.end1067.i

for.end1067.i:                                    ; preds = %for.body1056.i.1, %for.body1056.i.for.end1067.i_crit_edge, %if.end1049.i.for.end1067.i_crit_edge
  call void @input_mt_sync_frame(ptr noundef %9) #7
  call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

do.end:                                           ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slots.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #7
  %75 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device_data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #10
  br label %do.end15

if.end:                                           ; preds = %for.end1067.i, %lor.lhs.false1029.i.if.end_crit_edge, %land.lhs.true1013.i.if.end_crit_edge, %cond.false.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slots.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #7
  %77 = ptrtoint ptr %touch_stopped to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %touch_stopped, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool2.not = icmp eq i8 %78, 0
  br i1 %tobool2.not, label %if.end6, label %if.end.do.end15_crit_edge, !prof !182

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end6:                                          ; preds = %if.end
  %79 = ptrtoint ptr %int_gpiod to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %int_gpiod, align 4
  %tobool7.not = icmp eq ptr %80, null
  br i1 %tobool7.not, label %if.end6.do.end15_crit_edge, label %cond.end

if.end6.do.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

cond.end:                                         ; preds = %if.end6
  %call9 = call i32 @gpiod_get_value(ptr noundef nonnull %80) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cond.end.do.end15_crit_edge, label %if.then11

cond.end.do.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.then11:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #7
  br label %do.body

do.end15:                                         ; preds = %cond.end.do.end15_crit_edge, %if.end6.do.end15_crit_edge, %if.end.do.end15_crit_edge, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_set_mt_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21013_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %touch_stopped = getelementptr inbounds %struct.bu21013_ts, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %touch_stopped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %touch_stopped, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %4) #7
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %7, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %regulator = getelementptr inbounds %struct.bu21013_ts, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bu21013_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end14_crit_edge

device_may_wakeup.exit.if.end14_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %regulator = getelementptr inbounds %struct.bu21013_ts, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.100) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = tail call fastcc i32 @bu21013_init_chip(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %do.end11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %device_may_wakeup.exit.if.end14_crit_edge
  %touch_stopped = getelementptr inbounds %struct.bu21013_ts, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %touch_stopped to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %touch_stopped, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call3, %do.end ], [ %call6, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_bu21013_ts__288_628_bu21013_driver_init6, !1, !"__initcall__kmod_bu21013_ts__288_628_bu21013_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 628, i32 1}
!2 = !{ptr @__exitcall_bu21013_driver_exit, !1, !"__exitcall_bu21013_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 630, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 631, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 632, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 620, i32 11}
!12 = !{ptr @bu21013_driver, !13, !"bu21013_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 618, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 418, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bu21013_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bu21013_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 423, i32 3}
!24 = !{ptr @bu21013_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bu21013_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 433, i32 55}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 434, i32 55}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 438, i32 3}
!32 = !{ptr @bu21013_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bu21013_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 448, i32 41}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 449, i32 41}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 475, i32 3}
!40 = !{ptr @bu21013_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bu21013_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 479, i32 51}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 481, i32 3}
!46 = !{ptr @bu21013_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @bu21013_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 487, i32 3}
!50 = !{ptr @bu21013_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @bu21013_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 493, i32 3}
!54 = !{ptr @bu21013_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bu21013_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 498, i32 46}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 502, i32 4}
!60 = !{ptr @bu21013_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bu21013_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 505, i32 40}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 510, i32 3}
!66 = !{ptr @bu21013_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @bu21013_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 517, i32 7}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 521, i32 4}
!72 = !{ptr @bu21013_probe._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bu21013_probe._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 526, i32 42}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 531, i32 3}
!78 = !{ptr @bu21013_probe._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @bu21013_probe._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 539, i32 3}
!82 = !{ptr @bu21013_probe._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @bu21013_probe._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 546, i32 3}
!86 = !{ptr @bu21013_probe._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bu21013_probe._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 269, i32 3}
!90 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bu21013_init_chip._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @bu21013_init_chip._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 277, i32 3}
!95 = !{ptr @bu21013_init_chip._entry.53, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @bu21013_init_chip._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 284, i32 3}
!99 = !{ptr @bu21013_init_chip._entry.56, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @bu21013_init_chip._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 291, i32 3}
!103 = !{ptr @bu21013_init_chip._entry.59, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @bu21013_init_chip._entry_ptr.61, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.63, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 299, i32 3}
!107 = !{ptr @bu21013_init_chip._entry.62, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @bu21013_init_chip._entry_ptr.64, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 310, i32 3}
!111 = !{ptr @bu21013_init_chip._entry.65, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @bu21013_init_chip._entry_ptr.67, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 318, i32 3}
!115 = !{ptr @bu21013_init_chip._entry.68, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @bu21013_init_chip._entry_ptr.70, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 326, i32 3}
!119 = !{ptr @bu21013_init_chip._entry.71, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bu21013_init_chip._entry_ptr.73, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 333, i32 3}
!123 = !{ptr @bu21013_init_chip._entry.74, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bu21013_init_chip._entry_ptr.76, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.78, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 341, i32 3}
!127 = !{ptr @bu21013_init_chip._entry.77, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bu21013_init_chip._entry_ptr.79, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 348, i32 3}
!131 = !{ptr @bu21013_init_chip._entry.80, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @bu21013_init_chip._entry_ptr.82, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.84, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 355, i32 3}
!135 = !{ptr @bu21013_init_chip._entry.83, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @bu21013_init_chip._entry_ptr.85, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.87, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 362, i32 3}
!139 = !{ptr @bu21013_init_chip._entry.86, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bu21013_init_chip._entry_ptr.88, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.90, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 369, i32 3}
!143 = !{ptr @bu21013_init_chip._entry.89, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bu21013_init_chip._entry_ptr.91, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.93, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 379, i32 3}
!147 = !{ptr @bu21013_init_chip._entry.92, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @bu21013_init_chip._entry_ptr.94, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.96, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 386, i32 3}
!151 = !{ptr @bu21013_init_chip._entry.95, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @bu21013_init_chip._entry_ptr.97, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.98, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 245, i32 4}
!155 = !{ptr @.str.99, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @bu21013_gpio_irq._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @bu21013_gpio_irq._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @bu21013_dev_pm_ops, !159, !"bu21013_dev_pm_ops", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 610, i32 8}
!160 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 590, i32 4}
!162 = !{ptr @.str.101, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @bu21013_resume._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @bu21013_resume._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.103, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 597, i32 4}
!167 = !{ptr @bu21013_resume._entry.102, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @bu21013_resume._entry_ptr.104, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @bu21013_id, !170, !"bu21013_id", i1 false, i1 false}
!170 = !{!"../drivers/input/touchscreen/bu21013_ts.c", i32 612, i32 35}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{!"auto-init"}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2155708472}
!184 = !{i64 2155713405}
