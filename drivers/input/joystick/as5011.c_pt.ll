; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/as5011.c_pt.bc'
source_filename = "../drivers/input/joystick/as5011.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.as5011_platform_data = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.as5011_device = type { ptr, ptr, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author288 = internal constant [59 x i8] c"as5011.author=Fabien Marteau <fabien.marteau@armadeus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [67 x i8] c"as5011.description=Driver for Austria Microsystems AS5011 joystick\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [42 x i8] c"as5011.file=drivers/input/joystick/as5011\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [19 x i8] c"as5011.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_as5011__292_359_as5011_driver_init6 = internal global ptr @as5011_driver_init, section ".initcall6.init", align 4
@as5011_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @as5011_probe, ptr @as5011_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @as5011_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_as5011_driver_exit = internal global ptr @as5011_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"as5011\00", [25 x i8] zeroinitializer }, align 32
@as5011_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"as5011\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@as5011_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No axis IRQ?\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as5011_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/joystick/as5011.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr = internal global ptr @as5011_probe._entry, section ".printk_index", align 4
@as5011_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"need i2c bus that supports protocol mangling\0A\00", [50 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.8 = internal global ptr @as5011_probe._entry.6, section ".printk_index", align 4
@as5011_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't allocate memory for device structure\0A\00", [52 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.11 = internal global ptr @as5011_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Austria Microsystem as5011 joystick\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AS5011 button\00", [18 x i8] zeroinitializer }, align 32
@as5011_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request button gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.16 = internal global ptr @as5011_probe._entry.14, section ".printk_index", align 4
@as5011_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get irq number for button gpio\0A\00", [54 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.19 = internal global ptr @as5011_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"as5011_button\00", [18 x i8] zeroinitializer }, align 32
@as5011_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't allocate button irq %d\0A\00", [34 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.23 = internal global ptr @as5011_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"as5011_joystick\00", [16 x i8] zeroinitializer }, align 32
@as5011_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't allocate axis irq %d\0A\00", [36 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.27 = internal global ptr @as5011_probe._entry.25, section ".printk_index", align 4
@as5011_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@as5011_probe._entry_ptr.30 = internal global ptr @as5011_probe._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@as5011_configure_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Soft reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as5011_configure_chip\00", [42 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr = internal global ptr @as5011_configure_chip._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@as5011_configure_chip._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Power config failed\0A\00", [43 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.35 = internal global ptr @as5011_configure_chip._entry.33, section ".printk_index", align 4
@as5011_configure_chip._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't invert spinning\0A\00", [41 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.38 = internal global ptr @as5011_configure_chip._entry.36, section ".printk_index", align 4
@as5011_configure_chip._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't write threshold\0A\00", [41 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.41 = internal global ptr @as5011_configure_chip._entry.39, section ".printk_index", align 4
@as5011_configure_chip._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.43 = internal global ptr @as5011_configure_chip._entry.42, section ".printk_index", align 4
@as5011_configure_chip._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.45 = internal global ptr @as5011_configure_chip._entry.44, section ".printk_index", align 4
@as5011_configure_chip._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.47 = internal global ptr @as5011_configure_chip._entry.46, section ".printk_index", align 4
@as5011_configure_chip._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't read i2c X resolution value\0A\00", [61 x i8] zeroinitializer }, align 32
@as5011_configure_chip._entry_ptr.50 = internal global ptr @as5011_configure_chip._entry.48, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"as5011_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 350, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 352, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"as5011_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 344, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 229, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 236, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 244, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 255, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 266, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 268, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 274, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 286, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 288, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 300, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 302, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 309, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 158, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 169, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 176, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 183, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 189, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 195, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 201, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [35 x i8] c"../drivers/input/joystick/as5011.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 208, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_as5011_driver_exit, ptr @__initcall__kmod_as5011__292_359_as5011_driver_init6, ptr @as5011_configure_chip._entry, ptr @as5011_configure_chip._entry.33, ptr @as5011_configure_chip._entry.36, ptr @as5011_configure_chip._entry.39, ptr @as5011_configure_chip._entry.42, ptr @as5011_configure_chip._entry.44, ptr @as5011_configure_chip._entry.46, ptr @as5011_configure_chip._entry.48, ptr @as5011_configure_chip._entry_ptr, ptr @as5011_configure_chip._entry_ptr.35, ptr @as5011_configure_chip._entry_ptr.38, ptr @as5011_configure_chip._entry_ptr.41, ptr @as5011_configure_chip._entry_ptr.43, ptr @as5011_configure_chip._entry_ptr.45, ptr @as5011_configure_chip._entry_ptr.47, ptr @as5011_configure_chip._entry_ptr.50, ptr @as5011_driver_exit, ptr @as5011_probe._entry, ptr @as5011_probe._entry.14, ptr @as5011_probe._entry.17, ptr @as5011_probe._entry.21, ptr @as5011_probe._entry.25, ptr @as5011_probe._entry.28, ptr @as5011_probe._entry.6, ptr @as5011_probe._entry.9, ptr @as5011_probe._entry_ptr, ptr @as5011_probe._entry_ptr.11, ptr @as5011_probe._entry_ptr.16, ptr @as5011_probe._entry_ptr.19, ptr @as5011_probe._entry_ptr.23, ptr @as5011_probe._entry_ptr.27, ptr @as5011_probe._entry_ptr.30, ptr @as5011_probe._entry_ptr.8, ptr @as5011_driver, ptr @.str, ptr @as5011_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.49], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as5011_configure_chip._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as5011_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @as5011_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as5011_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @as5011_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as5011_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data.i140.i = alloca [2 x i8], align 1
  %msg_set.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i132.i = alloca [2 x i8], align 1
  %msg.i133.i = alloca %struct.i2c_msg, align 4
  %data.i124.i = alloca [2 x i8], align 1
  %msg.i125.i = alloca %struct.i2c_msg, align 4
  %data.i116.i = alloca [2 x i8], align 1
  %msg.i117.i = alloca %struct.i2c_msg, align 4
  %data.i108.i = alloca [2 x i8], align 1
  %msg.i109.i = alloca %struct.i2c_msg, align 4
  %data.i100.i = alloca [2 x i8], align 1
  %msg.i101.i = alloca %struct.i2c_msg, align 4
  %data.i92.i = alloca [2 x i8], align 1
  %msg.i93.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %axis_irq = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %axis_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %axis_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #6
  %and.i = and i32 %call.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 20
  br i1 %cmp.i.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 20) #10
  %call14 = tail call ptr @input_allocate_device() #6
  %tobool15.not = icmp eq ptr %call7.i, null
  %tobool16.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %err_free_mem

if.end22:                                         ; preds = %if.end12
  %i2c_client = getelementptr inbounds %struct.as5011_device, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %i2c_client, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %call7.i, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %button_gpio24 = getelementptr inbounds %struct.as5011_device, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %button_gpio24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %button_gpio24, align 8
  %16 = ptrtoint ptr %axis_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %axis_irq, align 4
  %axis_irq26 = getelementptr inbounds %struct.as5011_device, ptr %call7.i, i32 0, i32 4
  %18 = ptrtoint ptr %axis_irq26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %axis_irq26, align 8
  %19 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.12, ptr %call14, align 8
  %id27 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %20 = ptrtoint ptr %id27 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 24, ptr %id27, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call14, i32 noundef 1, i32 noundef 288) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef -80, i32 noundef 80, i32 noundef 8, i32 noundef 40) #6
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i, align 8
  tail call void @input_set_abs_params(ptr noundef %23, i32 noundef 1, i32 noundef -80, i32 noundef 80, i32 noundef 8, i32 noundef 40) #6
  %24 = ptrtoint ptr %button_gpio24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %button_gpio24, align 8
  %call32 = tail call i32 @gpio_request(i32 noundef %25, ptr noundef nonnull @.str.13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %err_free_mem

if.end38:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %button_gpio24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %button_gpio24, align 8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %27) #6
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp41 = icmp slt i32 %call1.i, 0
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %err_free_button_gpio

