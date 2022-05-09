; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cy8ctma140.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cy8ctma140.c"
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
%struct.cy8ctma140 = type { ptr, %struct.touchscreen_properties, ptr, ptr, [2 x %struct.regulator_bulk_data], i8, i8, i8 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_cy8ctma140__291_349_cy8ctma140_driver_init6 = internal global ptr @cy8ctma140_driver_init, section ".initcall6.init", align 4
@cy8ctma140_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cy8ctma140_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cy8ctma140_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cy8ctma140_pm, ptr null, ptr null }, ptr @cy8ctma140_idtable, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cy8ctma140_driver_exit = internal global ptr @cy8ctma140_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [59 x i8] c"cy8ctma140.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [53 x i8] c"cy8ctma140.description=CY8CTMA140 TouchScreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"cy8ctma140.file=drivers/input/touchscreen/cy8ctma140\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"cy8ctma140.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cy8ctma140\00", [21 x i8] zeroinitializer }, align 32
@cy8ctma140_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,cy8ctma140\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cy8ctma140_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cy8ctma140_suspend, ptr @cy8ctma140_resume, ptr @cy8ctma140_suspend, ptr @cy8ctma140_resume, ptr @cy8ctma140_suspend, ptr @cy8ctma140_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cy8ctma140_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cy8ctma140\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcpin\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@cy8ctma140_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 265, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get regulators %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cy8ctma140_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/cy8ctma140.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cy8ctma140_probe._entry_ptr = internal global ptr @cy8ctma140_probe._entry, section ".printk_index", align 4
@cy8ctma140_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 275, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to install power off handler\0A\00", [59 x i8] zeroinitializer }, align 32
@cy8ctma140_probe._entry_ptr.10 = internal global ptr @cy8ctma140_probe._entry.8, section ".printk_index", align 4
@cy8ctma140_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irq %d busy? error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cy8ctma140_probe._entry_ptr.13 = internal global ptr @cy8ctma140_probe._entry.11, section ".printk_index", align 4
@cy8ctma140_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cy8ctma140_power_up\00", [44 x i8] zeroinitializer }, align 32
@cy8ctma140_power_up._entry_ptr = internal global ptr @cy8ctma140_power_up._entry, section ".printk_index", align 4
@cy8ctma140_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading message: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cy8ctma140_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@cy8ctma140_irq_thread._entry_ptr = internal global ptr @cy8ctma140_irq_thread._entry, section ".printk_index", align 4
@cy8ctma140_irq_thread._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 121, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong number of messages\0A\00", [38 x i8] zeroinitializer }, align 32
@cy8ctma140_irq_thread._entry_ptr.20 = internal global ptr @cy8ctma140_irq_thread._entry.18, section ".printk_index", align 4
@cy8ctma140_irq_thread.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.5, ptr @.str.21, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid event\0A\00", [17 x i8] zeroinitializer }, align 32
@cy8ctma140_irq_thread._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.5, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unexpected number of fingers: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cy8ctma140_irq_thread._entry_ptr.24 = internal global ptr @cy8ctma140_irq_thread._entry.22, section ".printk_index", align 4
@cy8ctma140_report.contact_offsets = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\09\10\16", [28 x i8] zeroinitializer }, align 32
@cy8ctma140_report.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cy8ctma140_report\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"finger %d: ID %02x (%d, %d) w: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cy8ctma140_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 152, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error sending FW info message\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cy8ctma140_init\00", [16 x i8] zeroinitializer }, align 32
@cy8ctma140_init._entry_ptr = internal global ptr @cy8ctma140_init._entry, section ".printk_index", align 4
@cy8ctma140_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error receiving FW info message\0A\00", [63 x i8] zeroinitializer }, align 32
@cy8ctma140_init._entry_ptr.31 = internal global ptr @cy8ctma140_init._entry.29, section ".printk_index", align 4
@cy8ctma140_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.5, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"got only %d bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@cy8ctma140_init._entry_ptr.34 = internal global ptr @cy8ctma140_init._entry.32, section ".printk_index", align 4
@cy8ctma140_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.5, ptr @.str.35, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vendor %c%c, HW ID %.2d, FW ver %.4d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"cy8ctma140_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 340, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 342, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"cy8ctma140_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 334, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"cy8ctma140_pm\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 326, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"cy8ctma140_idtable\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 328, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 258, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 259, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 264, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 275, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 283, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 178, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 119, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 121, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 126, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 132, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"contact_offsets\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 57, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 82, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 152, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 157, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 161, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [42 x i8] c"../drivers/input/touchscreen/cy8ctma140.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 165, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_cy8ctma140_driver_exit, ptr @__initcall__kmod_cy8ctma140__291_349_cy8ctma140_driver_init6, ptr @cy8ctma140_driver_exit, ptr @cy8ctma140_init._entry, ptr @cy8ctma140_init._entry.29, ptr @cy8ctma140_init._entry.32, ptr @cy8ctma140_init._entry_ptr, ptr @cy8ctma140_init._entry_ptr.31, ptr @cy8ctma140_init._entry_ptr.34, ptr @cy8ctma140_irq_thread._entry, ptr @cy8ctma140_irq_thread._entry.18, ptr @cy8ctma140_irq_thread._entry.22, ptr @cy8ctma140_irq_thread._entry_ptr, ptr @cy8ctma140_irq_thread._entry_ptr.20, ptr @cy8ctma140_irq_thread._entry_ptr.24, ptr @cy8ctma140_power_up._entry, ptr @cy8ctma140_power_up._entry_ptr, ptr @cy8ctma140_probe._entry, ptr @cy8ctma140_probe._entry.11, ptr @cy8ctma140_probe._entry.8, ptr @cy8ctma140_probe._entry_ptr, ptr @cy8ctma140_probe._entry_ptr.10, ptr @cy8ctma140_probe._entry_ptr.13, ptr @cy8ctma140_driver, ptr @.str, ptr @cy8ctma140_of_match, ptr @cy8ctma140_pm, ptr @cy8ctma140_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @cy8ctma140_report.contact_offsets, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_irq_thread._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_irq_thread._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_report.contact_offsets to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cy8ctma140_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctma140_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cy8ctma140_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cy8ctma140_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @cy8ctma140_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctma140_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.cy8ctma140, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev6, align 4
  %client7 = getelementptr inbounds %struct.cy8ctma140, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client7, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 3, i32 noundef 53) #5
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 3, i32 noundef 54) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  %props = getelementptr inbounds %struct.cy8ctma140, ptr %call.i, i32 0, i32 1
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %call2, i1 noundef zeroext true, ptr noundef %props) #5
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call2) #5
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 26
  %3 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end5.input_abs_set_fuzz.exit_crit_edge, label %if.then.i

