; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rx8010.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rx8010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rx8010_data = type { ptr, ptr, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rx8010__288_427_rx8010_driver_init6 = internal global ptr @rx8010_driver_init, section ".initcall6.init", align 4
@rx8010_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @rx8010_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rx8010_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rx8010_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rx8010_driver_exit = internal global ptr @rx8010_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"rtc_rx8010.author=Akshay Bhat <akshay.bhat@timesys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"rtc_rx8010.description=Epson RX8010SJ RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"rtc_rx8010.file=drivers/rtc/rtc-rx8010\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"rtc_rx8010.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rx8010\00", [21 x i8] zeroinitializer }, align 32
@rx8010_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rx8010_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rx8010\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rx8010_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rx8010_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.12, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtc_rx8010:384:(&rx8010_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@rx8010_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ %d supplied\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx8010_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rx8010.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx8010_probe._entry_ptr = internal global ptr @rx8010_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx8010\00", [25 x i8] zeroinitializer }, align 32
@rx8010_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 403, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rx8010_probe._entry_ptr.11 = internal global ptr @rx8010_probe._entry.8, section ".printk_index", align 4
@rx8010_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @rx8010_ioctl, ptr @rx8010_get_time, ptr @rx8010_set_time, ptr @rx8010_read_alarm, ptr @rx8010_set_alarm, ptr null, ptr @rx8010_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx8010-rtc\00", [21 x i8] zeroinitializer }, align 32
@rx8010_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 200, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Frequency stop was detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx8010_init\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rx8010_init._entry_ptr = internal global ptr @rx8010_init._entry, section ".printk_index", align 4
@rx8010_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.4, i32 203, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Alarm was detected\0A\00", [44 x i8] zeroinitializer }, align 32
@rx8010_init._entry_ptr.18 = internal global ptr @rx8010_init._entry.16, section ".printk_index", align 4
@rx8010_irq_1_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 85, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Frequency stop detected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx8010_irq_1_handler\00", [43 x i8] zeroinitializer }, align 32
@rx8010_irq_1_handler._entry_ptr = internal global ptr @rx8010_irq_1_handler._entry, section ".printk_index", align 4
@rx8010_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.4, i32 118, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx8010_get_time\00", [16 x i8] zeroinitializer }, align 32
@rx8010_get_time._entry_ptr = internal global ptr @rx8010_get_time._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"rx8010_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 418, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 420, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"rx8010_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 58, i32 49 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"rx8010_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 52, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"rx8010_regmap_config\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 366, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 384, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 397, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 401, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 403, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"rx8010_rtc_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 357, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 367, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 200, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 203, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 85, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [28 x i8] c"../drivers/rtc/rtc-rx8010.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 118, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rx8010_driver_exit, ptr @__initcall__kmod_rtc_rx8010__288_427_rx8010_driver_init6, ptr @rx8010_driver_exit, ptr @rx8010_get_time._entry, ptr @rx8010_get_time._entry_ptr, ptr @rx8010_init._entry, ptr @rx8010_init._entry.16, ptr @rx8010_init._entry_ptr, ptr @rx8010_init._entry_ptr.18, ptr @rx8010_irq_1_handler._entry, ptr @rx8010_irq_1_handler._entry_ptr, ptr @rx8010_probe._entry, ptr @rx8010_probe._entry.8, ptr @rx8010_probe._entry_ptr, ptr @rx8010_probe._entry_ptr.11, ptr @rx8010_driver, ptr @.str, ptr @rx8010_of_match, ptr @rx8010_id, ptr @rx8010_probe._key, ptr @rx8010_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @rx8010_rtc_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_irq_1_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8010_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rx8010_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx8010_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rx8010_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_probe(ptr noundef %client) #2 align 64 {
entry:
  %ctrl.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @rx8010_regmap_config, ptr noundef nonnull @rx8010_probe._key, ptr noundef nonnull @.str.1) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl.i) #8
  %5 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !71
  %6 = getelementptr inbounds [2 x i8], ptr %ctrl.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !71
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 23, i32 noundef 216) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.rx8010_init.exit.thread_crit_edge