if.end47:                                         ; preds = %if.end38
  %button_irq = getelementptr inbounds %struct.as5011_device, ptr %call7.i, i32 0, i32 3
  %28 = ptrtoint ptr %button_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call1.i, ptr %button_irq, align 4
  %call49 = tail call i32 @request_threaded_irq(i32 noundef %call1.i, ptr noundef null, ptr noundef nonnull @as5011_button_interrupt, i32 noundef 8195, ptr noundef nonnull @.str.20, ptr noundef nonnull %call7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %button_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %button_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %30) #9
  br label %err_free_button_gpio

if.end57:                                         ; preds = %if.end47
  %31 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #6
  %33 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 118, ptr %data.i.i, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %38 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr1.i.i, align 2
  %40 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4096, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %43 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i144 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i144)
  %cmp.i145 = icmp slt i32 %call.i.i144, 0
  br i1 %cmp.i145, label %if.end57.as5011_configure_chip.exit_crit_edge, label %while.body.preheader.i

if.end57.as5011_configure_chip.exit_crit_edge:    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

while.body.preheader.i:                           ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i92.i) #6
  %55 = getelementptr inbounds [2 x i8], ptr %data.i92.i, i32 0, i32 1
  %56 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 118, ptr %data.i92.i, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -56, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i93.i) #6
  %58 = getelementptr inbounds i8, ptr %msg.i93.i, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr1.i.i, align 2
  %62 = ptrtoint ptr %msg.i93.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %msg.i93.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93.i, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 4096, ptr %flags.i95.i, align 2
  %buf.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i93.i, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i97.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %data.i92.i, ptr %buf.i97.i, align 4
  %65 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter.i.i, align 8
  %call.i99.i = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i93.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i93.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i92.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp2.i = icmp slt i32 %call.i99.i, 0
  br i1 %cmp2.i, label %while.body.preheader.i.as5011_configure_chip.exit_crit_edge, label %if.end8.i