if.end5.input_abs_set_fuzz.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_fuzz.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i = getelementptr %struct.input_absinfo, ptr %4, i32 53, i32 3
  %5 = ptrtoint ptr %fuzz.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fuzz.i, align 4
  br label %input_abs_set_fuzz.exit

input_abs_set_fuzz.exit:                          ; preds = %if.then.i, %if.end5.input_abs_set_fuzz.exit_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call2) #5
  %6 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i108 = icmp eq ptr %7, null
  br i1 %tobool.not.i108, label %input_abs_set_fuzz.exit.input_abs_set_fuzz.exit111_crit_edge, label %if.then.i110

input_abs_set_fuzz.exit.input_abs_set_fuzz.exit111_crit_edge: ; preds = %input_abs_set_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_fuzz.exit111

if.then.i110:                                     ; preds = %input_abs_set_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i109 = getelementptr %struct.input_absinfo, ptr %7, i32 54, i32 3
  %8 = ptrtoint ptr %fuzz.i109 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fuzz.i109, align 4
  br label %input_abs_set_fuzz.exit111

input_abs_set_fuzz.exit111:                       ; preds = %if.then.i110, %input_abs_set_fuzz.exit.input_abs_set_fuzz.exit111_crit_edge
  %call9 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call2, i32 noundef 4, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %input_abs_set_fuzz.exit111.cleanup_crit_edge

input_abs_set_fuzz.exit111.cleanup_crit_edge:     ; preds = %input_abs_set_fuzz.exit111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %input_abs_set_fuzz.exit111
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %call2, align 8
  %id13 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %10 = ptrtoint ptr %id13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 24, ptr %id13, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regulators = getelementptr inbounds %struct.cy8ctma140, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.1, ptr %regulators, align 4
  %arrayidx15 = getelementptr %struct.cy8ctma140, ptr %call.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.2, ptr %arrayidx15, align 4
  %call18 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %regulators) #5
  %14 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call18, label %do.end [
    i32 0, label %if.end23
    i32 -517, label %if.end12.cleanup_crit_edge
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call18) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call.i112 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end27, label %cy8ctma140_power_up.exit