if.end8.rx8010_init.exit.thread_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.end.i:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.rx8010_init.exit.thread_crit_edge

if.end.i.rx8010_init.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 49, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.rx8010_init.exit.thread_crit_edge

if.end6.i.rx8010_init.exit.thread_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.end11.i:                                       ; preds = %if.end6.i
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 50, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.rx8010_init.exit.thread_crit_edge

if.end11.i.rx8010_init.exit.thread_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.end16.i:                                       ; preds = %if.end11.i
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %4, align 4
  %call18.i = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 30, ptr noundef nonnull %ctrl.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.rx8010_init.exit.thread_crit_edge

if.end16.i.rx8010_init.exit.thread_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.end21.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrl.i, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not.i = icmp eq i8 %20, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end24.i_crit_edge, label %do.end.i

if.end21.i.if.end24.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %if.end21.i.if.end24.i_crit_edge
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl.i, align 1
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not.i = icmp eq i8 %23, 0
  br i1 %tobool28.not.i, label %if.end33.i, label %if.end33.thread.i

if.end33.thread.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  %24 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl.i, align 1
  br label %if.then47.i

if.end33.i:                                       ; preds = %if.end24.i
  %26 = and i8 %22, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %if.end33.i.if.end12_crit_edge, label %if.end33.i.if.then47.i_crit_edge

if.end33.i.if.then47.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47.i

if.end33.i.if.end12_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then47.i:                                      ; preds = %if.end33.i.if.then47.i_crit_edge, %if.end33.thread.i
  %28 = phi i8 [ %25, %if.end33.thread.i ], [ %22, %if.end33.i.if.then47.i_crit_edge ]
  %29 = and i8 %28, -57
  %30 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ctrl.i, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %conv54.i = zext i8 %29 to i32
  %call55.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 30, i32 noundef %conv54.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.then47.i.if.end12_crit_edge, label %if.then47.i.rx8010_init.exit.thread_crit_edge

if.then47.i.rx8010_init.exit.thread_crit_edge:    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx8010_init.exit.thread

if.then47.i.if.end12_crit_edge:                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

