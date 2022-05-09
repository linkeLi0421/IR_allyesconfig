; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/sx8654.c_pt.bc'
source_filename = "../drivers/input/touchscreen/sx8654.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sx865x_data = type { i8, i8, i8, i8, ptr }
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
%struct.sx8654 = type { ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, %struct.touchscreen_properties, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_sx8654__300_475_sx8654_driver_init6 = internal global ptr @sx8654_driver_init, section ".initcall6.init", align 4
@sx8654_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sx8654_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sx8654_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sx8654_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sx8654_driver_exit = internal global ptr @sx8654_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [70 x i8] c"sx8654.author=S\C3\A9bastien Szymanski <sebastien.szymanski@armadeus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [57 x i8] c"sx8654.description=Semtech SX8654 I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [45 x i8] c"sx8654.file=drivers/input/touchscreen/sx8654\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"sx8654.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sx8654\00", [25 x i8] zeroinitializer }, align 32
@sx8654_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx8650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx8650_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx8654\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx8654_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx8655\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx8654_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx8656\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx8654_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sx8654_id_table = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"semtech_sx8650\00\00\00\00\00\00", i32 ptrtoint (ptr @sx8650_data to i32) }, %struct.i2c_device_id { [20 x i8] c"semtech_sx8654\00\00\00\00\00\00", i32 ptrtoint (ptr @sx8654_data to i32) }, %struct.i2c_device_id { [20 x i8] c"semtech_sx8655\00\00\00\00\00\00", i32 ptrtoint (ptr @sx8654_data to i32) }, %struct.i2c_device_id { [20 x i8] c"semtech_sx8656\00\00\00\00\00\00", i32 ptrtoint (ptr @sx8654_data to i32) }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sx8654_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to get reset-gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx8654_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/sx8654.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr = internal global ptr @sx8654_probe._entry, section ".printk_index", align 4
@sx8654_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"got GPIO reset pin\0A\00", [44 x i8] zeroinitializer }, align 32
@sx8654_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid or missing device data\0A\00", [32 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.10 = internal global ptr @sx8654_probe._entry.8, section ".printk_index", align 4
@sx8654_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"use timer for penrelease\0A\00", [38 x i8] zeroinitializer }, align 32
@sx8654_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&sx8654->timer)\00", [47 x i8] zeroinitializer }, align 32
@sx8654_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sx8654->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SX8654 I2C Touchscreen\00", [41 x i8] zeroinitializer }, align 32
@sx8654_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset failed\00", [19 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.18 = internal global ptr @sx8654_probe._entry.16, section ".printk_index", align 4
@sx8654_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 380, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"writing to I2C_REG_CHANMASK failed\00", [61 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.21 = internal global ptr @sx8654_probe._entry.19, section ".printk_index", align 4
@sx8654_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"writing I2C_REG_IRQMASK failed\00", [33 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.24 = internal global ptr @sx8654_probe._entry.22, section ".printk_index", align 4
@sx8654_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"writing to I2C_REG_TOUCH1 failed\00", [63 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.27 = internal global ptr @sx8654_probe._entry.25, section ".printk_index", align 4
@sx8654_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 408, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable IRQ %d, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sx8654_probe._entry_ptr.30 = internal global ptr @sx8654_probe._entry.28, section ".printk_index", align 4
@sx865x_penrelease_timer_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sx865x_penrelease_timer_handler\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"penrelease by timer\0A\00", [43 x i8] zeroinitializer }, align 32
@sx8654_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"writing to I2C_REG_TOUCH0 failed\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sx8654_open\00", [20 x i8] zeroinitializer }, align 32
@sx8654_open._entry_ptr = internal global ptr @sx8654_open._entry, section ".printk_index", align 4
@sx8654_open._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writing command CMD_PENTRG failed\00", [62 x i8] zeroinitializer }, align 32
@sx8654_open._entry_ptr.37 = internal global ptr @sx8654_open._entry.35, section ".printk_index", align 4
@sx8654_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writing command CMD_MANUAL failed\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx8654_close\00", [19 x i8] zeroinitializer }, align 32
@sx8654_close._entry_ptr = internal global ptr @sx8654_close._entry, section ".printk_index", align 4
@sx8654_close._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.39, ptr @.str.4, i32 304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sx8654_close._entry_ptr.41 = internal global ptr @sx8654_close._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sx8654_reset.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx8654_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NRST unavailable, try softreset\0A\00", [63 x i8] zeroinitializer }, align 32
@sx8650_data = internal constant { %struct.sx865x_data, [24 x i8] } { %struct.sx865x_data { i8 -80, i8 -64, i8 0, i8 0, ptr @sx8650_irq }, [24 x i8] zeroinitializer }, align 32
@sx8654_data = internal constant { %struct.sx865x_data, [24 x i8] } { %struct.sx865x_data { i8 -64, i8 -64, i8 1, i8 1, ptr @sx8654_irq }, [24 x i8] zeroinitializer }, align 32
@sx8650_irq.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sx8650_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s ignore stat [0x%02x]\00", [40 x i8] zeroinitializer }, align 32
@sx8650_irq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ignore short recv (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@sx8650_irq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.47, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid qualified data @ %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sx8650_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.4, i32 167, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hibit @ %d [0x%04x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sx8650_irq._entry_ptr = internal global ptr @sx8650_irq._entry, section ".printk_index", align 4
@sx8650_irq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.4, i32 178, ptr @.str.49, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown channel %d [0x%04x]\0A\00", [35 x i8] zeroinitializer }, align 32
@sx8650_irq._entry_ptr.52 = internal global ptr @sx8650_irq._entry.50, section ".printk_index", align 4
@sx8650_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.53, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"point(%4d,%4d)\0A\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sx8654_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sx8654_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irqsrc = 0x%x\00", [18 x i8] zeroinitializer }, align 32
@sx8654_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.56, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pen release interrupt\00", [42 x i8] zeroinitializer }, align 32
@sx8654_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.57, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pen touch interrupt\00", [44 x i8] zeroinitializer }, align 32
@sx8654_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.53, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"sx8654_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 467, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 469, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"sx8654_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 439, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"sx8654_id_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 458, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 324, i32 61 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 329, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 333, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 339, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 344, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 345, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 346, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 353, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 373, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 380, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 389, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 397, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 406, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 125, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 269, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 275, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 298, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 304, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 249, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"sx8650_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 422, i32 33 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"sx8654_data\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 430, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 146, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 152, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 164, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 167, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 177, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 184, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 202, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 208, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [38 x i8] c"../drivers/input/touchscreen/sx8654.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 215, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_sx8654_driver_exit, ptr @__initcall__kmod_sx8654__300_475_sx8654_driver_init6, ptr @sx8650_irq._entry, ptr @sx8650_irq._entry.50, ptr @sx8650_irq._entry_ptr, ptr @sx8650_irq._entry_ptr.52, ptr @sx8654_close._entry, ptr @sx8654_close._entry.40, ptr @sx8654_close._entry_ptr, ptr @sx8654_close._entry_ptr.41, ptr @sx8654_driver_exit, ptr @sx8654_open._entry, ptr @sx8654_open._entry.35, ptr @sx8654_open._entry_ptr, ptr @sx8654_open._entry_ptr.37, ptr @sx8654_probe._entry, ptr @sx8654_probe._entry.16, ptr @sx8654_probe._entry.19, ptr @sx8654_probe._entry.22, ptr @sx8654_probe._entry.25, ptr @sx8654_probe._entry.28, ptr @sx8654_probe._entry.8, ptr @sx8654_probe._entry_ptr, ptr @sx8654_probe._entry_ptr.10, ptr @sx8654_probe._entry_ptr.18, ptr @sx8654_probe._entry_ptr.21, ptr @sx8654_probe._entry_ptr.24, ptr @sx8654_probe._entry_ptr.27, ptr @sx8654_probe._entry_ptr.30, ptr @sx8654_driver, ptr @.str, ptr @sx8654_of_match, ptr @sx8654_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @sx8654_probe.__key, ptr @.str.12, ptr @sx8654_probe.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @sx8650_data, ptr @sx8654_data, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_id_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_open._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_close._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8650_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8654_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8650_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx8650_irq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sx8654_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sx8654_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sx8654_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sx8654_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx8654_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
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
  %6 = and i32 %call.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %gpio_reset = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %gpio_reset, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %do.body16

if.then9:                                         ; preds = %if.end4
  %cmp.not = icmp eq ptr %call6, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %8) #8
  br label %cleanup

do.body16:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_probe, %if.then21)) #5
          to label %do.end25 [label %if.then21], !srcloc !138

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body16
  %call27 = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %data, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end32, label %do.end25.if.end40_crit_edge

