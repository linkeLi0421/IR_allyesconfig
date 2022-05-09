; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/qt1070.c_pt.bc'
source_filename = "../drivers/input/keyboard/qt1070.c"
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
%struct.qt1070_data = type { ptr, ptr, i32, [7 x i16], i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_qt1070__288_283_qt1070_driver_init6 = internal global ptr @qt1070_driver_init, section ".initcall6.init", align 4
@qt1070_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @qt1070_probe, ptr @qt1070_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qt1070_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qt1070_pm_ops, ptr null, ptr null }, ptr @qt1070_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_qt1070_driver_exit = internal global ptr @qt1070_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [45 x i8] c"qt1070.author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"qt1070.description=Driver for AT42QT1070 QTouch sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"qt1070.file=drivers/input/keyboard/qt1070\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"qt1070.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qt1070\00", [25 x i8] zeroinitializer }, align 32
@qt1070_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qt1070\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qt1070_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qt1070_suspend, ptr @qt1070_resume, ptr @qt1070_suspend, ptr @qt1070_resume, ptr @qt1070_suspend, ptr @qt1070_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qt1070_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qt1070\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qt1070_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s adapter not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qt1070_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/qt1070.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qt1070_probe._entry_ptr = internal global ptr @qt1070_probe._entry, section ".printk_index", align 4
@qt1070_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"please assign the irq to this device\0A\00", [58 x i8] zeroinitializer }, align 32
@qt1070_probe._entry_ptr.8 = internal global ptr @qt1070_probe._entry.6, section ".printk_index", align 4
@qt1070_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"insufficient memory\0A\00", [43 x i8] zeroinitializer }, align 32
@qt1070_probe._entry_ptr.11 = internal global ptr @qt1070_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AT42QT1070 QTouch Sensor\00", [39 x i8] zeroinitializer }, align 32
@qt1070_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fail to request irq\0A\00", [43 x i8] zeroinitializer }, align 32
@qt1070_probe._entry_ptr.15 = internal global ptr @qt1070_probe._entry.13, section ".printk_index", align 4
@qt1070_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@qt1070_probe._entry_ptr.18 = internal global ptr @qt1070_probe._entry.16, section ".printk_index", align 4
@qt1070_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ID %d not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qt1070_identify\00", [16 x i8] zeroinitializer }, align 32
@qt1070_identify._entry_ptr = internal global ptr @qt1070_identify._entry, section ".printk_index", align 4
@qt1070_identify._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not read the firmware version\0A\00", [59 x i8] zeroinitializer }, align 32
@qt1070_identify._entry_ptr.23 = internal global ptr @qt1070_identify._entry.21, section ".printk_index", align 4
@qt1070_identify._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 98, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AT42QT1070 firmware version %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qt1070_identify._entry_ptr.27 = internal global ptr @qt1070_identify._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qt1070_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can not write register, returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qt1070_write\00", [19 x i8] zeroinitializer }, align 32
@qt1070_write._entry_ptr = internal global ptr @qt1070_write._entry, section ".printk_index", align 4
@qt1070_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can not read register, returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qt1070_read\00", [20 x i8] zeroinitializer }, align 32
@qt1070_read._entry_ptr = internal global ptr @qt1070_read._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"qt1070_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 272, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 274, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"qt1070_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 265, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"qt1070_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 256, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"qt1070_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 258, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 139, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 145, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 156, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 165, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 193, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 200, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 98, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 74, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [35 x i8] c"../drivers/input/keyboard/qt1070.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 62, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_qt1070_driver_exit, ptr @__initcall__kmod_qt1070__288_283_qt1070_driver_init6, ptr @qt1070_driver_exit, ptr @qt1070_identify._entry, ptr @qt1070_identify._entry.21, ptr @qt1070_identify._entry.24, ptr @qt1070_identify._entry_ptr, ptr @qt1070_identify._entry_ptr.23, ptr @qt1070_identify._entry_ptr.27, ptr @qt1070_probe._entry, ptr @qt1070_probe._entry.13, ptr @qt1070_probe._entry.16, ptr @qt1070_probe._entry.6, ptr @qt1070_probe._entry.9, ptr @qt1070_probe._entry_ptr, ptr @qt1070_probe._entry_ptr.11, ptr @qt1070_probe._entry_ptr.15, ptr @qt1070_probe._entry_ptr.18, ptr @qt1070_probe._entry_ptr.8, ptr @qt1070_read._entry, ptr @qt1070_read._entry_ptr, ptr @qt1070_write._entry, ptr @qt1070_write._entry_ptr, ptr @qt1070_driver, ptr @.str, ptr @qt1070_of_match, ptr @qt1070_pm_ops, ptr @qt1070_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_identify._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_identify._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt1070_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @qt1070_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qt1070_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @qt1070_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 393216
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %dev2 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %call3 = tail call ptr @dev_driver_string(ptr noundef %dev2) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i110 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp.i.i = icmp slt i32 %call.i.i110, 0
  br i1 %cmp.i.i, label %qt1070_read.exit.thread.i, label %qt1070_read.exit.i

