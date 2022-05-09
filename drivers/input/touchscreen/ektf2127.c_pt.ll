; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ektf2127.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ektf2127.c"
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
%struct.ektf2127_ts = type { ptr, ptr, ptr, %struct.touchscreen_properties }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_mt_pos = type { i16, i16 }

@__initcall__kmod_ektf2127__289_358_ektf2127_driver_init6 = internal global ptr @ektf2127_driver_init, section ".initcall6.init", align 4
@ektf2127_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ektf2127_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ektf2127_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ektf2127_pm_ops, ptr null, ptr null }, ptr @ektf2127_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ektf2127_driver_exit = internal global ptr @ektf2127_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [67 x i8] c"ektf2127.description=ELAN eKTF2127/eKTF2132 I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"ektf2127.author=Michel Verlaan, Siebren Vroegindeweij\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"ektf2127.file=drivers/input/touchscreen/ektf2127\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"ektf2127.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan_ektf2127\00", [18 x i8] zeroinitializer }, align 32
@ektf2127_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ektf2127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"elan,ektf2132\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ektf2127_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ektf2127_suspend, ptr @ektf2127_resume, ptr @ektf2127_suspend, ptr @ektf2127_resume, ptr @ektf2127_suspend, ptr @ektf2127_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ektf2127_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ektf2127\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ektf2132\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ektf2127_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error no irq specified\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ektf2127_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/touchscreen/ektf2127.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ektf2127_probe._entry_ptr = internal global ptr @ektf2127_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@ektf2127_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error getting power gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ektf2127_probe._entry_ptr.9 = internal global ptr @ektf2127_probe._entry.7, section ".printk_index", align 4
@ektf2127_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error requesting irq: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ektf2127_probe._entry_ptr.12 = internal global ptr @ektf2127_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"width\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"height\00", [25 x i8] zeroinitializer }, align 32
@ektf2127_query_dimension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request %s: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ektf2127_query_dimension\00", [39 x i8] zeroinitializer }, align 32
@ektf2127_query_dimension._entry_ptr = internal global ptr @ektf2127_query_dimension._entry, section ".printk_index", align 4
@ektf2127_query_dimension._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to receive %s data: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ektf2127_query_dimension._entry_ptr.19 = internal global ptr @ektf2127_query_dimension._entry.17, section ".printk_index", align 4
@ektf2127_query_dimension._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected %s data: %#02x %#02x\0A\00", [63 x i8] zeroinitializer }, align 32
@ektf2127_query_dimension._entry_ptr.22 = internal global ptr @ektf2127_query_dimension._entry.20, section ".printk_index", align 4
@ektf2127_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error reading touch data: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ektf2127_irq\00", [19 x i8] zeroinitializer }, align 32
@ektf2127_irq._entry_ptr = internal global ptr @ektf2127_irq._entry, section ".printk_index", align 4
@ektf2127_irq.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ektf2127\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Environment is electrically noisy\0A\00", [61 x i8] zeroinitializer }, align 32
@ektf2127_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected packet header byte %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@ektf2127_irq._entry_ptr.29 = internal global ptr @ektf2127_irq._entry.27, section ".printk_index", align 4
@ektf2127_report_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too many touches %d > %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ektf2127_report_event\00", [42 x i8] zeroinitializer }, align 32
@ektf2127_report_event._entry_ptr = internal global ptr @ektf2127_report_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 64, i64 85, i64 90, i64 93, i64 102]
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ektf2127_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 349, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 351, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"ektf2127_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 334, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ektf2127_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 204, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"ektf2127_i2c_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 342, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 258, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 267, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 271, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 317, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 210, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 210, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 224, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 234, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 239, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 131, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 146, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 154, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [40 x i8] c"../drivers/input/touchscreen/ektf2127.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 78, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ektf2127_driver_exit, ptr @__initcall__kmod_ektf2127__289_358_ektf2127_driver_init6, ptr @ektf2127_driver_exit, ptr @ektf2127_irq._entry, ptr @ektf2127_irq._entry.27, ptr @ektf2127_irq._entry_ptr, ptr @ektf2127_irq._entry_ptr.29, ptr @ektf2127_probe._entry, ptr @ektf2127_probe._entry.10, ptr @ektf2127_probe._entry.7, ptr @ektf2127_probe._entry_ptr, ptr @ektf2127_probe._entry_ptr.12, ptr @ektf2127_probe._entry_ptr.9, ptr @ektf2127_query_dimension._entry, ptr @ektf2127_query_dimension._entry.17, ptr @ektf2127_query_dimension._entry.20, ptr @ektf2127_query_dimension._entry_ptr, ptr @ektf2127_query_dimension._entry_ptr.19, ptr @ektf2127_query_dimension._entry_ptr.22, ptr @ektf2127_report_event._entry, ptr @ektf2127_report_event._entry_ptr, ptr @ektf2127_driver, ptr @.str, ptr @ektf2127_of_match, ptr @ektf2127_pm_ops, ptr @ektf2127_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_query_dimension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_query_dimension._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_query_dimension._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ektf2127_report_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ektf2127_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ektf2127_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ektf2127_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 7) #5
  %power_gpios = getelementptr inbounds %struct.ektf2127_ts, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %power_gpios to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %power_gpios, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end4
  %cmp.not = icmp eq ptr %call5, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then8.cleanup_crit_edge, label %do.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %4) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call17 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %5 = ptrtoint ptr %call17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %call17, align 8
  %id22 = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 3
  %6 = ptrtoint ptr %id22 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 24, ptr %id22, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 31
  %7 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ektf2127_start, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 32
  %8 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ektf2127_stop, ptr %close, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  tail call void @msleep(i32 noundef 20) #5
  %call.i110 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 1) #5
  %call27 = call fastcc i32 @ektf2127_query_dimension(ptr noundef %client, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end20.cleanup_crit_edge, label %if.end30

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %call31 = call fastcc i32 @ektf2127_query_dimension(ptr noundef %client, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @input_set_abs_params(ptr noundef nonnull %call17, i32 noundef 53, i32 noundef 0, i32 noundef %call27, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %call17, i32 noundef 54, i32 noundef 0, i32 noundef %call31, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.ektf2127_ts, ptr %call.i, i32 0, i32 3
  call void @touchscreen_parse_properties(ptr noundef nonnull %call17, i1 noundef zeroext true, ptr noundef %prop) #5
  %call35 = call i32 @input_mt_init_slots(ptr noundef nonnull %call17, i32 noundef 5, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %input39 = getelementptr inbounds %struct.ektf2127_ts, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %input39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %input39, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call17, i32 0, i32 40, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call43 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %13, ptr noundef null, ptr noundef nonnull @ektf2127_irq, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call43) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %14 = ptrtoint ptr %input39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input39, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %21) #5
  %power_gpios.i = getelementptr inbounds %struct.ektf2127_ts, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %power_gpios.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %power_gpios.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 0) #5
  %call51 = call i32 @input_register_device(ptr noundef nonnull %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i111 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i111 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i111, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %do.end48, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end14, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call43, %do.end48 ], [ 0, %if.end54 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %4, %do.end14 ], [ -517, %if.then8.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call27, %if.end20.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_start(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call void @enable_irq(i32 noundef %5) #5
  %power_gpios = getelementptr inbounds %struct.ektf2127_ts, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %power_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_gpios, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ektf2127_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %power_gpios = getelementptr inbounds %struct.ektf2127_ts, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %power_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power_gpios, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ektf2127_query_dimension(ptr noundef %client, i1 noundef zeroext %width) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %cond = select i1 %width, ptr @.str.13, ptr @.str.14
  %conv = select i1 %width, i8 99, i8 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 83, ptr %buf, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp12, i32 %call.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, i32 noundef %spec.select) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 20) #5
  %call.i74 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i74)
  %cmp17.not = icmp eq i32 %call.i74, 4
  br i1 %cmp17.not, label %if.end29, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp20 = icmp slt i32 %call.i74, 0
  %spec.select73 = select i1 %cmp20, i32 %call.i74, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, i32 noundef %spec.select73) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %8)
  %cmp32.not = icmp eq i8 %8, 82
  br i1 %cmp32.not, label %lor.lhs.false, label %if.end29.do.end42_crit_edge