do.end25.if.end40_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.end32:                                         ; preds = %do.end25
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool34.not = icmp eq i32 %11, 0
  br i1 %tobool34.not, label %do.end38, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end32.if.end40_crit_edge, %do.end25.if.end40_crit_edge
  %14 = phi ptr [ %12, %if.end32.if.end40_crit_edge ], [ %call27, %do.end25.if.end40_crit_edge ]
  %has_irq_penrelease = getelementptr inbounds %struct.sx865x_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %has_irq_penrelease to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_irq_penrelease, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool42.not = icmp eq i8 %16, 0
  br i1 %tobool42.not, label %do.body44, label %if.end40.if.end68_crit_edge

if.end40.if.end68_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

do.body44:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_probe, %if.then56)) #5
          to label %do.body61 [label %if.then56], !srcloc !138

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body44
  %timer = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sx865x_penrelease_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @sx8654_probe.__key) #5
  %lock = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @sx8654_probe.__key.13, i16 noundef signext 3) #5
  br label %if.end68

if.end68:                                         ; preds = %do.body61, %if.end40.if.end68_crit_edge
  %call70 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %if.end73

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %17 = ptrtoint ptr %call70 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %call70, align 8
  %id74 = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 3
  %18 = ptrtoint ptr %id74 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 24, ptr %id74, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 31
  %20 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sx8654_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 32
  %21 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sx8654_close, ptr %close, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 4
  %22 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %propbit, align 4
  %or.i = or i32 %23, 2
  store i32 %or.i, ptr %propbit, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call70, i32 noundef 1, i32 noundef 330) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call70, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call70, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  %props = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 5
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call70, i1 noundef zeroext false, ptr noundef %props) #5
  %client77 = getelementptr inbounds %struct.sx8654, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %client77 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %client, ptr %client77, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call70, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call70, i32 0, i32 40, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpio_reset, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %28, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #5
  %30 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef 0) #5
  br label %if.end87