cy8ctma140_power_up.exit:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  tail call void @msleep(i32 noundef 250) #5
  %call.i114 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cy8ctma140_power_off_action, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call35 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %18, ptr noundef null, ptr noundef nonnull @cy8ctma140_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %call35) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %call43 = tail call fastcc i32 @cy8ctma140_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @input_register_device(ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i118 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i118, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end40, %do.end33, %cy8ctma140_power_up.exit, %do.end, %if.end12.cleanup_crit_edge, %input_abs_set_fuzz.exit111.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i114, %do.end33 ], [ %call35, %do.end40 ], [ 0, %if.end50 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call9, %input_abs_set_fuzz.exit111.cleanup_crit_edge ], [ %call18, %if.end12.cleanup_crit_edge ], [ %call18, %do.end ], [ %call.i112, %cy8ctma140_power_up.exit ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cy8ctma140_power_off_action(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators.i = getelementptr inbounds %struct.cy8ctma140, ptr %d, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctma140_irq_thread(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %cmdbuf = alloca [1 x i8], align 1
  %buf = alloca [31 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmdbuf) #5
  %0 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cmdbuf, align 1
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf) #5
  %1 = getelementptr inbounds [31 x i8], ptr %buf, i32 0, i32 2
  %2 = call ptr @memset(ptr %buf, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %client = getelementptr inbounds %struct.cy8ctma140, ptr %d, i32 0, i32 3
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmdbuf, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %13 = load i16, ptr %addr1, align 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %16 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 31, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %17 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf8, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  %dev = getelementptr inbounds %struct.cy8ctma140, ptr %d, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br i1 %cmp12, label %do.end, label %do.end16

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.16, i32 noundef %call) #8
  br label %out

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.19) #8
  br label %out

if.end18:                                         ; preds = %entry
  %22 = getelementptr inbounds [31 x i8], ptr %buf, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end30, label %do.body20

do.body20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cy8ctma140_irq_thread.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cy8ctma140_irq_thread, %if.then25)) #5
          to label %out [label %if.then25], !srcloc !92

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.cy8ctma140, ptr %d, i32 0, i32 2
  %26 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cy8ctma140_irq_thread.__UNIQUE_ID_ddebug289, ptr noundef %27, ptr noundef nonnull @.str.21) #5
  br label %out

if.end30:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  %30 = and i8 %29, 15
  %conv35 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp36 = icmp ugt i8 %30, 4
  br i1 %cmp36, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.cy8ctma140, ptr %d, i32 0, i32 2
  %31 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.23, i32 noundef %conv35) #8
  br label %out

if.end44:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @cy8ctma140_report(ptr noundef %d, ptr noundef nonnull %buf, i32 noundef %conv35)
  br label %out

out:                                              ; preds = %if.end44, %do.end41, %if.then25, %do.body20, %do.end16, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmdbuf) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cy8ctma140_init(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [1 x i8], align 1
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %3 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 25, ptr %addr, align 1
  %client = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 3
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %addr, i32 noundef 1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %call.i46 = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf, i32 noundef 5, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp4 = icmp slt i32 %call.i46, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 2
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i46)
  %cmp11.not = icmp eq i32 %call.i46, 5
  br i1 %cmp11.not, label %do.body18, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 2
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33, i32 noundef %call.i46) #8
  br label %cleanup