qt1070_read.exit.thread.i:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.30, i32 noundef %call.i.i110) #8
  br label %do.end.i

qt1070_read.exit.i:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %call.i.i110)
  %cmp.not.i = icmp eq i32 %call.i.i110, 46
  br i1 %cmp.not.i, label %if.end.i, label %qt1070_read.exit.i.do.end.i_crit_edge

qt1070_read.exit.i.do.end.i_crit_edge:            ; preds = %qt1070_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %qt1070_read.exit.i.do.end.i_crit_edge, %qt1070_read.exit.thread.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call.i.i110) #8
  br label %cleanup

if.end.i:                                         ; preds = %qt1070_read.exit.i
  %call.i20.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  %dev.i22.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i21.i, label %do.end6.i, label %if.end13

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.30, i32 noundef %call.i20.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.25, i32 noundef %call.i20.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #9
  %call15 = tail call ptr @input_allocate_device() #5
  %tobool16.not = icmp eq ptr %call7.i.i, null
  %tobool17.not = icmp eq ptr %call15, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.10) #8
  br label %err_free_mem

if.end23:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call7.i.i, align 8
  %input25 = getelementptr inbounds %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %input25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %input25, align 4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %irq27 = getelementptr inbounds %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq27, align 8
  %16 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.12, ptr %call15, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 40, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev.i22.i, ptr %parent, align 8
  %id30 = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 3
  %18 = ptrtoint ptr %id30 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 24, ptr %id30, align 4
  %keycodes = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 17
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 16
  %20 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 15
  %21 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 5
  %22 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %evbit, align 4
  %or.i = or i32 %23, 2
  store i32 %or.i, ptr %evbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 6
  %24 = ptrtoint ptr %keycodes to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 11, ptr %keycodes, align 4
  %25 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keybit, align 4
  %or.i109 = or i32 %26, 2048
  store i32 %or.i109, ptr %keybit, align 4
  %arrayidx33.1 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %arrayidx33.1, align 2
  %28 = load i32, ptr %keybit, align 4
  %or.i109.1 = or i32 %28, 4
  store i32 %or.i109.1, ptr %keybit, align 4
  %arrayidx33.2 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 3, ptr %arrayidx33.2, align 8
  %30 = load i32, ptr %keybit, align 4
  %or.i109.2 = or i32 %30, 8
  store i32 %or.i109.2, ptr %keybit, align 4
  %arrayidx33.3 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 4, ptr %arrayidx33.3, align 2
  %32 = load i32, ptr %keybit, align 4
  %or.i109.3 = or i32 %32, 16
  store i32 %or.i109.3, ptr %keybit, align 4
  %arrayidx33.4 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 5, ptr %arrayidx33.4, align 4
  %34 = load i32, ptr %keybit, align 4
  %or.i109.4 = or i32 %34, 32
  store i32 %or.i109.4, ptr %keybit, align 4
  %arrayidx33.5 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 6, ptr %arrayidx33.5, align 2
  %36 = load i32, ptr %keybit, align 4
  %or.i109.5 = or i32 %36, 64
  store i32 %or.i109.5, ptr %keybit, align 4
  %arrayidx33.6 = getelementptr %struct.qt1070_data, ptr %call7.i.i, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 7, ptr %arrayidx33.6, align 8
  %38 = load i32, ptr %keybit, align 4
  %or.i109.6 = or i32 %38, 128
  store i32 %or.i109.6, ptr %keybit, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 56, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i111 = icmp slt i32 %call.i, 0
  br i1 %cmp.i111, label %do.end.i113, label %if.end23.qt1070_write.exit_crit_edge

if.end23.qt1070_write.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt1070_write.exit

do.end.i113:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.28, i32 noundef %call.i) #8
  br label %qt1070_write.exit

qt1070_write.exit:                                ; preds = %do.end.i113, %if.end23.qt1070_write.exit_crit_edge
  tail call void @msleep(i32 noundef 200) #5
  %call.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 57, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp.i116 = icmp slt i32 %call.i115, 0
  br i1 %cmp.i116, label %do.end.i118, label %qt1070_write.exit.qt1070_write.exit120_crit_edge

