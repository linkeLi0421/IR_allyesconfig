; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-s35390a.c_pt.bc'
source_filename = "../drivers/rtc/rtc-s35390a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.s35390a = type { [8 x ptr], ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_s35390a__292_509_s35390a_driver_init6 = internal global ptr @s35390a_driver_init, section ".initcall6.init", align 4
@s35390a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s35390a_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s35390a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s35390a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s35390a_driver_exit = internal global ptr @s35390a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [60 x i8] c"rtc_s35390a.author=Byron Bradley <byron.bbradley@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [43 x i8] c"rtc_s35390a.description=S35390A RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [41 x i8] c"rtc_s35390a.file=drivers/rtc/rtc-s35390a\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [24 x i8] c"rtc_s35390a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-s35390a\00", [20 x i8] zeroinitializer }, align 32
@s35390a_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sii,s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@s35390a_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s35390a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s35390a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Address %02x unavailable\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s35390a_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-s35390a.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s35390a_probe._entry_ptr = internal global ptr @s35390a_probe._entry, section ".printk_index", align 4
@s35390a_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error resetting chip\0A\00", [42 x i8] zeroinitializer }, align 32
@s35390a_probe._entry_ptr.8 = internal global ptr @s35390a_probe._entry.6, section ".printk_index", align 4
@s35390a_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error disabling alarm\00", [42 x i8] zeroinitializer }, align 32
@s35390a_probe._entry_ptr.11 = internal global ptr @s35390a_probe._entry.9, section ".printk_index", align 4
@s35390a_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error disabling test mode\0A\00", [37 x i8] zeroinitializer }, align 32
@s35390a_probe._entry_ptr.14 = internal global ptr @s35390a_probe._entry.12, section ".printk_index", align 4
@s35390a_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @s35390a_rtc_ioctl, ptr @s35390a_rtc_read_time, ptr @s35390a_rtc_set_time, ptr @s35390a_rtc_read_alarm, ptr @s35390a_rtc_set_alarm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@s35390a_rtc_read_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_s35390a\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s35390a_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@s35390a_rtc_set_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s35390a_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d mday=%d, mon=%d, year=%d, wday=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@s35390a_rtc_read_alarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s35390a_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: alm is mins=%d, hours=%d, wday=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@s35390a_rtc_set_alarm.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s35390a_rtc_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: alm is secs=%d, mins=%d, hours=%d mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"s35390a_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 500, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 502, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"s35390a_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 58, i32 49 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"s35390a_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 52, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 448, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 460, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 474, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 480, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"s35390a_rtc_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 415, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 174, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 268, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 217, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 378, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [29 x i8] c"../drivers/rtc/rtc-s35390a.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 283, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_s35390a_driver_exit, ptr @__initcall__kmod_rtc_s35390a__292_509_s35390a_driver_init6, ptr @s35390a_driver_exit, ptr @s35390a_probe._entry, ptr @s35390a_probe._entry.12, ptr @s35390a_probe._entry.6, ptr @s35390a_probe._entry.9, ptr @s35390a_probe._entry_ptr, ptr @s35390a_probe._entry_ptr.11, ptr @s35390a_probe._entry_ptr.14, ptr @s35390a_probe._entry_ptr.8, ptr @s35390a_driver, ptr @.str, ptr @s35390a_of_match, ptr @s35390a_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @s35390a_rtc_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s35390a_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s35390a_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s35390a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @s35390a_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msg.i10.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i133 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [1 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  %status1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status1) #6
  %1 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status1, align 1, !annotation !73
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %conv8 = add i16 %13, 1
  %call9 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %11, i16 noundef zeroext %conv8) #6
  %arrayidx11 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %arrayidx11, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.do.end_crit_edge, label %for.inc

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %if.end5.do.end_crit_edge
  %i.0149.lcssa = phi i32 [ 1, %if.end5.do.end_crit_edge ], [ 2, %for.inc.do.end_crit_edge ], [ 3, %for.inc.1.do.end_crit_edge ], [ 4, %for.inc.2.do.end_crit_edge ], [ 5, %for.inc.3.do.end_crit_edge ], [ 6, %for.inc.4.do.end_crit_edge ], [ 7, %for.inc.5.do.end_crit_edge ]
  %arrayidx11.le = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 %i.0149.lcssa
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv17 = zext i16 %16 to i32
  %add18 = add nuw nsw i32 %i.0149.lcssa, %conv17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %add18) #9
  %17 = ptrtoint ptr %arrayidx11.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11.le, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end5
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr, align 2
  %conv8.1 = add i16 %23, 2
  %call9.1 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %21, i16 noundef zeroext %conv8.1) #6
  %arrayidx11.1 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.1, ptr %arrayidx11.1, align 4
  %cmp.i.1 = icmp ugt ptr %call9.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr, align 2
  %conv8.2 = add i16 %28, 3
  %call9.2 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %26, i16 noundef zeroext %conv8.2) #6
  %arrayidx11.2 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.2, ptr %arrayidx11.2, align 4
  %cmp.i.2 = icmp ugt ptr %call9.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  %conv8.3 = add i16 %33, 4
  %call9.3 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %31, i16 noundef zeroext %conv8.3) #6
  %arrayidx11.3 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.3, ptr %arrayidx11.3, align 4
  %cmp.i.3 = icmp ugt ptr %call9.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.do.end_crit_edge, label %for.inc.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr, align 2
  %conv8.4 = add i16 %38, 5
  %call9.4 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %36, i16 noundef zeroext %conv8.4) #6
  %arrayidx11.4 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.4, ptr %arrayidx11.4, align 4
  %cmp.i.4 = icmp ugt ptr %call9.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.inc.3.do.end_crit_edge, label %for.inc.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr, align 2
  %conv8.5 = add i16 %43, 6
  %call9.5 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %41, i16 noundef zeroext %conv8.5) #6
  %arrayidx11.5 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.5, ptr %arrayidx11.5, align 4
  %cmp.i.5 = icmp ugt ptr %call9.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.inc.4.do.end_crit_edge, label %for.inc.5

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.5:                                        ; preds = %for.inc.4
  %45 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter, align 8
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr, align 2
  %conv8.6 = add i16 %48, 7
  %call9.6 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %46, i16 noundef zeroext %conv8.6) #6
  %arrayidx11.6 = getelementptr [8 x ptr], ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.6, ptr %arrayidx11.6, align 4
  %cmp.i.6 = icmp ugt ptr %call9.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.inc.5.do.end_crit_edge, label %for.inc.6

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.6:                                        ; preds = %for.inc.5
  %call23 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %rtc = getelementptr inbounds %struct.s35390a, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call23, ptr %rtc, align 4
  %cmp.i129 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then26, label %if.end29