while.body.preheader.i.as5011_configure_chip.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end8.i:                                        ; preds = %while.body.preheader.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i100.i) #6
  %67 = getelementptr inbounds [2 x i8], ptr %data.i100.i, i32 0, i32 1
  %68 = ptrtoint ptr %data.i100.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 117, ptr %data.i100.i, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i101.i) #6
  %70 = getelementptr inbounds i8, ptr %msg.i101.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr1.i.i, align 2
  %74 = ptrtoint ptr %msg.i101.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %msg.i101.i, align 4
  %flags.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i103.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 4096, ptr %flags.i103.i, align 2
  %buf.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i105.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %data.i100.i, ptr %buf.i105.i, align 4
  %77 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i.i, align 8
  %call.i107.i = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i101.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i101.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i100.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %cmp10.i = icmp slt i32 %call.i107.i, 0
  br i1 %cmp10.i, label %if.end8.i.as5011_configure_chip.exit_crit_edge, label %if.end16.i

if.end8.i.as5011_configure_chip.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end16.i:                                       ; preds = %if.end8.i
  %xp.i = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %xp.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %xp.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i108.i) #6
  %81 = getelementptr inbounds [2 x i8], ptr %data.i108.i, i32 0, i32 1
  %82 = ptrtoint ptr %data.i108.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 67, ptr %data.i108.i, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %80, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109.i) #6
  %84 = getelementptr inbounds i8, ptr %msg.i109.i, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr1.i.i, align 2
  %88 = ptrtoint ptr %msg.i109.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %msg.i109.i, align 4
  %flags.i111.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i111.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 4096, ptr %flags.i111.i, align 2
  %buf.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 3
  %90 = ptrtoint ptr %buf.i113.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %data.i108.i, ptr %buf.i113.i, align 4
  %91 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter.i.i, align 8
  %call.i115.i = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i109.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i108.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %cmp18.i = icmp slt i32 %call.i115.i, 0
  br i1 %cmp18.i, label %if.end16.i.as5011_configure_chip.exit_crit_edge, label %if.end24.i

