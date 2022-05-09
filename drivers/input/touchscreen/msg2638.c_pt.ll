; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/msg2638.c_pt.bc'
source_filename = "../drivers/input/touchscreen/msg2638.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msg2638_ts_data = type { ptr, ptr, %struct.touchscreen_properties, [2 x %struct.regulator_bulk_data], ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.touch_event = type { i8, [5 x %struct.packet], i8, i8 }
%struct.packet = type { i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_msg2638__288_333_msg2638_ts_driver_init6 = internal global ptr @msg2638_ts_driver_init, section ".initcall6.init", align 4
@msg2638_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @msg2638_ts_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msg2638_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msg2638_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_msg2638_ts_driver_exit = internal global ptr @msg2638_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"msg2638.author=Vincent Knecht <vincent.knecht@mailoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"msg2638.description=MStar MSG2638 touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"msg2638.file=drivers/input/touchscreen/msg2638\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"msg2638.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MStar-TS\00", [23 x i8] zeroinitializer }, align 32
@msg2638_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,msg2638\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@msg2638_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msg2638_suspend, ptr @msg2638_resume, ptr @msg2638_suspend, ptr @msg2638_resume, ptr @msg2638_suspend, ptr @msg2638_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to assert adapter's support for plain I2C.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msg2638_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/msg2638.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry_ptr = internal global ptr @msg2638_ts_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry_ptr.10 = internal global ptr @msg2638_ts_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request reset GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry_ptr.14 = internal global ptr @msg2638_ts_probe._entry.12, section ".printk_index", align 4
@msg2638_ts_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize input device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry_ptr.17 = internal global ptr @msg2638_ts_probe._entry.15, section ".printk_index", align 4
@msg2638_ts_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@msg2638_ts_probe._entry_ptr.20 = internal global ptr @msg2638_ts_probe._entry.18, section ".printk_index", align 4
@msg2638_init_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msg2638_init_input_dev\00", [41 x i8] zeroinitializer }, align 32
@msg2638_init_input_dev._entry_ptr = internal global ptr @msg2638_init_input_dev._entry, section ".printk_index", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MStar TouchScreen\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"input/ts\00", [23 x i8] zeroinitializer }, align 32
@msg2638_init_input_dev._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"touchscreen-size-x and/or touchscreen-size-y not set in properties\0A\00", [60 x i8] zeroinitializer }, align 32
@msg2638_init_input_dev._entry_ptr.27 = internal global ptr @msg2638_init_input_dev._entry.25, section ".printk_index", align 4
@msg2638_init_input_dev._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@msg2638_init_input_dev._entry_ptr.30 = internal global ptr @msg2638_init_input_dev._entry.28, section ".printk_index", align 4
@msg2638_init_input_dev._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@msg2638_init_input_dev._entry_ptr.33 = internal global ptr @msg2638_init_input_dev._entry.31, section ".printk_index", align 4
@msg2638_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msg2638_start\00", [18 x i8] zeroinitializer }, align 32
@msg2638_start._entry_ptr = internal global ptr @msg2638_start._entry, section ".printk_index", align 4
@msg2638_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable regulators: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msg2638_stop\00", [19 x i8] zeroinitializer }, align 32
@msg2638_stop._entry_ptr = internal global ptr @msg2638_stop._entry, section ".printk_index", align 4
@msg2638_ts_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed I2C transfer in irq handler: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msg2638_ts_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@msg2638_ts_irq_handler._entry_ptr = internal global ptr @msg2638_ts_irq_handler._entry, section ".printk_index", align 4
@msg2638_ts_irq_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed checksum!\0A\00", [46 x i8] zeroinitializer }, align 32
@msg2638_ts_irq_handler._entry_ptr.42 = internal global ptr @msg2638_ts_irq_handler._entry.40, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"msg2638_ts_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 325, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 328, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"msg2638_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 319, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"msg2638_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 317, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 241, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 252, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 253, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 257, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 261, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 264, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 270, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 279, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 196, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 203, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 204, i32 20 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 214, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 221, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 227, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 143, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 166, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 91, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [39 x i8] c"../drivers/input/touchscreen/msg2638.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 102, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_msg2638_ts_driver_exit, ptr @__initcall__kmod_msg2638__288_333_msg2638_ts_driver_init6, ptr @msg2638_init_input_dev._entry, ptr @msg2638_init_input_dev._entry.25, ptr @msg2638_init_input_dev._entry.28, ptr @msg2638_init_input_dev._entry.31, ptr @msg2638_init_input_dev._entry_ptr, ptr @msg2638_init_input_dev._entry_ptr.27, ptr @msg2638_init_input_dev._entry_ptr.30, ptr @msg2638_init_input_dev._entry_ptr.33, ptr @msg2638_start._entry, ptr @msg2638_start._entry_ptr, ptr @msg2638_stop._entry, ptr @msg2638_stop._entry_ptr, ptr @msg2638_ts_driver_exit, ptr @msg2638_ts_irq_handler._entry, ptr @msg2638_ts_irq_handler._entry.40, ptr @msg2638_ts_irq_handler._entry_ptr, ptr @msg2638_ts_irq_handler._entry_ptr.42, ptr @msg2638_ts_probe._entry, ptr @msg2638_ts_probe._entry.12, ptr @msg2638_ts_probe._entry.15, ptr @msg2638_ts_probe._entry.18, ptr @msg2638_ts_probe._entry.8, ptr @msg2638_ts_probe._entry_ptr, ptr @msg2638_ts_probe._entry_ptr.10, ptr @msg2638_ts_probe._entry_ptr.14, ptr @msg2638_ts_probe._entry_ptr.17, ptr @msg2638_ts_probe._entry_ptr.20, ptr @msg2638_ts_driver, ptr @.str, ptr @msg2638_of_match, ptr @msg2638_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_init_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_init_input_dev._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_init_input_dev._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_init_input_dev._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg2638_ts_irq_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @msg2638_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msg2638_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @msg2638_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_ts_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.6, ptr %supplies, align 4
  %arrayidx8 = getelementptr %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %arrayidx8, align 4
  %call11 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call11) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %call18 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 3) #5
  %reset_gpiod = getelementptr inbounds %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %reset_gpiod, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %11) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %call.i78 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1.i) #5
  %tobool.not.i = icmp eq ptr %call.i78, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.21) #8
  br label %do.end33