if.then26:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %for.inc.6
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %54 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 131071, ptr %54, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr2.i.i, align 2
  %58 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %status1, ptr %buf4.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 3
  %61 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i130 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i130)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i130, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br i1 %cmp.not.i.not.i, label %if.end.i, label %do.end36

if.end.i:                                         ; preds = %if.end29
  %63 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %status1, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %if.end.i.if.end37_crit_edge, label %if.then1.i

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %if.end37

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end37:                                         ; preds = %if.then1.i, %if.end.i.if.end37_crit_edge
  %66 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %status1, align 1
  %68 = lshr i8 %67, 6
  %.lobit = and i8 %68, 1
  %69 = zext i8 %.lobit to i32
  %70 = getelementptr inbounds %struct.s35390a, ptr %call.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %70, align 4
  %72 = and i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool45.not = icmp eq i8 %72, 0
  br i1 %tobool45.not, label %if.else55, label %if.then46

if.then46:                                        ; preds = %if.end37
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %buf, align 1
  %74 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %76 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 131071, ptr %76, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %addr2.i, align 2
  %80 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %buf, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 3
  %83 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i, align 8
  %call.i132 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i132)
  %cmp.not.i.not = icmp eq i32 %call.i132, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not, label %if.then46.if.end64_crit_edge, label %do.end53

if.then46.if.end64_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.else55:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #6
  %85 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %buf.i, align 1, !annotation !73
  %86 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i133) #6
  %88 = getelementptr inbounds i8, ptr %msg.i.i133, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 131071, ptr %88, align 4
  %addr2.i.i134 = getelementptr inbounds %struct.i2c_client, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %addr2.i.i134 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %addr2.i.i134, align 2
  %92 = ptrtoint ptr %msg.i.i133 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %msg.i.i133, align 4
  %flags.i.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i.i135 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %flags.i.i135, align 2
  %buf4.i.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 3
  %94 = ptrtoint ptr %buf4.i.i136 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %buf.i, ptr %buf4.i.i136, align 4
  %adapter.i.i137 = getelementptr inbounds %struct.i2c_client, ptr %87, i32 0, i32 3
  %95 = ptrtoint ptr %adapter.i.i137 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter.i.i137, align 8
  %call.i.i138 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i.i133, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i138)
  %cmp.not.i.not.i139 = icmp eq i32 %call.i.i138, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i133) #6
  br i1 %cmp.not.i.not.i139, label %if.end.i141, label %if.else55.do.end62_crit_edge

if.else55.do.end62_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.end.i141:                                      ; preds = %if.else55
  %97 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %buf.i, align 1
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i140 = icmp eq i8 %99, 0
  br i1 %tobool.not.i140, label %if.end.i141.s35390a_disable_test_mode.exit_crit_edge, label %if.end2.i