if.end16.i.as5011_configure_chip.exit_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end24.i:                                       ; preds = %if.end16.i
  %xn.i = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 4
  %93 = ptrtoint ptr %xn.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %xn.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i116.i) #6
  %95 = getelementptr inbounds [2 x i8], ptr %data.i116.i, i32 0, i32 1
  %96 = ptrtoint ptr %data.i116.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 68, ptr %data.i116.i, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %94, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i117.i) #6
  %98 = getelementptr inbounds i8, ptr %msg.i117.i, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 196607, ptr %98, align 4
  %100 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %addr1.i.i, align 2
  %102 = ptrtoint ptr %msg.i117.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %msg.i117.i, align 4
  %flags.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117.i, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i119.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 4096, ptr %flags.i119.i, align 2
  %buf.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117.i, i32 0, i32 3
  %104 = ptrtoint ptr %buf.i121.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %data.i116.i, ptr %buf.i121.i, align 4
  %105 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adapter.i.i, align 8
  %call.i123.i = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i117.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i117.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i116.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123.i)
  %cmp26.i = icmp slt i32 %call.i123.i, 0
  br i1 %cmp26.i, label %if.end24.i.as5011_configure_chip.exit_crit_edge, label %if.end32.i

if.end24.i.as5011_configure_chip.exit_crit_edge:  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end32.i:                                       ; preds = %if.end24.i
  %yp.i = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %yp.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %yp.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i124.i) #6
  %109 = getelementptr inbounds [2 x i8], ptr %data.i124.i, i32 0, i32 1
  %110 = ptrtoint ptr %data.i124.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 83, ptr %data.i124.i, align 1
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %108, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125.i) #6
  %112 = getelementptr inbounds i8, ptr %msg.i125.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 196607, ptr %112, align 4
  %114 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr1.i.i, align 2
  %116 = ptrtoint ptr %msg.i125.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %msg.i125.i, align 4
  %flags.i127.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i127.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 4096, ptr %flags.i127.i, align 2
  %buf.i129.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125.i, i32 0, i32 3
  %118 = ptrtoint ptr %buf.i129.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %data.i124.i, ptr %buf.i129.i, align 4
  %119 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter.i.i, align 8
  %call.i131.i = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i125.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i124.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %cmp34.i = icmp slt i32 %call.i131.i, 0
  br i1 %cmp34.i, label %if.end32.i.as5011_configure_chip.exit_crit_edge, label %if.end40.i

if.end32.i.as5011_configure_chip.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end40.i:                                       ; preds = %if.end32.i
  %yn.i = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 6
  %121 = ptrtoint ptr %yn.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %yn.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i132.i) #6
  %123 = getelementptr inbounds [2 x i8], ptr %data.i132.i, i32 0, i32 1
  %124 = ptrtoint ptr %data.i132.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 84, ptr %data.i132.i, align 1
  %125 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %122, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i133.i) #6
  %126 = getelementptr inbounds i8, ptr %msg.i133.i, i32 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 196607, ptr %126, align 4
  %128 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %addr1.i.i, align 2
  %130 = ptrtoint ptr %msg.i133.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %msg.i133.i, align 4
  %flags.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 4096, ptr %flags.i135.i, align 2
  %buf.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 3
  %132 = ptrtoint ptr %buf.i137.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %data.i132.i, ptr %buf.i137.i, align 4
  %133 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter.i.i, align 8
  %call.i139.i = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i133.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i133.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i132.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %cmp42.i = icmp slt i32 %call.i139.i, 0
  br i1 %cmp42.i, label %if.end40.i.as5011_configure_chip.exit_crit_edge, label %if.end48.i

if.end40.i.as5011_configure_chip.exit_crit_edge:  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