if.end.i:                                         ; preds = %if.end27
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 40, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %input_dev2.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %input_dev2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i78, ptr %input_dev2.i, align 4
  %16 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.23, ptr %call.i78, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 1
  %17 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.24, ptr %phys.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 3
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 24, ptr %id.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 31
  %19 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @msg2638_input_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i78, i32 0, i32 32
  %20 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @msg2638_input_close, ptr %close.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call.i78, i32 noundef 3, i32 noundef 53) #5
  tail call void @input_set_capability(ptr noundef nonnull %call.i78, i32 noundef 3, i32 noundef 54) #5
  %prop.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 2
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call.i78, i1 noundef zeroext true, ptr noundef %prop.i) #5
  %21 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i = icmp eq i32 %22, 0
  br i1 %tobool4.not.i, label %if.end.i.do.end10.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_y.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %call.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.do.end10.i_crit_edge, label %if.end11.i

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end10.i:                                       ; preds = %lor.lhs.false.i.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.26) #8
  br label %do.end33

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call.i78, i32 noundef 5, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end18.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.29, i32 noundef %call12.i) #8
  br label %do.end33

if.end18.i:                                       ; preds = %if.end11.i
  %call19.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end34, label %do.end24.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.32, i32 noundef %call19.i) #8
  br label %do.end33