if.end29.do.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

lor.lhs.false:                                    ; preds = %if.end29
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %conv)
  %cmp37.not = icmp eq i8 %10, %conv
  br i1 %cmp37.not, label %if.end47, label %lor.lhs.false.do.end42_crit_edge

lor.lhs.false.do.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false.do.end42_crit_edge, %if.end29.do.end42_crit_edge
  %conv44 = zext i8 %8 to i32
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %conv46 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond, i32 noundef %conv44, i32 noundef %conv46) #8
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  %15 = and i8 %14, -16
  %and = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %and, 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %conv51 = zext i8 %17 to i32
  %or = add nsw i32 %conv51, -1
  %sub = add nsw i32 %or, %shl
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end42, %if.then19, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select73, %if.then19 ], [ -5, %do.end42 ], [ %sub, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %touches.i = alloca [5 x %struct.input_mt_pos], align 2
  %slots.i = alloca [5 x i32], align 4
  %buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 7
  %9 = call ptr @memset(ptr %buf, i32 255, i32 21)
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 21, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 21
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call.i) #8
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %do.end24 [
    i8 93, label %sw.bb
    i8 90, label %sw.bb4
    i8 64, label %sw.bb6
    i8 85, label %if.end.out_crit_edge
    i8 102, label %if.end.out_crit_edge38
  ]