if.end.i141.s35390a_disable_test_mode.exit_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %s35390a_disable_test_mode.exit

if.end2.i:                                        ; preds = %if.end.i141
  %and5.i = and i8 %98, -2
  %100 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %and5.i, ptr %buf.i, align 1
  %101 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #6
  %103 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 131071, ptr %103, align 4
  %addr2.i12.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 1
  %105 = ptrtoint ptr %addr2.i12.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr2.i12.i, align 2
  %107 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %msg.i10.i, align 4
  %flags.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i13.i, align 2
  %buf4.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %109 = ptrtoint ptr %buf4.i15.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %buf.i, ptr %buf4.i15.i, align 4
  %adapter.i16.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 3
  %110 = ptrtoint ptr %adapter.i16.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter.i16.i, align 8
  %call.i17.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i17.i)
  %cmp.not.i18.i = icmp eq i32 %call.i17.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #6
  br i1 %cmp.not.i18.i, label %if.end2.i.s35390a_disable_test_mode.exit_crit_edge, label %if.end2.i.do.end62_crit_edge

if.end2.i.do.end62_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.end2.i.s35390a_disable_test_mode.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s35390a_disable_test_mode.exit

s35390a_disable_test_mode.exit:                   ; preds = %if.end2.i.s35390a_disable_test_mode.exit_crit_edge, %if.end.i141.s35390a_disable_test_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  br label %if.end64

do.end62:                                         ; preds = %if.end2.i.do.end62_crit_edge, %if.else55.do.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end64:                                         ; preds = %s35390a_disable_test_mode.exit, %if.then46.if.end64_crit_edge
  call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %112 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @s35390a_rtc_ops, ptr %ops, align 8
  %115 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %115, i32 0, i32 22
  %116 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 946684800, ptr %range_min, align 8
  %117 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %117, i32 0, i32 23
  %118 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 4102444799, ptr %range_max, align 8
  %119 = load ptr, ptr %rtc, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %119, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %features) #6
  %120 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rtc, align 4
  %features70 = getelementptr inbounds %struct.rtc_device, ptr %121, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %features70) #6
  %122 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %status1, align 1
  %124 = and i8 %123, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool74.not = icmp eq i8 %124, 0
  br i1 %tobool74.not, label %if.end64.if.end77_crit_edge, label %if.then75

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then75:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %126, i32 noundef 1, i32 noundef 32) #6
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end64.if.end77_crit_edge
  %127 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rtc, align 4
  %call79 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %128) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end62, %do.end53, %do.end36, %if.then26, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end ], [ %51, %if.then26 ], [ -5, %do.end36 ], [ -5, %do.end53 ], [ %call79, %if.end77 ], [ -5, %do.end62 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %sts = alloca i8, align 1
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sts) #6
  %2 = ptrtoint ptr %sts to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sts, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192813, label %sw.bb
    i32 28692, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %6, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sts, ptr %buf4.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i14 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i14)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i14, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br i1 %cmp.not.i.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %15 = ptrtoint ptr %sts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sts, align 1
  %conv.i = zext i8 %16 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and3.i = lshr i32 %conv.i, 1
  %and3.lobit.i = and i32 %and3.i, 1
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then1.i
  %retval.0.i.ph = phi i32 [ %and3.lobit.i, %if.else.i ], [ 1, %if.then1.i ]
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.ph, ptr %err, align 4
  %18 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 4, i32 -1226833920) #10, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %err, i32 noundef 4) #6
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef nonnull %err, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @s35390a_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %copy_to_user.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb5.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sts) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca [7 x i8], align 1
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %8 = call ptr @memset(ptr %buf, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %status, align 1, !annotation !73
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131071, ptr %12, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr2.i.i, align 2
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %status, ptr %buf4.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br i1 %cmp.not.i.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status, align 1
  %conv.i = zext i8 %22 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %s35390a_read_status.exit, label %s35390a_read_status.exit.thread

s35390a_read_status.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %cleanup

s35390a_read_status.exit:                         ; preds = %if.end.i
  %23 = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %s35390a_read_status.exit.if.end_crit_edge, label %s35390a_read_status.exit.cleanup_crit_edge

s35390a_read_status.exit.cleanup_crit_edge:       ; preds = %s35390a_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

s35390a_read_status.exit.if.end_crit_edge:        ; preds = %s35390a_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %s35390a_read_status.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %26 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr2.i, align 2
  %30 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags.i, align 2
  store i16 7, ptr %26, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %idxprom.i = zext i8 %36 to i32
  %arrayidx.i171 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i171, align 1
  store i8 %38, ptr %buf, align 1
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %idxprom.i.1 = zext i8 %40 to i32
  %arrayidx.i171.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %41 = ptrtoint ptr %arrayidx.i171.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i171.1, align 1
  store i8 %42, ptr %2, align 1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %3, align 1
  %idxprom.i.2 = zext i8 %44 to i32
  %arrayidx.i171.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %45 = ptrtoint ptr %arrayidx.i171.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i171.2, align 1
  store i8 %46, ptr %3, align 1
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %4, align 1
  %idxprom.i.3 = zext i8 %48 to i32
  %arrayidx.i171.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %49 = ptrtoint ptr %arrayidx.i171.3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i171.3, align 1
  store i8 %50, ptr %4, align 1
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %5, align 1
  %idxprom.i.4 = zext i8 %52 to i32
  %arrayidx.i171.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %53 = ptrtoint ptr %arrayidx.i171.4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i171.4, align 1
  store i8 %54, ptr %5, align 1
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %idxprom.i.5 = zext i8 %56 to i32
  %arrayidx.i171.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %57 = ptrtoint ptr %arrayidx.i171.5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i171.5, align 1
  store i8 %58, ptr %6, align 1
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %7, align 1
  %idxprom.i.6 = zext i8 %60 to i32
  %arrayidx.i171.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6
  %61 = ptrtoint ptr %arrayidx.i171.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i171.6, align 1
  store i8 %62, ptr %7, align 1
  %call41 = call i32 @_bcd2bin(i8 noundef zeroext %62) #11
  %63 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call41, ptr %tm, align 4
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %6, align 1
  %call56 = call i32 @_bcd2bin(i8 noundef zeroext %65) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %66 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call56, ptr %tm_min, align 4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %5, align 1
  %twentyfourhour.i = getelementptr inbounds %struct.s35390a, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %twentyfourhour.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %twentyfourhour.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i172 = icmp eq i32 %70, 0
  %and11.i = and i8 %68, 63
  %call26.i = call i32 @_bcd2bin(i8 noundef zeroext %and11.i) #11
  %71 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool31.not.i = icmp eq i8 %71, 0
  %add33.i = add i32 %call26.i, 12
  %spec.select.i = select i1 %tobool31.not.i, i32 %call26.i, i32 %add33.i
  %retval.0.i176 = select i1 %tobool.not.i172, i32 %spec.select.i, i32 %call26.i
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %72 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i176, ptr %tm_hour, align 4
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %4, align 1
  %call73 = call i32 @_bcd2bin(i8 noundef zeroext %74) #11
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %75 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call73, ptr %tm_wday, align 4
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %3, align 1
  %call88 = call i32 @_bcd2bin(i8 noundef zeroext %77) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %78 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call88, ptr %tm_mday, align 4
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %2, align 1
  %call103 = call i32 @_bcd2bin(i8 noundef zeroext %80) #11
  %sub = add i32 %call103, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %81 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub, ptr %tm_mon, align 4
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %buf, align 1
  %call118 = call i32 @_bcd2bin(i8 noundef zeroext %83) #11
  %add121 = add i32 %call118, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %84 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add121, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s35390a_rtc_read_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s35390a_rtc_read_time, %cleanup)) #6
          to label %if.then127 [label %cleanup], !srcloc !75