do.body.i:                                        ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_reset.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_probe, %if.then6.i)) #5
          to label %do.end.i [label %if.then6.i], !srcloc !138

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %client77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client77, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_reset.__UNIQUE_ID_ddebug297, ptr noundef %dev.i, ptr noundef nonnull @.str.43) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %34 = ptrtoint ptr %client77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client77, align 4
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 63, i8 noundef zeroext -34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end.i.if.end87_crit_edge, label %do.end85

do.end.i.if.end87_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

do.end85:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end87:                                         ; preds = %do.end.i.if.end87_crit_edge, %if.then.i
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %chan_mask = getelementptr inbounds %struct.sx865x_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %chan_mask to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chan_mask, align 1
  %call89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end96:                                         ; preds = %if.end87
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %has_reg_irqmask = getelementptr inbounds %struct.sx865x_data, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %has_reg_irqmask to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %has_reg_irqmask, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool98.not = icmp eq i8 %43, 0
  br i1 %tobool98.not, label %if.end96.if.end108_crit_edge, label %if.then99

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then99:                                        ; preds = %if.end96
  %call100 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 34, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then99.if.end108_crit_edge, label %do.end105

if.then99.if.end108_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end105:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end108:                                        ; preds = %if.then99.if.end108_crit_edge, %if.end96.if.end108_crit_edge
  %call109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end116, label %do.end114

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end116:                                        ; preds = %if.end108
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %irqh = getelementptr inbounds %struct.sx865x_data, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %irqh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %irqh, align 4
  %name119 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call121 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %45, ptr noundef null, ptr noundef %49, i32 noundef 8192, ptr noundef %name119, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %51, i32 noundef %call121) #8
  br label %cleanup