if.end48.i:                                       ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i140.i) #6
  %135 = getelementptr inbounds [2 x i8], ptr %data.i140.i, i32 0, i32 1
  %136 = ptrtoint ptr %data.i140.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 81, ptr %data.i140.i, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_set.i.i) #6
  %138 = getelementptr inbounds i8, ptr %msg_set.i.i, i32 4
  %139 = call ptr @memset(ptr %138, i32 255, i32 16)
  %140 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %addr1.i.i, align 2
  %142 = ptrtoint ptr %msg_set.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %msg_set.i.i, align 4
  %flags.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %flags.i141.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 8192, ptr %flags.i141.i, align 2
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %138, align 4
  %buf.i143.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 0, i32 3
  %145 = ptrtoint ptr %buf.i143.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %data.i140.i, ptr %buf.i143.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 1
  %146 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %141, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 1, i32 1
  %147 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 16385, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 1, i32 2
  %148 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i.i, i32 1, i32 3
  %149 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %data.i140.i, ptr %buf8.i.i, align 4
  %150 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %adapter.i.i, align 8
  %call.i145.i = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg_set.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %cmp.i.i = icmp slt i32 %call.i145.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_set.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i140.i) #6
  br i1 %cmp.i.i, label %if.end48.i.as5011_configure_chip.exit_crit_edge, label %if.end61

if.end48.i.as5011_configure_chip.exit_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %as5011_configure_chip.exit

as5011_configure_chip.exit:                       ; preds = %if.end48.i.as5011_configure_chip.exit_crit_edge, %if.end40.i.as5011_configure_chip.exit_crit_edge, %if.end32.i.as5011_configure_chip.exit_crit_edge, %if.end24.i.as5011_configure_chip.exit_crit_edge, %if.end16.i.as5011_configure_chip.exit_crit_edge, %if.end8.i.as5011_configure_chip.exit_crit_edge, %while.body.preheader.i.as5011_configure_chip.exit_crit_edge, %if.end57.as5011_configure_chip.exit_crit_edge
  %.str.49.sink.i = phi ptr [ @.str.31, %if.end57.as5011_configure_chip.exit_crit_edge ], [ @.str.34, %while.body.preheader.i.as5011_configure_chip.exit_crit_edge ], [ @.str.37, %if.end8.i.as5011_configure_chip.exit_crit_edge ], [ @.str.40, %if.end16.i.as5011_configure_chip.exit_crit_edge ], [ @.str.40, %if.end24.i.as5011_configure_chip.exit_crit_edge ], [ @.str.40, %if.end32.i.as5011_configure_chip.exit_crit_edge ], [ @.str.40, %if.end40.i.as5011_configure_chip.exit_crit_edge ], [ @.str.49, %if.end48.i.as5011_configure_chip.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i144, %if.end57.as5011_configure_chip.exit_crit_edge ], [ %call.i99.i, %while.body.preheader.i.as5011_configure_chip.exit_crit_edge ], [ %call.i107.i, %if.end8.i.as5011_configure_chip.exit_crit_edge ], [ %call.i115.i, %if.end16.i.as5011_configure_chip.exit_crit_edge ], [ %call.i123.i, %if.end24.i.as5011_configure_chip.exit_crit_edge ], [ %call.i131.i, %if.end32.i.as5011_configure_chip.exit_crit_edge ], [ %call.i139.i, %if.end40.i.as5011_configure_chip.exit_crit_edge ], [ %call.i145.i, %if.end48.i.as5011_configure_chip.exit_crit_edge ]
  %dev55.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull %.str.49.sink.i) #9
  br label %err_free_button_irq

if.end61:                                         ; preds = %if.end48.i
  %152 = ptrtoint ptr %axis_irq26 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %axis_irq26, align 8
  %axis_irqflags = getelementptr inbounds %struct.as5011_platform_data, ptr %1, i32 0, i32 2
  %154 = ptrtoint ptr %axis_irqflags to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %axis_irqflags, align 4
  %or = or i32 %155, 8192
  %call63 = call i32 @request_threaded_irq(i32 noundef %153, ptr noundef null, ptr noundef nonnull @as5011_axis_interrupt, i32 noundef %or, ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end71, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %axis_irq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %axis_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %157) #9
  br label %err_free_button_irq