if.then127:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tm, align 4
  %87 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tm_min, align 4
  %89 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tm_hour, align 4
  %91 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tm_mday, align 4
  %93 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tm_mon, align 4
  %95 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tm_year, align 4
  %97 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s35390a_rtc_read_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %cond.end, %if.end.cleanup_crit_edge, %s35390a_read_status.exit.cleanup_crit_edge, %s35390a_read_status.exit.thread
  %retval.0 = phi i32 [ -22, %s35390a_read_status.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then127 ], [ -22, %s35390a_read_status.exit.thread ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca [7 x i8], align 1
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %status, align 1, !annotation !73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s35390a_rtc_set_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s35390a_rtc_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s35390a_rtc_set_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 131071, ptr %24, align 4
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr2.i.i, align 2
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %status, ptr %buf4.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br i1 %cmp.not.i.not.i, label %if.end.i, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i:                                         ; preds = %do.end
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %status, align 1
  %conv.i = zext i8 %34 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %s35390a_read_status.exit, label %s35390a_read_status.exit.thread

s35390a_read_status.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %if.then8

s35390a_read_status.exit:                         ; preds = %if.end.i
  %35 = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not = icmp eq i32 %35, 0
  br i1 %cmp.not, label %s35390a_read_status.exit.cond.end_crit_edge, label %s35390a_read_status.exit.if.then8_crit_edge

s35390a_read_status.exit.if.then8_crit_edge:      ; preds = %s35390a_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

s35390a_read_status.exit.cond.end_crit_edge:      ; preds = %s35390a_read_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then8:                                         ; preds = %s35390a_read_status.exit.if.then8_crit_edge, %s35390a_read_status.exit.thread
  %call9 = call fastcc i32 @s35390a_init(ptr noundef %1)
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %s35390a_read_status.exit.cond.end_crit_edge, %do.end.cond.end_crit_edge
  %tm_year11 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %36 = ptrtoint ptr %tm_year11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_year11, align 4
  %sub = add i32 %37, -100
  %call18 = call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call18, ptr %buf, align 1
  %tm_mon21 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %39 = ptrtoint ptr %tm_mon21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mon21, align 4
  %add22 = add i32 %40, 1
  %call36 = call zeroext i8 @_bin2bcd(i32 noundef %add22) #11
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call36, ptr %2, align 1
  %tm_mday42 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %42 = ptrtoint ptr %tm_mday42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mday42, align 4
  %call53 = call zeroext i8 @_bin2bcd(i32 noundef %43) #11
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call53, ptr %3, align 1
  %tm_wday59 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %45 = ptrtoint ptr %tm_wday59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_wday59, align 4
  %call70 = call zeroext i8 @_bin2bcd(i32 noundef %46) #11
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %call70, ptr %4, align 1
  %tm_hour76 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %48 = ptrtoint ptr %tm_hour76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_hour76, align 4
  %twentyfourhour.i = getelementptr inbounds %struct.s35390a, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %twentyfourhour.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %twentyfourhour.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i194 = icmp eq i32 %51, 0
  br i1 %tobool.not.i194, label %if.end.i196, label %cond.end.i

cond.end.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %49) #11
  br label %s35390a_hr2reg.exit