rx8010_init.exit.thread:                          ; preds = %if.then47.i.rx8010_init.exit.thread_crit_edge, %if.end16.i.rx8010_init.exit.thread_crit_edge, %if.end11.i.rx8010_init.exit.thread_crit_edge, %if.end6.i.rx8010_init.exit.thread_crit_edge, %if.end.i.rx8010_init.exit.thread_crit_edge, %if.end8.rx8010_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call55.i, %if.then47.i.rx8010_init.exit.thread_crit_edge ], [ %call18.i, %if.end16.i.rx8010_init.exit.thread_crit_edge ], [ %call13.i, %if.end11.i.rx8010_init.exit.thread_crit_edge ], [ %call8.i, %if.end6.i.rx8010_init.exit.thread_crit_edge ], [ %call3.i, %if.end.i.rx8010_init.exit.thread_crit_edge ], [ %call1.i, %if.end8.rx8010_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.then47.i.if.end12_crit_edge, %if.end33.i.if.end12_crit_edge
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %35 = and i8 %34, 127
  %ctrlreg.i = getelementptr inbounds %struct.rx8010_data, ptr %4, i32 0, i32 2
  %36 = ptrtoint ptr %ctrlreg.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ctrlreg.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl.i) #8
  %call13 = call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #8
  %rtc = getelementptr inbounds %struct.rx8010_data, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call13, ptr %rtc, align 4
  %cmp.i68 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp sgt i32 %40, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %40) #11
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call23 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %42, ptr noundef null, ptr noundef nonnull @rx8010_irq_1_handler, i32 noundef 8200, ptr noundef nonnull @.str.7, ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end.if.end31_crit_edge, label %do.end28

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %features = getelementptr inbounds %struct.rtc_device, ptr %call13, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.end.if.end31_crit_edge
  %43 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @rx8010_rtc_ops, ptr %ops, align 8
  %46 = load ptr, ptr %rtc, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %max_user_freq, align 8
  %48 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %48, i32 0, i32 22
  %49 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 946684800, ptr %range_min, align 8
  %50 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %50, i32 0, i32 23
  %51 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 4102444799, ptr %range_max, align 8
  %52 = load ptr, ptr %rtc, align 4
  %call37 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %52) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end28, %if.then16, %rx8010_init.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %38, %if.then16 ], [ %call23, %do.end28 ], [ %call37, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %rx8010_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_irq_1_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %flagreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flagreg) #8
  %2 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flagreg, align 4, !annotation !71
  %rtc = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 30, ptr noundef nonnull %flagreg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %ops_lock3 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flagreg, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %11 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flagreg, align 4
  %and7 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = and i32 %12, -17
  %13 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and10, ptr %flagreg, align 4
  %14 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %15, i32 noundef 1, i32 noundef 192) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %16 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flagreg, align 4
  %and13 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %17, -9
  %18 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and16, ptr %flagreg, align 4
  %19 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %20, i32 noundef 1, i32 noundef 160) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %21 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flagreg, align 4
  %and19 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %22, -33
  %23 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and22, ptr %flagreg, align 4
  %24 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %25, i32 noundef 1, i32 noundef 144) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flagreg, align 4
  %call26 = call i32 @regmap_write(ptr noundef %27, i32 noundef 30, i32 noundef %29) #8
  %30 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtc, align 4
  %ops_lock28 = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool29.not = icmp eq i32 %call26, 0
  %cond = zext i1 %tobool29.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flagreg) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %flagreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flagreg) #8
  %2 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flagreg, align 4, !annotation !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147192813, i32 %cmd)
  %cond9 = icmp eq i32 %cmd, -2147192813
  br i1 %cond9, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 30, ptr noundef nonnull %flagreg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flagreg, align 4
  %and = lshr i32 %6, 1
  %and.lobit = and i32 %and, 1
  %7 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 350) #8
  %8 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !72
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %and.lobit, i32 -1226833921) #8, !srcloc !75
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flagreg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_get_time(ptr noundef %dev, ptr nocapture noundef writeonly %dt) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  %flagreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #8
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %8 = call ptr @memset(ptr %date, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flagreg) #8
  %9 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %flagreg, align 4, !annotation !71
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 30, ptr noundef nonnull %flagreg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flagreg, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call6 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 16, ptr noundef nonnull %date, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %date, align 1
  %18 = and i8 %17, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %18) #12
  %19 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call23, ptr %dt, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 127
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %22) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call44, ptr %tm_min, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %26 = and i8 %25, 63
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %26) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call67, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %30 = and i8 %29, 63
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %30) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call90, ptr %tm_mday, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %34 = and i8 %33, 31
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %34) #12
  %sub = add i32 %call113, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %35 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tm_mon, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  %call128 = call i32 @_bcd2bin(i8 noundef zeroext %37) #12
  %add131 = add i32 %call128, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %38 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add131, ptr %tm_year, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %41 = and i8 %40, 127
  %42 = call i8 @llvm.cttz.i8(i8 %41, i1 true), !range !76
  %narrow = add nuw nsw i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %iszero = icmp eq i8 %41, 0
  %narrow149 = select i1 %iszero, i8 0, i8 %narrow
  %ffs = zext i8 %narrow149 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %43 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ffs, ptr %tm_wday, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flagreg) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 31, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %9 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %10 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dt, align 4
  %call5 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #12
  %12 = ptrtoint ptr %date to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call5, ptr %date, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #12
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %9, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call34, ptr %8, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #12
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add56 = add i32 %23, 1
  %call70 = tail call zeroext i8 @_bin2bcd(i32 noundef %add56) #12
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call70, ptr %5, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %25 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_year, align 4
  %sub = add i32 %26, -100
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #12
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call89, ptr %4, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_wday, align 4
  %shl95 = shl nuw i32 1, %29
  %call109 = tail call zeroext i8 @_bin2bcd(i32 noundef %shl95) #12
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call109, ptr %7, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call116 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 16, ptr noundef nonnull %date, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %cond.end
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i169 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 31, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool122.not = icmp eq i32 %call.i169, 0
  br i1 %tobool122.not, label %if.end124, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end124:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i170 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 30, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.end119.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call116, %cond.end.cleanup_crit_edge ], [ %call.i169, %if.end119.cleanup_crit_edge ], [ %call.i170, %if.end124 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  %flagreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #8
  %2 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %alarmvals, align 1, !annotation !71
  %3 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !71
  %5 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flagreg) #8
  %7 = ptrtoint ptr %flagreg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %flagreg, align 4, !annotation !71
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 24, ptr noundef nonnull %alarmvals, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 30, ptr noundef nonnull %flagreg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %time, align 4
  %13 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alarmvals, align 1
  %15 = and i8 %14, 127
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %15) #12
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call19, ptr %tm_min, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, 63
  %call41 = call i32 @_bcd2bin(i8 noundef zeroext %19) #12
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call41, ptr %tm_hour, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool48.not = icmp sgt i8 %22, -1
  br i1 %tobool48.not, label %cond.end71, label %if.end6.if.end74_crit_edge