if.end129:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq(i32 noundef %51) #5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call132 = tail call i32 @input_register_device(ptr noundef %53) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %do.end126, %do.end114, %do.end105, %do.end94, %do.end85, %if.end68.cleanup_crit_edge, %do.end38, %do.end, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i, %do.end85 ], [ %call89, %do.end94 ], [ %call100, %do.end105 ], [ %call109, %do.end114 ], [ %call121, %do.end126 ], [ -22, %do.end38 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %8, %do.end ], [ -517, %if.then9.cleanup_crit_edge ], [ -12, %if.end68.cleanup_crit_edge ], [ %call132, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx865x_penrelease_timer_handler(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -56
  %lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx865x_penrelease_timer_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx865x_penrelease_timer_handler, %if.then)) #5
          to label %do.end13 [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client = getelementptr i8, ptr %t, i32 -52
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx865x_penrelease_timer_handler.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.32) #5
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx8654_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.sx8654, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx8654_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.sx8654, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %data = getelementptr inbounds %struct.sx8654, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %has_irq_penrelease = getelementptr inbounds %struct.sx865x_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %has_irq_penrelease to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_irq_penrelease, align 2, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %timer = getelementptr inbounds %struct.sx8654, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.38, %if.end.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end8.cleanup.sink.split_crit_edge ]
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull %.str.33.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx8650_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  %data = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %data) #5
  %2 = call ptr @memset(ptr %data, i32 255, i32 10)
  %data2 = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 6
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data2, align 4
  %chan_mask = getelementptr inbounds %struct.sx865x_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %chan_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chan_mask, align 1
  %conv372 = zext i8 %6 to i32
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %conv372) #5
  %conv374 = and i32 %call.i, 255
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %call377 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 69) #5
  %conv379 = and i32 %call377, 255
  %and380 = and i32 %call377, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380)
  %tobool381.not = icmp eq i32 %and380, 0
  br i1 %tobool381.not, label %do.body, label %if.end391

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8650_irq.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8650_irq, %if.then389)) #5
          to label %cleanup [label %if.then389], !srcloc !138

if.then389:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8650_irq.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %conv379) #5
  br label %cleanup

if.end391:                                        ; preds = %entry
  %conv375 = shl i32 %call.i, 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %conv393 = and i32 %conv375, 254
  %call.i615 = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data, i32 noundef %conv393, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i615, i32 %conv393)
  %cmp.not = icmp eq i32 %call.i615, %conv393
  br i1 %cmp.not, label %do.body416, label %do.body398

do.body398:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8650_irq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8650_irq, %if.then410)) #5
          to label %cleanup [label %if.then410], !srcloc !138

if.then410:                                       ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8650_irq.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %call.i615) #5
  br label %cleanup

do.body416:                                       ; preds = %if.end391
  %lock = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 3
  %call421 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv374)
  %cmp427620.not = icmp eq i32 %conv374, 0
  br i1 %cmp427620.not, label %do.body416.for.end_crit_edge, label %do.body416.for.body_crit_edge

do.body416.for.body_crit_edge:                    ; preds = %do.body416
  br label %for.body

do.body416.for.end_crit_edge:                     ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body416.for.body_crit_edge
  %i.0623 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body416.for.body_crit_edge ]
  %x.0622 = phi i16 [ %x.1, %for.inc.for.body_crit_edge ], [ 0, %do.body416.for.body_crit_edge ]
  %y.0621 = phi i16 [ %y.1, %for.inc.for.body_crit_edge ], [ 0, %do.body416.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i16], ptr %data, i32 0, i32 %i.0623
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %conv429 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp430 = icmp eq i16 %12, -1
  br i1 %cmp430, label %do.body439, label %if.else, !prof !140

do.body439:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8650_irq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8650_irq, %if.then451)) #5
          to label %for.inc [label %if.then451], !srcloc !138

if.then451:                                       ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8650_irq.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %i.0623) #5
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and456 = and i32 %conv429, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and456)
  %tobool457.not = icmp eq i32 %and456, 0
  br i1 %tobool457.not, label %if.end470, label %do.end467, !prof !141

do.end467:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %i.0623, i32 noundef %conv429) #8
  br label %for.inc

if.end470:                                        ; preds = %if.else
  %13 = lshr i16 %12, 12
  %conv474 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %12)
  %cmp475 = icmp ult i16 %12, 4096
  br i1 %cmp475, label %if.end470.for.inc_crit_edge, label %if.else481

if.end470.for.inc_crit_edge:                      ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else481:                                       ; preds = %if.end470
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp483 = icmp eq i16 %13, 1
  br i1 %cmp483, label %if.then485, label %do.end492

if.then485:                                       ; preds = %if.else481
  call void @__sanitizer_cov_trace_pc() #7
  %and487 = and i16 %12, 4095
  br label %for.inc