if.end.i196:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %49)
  %cmp.i = icmp slt i32 %49, 12
  br i1 %cmp.i, label %cond.end14.i, label %cond.end30.i

cond.end14.i:                                     ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call zeroext i8 @_bin2bcd(i32 noundef %49) #11
  br label %s35390a_hr2reg.exit

cond.end30.i:                                     ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %49, -12
  %call28.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %conv32.i = or i8 %call28.i, 64
  br label %s35390a_hr2reg.exit

s35390a_hr2reg.exit:                              ; preds = %cond.end30.i, %cond.end14.i, %cond.end.i
  %retval.0.i197 = phi i8 [ %call.i, %cond.end.i ], [ %call12.i, %cond.end14.i ], [ %conv32.i, %cond.end30.i ]
  %52 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %53 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %54 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %retval.0.i197, ptr %54, align 1
  %tm_min79 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %56 = ptrtoint ptr %tm_min79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_min79, align 4
  %call90 = call zeroext i8 @_bin2bcd(i32 noundef %57) #11
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call90, ptr %53, align 1
  %59 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm, align 4
  %call107 = call zeroext i8 @_bin2bcd(i32 noundef %60) #11
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call107, ptr %52, align 1
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buf, align 1
  %idxprom.i = zext i8 %63 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  store i8 %65, ptr %buf, align 1
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %2, align 1
  %idxprom.i.1 = zext i8 %67 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %68 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.1, align 1
  store i8 %69, ptr %2, align 1
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %3, align 1
  %idxprom.i.2 = zext i8 %71 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %72 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.2, align 1
  store i8 %73, ptr %3, align 1
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %4, align 1
  %idxprom.i.3 = zext i8 %75 to i32
  %arrayidx.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3
  %76 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.3, align 1
  store i8 %77, ptr %4, align 1
  %78 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %54, align 1
  %idxprom.i.4 = zext i8 %79 to i32
  %arrayidx.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4
  %80 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.4, align 1
  store i8 %81, ptr %54, align 1
  %82 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %53, align 1
  %idxprom.i.5 = zext i8 %83 to i32
  %arrayidx.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5
  %84 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.5, align 1
  store i8 %85, ptr %53, align 1
  %86 = load i8, ptr %52, align 1
  %idxprom.i.6 = zext i8 %86 to i32
  %arrayidx.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.6
  %87 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.6, align 1
  store i8 %88, ptr %52, align 1
  %arrayidx.i198 = getelementptr [8 x ptr], ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i198, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %91 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 524287, ptr %91, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %addr2.i, align 2
  %95 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %97 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 3
  %98 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter.i, align 8
  %call.i199 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i199)
  %cmp.not.i = icmp eq i32 %call.i199, 1
  %..i = select i1 %cmp.not.i, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #6
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  %msg.i154 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  %sts = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !73
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !73
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sts) #6
  %7 = ptrtoint ptr %sts to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %sts, align 1, !annotation !73
  %arrayidx.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 131071, ptr %10, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sts, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %sts to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sts, align 1
  %21 = and i8 %20, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp2.not = icmp eq i8 %21, 2
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %alm, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %23 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %alm, align 4
  %arrayidx.i155 = getelementptr [8 x ptr], ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i155, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i154) #6
  %26 = getelementptr inbounds i8, ptr %msg.i154, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %addr2.i156 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %addr2.i156 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr2.i156, align 2
  %30 = ptrtoint ptr %msg.i154 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i154, align 4
  %flags.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i157 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags.i157, align 2
  store i16 3, ptr %26, align 4
  %buf4.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 3
  %32 = ptrtoint ptr %buf4.i159 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %buf4.i159, align 4
  %adapter.i160 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i160 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i160, align 8
  %call.i161 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i154, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i161)
  %cmp.not.i162.not = icmp eq i32 %call.i161, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i154) #6
  br i1 %cmp.not.i162.not, label %cond.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.else
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 1
  %idxprom.i = zext i8 %36 to i32
  %arrayidx.i164 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i164, align 1
  store i8 %38, ptr %buf, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 1
  %idxprom.i.1 = zext i8 %40 to i32
  %arrayidx.i164.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %41 = ptrtoint ptr %arrayidx.i164.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i164.1, align 1
  store i8 %42, ptr %3, align 1
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 1
  %idxprom.i.2 = zext i8 %44 to i32
  %arrayidx.i164.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %45 = ptrtoint ptr %arrayidx.i164.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i164.2, align 1
  store i8 %46, ptr %5, align 1
  %47 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %tobool.not = icmp sgt i8 %47, -1
  br i1 %tobool.not, label %cond.end.if.end65_crit_edge, label %cond.end63