qt1070_write.exit.qt1070_write.exit120_crit_edge: ; preds = %qt1070_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt1070_write.exit120

do.end.i118:                                      ; preds = %qt1070_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.28, i32 noundef %call.i115) #8
  br label %qt1070_write.exit120

qt1070_write.exit120:                             ; preds = %do.end.i118, %qt1070_write.exit.qt1070_write.exit120_crit_edge
  tail call void @msleep(i32 noundef 255) #5
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call41 = tail call i32 @request_threaded_irq(i32 noundef %40, ptr noundef null, ptr noundef nonnull @qt1070_interrupt, i32 noundef 8192, ptr noundef %44, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %qt1070_write.exit120
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.14) #8
  br label %err_free_mem

if.end48:                                         ; preds = %qt1070_write.exit120
  %45 = ptrtoint ptr %input25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input25, align 4
  %call50 = tail call i32 @input_register_device(ptr noundef %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.17) #8
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %call60 = tail call ptr @free_irq(i32 noundef %48, ptr noundef nonnull %call7.i.i) #5
  br label %err_free_mem

if.end57:                                         ; preds = %if.end48
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i121 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp slt i32 %call.i121, 0
  br i1 %cmp.i122, label %do.end.i124, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i124:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22.i, ptr noundef nonnull @.str.30, i32 noundef %call.i121) #8
  br label %cleanup

err_free_mem:                                     ; preds = %do.end55, %do.end46, %do.end21
  %err.0 = phi i32 [ %call41, %do.end46 ], [ %call50, %do.end55 ], [ -12, %do.end21 ]
  tail call void @input_free_device(ptr noundef %call15) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %do.end.i124, %if.end57.cleanup_crit_edge, %do.end6.i, %do.end.i, %do.end8, %do.end
  %retval.0 = phi i32 [ %err.0, %err_free_mem ], [ -22, %do.end8 ], [ -19, %do.end ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %do.end.i124 ], [ -19, %do.end.i ], [ -19, %do.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %input = getelementptr inbounds %struct.qt1070_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %input2 = getelementptr inbounds %struct.qt1070_data, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input2, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.qt1070_read.exit_crit_edge

entry.qt1070_read.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt1070_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %call.i) #8
  br label %qt1070_read.exit

qt1070_read.exit:                                 ; preds = %do.end.i, %entry.qt1070_read.exit_crit_edge
  %call.i31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %do.end.i34, label %qt1070_read.exit.qt1070_read.exit35_crit_edge

qt1070_read.exit.qt1070_read.exit35_crit_edge:    ; preds = %qt1070_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %qt1070_read.exit35

do.end.i34:                                       ; preds = %qt1070_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i33 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i33, ptr noundef nonnull @.str.30, i32 noundef %call.i31) #8
  br label %qt1070_read.exit35

qt1070_read.exit35:                               ; preds = %do.end.i34, %qt1070_read.exit.qt1070_read.exit35_crit_edge
  %last_keys = getelementptr inbounds %struct.qt1070_data, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_keys, align 2
  %6 = and i8 %5, 1
  %and10 = zext i8 %6 to i32
  %conv11 = and i32 %call.i31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %and10)
  %cmp12.not = icmp eq i32 %conv11, %and10
  br i1 %cmp12.not, label %qt1070_read.exit35.if.end_crit_edge, label %if.then