if.end.out_crit_edge38:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %touches.i) #5
  %13 = call ptr @memset(ptr %touches.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %slots.i) #5
  %14 = call ptr @memset(ptr %slots.i, i32 255, i32 20)
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %17 = and i8 %16, 7
  %and.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp.i = icmp ugt i8 %17, 5
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %and.i, i32 noundef 5) #8
  br label %for.body.i.preheader.i

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp51.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp51.not.i.i, label %ektf2127_parse_coordinates.exit.thread.i, label %if.end.i.for.body.i.preheader.i_crit_edge

if.end.i.for.body.i.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader.i

ektf2127_parse_coordinates.exit.thread.i:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %input43.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 1
  %20 = ptrtoint ptr %input43.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input43.i, align 4
  %call44.i = call i32 @input_mt_assign_slots(ptr noundef %21, ptr noundef nonnull %slots.i, ptr noundef nonnull %touches.i, i32 noundef %and.i, i32 noundef 0) #5
  br label %ektf2127_report_event.exit

for.body.i.preheader.i:                           ; preds = %if.end.i.for.body.i.preheader.i_crit_edge, %if.end.thread.i
  %touch_count.037.i = phi i32 [ 5, %if.end.thread.i ], [ %and.i, %if.end.i.for.body.i.preheader.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.052.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %mul.i.i = mul nuw nsw i32 %i.052.i.i, 3
  %add.i.i = add nuw nsw i32 %mul.i.i, 2
  %arrayidx.i.i = getelementptr i8, ptr %buf, i32 %add.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i, align 1
  %24 = and i8 %23, 15
  %arrayidx2.i.i = getelementptr %struct.input_mt_pos, ptr %touches.i, i32 %i.052.i.i
  %25 = zext i8 %24 to i16
  %shl.i.i = shl nuw nsw i16 %25, 8
  %add7.i.i = add nuw nsw i32 %mul.i.i, 4
  %arrayidx8.i.i = getelementptr i8, ptr %buf, i32 %add7.i.i
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %27 to i16
  %or.i.i = or i16 %shl.i.i, %conv9.i.i
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or.i.i, ptr %arrayidx2.i.i, align 2
  %29 = and i8 %23, -16
  %y.i.i = getelementptr %struct.input_mt_pos, ptr %touches.i, i32 %i.052.i.i, i32 1
  %30 = zext i8 %29 to i16
  %shl22.i.i = shl nuw nsw i16 %30, 4
  %add24.i.i = add nuw nsw i32 %mul.i.i, 3
  %arrayidx25.i.i = getelementptr i8, ptr %buf, i32 %add24.i.i
  %31 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx25.i.i, align 1
  %conv26.i.i = zext i8 %32 to i16
  %or30.i.i = or i16 %shl22.i.i, %conv26.i.i
  %33 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or30.i.i, ptr %y.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %touch_count.037.i
  br i1 %exitcond.not.i.i, label %ektf2127_parse_coordinates.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

ektf2127_parse_coordinates.exit.i:                ; preds = %for.body.i.i
  %input.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 1
  %34 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input.i, align 4
  %call.i33 = call i32 @input_mt_assign_slots(ptr noundef %35, ptr noundef nonnull %slots.i, ptr noundef nonnull %touches.i, i32 noundef %touch_count.037.i, i32 noundef 0) #5
  %prop.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ektf2127_parse_coordinates.exit.i
  %i.034.i = phi i32 [ 0, %ektf2127_parse_coordinates.exit.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input.i, align 4
  %arrayidx7.i = getelementptr [5 x i32], ptr %slots.i, i32 0, i32 %i.034.i
  %38 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.i, align 4
  call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 47, i32 noundef %39) #5
  %40 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input.i, align 4
  %call9.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %41, i32 noundef 0, i1 noundef zeroext true) #5
  %42 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input.i, align 4
  %arrayidx11.i = getelementptr [5 x %struct.input_mt_pos], ptr %touches.i, i32 0, i32 %i.034.i
  %44 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = sext i16 %45 to i32
  %y.i = getelementptr [5 x %struct.input_mt_pos], ptr %touches.i, i32 0, i32 %i.034.i, i32 1
  %46 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %y.i, align 2
  %conv14.i = sext i16 %47 to i32
  call void @touchscreen_report_pos(ptr noundef %43, ptr noundef %prop.i, i32 noundef %conv12.i, i32 noundef %conv14.i, i1 noundef zeroext true) #5
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %touch_count.037.i
  br i1 %exitcond.not.i, label %for.body.i.ektf2127_report_event.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.ektf2127_report_event.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ektf2127_report_event.exit