cond.end.if.end65_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

cond.end63:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %and46 = and i8 %47, 127
  %call62 = call i32 @_bcd2bin(i8 noundef zeroext %and46) #11
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call62, ptr %tm_wday, align 4
  br label %if.end65

if.end65:                                         ; preds = %cond.end63, %cond.end.if.end65_crit_edge
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool69.not = icmp sgt i8 %50, -1
  br i1 %tobool69.not, label %if.end65.if.end77_crit_edge, label %if.then70

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %twentyfourhour.i = getelementptr inbounds %struct.s35390a, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %twentyfourhour.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %twentyfourhour.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  %and11.i = and i8 %50, 63
  %call26.i = call i32 @_bcd2bin(i8 noundef zeroext %and11.i) #11
  %53 = and i8 %50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool31.not.i = icmp eq i8 %53, 0
  %add33.i = add i32 %call26.i, 12
  %spec.select.i = select i1 %tobool31.not.i, i32 %call26.i, i32 %add33.i
  %retval.0.i166 = select i1 %tobool.not.i, i32 %spec.select.i, i32 %call26.i
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i166, ptr %tm_hour, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %if.end65.if.end77_crit_edge
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool81.not = icmp sgt i8 %56, -1
  br i1 %tobool81.not, label %if.end77.if.end107_crit_edge, label %cond.end104

if.end77.if.end107_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

cond.end104:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %and85 = and i8 %56, 127
  %call103 = call i32 @_bcd2bin(i8 noundef zeroext %and85) #11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call103, ptr %tm_min, align 4
  br label %if.end107

if.end107:                                        ; preds = %cond.end104, %if.end77.if.end107_crit_edge
  %time108 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %58 = ptrtoint ptr %time108 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %time108, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s35390a_rtc_read_alarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s35390a_rtc_read_alarm, %cleanup)) #6
          to label %if.then115 [label %cleanup], !srcloc !75

if.then115:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %tm_min118 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %tm_min118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_min118, align 4
  %tm_hour120 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %tm_hour120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tm_hour120, align 4
  %tm_wday122 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %63 = ptrtoint ptr %tm_wday122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tm_wday122, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s35390a_rtc_read_alarm.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %60, i32 noundef %62, i32 noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.end107, %if.else.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.then115 ], [ 0, %if.end107 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sts) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s35390a_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alm) #2 align 64 {