do.end492:                                        ; preds = %if.else481
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %conv474, i32 noundef %conv429) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end492, %if.then485, %if.end470.for.inc_crit_edge, %do.end467, %if.then451, %do.body439
  %y.1 = phi i16 [ %y.0621, %if.then451 ], [ %y.0621, %do.end467 ], [ %and487, %if.then485 ], [ %y.0621, %do.end492 ], [ %y.0621, %do.body439 ], [ %y.0621, %if.end470.for.inc_crit_edge ]
  %x.1 = phi i16 [ %x.0622, %if.then451 ], [ %x.0622, %do.end467 ], [ %x.0622, %if.then485 ], [ %x.0622, %do.end492 ], [ %x.0622, %do.body439 ], [ %12, %if.end470.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0623, 1
  %exitcond.not = icmp eq i32 %inc, %conv374
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body416.for.end_crit_edge
  %y.0.lcssa = phi i16 [ 0, %do.body416.for.end_crit_edge ], [ %y.1, %for.inc.for.end_crit_edge ]
  %x.0.lcssa = phi i16 [ 0, %do.body416.for.end_crit_edge ], [ %x.1, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 4
  %props = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 5
  %conv497 = zext i16 %x.0.lcssa to i32
  %conv498 = zext i16 %y.0.lcssa to i32
  call void @touchscreen_report_pos(ptr noundef %15, ptr noundef %props, i32 noundef %conv497, i32 noundef %conv498, i1 noundef zeroext false) #5
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 4
  call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 4
  call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8650_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8650_irq, %if.then513)) #5
          to label %do.end518 [label %if.then513], !srcloc !138

if.then513:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8650_irq.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.53, i32 noundef %conv497, i32 noundef %conv498) #5
  br label %do.end518

do.end518:                                        ; preds = %if.then513, %for.end
  %timer = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add520 = add i32 %20, 1
  %call521 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add520) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call421) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end518, %if.then410, %do.body398, %if.then389, %do.body
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %data) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx8654_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %client = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 99) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_irq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_irq.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end7

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %do.end
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.if.end29_crit_edge, label %do.body10

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body10:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_irq, %if.then22)) #5
          to label %do.end27 [label %if.then22], !srcloc !138

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_irq.__UNIQUE_ID_ddebug294, ptr noundef %dev24, ptr noundef nonnull @.str.56) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end7.if.end29_crit_edge
  %and30 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.out_crit_edge, label %do.body33

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body33:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_irq, %if.then45)) #5
          to label %do.end50 [label %if.then45], !srcloc !138

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_irq.__UNIQUE_ID_ddebug295, ptr noundef %dev47, ptr noundef nonnull @.str.57) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %do.body33
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %data, i32 noundef 4, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp53.not = icmp eq i32 %call.i, 4
  br i1 %cmp53.not, label %if.end55, label %do.end50.out_crit_edge

do.end50.out_crit_edge:                           ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end55:                                         ; preds = %do.end50
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool57.not = icmp sgt i8 %19, -1
  br i1 %tobool57.not, label %lor.rhs, label %if.end55.out_crit_edge, !prof !141

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.rhs:                                          ; preds = %if.end55
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool61 = icmp slt i8 %21, 0
  br i1 %tobool61, label %lor.rhs.out_crit_edge, label %if.end69, !prof !140

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end69:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i8 %19, 15
  %and72 = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %and72, 8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %0, align 1
  %conv74 = zext i8 %24 to i32
  %or = or i32 %shl, %conv74
  %25 = and i8 %21, 15
  %and77 = zext i8 %25 to i32
  %shl78 = shl nuw nsw i32 %and77, 8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %conv80 = zext i8 %27 to i32
  %or81 = or i32 %shl78, %conv80
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  %props = getelementptr inbounds %struct.sx8654, ptr %handle, i32 0, i32 5
  call void @touchscreen_report_pos(ptr noundef %29, ptr noundef %props, i32 noundef %or, i32 noundef %or81, i1 noundef zeroext false) #5
  %30 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle, align 4
  call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle, align 4
  call void @input_event(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sx8654_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sx8654_irq, %if.then97)) #5
          to label %out [label %if.then97], !srcloc !138

if.then97:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 4
  %dev99 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sx8654_irq.__UNIQUE_ID_ddebug296, ptr noundef %dev99, ptr noundef nonnull @.str.53, i32 noundef %or, i32 noundef %or81) #5
  br label %out