ektf2127_report_event.exit:                       ; preds = %for.body.i.ektf2127_report_event.exit_crit_edge, %ektf2127_parse_coordinates.exit.thread.i
  %input45.i = phi ptr [ %input43.i, %ektf2127_parse_coordinates.exit.thread.i ], [ %input.i, %for.body.i.ektf2127_report_event.exit_crit_edge ]
  %48 = ptrtoint ptr %input45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input45.i, align 4
  call void @input_mt_sync_frame(ptr noundef %49) #5
  %50 = ptrtoint ptr %input45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input45.i, align 4
  call void @input_event(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %slots.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %touches.i) #5
  br label %out

sw.bb4:                                           ; preds = %if.end
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %8, align 1
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.i = icmp ne i8 %54, 0
  %input.i.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 1
  %55 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input.i.i, align 4
  call void @input_event(ptr noundef %56, i32 noundef 3, i32 noundef 47, i32 noundef 0) #5
  %57 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input.i.i, align 4
  %call.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %58, i32 noundef 0, i1 noundef zeroext %tobool.i) #5
  br i1 %tobool.i, label %if.then.i.i, label %sw.bb4.ektf2127_report2_contact.exit.i_crit_edge

sw.bb4.ektf2127_report2_contact.exit.i_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ektf2127_report2_contact.exit.i

if.then.i.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %2, align 1
  %conv.i.i = zext i8 %60 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i, 4
  %shl.i.i35 = and i32 %and.i.i, 3840
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %3, align 1
  %conv4.i.i = zext i8 %62 to i32
  %or.i.i36 = or i32 %shl.i.i35, %conv4.i.i
  %and7.i.i = shl nuw nsw i32 %conv.i.i, 8
  %shl8.i.i = and i32 %and7.i.i, 3840
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %4, align 1
  %conv10.i.i = zext i8 %64 to i32
  %or11.i.i = or i32 %shl8.i.i, %conv10.i.i
  %65 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input.i.i, align 4
  %prop.i.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 3
  call void @touchscreen_report_pos(ptr noundef %66, ptr noundef %prop.i.i, i32 noundef %or.i.i36, i32 noundef %or11.i.i, i1 noundef zeroext true) #5
  br label %ektf2127_report2_contact.exit.i

ektf2127_report2_contact.exit.i:                  ; preds = %if.then.i.i, %sw.bb4.ektf2127_report2_contact.exit.i_crit_edge
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %8, align 1
  %69 = and i8 %68, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool7.i = icmp ne i8 %69, 0
  %70 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %input.i.i, align 4
  call void @input_event(ptr noundef %71, i32 noundef 3, i32 noundef 47, i32 noundef 1) #5
  %72 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input.i.i, align 4
  %call.i18.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %73, i32 noundef 0, i1 noundef zeroext %tobool7.i) #5
  br i1 %tobool7.i, label %if.then.i31.i, label %ektf2127_report2_contact.exit.i.ektf2127_report2_event.exit_crit_edge

ektf2127_report2_contact.exit.i.ektf2127_report2_event.exit_crit_edge: ; preds = %ektf2127_report2_contact.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ektf2127_report2_event.exit