entry:
  %msg.i187 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i174 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i165 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  %sts = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !73
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !73
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sts) #6
  %7 = ptrtoint ptr %sts to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %sts, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s35390a_rtc_set_alarm.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@s35390a_rtc_set_alarm, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s35390a_rtc_set_alarm.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %24 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr2.i, align 2
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i, align 2
  store i16 1, ptr %24, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %sts, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not, label %if.end15, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i165) #6
  %35 = getelementptr inbounds i8, ptr %msg.i165, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %35, align 4
  %addr2.i166 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %addr2.i166 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr2.i166, align 2
  %39 = ptrtoint ptr %msg.i165 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msg.i165, align 4
  %flags.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i165, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags.i167, align 2
  store i16 1, ptr %35, align 4
  %buf4.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i165, i32 0, i32 3
  %41 = ptrtoint ptr %buf4.i169 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sts, ptr %buf4.i169, align 4
  %adapter.i170 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i170 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i170, align 8
  %call.i171 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i165, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i171)
  %cmp.not.i172.not = icmp eq i32 %call.i171, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i165) #6
  br i1 %cmp.not.i172.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %44 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool20.not = icmp eq i8 %45, 0
  %. = select i1 %tobool20.not, i8 0, i8 2
  %46 = ptrtoint ptr %sts to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %., ptr %sts, align 1
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174) #6
  %49 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4
  %addr2.i176 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %addr2.i176 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %addr2.i176, align 2
  %53 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %msg.i174, align 4
  %flags.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i177, align 2
  store i16 1, ptr %49, align 4
  %buf4.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %55 = ptrtoint ptr %buf4.i179 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sts, ptr %buf4.i179, align 4
  %adapter.i180 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 3
  %56 = ptrtoint ptr %adapter.i180 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i180, align 8
  %call.i181 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i174, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i181)
  %cmp.not.i182.not = icmp eq i32 %call.i181, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174) #6
  br i1 %cmp.not.i182.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %tm_wday28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %58 = ptrtoint ptr %tm_wday28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tm_wday28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp29.not = icmp eq i32 %59, -1
  br i1 %cmp29.not, label %if.end26.if.end44_crit_edge, label %cond.end

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

cond.end:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = call zeroext i8 @_bin2bcd(i32 noundef %59) #11
  %conv41 = or i8 %call39, -128
  br label %if.end44

if.end44:                                         ; preds = %cond.end, %if.end26.if.end44_crit_edge
  %storemerge164 = phi i8 [ %conv41, %cond.end ], [ 0, %if.end26.if.end44_crit_edge ]
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %storemerge164, ptr %buf, align 1
  %tm_hour46 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %tm_hour46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tm_hour46, align 4
  %twentyfourhour.i = getelementptr inbounds %struct.s35390a, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %twentyfourhour.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %twentyfourhour.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %call.i184 = call zeroext i8 @_bin2bcd(i32 noundef %62) #11
  br label %s35390a_hr2reg.exit

if.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %62)
  %cmp.i = icmp slt i32 %62, 12
  br i1 %cmp.i, label %cond.end14.i, label %cond.end30.i

cond.end14.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call zeroext i8 @_bin2bcd(i32 noundef %62) #11
  br label %s35390a_hr2reg.exit

cond.end30.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %62, -12
  %call28.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %conv32.i = or i8 %call28.i, 64
  br label %s35390a_hr2reg.exit

s35390a_hr2reg.exit:                              ; preds = %cond.end30.i, %cond.end14.i, %cond.end.i
  %retval.0.i185 = phi i8 [ %call.i184, %cond.end.i ], [ %call12.i, %cond.end14.i ], [ %conv32.i, %cond.end30.i ]
  %65 = or i8 %retval.0.i185, -128
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %3, align 1
  %tm_min53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %tm_min53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tm_min53, align 4
  %call67 = call zeroext i8 @_bin2bcd(i32 noundef %68) #11
  %conv72 = or i8 %call67, -128
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv72, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %62)
  %cmp76 = icmp sgt i32 %62, 11
  br i1 %cmp76, label %if.then78, label %s35390a_hr2reg.exit.cond.end114_crit_edge

s35390a_hr2reg.exit.cond.end114_crit_edge:        ; preds = %s35390a_hr2reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end114

if.then78:                                        ; preds = %s35390a_hr2reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %70 = or i8 %retval.0.i185, -64
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %3, align 1
  br label %cond.end114

cond.end114:                                      ; preds = %if.then78, %s35390a_hr2reg.exit.cond.end114_crit_edge
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %buf, align 1
  %idxprom.i = zext i8 %73 to i32
  %arrayidx.i186 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %74 = ptrtoint ptr %arrayidx.i186 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i186, align 1
  store i8 %75, ptr %buf, align 1
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %3, align 1
  %idxprom.i.1 = zext i8 %77 to i32
  %arrayidx.i186.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1
  %78 = ptrtoint ptr %arrayidx.i186.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i186.1, align 1
  store i8 %79, ptr %3, align 1
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %5, align 1
  %idxprom.i.2 = zext i8 %81 to i32
  %arrayidx.i186.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2
  %82 = ptrtoint ptr %arrayidx.i186.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i186.2, align 1
  store i8 %83, ptr %5, align 1
  %arrayidx.i188 = getelementptr [8 x ptr], ptr %1, i32 0, i32 5
  %84 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i188, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i187) #6
  %86 = getelementptr inbounds i8, ptr %msg.i187, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 262143, ptr %86, align 4
  %addr2.i189 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %addr2.i189 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr2.i189, align 2
  %90 = ptrtoint ptr %msg.i187 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %msg.i187, align 4
  %flags.i190 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i190, align 2
  %buf4.i192 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 3
  %92 = ptrtoint ptr %buf4.i192 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buf, ptr %buf4.i192, align 4
  %adapter.i193 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 3
  %93 = ptrtoint ptr %adapter.i193 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter.i193, align 8
  %call.i194 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i187, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i194)
  %cmp.not.i195 = icmp eq i32 %call.i194, 1
  %..i196 = select i1 %cmp.not.i195, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i187) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end114, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i196, %cond.end114 ], [ -5, %do.end.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ], [ -5, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sts) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s35390a_init(ptr nocapture noundef readonly %s35390a) unnamed_addr #2 align 64 {