do.body18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cy8ctma140_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cy8ctma140_init, %if.then22)) #5
          to label %cleanup [label %if.then22], !srcloc !92

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 2
  %15 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev23, align 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  %conv26 = zext i8 %20 to i32
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %conv28 = zext i8 %22 to i32
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %conv30 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cy8ctma140_init.__UNIQUE_ID_ddebug290, ptr noundef %16, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body18, %do.end15, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i46, %do.end8 ], [ -5, %do.end15 ], [ 0, %if.then22 ], [ 0, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cy8ctma140_report(ptr noundef %ts, ptr nocapture noundef readonly %data, i32 noundef %n_fingers) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_fingers)
  %cmp54 = icmp sgt i32 %n_fingers, 0
  br i1 %cmp54, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 2
  %props = getelementptr inbounds %struct.cy8ctma140, ptr %ts, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr @cy8ctma140_report.contact_offsets, i32 0, i32 %i.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %data, i32 %idxprom
  %2 = and i32 %i.055, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr i8, ptr %arrayidx1, i32 -1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %and = and i8 %4, 15
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr i8, ptr %arrayidx1, i32 5
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = lshr i8 %6, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8 [ %and, %cond.true ], [ %7, %cond.false ]
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %conv6 = zext i8 %cond to i32
  %call = tail call i32 @input_mt_get_slot_by_key(ptr noundef %9, i32 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %cond.end.for.inc_crit_edge, label %if.end

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %cond.end
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx1, align 1
  %add.ptr = getelementptr i8, ptr %arrayidx1, i32 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr, align 1
  %arrayidx11 = getelementptr i8, ptr %arrayidx1, i32 4
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cy8ctma140_report.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cy8ctma140_report, %if.then16)) #5
          to label %do.end [label %if.then16], !srcloc !92

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %conv18 = zext i16 %11 to i32
  %conv19 = zext i16 %13 to i32
  %conv20 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cy8ctma140_report.__UNIQUE_ID_ddebug288, ptr noundef %17, ptr noundef nonnull @.str.26, i32 noundef %call, i32 noundef %conv6, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ts, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 47, i32 noundef %call) #5
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts, align 4
  %call24 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %21, i32 noundef 0, i1 noundef zeroext true) #5
  %22 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts, align 4
  %conv26 = zext i16 %11 to i32
  %conv27 = zext i16 %13 to i32
  tail call void @touchscreen_report_pos(ptr noundef %23, ptr noundef %props, i32 noundef %conv26, i32 noundef %conv27, i1 noundef zeroext true) #5
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 4
  %conv29 = zext i8 %15 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 48, i32 noundef %conv29) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %n_fingers
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts, align 4
  tail call void @input_mt_sync_frame(ptr noundef %27) #5
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctma140_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %regulators.i = getelementptr inbounds %struct.cy8ctma140, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cy8ctma140_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %regulators.i = getelementptr inbounds %struct.cy8ctma140, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i10 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i10, label %cy8ctma140_power_up.exit.thread, label %cy8ctma140_power_up.exit

cy8ctma140_power_up.exit.thread:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 250) #5
  br label %cleanup

cy8ctma140_power_up.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.cy8ctma140, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #8
  br label %cleanup

cleanup:                                          ; preds = %cy8ctma140_power_up.exit, %cy8ctma140_power_up.exit.thread, %device_may_wakeup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %cy8ctma140_power_up.exit ], [ 0, %cy8ctma140_power_up.exit.thread ], [ 0, %device_may_wakeup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_cy8ctma140__291_349_cy8ctma140_driver_init6, !1, !"__initcall__kmod_cy8ctma140__291_349_cy8ctma140_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_cy8ctma140_driver_exit, !1, !"__exitcall_cy8ctma140_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 352, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 353, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 342, i32 11}
!12 = !{ptr @cy8ctma140_driver, !13, !"cy8ctma140_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 340, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 258, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 259, i32 29}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 264, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cy8ctma140_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cy8ctma140_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 275, i32 3}
!28 = !{ptr @cy8ctma140_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cy8ctma140_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 283, i32 3}
!32 = !{ptr @cy8ctma140_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cy8ctma140_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 178, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cy8ctma140_power_up._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cy8ctma140_power_up._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 119, i32 4}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cy8ctma140_irq_thread._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cy8ctma140_irq_thread._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 121, i32 4}
!46 = !{ptr @cy8ctma140_irq_thread._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cy8ctma140_irq_thread._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 126, i32 3}
!50 = !{ptr @cy8ctma140_irq_thread.__UNIQUE_ID_ddebug289, !49, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 132, i32 3}
!53 = !{ptr @cy8ctma140_irq_thread._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cy8ctma140_irq_thread._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @cy8ctma140_report.contact_offsets, !56, !"contact_offsets", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 57, i32 18}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 82, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cy8ctma140_report.__UNIQUE_ID_ddebug288, !58, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 152, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cy8ctma140_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cy8ctma140_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 157, i32 3}
!68 = !{ptr @cy8ctma140_init._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cy8ctma140_init._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 161, i32 3}
!72 = !{ptr @cy8ctma140_init._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cy8ctma140_init._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 165, i32 2}
!76 = !{ptr @cy8ctma140_init.__UNIQUE_ID_ddebug290, !75, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!77 = !{ptr @cy8ctma140_of_match, !78, !"cy8ctma140_of_match", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 334, i32 34}
!79 = !{ptr @cy8ctma140_pm, !80, !"cy8ctma140_pm", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 326, i32 8}
!81 = !{ptr @cy8ctma140_idtable, !82, !"cy8ctma140_idtable", i1 false, i1 false}
!82 = !{!"../drivers/input/touchscreen/cy8ctma140.c", i32 328, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148972744, i64 2148972749, i64 2148972762, i64 2148972806, i64 2148972840, i64 2148972861}