if.end71:                                         ; preds = %if.end61
  %158 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call7.i, align 8
  %call73 = call i32 @input_register_device(ptr noundef %159) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  %160 = ptrtoint ptr %axis_irq26 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %axis_irq26, align 8
  %call82 = call ptr @free_irq(i32 noundef %161, ptr noundef nonnull %call7.i) #6
  br label %err_free_button_irq

if.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %162 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_button_irq:                              ; preds = %do.end78, %do.end68, %as5011_configure_chip.exit
  %error.0 = phi i32 [ %retval.0.ph.i, %as5011_configure_chip.exit ], [ %call63, %do.end68 ], [ %call73, %do.end78 ]
  %163 = ptrtoint ptr %button_irq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %button_irq, align 4
  %call84 = call ptr @free_irq(i32 noundef %164, ptr noundef nonnull %call7.i) #6
  br label %err_free_button_gpio

err_free_button_gpio:                             ; preds = %err_free_button_irq, %do.end54, %do.end45
  %error.1 = phi i32 [ %call1.i, %do.end45 ], [ %call49, %do.end54 ], [ %error.0, %err_free_button_irq ]
  %165 = ptrtoint ptr %button_gpio24 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %button_gpio24, align 8
  call void @gpio_free(i32 noundef %166) #6
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_button_gpio, %do.end36, %do.end20
  %error.2 = phi i32 [ %call32, %do.end36 ], [ %error.1, %err_free_button_gpio ], [ -12, %do.end20 ]
  call void @input_free_device(ptr noundef %call14) #6
  call void @kfree(ptr noundef %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end80, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %err_free_mem ], [ 0, %if.end80 ], [ -19, %do.end10 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as5011_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %axis_irq = getelementptr inbounds %struct.as5011_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %axis_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %axis_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %button_irq = getelementptr inbounds %struct.as5011_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %button_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %button_irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  %button_gpio = getelementptr inbounds %struct.as5011_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %button_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %button_gpio, align 4
  tail call void @gpio_free(i32 noundef %7) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %9) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as5011_button_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %button_gpio = getelementptr inbounds %struct.as5011_device, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %button_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %button_gpio, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #6
  %call1.i = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i) #6
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  %lnot.ext.i = zext i1 %tobool.not to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 288, i32 noundef %lnot.ext.i) #6
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as5011_axis_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %data.i14 = alloca [2 x i8], align 1
  %msg_set.i15 = alloca [2 x %struct.i2c_msg], align 4
  %data.i = alloca [2 x i8], align 1
  %msg_set.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.as5011_device, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 81, ptr %data.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_set.i) #6
  %5 = getelementptr inbounds i8, ptr %msg_set.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr3.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr3.i, align 2
  %9 = ptrtoint ptr %msg_set.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg_set.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8192, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16385, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg_set.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %as5011_i2c_read.exit.thread, label %if.end

as5011_i2c_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_set.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %out

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_set.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  %21 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i14) #6
  %23 = getelementptr inbounds [2 x i8], ptr %data.i14, i32 0, i32 1
  %24 = ptrtoint ptr %data.i14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 82, ptr %data.i14, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg_set.i15) #6
  %26 = getelementptr inbounds i8, ptr %msg_set.i15, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %addr3.i16 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %addr3.i16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr3.i16, align 2
  %30 = ptrtoint ptr %msg_set.i15 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg_set.i15, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8192, ptr %flags.i17, align 2
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %26, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.i14, ptr %buf.i19, align 4
  %arrayinit.element.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 1
  %34 = ptrtoint ptr %arrayinit.element.i20 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %29, ptr %arrayinit.element.i20, align 4
  %flags6.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 1, i32 1
  %35 = ptrtoint ptr %flags6.i21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 16385, ptr %flags6.i21, align 2
  %len7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 1, i32 2
  %36 = ptrtoint ptr %len7.i22 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %len7.i22, align 4
  %buf8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg_set.i15, i32 1, i32 3
  %37 = ptrtoint ptr %buf8.i23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i14, ptr %buf8.i23, align 4
  %adapter.i24 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i24, align 8
  %call.i25 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg_set.i15, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %as5011_i2c_read.exit29.thread, label %if.end5