if.then.i31.i:                                    ; preds = %ektf2127_report2_contact.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %5, align 1
  %conv.i19.i = zext i8 %75 to i32
  %and.i20.i = shl nuw nsw i32 %conv.i19.i, 4
  %shl.i21.i = and i32 %and.i20.i, 3840
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 1
  %conv4.i23.i = zext i8 %77 to i32
  %or.i24.i = or i32 %shl.i21.i, %conv4.i23.i
  %and7.i25.i = shl nuw nsw i32 %conv.i19.i, 8
  %shl8.i26.i = and i32 %and7.i25.i, 3840
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %7, align 1
  %conv10.i28.i = zext i8 %79 to i32
  %or11.i29.i = or i32 %shl8.i26.i, %conv10.i28.i
  %80 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %input.i.i, align 4
  %prop.i30.i = getelementptr inbounds %struct.ektf2127_ts, ptr %dev_id, i32 0, i32 3
  call void @touchscreen_report_pos(ptr noundef %81, ptr noundef %prop.i30.i, i32 noundef %or.i24.i, i32 noundef %or11.i29.i, i1 noundef zeroext true) #5
  br label %ektf2127_report2_event.exit

ektf2127_report2_event.exit:                      ; preds = %if.then.i31.i, %ektf2127_report2_contact.exit.i.ektf2127_report2_event.exit_crit_edge
  %82 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %input.i.i, align 4
  call void @input_mt_sync_frame(ptr noundef %83) #5
  %84 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input.i.i, align 4
  call void @input_event(ptr noundef %85, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

sw.bb6:                                           ; preds = %if.end
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %87)
  %cmp9 = icmp eq i8 %87, 65
  br i1 %cmp9, label %do.body12, label %sw.bb6.out_crit_edge

sw.bb6.out_crit_edge:                             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body12:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ektf2127_irq.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ektf2127_irq, %if.then16)) #5
          to label %out [label %if.then16], !srcloc !82

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ektf2127_irq.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.26) #5
  br label %out

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %conv) #8
  br label %out

out:                                              ; preds = %do.end24, %if.then16, %do.body12, %sw.bb6.out_crit_edge, %ektf2127_report2_event.exit, %ektf2127_report_event.exit, %if.end.out_crit_edge, %if.end.out_crit_edge38, %do.end
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.ektf2127_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %13) #5
  %power_gpios.i = getelementptr inbounds %struct.ektf2127_ts, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %power_gpios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_gpios.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %mutex5 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ektf2127_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.ektf2127_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #5
  %power_gpios.i = getelementptr inbounds %struct.ektf2127_ts, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %power_gpios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_gpios.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %mutex6 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex6) #5
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

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_ektf2127__289_358_ektf2127_driver_init6, !1, !"__initcall__kmod_ektf2127__289_358_ektf2127_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 358, i32 1}
!2 = !{ptr @__exitcall_ektf2127_driver_exit, !1, !"__exitcall_ektf2127_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 360, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 361, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 362, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 351, i32 11}
!12 = !{ptr @ektf2127_driver, !13, !"ektf2127_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 349, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 258, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ektf2127_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ektf2127_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 267, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 271, i32 4}
!26 = !{ptr @ektf2127_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ektf2127_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 317, i32 3}
!30 = !{ptr @ektf2127_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ektf2127_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 210, i32 29}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 210, i32 39}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 224, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ektf2127_query_dimension._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ektf2127_query_dimension._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 234, i32 3}
!43 = !{ptr @ektf2127_query_dimension._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ektf2127_query_dimension._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 239, i32 3}
!47 = !{ptr @ektf2127_query_dimension._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ektf2127_query_dimension._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 131, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ektf2127_irq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ektf2127_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 146, i32 4}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ektf2127_irq.__UNIQUE_ID_ddebug288, !55, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 154, i32 3}
!60 = !{ptr @ektf2127_irq._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ektf2127_irq._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 78, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ektf2127_report_event._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @ektf2127_report_event._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ektf2127_of_match, !68, !"ektf2127_of_match", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 334, i32 34}
!69 = !{ptr @ektf2127_pm_ops, !70, !"ektf2127_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 204, i32 8}
!71 = !{ptr @ektf2127_i2c_id, !72, !"ektf2127_i2c_id", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/ektf2127.c", i32 342, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148174597, i64 2148174602, i64 2148174615, i64 2148174659, i64 2148174693, i64 2148174714}