if.end6.if.end74_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

cond.end71:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and52 = and i8 %22, 127
  %call70 = call i32 @_bcd2bin(i8 noundef zeroext %and52) #12
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call70, ptr %tm_mday, align 4
  br label %if.end74

if.end74:                                         ; preds = %cond.end71, %if.end6.if.end74_crit_edge
  %ctrlreg = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrlreg, align 4
  %26 = lshr i8 %25, 3
  %.lobit = and i8 %26, 1
  %27 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.lobit, ptr %t, align 4
  %28 = ptrtoint ptr %flagreg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flagreg, align 4
  %and80 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp ne i32 %and80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool84 = icmp ne i8 %.lobit, 0
  %spec.select = select i1 %tobool81.not, i1 %tobool84, i1 false
  %conv85 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %30 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv85, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flagreg) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #8
  %2 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  %ctrlreg = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrlreg, align 4
  %6 = and i8 %5, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %and3 = and i8 %5, -41
  %7 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and3, ptr %ctrlreg, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv6 = zext i8 %and3 to i32
  %call7 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 31, i32 noundef %conv6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 30, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %cond.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %if.end10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #12
  %14 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call23, ptr %alarmvals, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call40 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #12
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call40, ptr %2, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mday, align 4
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #12
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call60, ptr %3, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call67 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 24, ptr noundef nonnull %alarmvals, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %cond.end
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i156 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 29, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool73.not = icmp eq i32 %call.i156, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  br i1 %cmp, label %if.then79, label %if.end75.if.end83_crit_edge

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %3, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end75.if.end83_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  %conv86 = zext i8 %31 to i32
  %call87 = call i32 @regmap_write(ptr noundef %29, i32 noundef 26, i32 noundef %conv86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %32 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool91.not = icmp eq i8 %33, 0
  br i1 %tobool91.not, label %if.end90.if.end117_crit_edge, label %if.then92

if.end90.if.end117_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then92:                                        ; preds = %if.end90
  %rtc = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc, align 4
  %enabled93 = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 15, i32 4
  %36 = ptrtoint ptr %enabled93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enabled93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool94.not = icmp eq i32 %37, 0
  br i1 %tobool94.not, label %if.then92.if.end100_crit_edge, label %if.then95

if.then92.if.end100_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ctrlreg, align 4
  %40 = or i8 %39, 32
  store i8 %40, ptr %ctrlreg, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.then92.if.end100_crit_edge
  %41 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtc, align 4
  %enabled102 = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %enabled102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %enabled102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool103.not = icmp eq i32 %44, 0
  br i1 %tobool103.not, label %if.end100.if.end109_crit_edge, label %if.then104

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ctrlreg, align 4
  %47 = or i8 %46, 40
  store i8 %47, ptr %ctrlreg, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end100.if.end109_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ctrlreg, align 4
  %conv112 = zext i8 %51 to i32
  %call113 = call i32 @regmap_write(ptr noundef %49, i32 noundef 31, i32 noundef %conv112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end109.if.end117_crit_edge, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end109.if.end117_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.end117:                                        ; preds = %if.end109.if.end117_crit_edge, %if.end90.if.end117_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end109.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end117 ], [ %call7, %if.then.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ], [ %call67, %cond.end.cleanup_crit_edge ], [ %call.i156, %if.end70.cleanup_crit_edge ], [ %call87, %if.end83.cleanup_crit_edge ], [ %call113, %if.end109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8010_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctrlreg = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrlreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %rtc13 = getelementptr inbounds %struct.rx8010_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rtc13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc13, align 4
  %enabled15 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %enabled15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = or i8 %3, 32
  %spec.select = select i1 %tobool16.not, i8 %3, i8 %8
  %enabled6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 14, i32 4
  %9 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enabled6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  %11 = or i8 %spec.select, 40
  %spec.select69 = select i1 %tobool7.not, i8 %spec.select, i8 %11
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i8 %3, -33
  %spec.select68 = select i1 %tobool16.not, i8 %12, i8 %3
  %enabled23 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 14, i32 4
  %13 = ptrtoint ptr %enabled23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enabled23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  %15 = and i8 %spec.select68, -9
  %spec.select70 = select i1 %tobool24.not, i8 %15, i8 %spec.select68
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then
  %ctrl.2 = phi i8 [ %spec.select69, %if.then ], [ %spec.select70, %if.else ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 30, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %18 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrlreg, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %ctrl.2, i8 %19)
  %cmp.not = icmp eq i8 %ctrl.2, %19
  br i1 %cmp.not, label %if.end34.if.end48_crit_edge, label %if.then39

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then39:                                        ; preds = %if.end34
  %conv35 = zext i8 %ctrl.2 to i32
  %20 = ptrtoint ptr %ctrlreg to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ctrl.2, ptr %ctrlreg, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call44 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 31, i32 noundef %conv35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then39.if.end48_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %if.then39.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then39.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ %call.i, %if.end30.cleanup_crit_edge ], [ %call44, %if.then39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_rtc_rx8010__288_427_rx8010_driver_init6, !1, !"__initcall__kmod_rtc_rx8010__288_427_rx8010_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rx8010.c", i32 427, i32 1}
!2 = !{ptr @__exitcall_rx8010_driver_exit, !1, !"__exitcall_rx8010_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rx8010.c", i32 429, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rx8010.c", i32 430, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rx8010.c", i32 431, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rx8010.c", i32 420, i32 11}
!12 = !{ptr @rx8010_driver, !13, !"rx8010_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rx8010.c", i32 418, i32 26}
!14 = !{ptr @rx8010_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rx8010.c", i32 384, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-rx8010.c", i32 397, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rx8010_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rx8010_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-rx8010.c", i32 401, i32 7}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-rx8010.c", i32 403, i32 4}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rx8010_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rx8010_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-rx8010.c", i32 367, i32 10}
!34 = !{ptr @rx8010_regmap_config, !35, !"rx8010_regmap_config", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-rx8010.c", i32 366, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-rx8010.c", i32 200, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rx8010_init._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @rx8010_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-rx8010.c", i32 203, i32 3}
!44 = !{ptr @rx8010_init._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rx8010_init._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-rx8010.c", i32 85, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rx8010_irq_1_handler._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rx8010_irq_1_handler._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @rx8010_rtc_ops, !52, !"rx8010_rtc_ops", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-rx8010.c", i32 357, i32 35}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rx8010.c", i32 118, i32 3}
!55 = !{ptr @rx8010_get_time._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rx8010_get_time._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @rx8010_of_match, !58, !"rx8010_of_match", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-rx8010.c", i32 58, i32 49}
!59 = !{ptr @rx8010_id, !60, !"rx8010_id", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-rx8010.c", i32 52, i32 35}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i64 6349507}
!73 = !{i64 6349704}
!74 = !{i64 2153834937}
!75 = !{i64 2155688149, i64 2155688429, i64 2155688763, i64 2155689097}
!76 = !{i8 0, i8 9}