entry:
  %msg.i17 = alloca [1 x %struct.i2c_msg], align 4
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -64, ptr %buf, align 1
  %2 = ptrtoint ptr %s35390a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s35390a, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131071, ptr %0, align 4
  %addr2.i26 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %addr2.i26 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr2.i26, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf4.i, align 4
  %adapter.i27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i27, align 8
  %call.i28 = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.not.i.not29 = icmp eq i32 %call.i28, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not29, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %12 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %flags.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %buf4.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  br label %if.end

initialize:                                       ; preds = %if.then5
  %inc = add nuw nsw i32 %initcount.030, 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -64, ptr %buf, align 1
  %14 = ptrtoint ptr %s35390a to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s35390a, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %0, align 4
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr2.i, align 2
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %msg.i, align 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  store i16 1, ptr %0, align 4
  %21 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  %cmp.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br i1 %cmp.not.i.not, label %initialize.if.end_crit_edge, label %initialize.cleanup_crit_edge

initialize.cleanup_crit_edge:                     ; preds = %initialize
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

initialize.if.end_crit_edge:                      ; preds = %initialize
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %initialize.if.end_crit_edge, %if.end.lr.ph
  %initcount.030 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %initialize.if.end_crit_edge ]
  %24 = ptrtoint ptr %s35390a to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s35390a, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17) #6
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %12, align 4
  %addr2.i18 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %addr2.i18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr2.i18, align 2
  %29 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i17, align 4
  %30 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags.i19, align 2
  store i16 1, ptr %12, align 4
  %31 = ptrtoint ptr %buf4.i21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf, ptr %buf4.i21, align 4
  %adapter.i22 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %32 = ptrtoint ptr %adapter.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i22, align 8
  %call.i23 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i17, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23)
  %cmp.not.i24.not = icmp eq i32 %call.i23, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17) #6
  br i1 %cmp.not.i24.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 1
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.then5

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %initcount.030)
  %exitcond.not = icmp eq i32 %initcount.030, 5
  br i1 %exitcond.not, label %if.then5.cleanup_crit_edge, label %initialize

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %initialize.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ -5, %if.then5.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %initialize.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_rtc_s35390a__292_509_s35390a_driver_init6, !1, !"__initcall__kmod_rtc_s35390a__292_509_s35390a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-s35390a.c", i32 509, i32 1}
!2 = !{ptr @__exitcall_s35390a_driver_exit, !1, !"__exitcall_s35390a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-s35390a.c", i32 511, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-s35390a.c", i32 512, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-s35390a.c", i32 513, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-s35390a.c", i32 502, i32 11}
!12 = !{ptr @s35390a_driver, !13, !"s35390a_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-s35390a.c", i32 500, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-s35390a.c", i32 448, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @s35390a_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @s35390a_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-s35390a.c", i32 460, i32 3}
!24 = !{ptr @s35390a_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @s35390a_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-s35390a.c", i32 474, i32 4}
!28 = !{ptr @s35390a_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @s35390a_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-s35390a.c", i32 480, i32 4}
!32 = !{ptr @s35390a_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @s35390a_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @s35390a_rtc_ops, !35, !"s35390a_rtc_ops", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-s35390a.c", i32 415, i32 35}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-s35390a.c", i32 268, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @s35390a_rtc_read_time.__UNIQUE_ID_ddebug289, !44, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-s35390a.c", i32 217, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @s35390a_rtc_set_time.__UNIQUE_ID_ddebug288, !49, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-s35390a.c", i32 378, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @s35390a_rtc_read_alarm.__UNIQUE_ID_ddebug291, !53, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-s35390a.c", i32 283, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s35390a_rtc_set_alarm.__UNIQUE_ID_ddebug290, !57, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!60 = !{ptr @s35390a_of_match, !61, !"s35390a_of_match", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-s35390a.c", i32 58, i32 49}
!62 = !{ptr @s35390a_id, !63, !"s35390a_id", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-s35390a.c", i32 52, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2153434109, i64 2153434134}
!75 = !{i64 2148964555, i64 2148964560, i64 2148964573, i64 2148964617, i64 2148964651, i64 2148964672}