as5011_i2c_read.exit29.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_set.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i14) #6
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %data.i14 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data.i14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg_set.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i14) #6
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 4
  %conv = sext i8 %20 to i32
  call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 0, i32 noundef %conv) #6
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_id, align 4
  %conv7 = sext i8 %41 to i32
  call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 1, i32 noundef %conv7) #6
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 4
  call void @input_event(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end5, %as5011_i2c_read.exit29.thread, %as5011_i2c_read.exit.thread
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__UNIQUE_ID_author288, !1, !"__UNIQUE_ID_author288", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/as5011.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description289, !3, !"__UNIQUE_ID_description289", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/as5011.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file290, !5, !"__UNIQUE_ID_file290", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/as5011.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license291, !5, !"__UNIQUE_ID_license291", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_as5011__292_359_as5011_driver_init6, !8, !"__initcall__kmod_as5011__292_359_as5011_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/as5011.c", i32 359, i32 1}
!9 = !{ptr @__exitcall_as5011_driver_exit, !8, !"__exitcall_as5011_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/as5011.c", i32 352, i32 11}
!12 = !{ptr @as5011_driver, !13, !"as5011_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/as5011.c", i32 350, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/as5011.c", i32 229, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @as5011_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @as5011_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/as5011.c", i32 236, i32 3}
!24 = !{ptr @as5011_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @as5011_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/joystick/as5011.c", i32 244, i32 3}
!28 = !{ptr @as5011_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @as5011_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/as5011.c", i32 255, i32 20}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/joystick/as5011.c", i32 266, i32 44}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/as5011.c", i32 268, i32 3}
!36 = !{ptr @as5011_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @as5011_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/as5011.c", i32 274, i32 3}
!40 = !{ptr @as5011_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @as5011_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/as5011.c", i32 286, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/as5011.c", i32 288, i32 3}
!46 = !{ptr @as5011_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @as5011_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/as5011.c", i32 300, i32 10}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/joystick/as5011.c", i32 302, i32 3}
!52 = !{ptr @as5011_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @as5011_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/as5011.c", i32 309, i32 3}
!56 = !{ptr @as5011_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @as5011_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/as5011.c", i32 158, i32 3}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @as5011_configure_chip._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @as5011_configure_chip._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/joystick/as5011.c", i32 169, i32 3}
!65 = !{ptr @as5011_configure_chip._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @as5011_configure_chip._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/joystick/as5011.c", i32 176, i32 3}
!69 = !{ptr @as5011_configure_chip._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @as5011_configure_chip._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/joystick/as5011.c", i32 183, i32 3}
!73 = !{ptr @as5011_configure_chip._entry.39, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @as5011_configure_chip._entry_ptr.41, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @as5011_configure_chip._entry.42, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/as5011.c", i32 189, i32 3}
!77 = !{ptr @as5011_configure_chip._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @as5011_configure_chip._entry.44, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/as5011.c", i32 195, i32 3}
!80 = !{ptr @as5011_configure_chip._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @as5011_configure_chip._entry.46, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/input/joystick/as5011.c", i32 201, i32 3}
!83 = !{ptr @as5011_configure_chip._entry_ptr.47, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/as5011.c", i32 208, i32 3}
!86 = !{ptr @as5011_configure_chip._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @as5011_configure_chip._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @as5011_id, !89, !"as5011_id", i1 false, i1 false}
!89 = !{!"../drivers/input/joystick/as5011.c", i32 344, i32 35}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