qt1070_read.exit35.if.end_crit_edge:              ; preds = %qt1070_read.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %qt1070_read.exit35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv14 = zext i16 %8 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14, i32 noundef %conv11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %qt1070_read.exit35.if.end_crit_edge
  %9 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %last_keys, align 2
  %11 = and i8 %10, 2
  %and10.1 = zext i8 %11 to i32
  %conv11.1 = and i32 %call.i31, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.1, i32 %and10.1)
  %cmp12.not.1 = icmp eq i32 %conv11.1, %and10.1
  br i1 %cmp12.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.1, align 2
  %conv14.1 = zext i16 %13 to i32
  %conv11.1.lobit = lshr exact i32 %conv11.1, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.1, i32 noundef %conv11.1.lobit) #5
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %14 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %last_keys, align 2
  %16 = and i8 %15, 4
  %and10.2 = zext i8 %16 to i32
  %conv11.2 = and i32 %call.i31, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.2, i32 %and10.2)
  %cmp12.not.2 = icmp eq i32 %conv11.2, %and10.2
  br i1 %cmp12.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.2, align 2
  %conv14.2 = zext i16 %18 to i32
  %conv11.2.lobit = lshr exact i32 %conv11.2, 2
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.2, i32 noundef %conv11.2.lobit) #5
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %19 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_keys, align 2
  %21 = and i8 %20, 8
  %and10.3 = zext i8 %21 to i32
  %conv11.3 = and i32 %call.i31, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.3, i32 %and10.3)
  %cmp12.not.3 = icmp eq i32 %conv11.3, %and10.3
  br i1 %cmp12.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.3, align 2
  %conv14.3 = zext i16 %23 to i32
  %conv11.3.lobit = lshr exact i32 %conv11.3, 3
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.3, i32 noundef %conv11.3.lobit) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %24 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_keys, align 2
  %26 = and i8 %25, 16
  %and10.4 = zext i8 %26 to i32
  %conv11.4 = and i32 %call.i31, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.4, i32 %and10.4)
  %cmp12.not.4 = icmp eq i32 %conv11.4, %and10.4
  br i1 %cmp12.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.4, align 2
  %conv14.4 = zext i16 %28 to i32
  %conv11.4.lobit = lshr exact i32 %conv11.4, 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.4, i32 noundef %conv11.4.lobit) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %29 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %last_keys, align 2
  %31 = and i8 %30, 32
  %and10.5 = zext i8 %31 to i32
  %conv11.5 = and i32 %call.i31, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.5, i32 %and10.5)
  %cmp12.not.5 = icmp eq i32 %conv11.5, %and10.5
  br i1 %cmp12.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.5 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.5, align 2
  %conv14.5 = zext i16 %33 to i32
  %conv11.5.lobit = lshr exact i32 %conv11.5, 5
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.5, i32 noundef %conv11.5.lobit) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %34 = ptrtoint ptr %last_keys to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_keys, align 2
  %36 = and i8 %35, 64
  %and10.6 = zext i8 %36 to i32
  %conv11.6 = and i32 %call.i31, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.6, i32 %and10.6)
  %cmp12.not.6 = icmp eq i32 %conv11.6, %and10.6
  br i1 %cmp12.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.6 = getelementptr %struct.qt1070_data, ptr %dev_id, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.6, align 2
  %conv14.6 = zext i16 %38 to i32
  %conv11.6.lobit = lshr exact i32 %conv11.6, 6
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv14.6, i32 noundef %conv11.6.lobit) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %conv = trunc i32 %call.i31 to i8
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %39 = ptrtoint ptr %last_keys to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %last_keys, align 2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.qt1070_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qt1070_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.qt1070_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_qt1070__288_283_qt1070_driver_init6, !1, !"__initcall__kmod_qt1070__288_283_qt1070_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/qt1070.c", i32 283, i32 1}
!2 = !{ptr @__exitcall_qt1070_driver_exit, !1, !"__exitcall_qt1070_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/qt1070.c", i32 285, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/qt1070.c", i32 286, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/qt1070.c", i32 287, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/qt1070.c", i32 274, i32 11}
!12 = !{ptr @qt1070_driver, !13, !"qt1070_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/qt1070.c", i32 272, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/qt1070.c", i32 139, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @qt1070_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @qt1070_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/qt1070.c", i32 145, i32 3}
!24 = !{ptr @qt1070_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qt1070_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/qt1070.c", i32 156, i32 3}
!28 = !{ptr @qt1070_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qt1070_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/qt1070.c", i32 165, i32 16}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/qt1070.c", i32 193, i32 3}
!34 = !{ptr @qt1070_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qt1070_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/qt1070.c", i32 200, i32 3}
!38 = !{ptr @qt1070_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qt1070_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/keyboard/qt1070.c", i32 87, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qt1070_identify._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @qt1070_identify._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/qt1070.c", i32 94, i32 3}
!47 = !{ptr @qt1070_identify._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qt1070_identify._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/qt1070.c", i32 98, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @qt1070_identify._entry.24, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @qt1070_identify._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"qt1070_key2code", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/qt1070.c", i32 43, i32 29}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/qt1070.c", i32 74, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qt1070_write._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @qt1070_write._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/qt1070.c", i32 62, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @qt1070_read._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @qt1070_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @qt1070_of_match, !67, !"qt1070_of_match", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/qt1070.c", i32 265, i32 34}
!68 = !{ptr @qt1070_pm_ops, !69, !"qt1070_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/qt1070.c", i32 256, i32 8}
!70 = !{ptr @qt1070_id, !71, !"qt1070_id", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/qt1070.c", i32 258, i32 35}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