do.end33:                                         ; preds = %do.end24.i, %do.end17.i, %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end.i ], [ -22, %do.end10.i ], [ %call19.i, %do.end24.i ], [ %call12.i, %do.end17.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end18.i
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call36 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %26, ptr noundef null, ptr noundef nonnull @msg2638_ts_irq_handler, i32 noundef 532480, ptr noundef %name, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %do.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end34.cleanup_crit_edge, %do.end33, %if.then21, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ %11, %if.then21 ], [ %retval.0.i.ph, %do.end33 ], [ %call36, %do.end41 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_ts_irq_handler(i32 noundef %irq, ptr noundef %msg2638_handler) #2 align 64 {
entry:
  %touch_event = alloca %struct.touch_event, align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg2638_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg2638_handler, align 4
  %input_dev = getelementptr inbounds %struct.msg2638_ts_data, ptr %msg2638_handler, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %touch_event) #5
  %4 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1
  %5 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 1, i32 1
  %10 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 1, i32 2
  %11 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 1, i32 3
  %12 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 2, i32 1
  %14 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 2, i32 2
  %15 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 2, i32 3
  %16 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 3
  %17 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 3, i32 1
  %18 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 3, i32 2
  %19 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 3, i32 3
  %20 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 4
  %21 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 4, i32 1
  %22 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 4, i32 2
  %23 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 4, i32 3
  %24 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 2
  %25 = getelementptr inbounds %struct.touch_event, ptr %touch_event, i32 0, i32 3
  %26 = call ptr @memset(ptr %touch_event, i32 255, i32 23)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %27 = getelementptr inbounds i8, ptr %msg, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr2, align 2
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %33 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 23, ptr %len3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %touch_event, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp4, i32 %call, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %spec.select) #8
  br label %out

if.end:                                           ; preds = %entry
  %37 = ptrtoint ptr %touch_event to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %touch_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %38)
  %cmp5.not = icmp eq i8 %38, 90
  br i1 %cmp5.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %43 = add i8 %40, %42
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %6, align 1
  %46 = add i8 %43, %45
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %49 = add i8 %46, %48
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %8, align 1
  %52 = add i8 %49, %51
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %9, align 1
  %55 = add i8 %52, %54
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %10, align 1
  %58 = add i8 %55, %57
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %11, align 1
  %61 = add i8 %58, %60
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %12, align 1
  %64 = add i8 %61, %63
  %65 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %13, align 1
  %67 = add i8 %64, %66
  %68 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %14, align 1
  %70 = add i8 %67, %69
  %71 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %15, align 1
  %73 = add i8 %70, %72
  %74 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %16, align 1
  %76 = add i8 %73, %75
  %77 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %17, align 1
  %79 = add i8 %76, %78
  %80 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %18, align 1
  %82 = add i8 %79, %81
  %83 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %19, align 1
  %85 = add i8 %82, %84
  %86 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %20, align 1
  %88 = add i8 %85, %87
  %89 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %21, align 1
  %91 = add i8 %88, %90
  %92 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %22, align 1
  %94 = add i8 %91, %93
  %95 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %23, align 1
  %97 = add i8 %94, %96
  %98 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %24, align 1
  %100 = add i8 %97, %99
  %add.21.i.neg = sub i8 -90, %100
  %101 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %add.21.i.neg)
  %cmp12.not = icmp eq i8 %102, %add.21.i.neg
  br i1 %cmp12.not, label %for.cond.preheader, label %do.end17

for.cond.preheader:                               ; preds = %if.end8
  %prop = getelementptr inbounds %struct.msg2638_ts_data, ptr %msg2638_handler, i32 0, i32 2
  br label %for.body

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.41) #8
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.072 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 %i.072
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %cmp23 = icmp eq i8 %104, -1
  br i1 %cmp23, label %land.lhs.true, label %for.body.if.end33_crit_edge

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %for.body
  %x_low = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 %i.072, i32 1
  %105 = ptrtoint ptr %x_low to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %x_low, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %106)
  %cmp26 = icmp eq i8 %106, -1
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true28:                                  ; preds = %land.lhs.true
  %y_low = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 %i.072, i32 2
  %107 = ptrtoint ptr %y_low to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %y_low, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp30 = icmp eq i8 %108, -1
  br i1 %cmp30, label %land.lhs.true28.for.inc_crit_edge, label %land.lhs.true28.if.end33_crit_edge

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end33:                                         ; preds = %land.lhs.true28.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %conv35 = zext i8 %104 to i32
  %and = shl nuw nsw i32 %conv35, 4
  %shl = and i32 %and, 3840
  %x_low36 = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 %i.072, i32 1
  %109 = ptrtoint ptr %x_low36 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %x_low36, align 1
  %conv37 = zext i8 %110 to i32
  %or = or i32 %shl, %conv37
  %and41 = shl nuw nsw i32 %conv35, 8
  %shl42 = and i32 %and41, 3840
  %y_low43 = getelementptr %struct.touch_event, ptr %touch_event, i32 0, i32 1, i32 %i.072, i32 2
  %111 = ptrtoint ptr %y_low43 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %y_low43, align 1
  %conv44 = zext i8 %112 to i32
  %or45 = or i32 %shl42, %conv44
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %i.072) #5
  %call47 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #5
  call void @touchscreen_report_pos(ptr noundef %3, ptr noundef %prop, i32 noundef %or, i32 noundef %or45, i1 noundef zeroext true) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %land.lhs.true28.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %input_dev, align 4
  call void @input_mt_sync_frame(ptr noundef %114) #5
  %115 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %116, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %for.end, %do.end17, %if.end.out_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %touch_event) #5
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @msg2638_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg2638_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %supplies.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.msg2638_stop.exit_crit_edge, label %do.end.i