out:                                              ; preds = %if.then97, %if.end69, %lor.rhs.out_crit_edge, %if.end55.out_crit_edge, %do.end50.out_crit_edge, %if.end29.out_crit_edge, %do.end.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !124, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_sx8654__300_475_sx8654_driver_init6, !1, !"__initcall__kmod_sx8654__300_475_sx8654_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/sx8654.c", i32 475, i32 1}
!2 = !{ptr @__exitcall_sx8654_driver_exit, !1, !"__exitcall_sx8654_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/sx8654.c", i32 477, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/sx8654.c", i32 478, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/sx8654.c", i32 479, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/sx8654.c", i32 469, i32 11}
!12 = !{ptr @sx8654_driver, !13, !"sx8654_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/sx8654.c", i32 467, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/sx8654.c", i32 324, i32 61}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/sx8654.c", i32 329, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sx8654_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sx8654_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/sx8654.c", i32 333, i32 2}
!26 = !{ptr @sx8654_probe.__UNIQUE_ID_ddebug298, !25, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/sx8654.c", i32 339, i32 3}
!29 = !{ptr @sx8654_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sx8654_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/sx8654.c", i32 344, i32 3}
!33 = !{ptr @sx8654_probe.__UNIQUE_ID_ddebug299, !32, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!34 = !{ptr @sx8654_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/sx8654.c", i32 345, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sx8654_probe.__key.13, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/sx8654.c", i32 346, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/sx8654.c", i32 353, i32 16}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/sx8654.c", i32 373, i32 3}
!44 = !{ptr @sx8654_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sx8654_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/sx8654.c", i32 380, i32 3}
!48 = !{ptr @sx8654_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sx8654_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/sx8654.c", i32 389, i32 4}
!52 = !{ptr @sx8654_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sx8654_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/sx8654.c", i32 397, i32 3}
!56 = !{ptr @sx8654_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sx8654_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/sx8654.c", i32 406, i32 3}
!60 = !{ptr @sx8654_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sx8654_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/sx8654.c", i32 125, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sx865x_penrelease_timer_handler.__UNIQUE_ID_ddebug288, !63, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/sx8654.c", i32 269, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sx8654_open._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sx8654_open._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/sx8654.c", i32 275, i32 3}
!73 = !{ptr @sx8654_open._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sx8654_open._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/sx8654.c", i32 298, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sx8654_close._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sx8654_close._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sx8654_close._entry.40, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/sx8654.c", i32 304, i32 3}
!82 = !{ptr @sx8654_close._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/sx8654.c", i32 249, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sx8654_reset.__UNIQUE_ID_ddebug297, !84, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!87 = !{ptr @sx8654_of_match, !88, !"sx8654_of_match", i1 false, i1 false}
!88 = !{!"../drivers/input/touchscreen/sx8654.c", i32 439, i32 34}
!89 = !{ptr @sx8650_data, !90, !"sx8650_data", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/sx8654.c", i32 422, i32 33}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/sx8654.c", i32 146, i32 3}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sx8650_irq.__UNIQUE_ID_ddebug289, !92, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/touchscreen/sx8654.c", i32 152, i32 3}
!97 = !{ptr @sx8650_irq.__UNIQUE_ID_ddebug290, !96, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/sx8654.c", i32 164, i32 4}
!100 = !{ptr @sx8650_irq.__UNIQUE_ID_ddebug291, !99, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/sx8654.c", i32 167, i32 4}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sx8650_irq._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sx8650_irq._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/sx8654.c", i32 177, i32 4}
!108 = !{ptr @sx8650_irq._entry.50, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sx8650_irq._entry_ptr.52, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/sx8654.c", i32 184, i32 2}
!112 = !{ptr @sx8650_irq.__UNIQUE_ID_ddebug292, !111, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!113 = !{ptr @sx8654_data, !114, !"sx8654_data", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/sx8654.c", i32 430, i32 33}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/sx8654.c", i32 202, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sx8654_irq.__UNIQUE_ID_ddebug293, !116, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/sx8654.c", i32 208, i32 3}
!121 = !{ptr @sx8654_irq.__UNIQUE_ID_ddebug294, !120, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/sx8654.c", i32 215, i32 3}
!124 = !{ptr @sx8654_irq.__UNIQUE_ID_ddebug295, !123, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!125 = !{ptr @sx8654_irq.__UNIQUE_ID_ddebug296, !126, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/sx8654.c", i32 233, i32 3}
!127 = !{ptr @sx8654_id_table, !128, !"sx8654_id_table", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/sx8654.c", i32 458, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2148766617, i64 2148766622, i64 2148766635, i64 2148766679, i64 2148766713, i64 2148766734}
!139 = !{i8 0, i8 2}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{!"branch_weights", i32 2000, i32 1}