entry.msg2638_stop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %msg2638_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %call.i) #8
  br label %msg2638_stop.exit

msg2638_stop.exit:                                ; preds = %do.end.i, %entry.msg2638_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msg2638_start(ptr noundef %msg2638) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies = getelementptr inbounds %struct.msg2638_ts_data, ptr %msg2638, i32 0, i32 3
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %msg2638 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg2638, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 15) #5
  %reset_gpiod.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %msg2638, i32 0, i32 4
  %2 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpiod.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %4 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpiod.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 50) #5
  %6 = ptrtoint ptr %msg2638 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg2638, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.msg2638_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #5
  %supplies.i = getelementptr inbounds %struct.msg2638_ts_data, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msg2638_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev = getelementptr inbounds %struct.msg2638_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call fastcc i32 @msg2638_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_msg2638__288_333_msg2638_ts_driver_init6, !1, !"__initcall__kmod_msg2638__288_333_msg2638_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/msg2638.c", i32 333, i32 1}
!2 = !{ptr @__exitcall_msg2638_ts_driver_exit, !1, !"__exitcall_msg2638_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/msg2638.c", i32 335, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/msg2638.c", i32 336, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/msg2638.c", i32 337, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/msg2638.c", i32 328, i32 11}
!12 = !{ptr @msg2638_ts_driver, !13, !"msg2638_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/msg2638.c", i32 325, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/msg2638.c", i32 241, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msg2638_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @msg2638_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/msg2638.c", i32 252, i32 32}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/msg2638.c", i32 253, i32 32}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/msg2638.c", i32 257, i32 3}
!28 = !{ptr @msg2638_ts_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @msg2638_ts_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/msg2638.c", i32 261, i32 45}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/msg2638.c", i32 264, i32 3}
!34 = !{ptr @msg2638_ts_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @msg2638_ts_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/msg2638.c", i32 270, i32 3}
!38 = !{ptr @msg2638_ts_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @msg2638_ts_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/msg2638.c", i32 279, i32 3}
!42 = !{ptr @msg2638_ts_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @msg2638_ts_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/msg2638.c", i32 196, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @msg2638_init_input_dev._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @msg2638_init_input_dev._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/msg2638.c", i32 203, i32 20}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/msg2638.c", i32 204, i32 20}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/msg2638.c", i32 214, i32 3}
!55 = !{ptr @msg2638_init_input_dev._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @msg2638_init_input_dev._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/msg2638.c", i32 221, i32 3}
!59 = !{ptr @msg2638_init_input_dev._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @msg2638_init_input_dev._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/msg2638.c", i32 227, i32 3}
!63 = !{ptr @msg2638_init_input_dev._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @msg2638_init_input_dev._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/msg2638.c", i32 143, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @msg2638_start._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @msg2638_start._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/msg2638.c", i32 166, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @msg2638_stop._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @msg2638_stop._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/msg2638.c", i32 91, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @msg2638_ts_irq_handler._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @msg2638_ts_irq_handler._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/msg2638.c", i32 102, i32 3}
!82 = !{ptr @msg2638_ts_irq_handler._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @msg2638_ts_irq_handler._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @msg2638_of_match, !85, !"msg2638_of_match", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/msg2638.c", i32 319, i32 34}
!86 = !{ptr @msg2638_pm_ops, !87, !"msg2638_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/msg2638.c", i32 317, i32 8}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
