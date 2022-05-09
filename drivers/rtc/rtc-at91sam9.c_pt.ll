; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-at91sam9.c_pt.bc'
source_filename = "../drivers/rtc/rtc-at91sam9.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sam9_rtc = type { ptr, ptr, i32, ptr, i32, i32, ptr, i8, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_at91sam9__295_543_at91_rtc_driver_init6 = internal global ptr @at91_rtc_driver_init, section ".initcall6.init", align 4
@at91_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at91_rtc_probe, ptr @at91_rtc_remove, ptr @at91_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at91_rtc_driver_exit = internal global ptr @at91_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [34 x i8] c"rtc_at91sam9.author=Michel Benoit\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [56 x i8] c"rtc_at91sam9.description=RTC driver for Atmel AT91SAM9x\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [43 x i8] c"rtc_at91sam9.file=drivers/rtc/rtc-at91sam9\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [25 x i8] c"rtc_at91sam9.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-at91sam9\00", [19 x i8] zeroinitializer }, align 32
@at91_rtc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-rtt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@at91_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at91_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,rtt-rtc-time-reg\00", [41 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to retrieve gpbr regmap, aborting.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at91_rtc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-at91sam9.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr = internal global ptr @at91_rtc_probe._entry, section ".printk_index", align 4
@at91_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 383, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not enable slow clock\0A\00", [35 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.10 = internal global ptr @at91_rtc_probe._entry.8, section ".printk_index", align 4
@at91_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid slow clock rate\0A\00", [39 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.13 = internal global ptr @at91_rtc_probe._entry.11, section ".printk_index", align 4
@at91_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr @at91_rtc_proc, ptr @at91_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@at91_rtc_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 0, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_at91sam9\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't share IRQ %d?\0A\00", [43 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 432, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: SET TIME!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at91_rtc_probe._entry_ptr.19 = internal global ptr @at91_rtc_probe._entry.16, section ".printk_index", align 4
@at91_rtc_readtime.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_rtc_readtime\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %ptR\0A\00", [22 x i8] zeroinitializer }, align 32
@at91_rtc_settime.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.5, ptr @.str.21, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at91_rtc_settime\00", [47 x i8] zeroinitializer }, align 32
@at91_rtc_readalarm.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.23, ptr @.str.5, ptr @.str.21, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at91_rtc_readalarm\00", [45 x i8] zeroinitializer }, align 32
@at91_rtc_setalarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.5, ptr @.str.21, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at91_rtc_setalarm\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update_IRQ\09: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at91_rtc_alarm_irq_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"alarm_irq_enable: enabled=%08x, mr %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@at91_rtc_flush_events.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_rtc_flush_events\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: num=%ld, events=0x%02lx\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"at91_rtc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 532, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 537, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"at91_rtc_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 526, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"at91_rtc_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 524, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 351, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 365, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 373, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 383, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 389, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"at91_rtc_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 323, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 420, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 431, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 122, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 136, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 190, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 228, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 254, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 255, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 255, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 238, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [30 x i8] c"../drivers/rtc/rtc-at91sam9.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 290, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_at91_rtc_driver_exit, ptr @__initcall__kmod_rtc_at91sam9__295_543_at91_rtc_driver_init6, ptr @at91_rtc_driver_exit, ptr @at91_rtc_probe._entry, ptr @at91_rtc_probe._entry.11, ptr @at91_rtc_probe._entry.16, ptr @at91_rtc_probe._entry.8, ptr @at91_rtc_probe._entry_ptr, ptr @at91_rtc_probe._entry_ptr.10, ptr @at91_rtc_probe._entry_ptr.13, ptr @at91_rtc_probe._entry_ptr.19, ptr @at91_rtc_driver, ptr @.str, ptr @at91_rtc_dt_ids, ptr @at91_rtc_pm_ops, ptr @at91_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @at91_rtc_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at91_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @at91_rtc_probe.__key, i16 noundef signext 3) #6
  %irq5 = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %irq5, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body.if.end11_crit_edge, label %if.then8

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body.if.end11_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i181 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool21.not = icmp eq i32 %call.i181, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 4
  %call24 = call ptr @syscon_node_to_regmap(ptr noundef %9) #6
  %gpbr = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %gpbr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call24, ptr %gpbr, align 4
  %args25 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %11 = ptrtoint ptr %args25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args25, align 4
  %gpbr_offset = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %gpbr_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gpbr_offset, align 4
  %cmp.i182 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call35 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %sclk = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35, ptr %sclk, align 4
  %cmp.i183 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %call.i184 = call i32 @clk_prepare(ptr noundef %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool.not.i = icmp eq i32 %call.i184, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.do.end48_crit_edge

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

if.end.i:                                         ; preds = %if.end41
  %call1.i = call i32 @clk_enable(ptr noundef %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end50, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call35) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i, %if.end41.do.end48_crit_edge
  %retval.0.i185.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i184, %if.end41.do.end48_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sclk, align 4
  %call52 = call i32 @clk_get_rate(ptr noundef %17) #6
  %18 = add i32 %call52, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %18)
  %19 = icmp ult i32 %18, -65535
  br i1 %19, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_clk

if.end60:                                         ; preds = %if.end50
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !86
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and = and i32 %23, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call52)
  %cmp64.not = icmp eq i32 %and, %call52
  br i1 %cmp64.not, label %if.end60.if.end67_crit_edge, label %if.then65

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %call52, 262144
  %24 = ptrtoint ptr %gpbr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpbr, align 4
  %26 = ptrtoint ptr %gpbr_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gpbr_offset, align 4
  %call.i186 = call i32 @regmap_write(ptr noundef %25, i32 noundef %27, i32 noundef 0) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end60.if.end67_crit_edge
  %mr.0 = phi i32 [ %or, %if.then65 ], [ %23, %if.end60.if.end67_crit_edge ]
  %and68 = and i32 %mr.0, -196609
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %28 = call i32 @llvm.bswap.i32(i32 %and68)
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !89
  %call75 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtcdev = getelementptr inbounds %struct.sam9_rtc, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %rtcdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call75, ptr %rtcdev, align 4
  %cmp.i187 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call75 to i32
  br label %err_clk

if.end81:                                         ; preds = %if.end67
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call75, i32 0, i32 3
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @at91_rtc_ops, ptr %ops, align 8
  %34 = ptrtoint ptr %rtcdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtcdev, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 4294967295, ptr %range_max, align 8
  %37 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq5, align 4
  %39 = load ptr, ptr %rtcdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i188 = icmp eq ptr %41, null
  br i1 %tobool.not.i188, label %if.end.i189, label %if.end81.dev_name.exit_crit_edge

if.end81.dev_name.exit_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i189:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i189, %if.end81.dev_name.exit_crit_edge
  %retval.0.i190 = phi ptr [ %43, %if.end.i189 ], [ %41, %if.end81.dev_name.exit_crit_edge ]
  %call.i191 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @at91_rtc_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef %retval.0.i190, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool90.not = icmp eq i32 %call.i191, 0
  br i1 %tobool90.not, label %if.end105, label %do.body92

do.body92:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_probe, %err_clk)) #6
          to label %if.then99 [label %err_clk], !srcloc !90

if.then99:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %45) #6
  br label %err_clk

if.end105:                                        ; preds = %dev_name.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i, align 4, !annotation !91
  %47 = ptrtoint ptr %gpbr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gpbr, align 4
  %49 = ptrtoint ptr %gpbr_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpbr_offset, align 4
  %call.i194 = call i32 @regmap_read(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %val.i) #6
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp107 = icmp eq i32 %52, 0
  br i1 %cmp107, label %do.end111, label %if.end105.if.end116_crit_edge

if.end105.if.end116_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end111:                                        ; preds = %if.end105
  %53 = ptrtoint ptr %rtcdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rtcdev, align 4
  %init_name.i195 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i195 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i195, align 8
  %tobool.not.i196 = icmp eq ptr %56, null
  br i1 %tobool.not.i196, label %if.end.i197, label %do.end111.dev_name.exit199_crit_edge

do.end111.dev_name.exit199_crit_edge:             ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit199

if.end.i197:                                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %dev_name.exit199

dev_name.exit199:                                 ; preds = %if.end.i197, %do.end111.dev_name.exit199_crit_edge
  %retval.0.i198 = phi ptr [ %58, %if.end.i197 ], [ %56, %do.end111.dev_name.exit199_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i198) #9
  br label %if.end116

if.end116:                                        ; preds = %dev_name.exit199, %if.end105.if.end116_crit_edge
  %59 = ptrtoint ptr %rtcdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rtcdev, align 4
  %call118 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %60) #6
  br label %cleanup

err_clk:                                          ; preds = %if.then99, %do.body92, %if.then78, %do.end58
  %ret.0 = phi i32 [ -22, %do.end58 ], [ %32, %if.then78 ], [ %call.i191, %if.then99 ], [ %call.i191, %do.body92 ]
  %61 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sclk, align 4
  call void @clk_disable(ptr noundef %62) #6
  call void @clk_unprepare(ptr noundef %62) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end116, %do.end48, %if.then38, %do.end31, %if.end18.cleanup_crit_edge, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then15 ], [ -12, %do.end31 ], [ %15, %if.then38 ], [ %retval.0.i185.ph, %do.end48 ], [ %ret.0, %err_clk ], [ %call118, %if.end116 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i181, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %5 = and i32 %4, -769
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !89
  %sclk = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_rtc_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and = and i32 %5, 196608
  %imr = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %imr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %imr, align 4
  %neg = xor i32 %8, -1
  %and4 = and i32 %5, %neg
  %9 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !89
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_interrupt(i32 noundef %irq, ptr noundef %_rtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %0 = ptrtoint ptr %_rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_rtc, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %3 = ptrtoint ptr %_rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_rtc, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !86
  %6 = lshr i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %7 = lshr i32 %2, 8
  %shr.i = and i32 %7, 3
  %and9.i = and i32 %shr.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %entry.at91_rtc_cache_events.exit_crit_edge, label %if.end.i

entry.at91_rtc_cache_events.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rtc_cache_events.exit

if.end.i:                                         ; preds = %entry
  %and10.i = and i32 %and9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then12.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 8
  %8 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %events.i, align 4
  %or.i = or i32 %9, 160
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %and14.i = and i32 %and9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.at91_rtc_cache_events.exit_crit_edge, label %if.then16.i

if.end13.i.at91_rtc_cache_events.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rtc_cache_events.exit

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %events17.i = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 8
  %10 = ptrtoint ptr %events17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %events17.i, align 4
  %or18.i = or i32 %11, 144
  store i32 %or18.i, ptr %events17.i, align 4
  br label %at91_rtc_cache_events.exit

at91_rtc_cache_events.exit:                       ; preds = %if.then16.i, %if.end13.i.at91_rtc_cache_events.exit_crit_edge, %entry.at91_rtc_cache_events.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.at91_rtc_cache_events.exit_crit_edge ], [ 1, %if.then16.i ], [ 1, %if.end13.i.at91_rtc_cache_events.exit_crit_edge ]
  %suspended = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 7
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspended, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %at91_rtc_cache_events.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %_rtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_rtc, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %17 = and i32 %16, -769
  %18 = ptrtoint ptr %_rtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_rtc, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !89
  tail call void @pm_system_wakeup() #6
  br label %if.end

if.else:                                          ; preds = %at91_rtc_cache_events.exit
  %events.i12 = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 8
  %20 = ptrtoint ptr %events.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %events.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i13 = icmp eq i32 %21, 0
  br i1 %tobool.not.i13, label %if.else.if.end_crit_edge, label %if.end.i14

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i14:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %rtcdev.i = getelementptr inbounds %struct.sam9_rtc, ptr %_rtc, i32 0, i32 1
  %22 = ptrtoint ptr %rtcdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtcdev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %23, i32 noundef 1, i32 noundef %21) #6
  %24 = ptrtoint ptr %events.i12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %events.i12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_flush_events.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_interrupt, %if.end)) #6
          to label %if.then7.i [label %if.end], !srcloc !90

if.then7.i:                                       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %events.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %events.i12, align 4
  %shr.i15 = lshr i32 %26, 8
  %and.i = and i32 %26, 255
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_rtc_flush_events.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %shr.i15, i32 noundef %and.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %if.end.i14, %if.else.if.end_crit_edge, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_readtime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !91
  %gpbr.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %gpbr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpbr.i, align 4
  %gpbr_offset.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %gpbr_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpbr_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 8
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %14, i32 8
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp11.not = icmp eq i32 %11, %15
  br i1 %cmp11.not, label %if.end.if.end20_crit_edge, label %if.then12

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 8
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !86
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end.if.end20_crit_edge
  %secs.0 = phi i32 [ %19, %if.then12 ], [ %12, %if.end.if.end20_crit_edge ]
  %add = add i32 %secs.0, %8
  %conv = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_readtime.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_readtime, %cleanup)) #6
          to label %if.then26 [label %cleanup], !srcloc !90

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_readtime.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -84, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_settime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_settime.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_settime, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_settime.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %tm) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call5 to i32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %and = and i32 %5, -196609
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !91
  %gpbr.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %gpbr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpbr.i, align 4
  %gpbr_offset.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %gpbr_offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpbr_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %val.i) #6
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %add = add i32 %conv, 1
  %add.neg = xor i32 %conv, -1
  %16 = ptrtoint ptr %gpbr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpbr.i, align 4
  %18 = ptrtoint ptr %gpbr_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpbr_offset.i, align 4
  %call.i73 = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %add) #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr18 = getelementptr i8, ptr %21, i32 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !86
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.not = icmp eq i32 %22, -1
  br i1 %cmp.not, label %do.end.do.body44_crit_edge, label %if.then23

do.end.do.body44_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp24 = icmp ugt i32 %15, %add
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %15, %add.neg
  %add27 = add i32 %sub, %23
  br label %do.body38

if.else:                                          ; preds = %if.then23
  %add28 = add i32 %23, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %add)
  %cmp29 = icmp ugt i32 %add28, %add
  br i1 %cmp29, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub32.neg = add i32 %15, %add.neg
  %sub33 = add i32 %sub32.neg, %23
  br label %do.body38

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and35 = and i32 %5, -65537
  br label %do.body38

do.body38:                                        ; preds = %if.else34, %if.then31, %if.then26
  %mr.0 = phi i32 [ %5, %if.then26 ], [ %5, %if.then31 ], [ %and35, %if.else34 ]
  %alarm.0 = phi i32 [ %add27, %if.then26 ], [ %sub33, %if.then31 ], [ -1, %if.else34 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @arm_heavy_mb() #6
  %24 = call i32 @llvm.bswap.i32(i32 %alarm.0)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr42 = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %24) #6, !srcloc !89
  br label %do.body44

do.body44:                                        ; preds = %do.body38, %do.end.do.body44_crit_edge
  %mr.1 = phi i32 [ %mr.0, %do.body38 ], [ %5, %do.end.do.body44_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  call void @arm_heavy_mb() #6
  %or = or i32 %mr.1, 262144
  %27 = call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_readalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !91
  %gpbr.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %gpbr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpbr.i, align 4
  %gpbr_offset.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %gpbr_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpbr_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = call ptr @memset(ptr %alrm, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp4.not = icmp eq i32 %4, -1
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %add = add i32 %12, %5
  %conv = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %time) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_readalarm.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_readalarm, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !90

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_readalarm.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, ptr noundef %time) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.then5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %do.end.cleanup_crit_edge, label %if.then21

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -84, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_setalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !91
  %gpbr.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %gpbr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpbr.i, align 4
  %gpbr_offset.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %gpbr_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpbr_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !86
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @arm_heavy_mb() #6
  %and = and i32 %12, -65537
  %13 = call i32 @llvm.bswap.i32(i32 %and)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !89
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp8.not = icmp ult i32 %8, %conv
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  br i1 %cmp8.not, label %do.body17, label %do.body11

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #6, !srcloc !89
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %sub = sub i32 %conv, %8
  %18 = call i32 @llvm.bswap.i32(i32 %sub)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %18) #6, !srcloc !89
  %21 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %do.body17.do.body29_crit_edge, label %do.body23

do.body17.do.body29_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.body23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  call void @arm_heavy_mb() #6
  %or = or i32 %12, 65536
  %23 = call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !89
  br label %do.body29

do.body29:                                        ; preds = %do.body23, %do.body17.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_setalarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_setalarm, %cleanup)) #6
          to label %if.then36 [label %cleanup], !srcloc !90

if.then36:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_setalarm.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body29, %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -84, %entry.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_alarm_irq_enable, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %enabled, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool8.not = icmp eq i32 %enabled, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool8.not, label %do.body15, label %do.body10

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %5, 65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !89
  br label %if.end20

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %5, -65537
  %9 = tail call i32 @llvm.bswap.i32(i32 %and)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !89
  br label %if.end20

if.end20:                                         ; preds = %do.body15, %do.body10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %and = and i32 %5, 196608
  %imr = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %imr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.do.body25_crit_edge, label %device_may_wakeup.exit

if.then.do.body25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  %and5 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.i.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %device_may_wakeup.exit.do.body25_crit_edge, label %if.then7

device_may_wakeup.exit.do.body25_crit_edge:       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.then7:                                         ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 1) #6
  %lock = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %suspended = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #6
  %and16 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then7.if.end33_crit_edge, label %do.body19

if.then7.if.end33_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.body19:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %and22 = and i32 %5, -131073
  %13 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !89
  br label %if.end33

do.body25:                                        ; preds = %device_may_wakeup.exit.do.body25_crit_edge, %if.then.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imr, align 4
  %neg = xor i32 %17, -1
  %and29 = and i32 %5, %neg
  %18 = tail call i32 @llvm.bswap.i32(i32 %and29)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !89
  br label %if.end33

if.end33:                                         ; preds = %do.body25, %do.body19, %if.then7.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %imr = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then:                                          ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %device_may_wakeup.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then2

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %device_may_wakeup.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !86
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %imr, align 4
  %or = or i32 %14, %12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !89
  %lock = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 9
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %suspended = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %suspended, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr5.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !86
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %26 = lshr i32 %21, 8
  %shr.i = and i32 %26, 3
  %and9.i = and i32 %shr.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i31 = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i31, label %if.end.at91_rtc_cache_events.exit_crit_edge, label %if.end.i

if.end.at91_rtc_cache_events.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rtc_cache_events.exit

if.end.i:                                         ; preds = %if.end
  %and10.i = and i32 %and9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then12.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %events.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %events.i, align 4
  %or.i = or i32 %28, 160
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i.if.end13.i_crit_edge
  %and14.i = and i32 %and9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.at91_rtc_cache_events.exit_crit_edge, label %if.then16.i

if.end13.i.at91_rtc_cache_events.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rtc_cache_events.exit

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %events17.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %events17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events17.i, align 4
  %or18.i = or i32 %30, 144
  store i32 %or18.i, ptr %events17.i, align 4
  br label %at91_rtc_cache_events.exit

at91_rtc_cache_events.exit:                       ; preds = %if.then16.i, %if.end13.i.at91_rtc_cache_events.exit_crit_edge, %if.end.at91_rtc_cache_events.exit_crit_edge
  %events.i32 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %events.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %events.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i33 = icmp eq i32 %32, 0
  br i1 %tobool.not.i33, label %at91_rtc_cache_events.exit.at91_rtc_flush_events.exit_crit_edge, label %if.end.i34

at91_rtc_cache_events.exit.at91_rtc_flush_events.exit_crit_edge: ; preds = %at91_rtc_cache_events.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_rtc_flush_events.exit

if.end.i34:                                       ; preds = %at91_rtc_cache_events.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rtcdev.i = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %rtcdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtcdev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %34, i32 noundef 1, i32 noundef %32) #6
  %35 = ptrtoint ptr %events.i32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %events.i32, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_rtc_flush_events.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_rtc_resume, %at91_rtc_flush_events.exit)) #6
          to label %if.then7.i [label %at91_rtc_flush_events.exit], !srcloc !90

if.then7.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %events.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %events.i32, align 4
  %shr.i35 = lshr i32 %37, 8
  %and.i = and i32 %37, 255
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @at91_rtc_flush_events.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %shr.i35, i32 noundef %and.i) #6
  br label %at91_rtc_flush_events.exit

at91_rtc_flush_events.exit:                       ; preds = %if.then7.i, %if.end.i34, %at91_rtc_cache_events.exit.at91_rtc_flush_events.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #6
  br label %if.end20

if.end20:                                         ; preds = %at91_rtc_flush_events.exit, %entry.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_rtc_at91sam9__295_543_at91_rtc_driver_init6, !1, !"__initcall__kmod_rtc_at91sam9__295_543_at91_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 543, i32 1}
!2 = !{ptr @__exitcall_at91_rtc_driver_exit, !1, !"__exitcall_at91_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 545, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 546, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 547, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 537, i32 11}
!12 = !{ptr @at91_rtc_driver, !13, !"at91_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 532, i32 31}
!14 = !{ptr @at91_rtc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 351, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 365, i32 13}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 373, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @at91_rtc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @at91_rtc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 383, i32 3}
!29 = !{ptr @at91_rtc_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @at91_rtc_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 389, i32 3}
!33 = !{ptr @at91_rtc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @at91_rtc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 420, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @at91_rtc_probe.__UNIQUE_ID_ddebug294, !36, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 431, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @at91_rtc_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @at91_rtc_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @at91_rtc_ops, !45, !"at91_rtc_ops", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 323, i32 35}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 122, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @at91_rtc_readtime.__UNIQUE_ID_ddebug288, !47, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 136, i32 2}
!52 = !{ptr @at91_rtc_settime.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 190, i32 3}
!55 = !{ptr @at91_rtc_readalarm.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 228, i32 2}
!58 = !{ptr @at91_rtc_setalarm.__UNIQUE_ID_ddebug291, !57, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 254, i32 18}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 255, i32 34}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 255, i32 42}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 238, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @at91_rtc_alarm_irq_enable.__UNIQUE_ID_ddebug292, !66, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 290, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @at91_rtc_flush_events.__UNIQUE_ID_ddebug293, !70, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!73 = !{ptr @at91_rtc_dt_ids, !74, !"at91_rtc_dt_ids", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 526, i32 34}
!75 = !{ptr @at91_rtc_pm_ops, !76, !"at91_rtc_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-at91sam9.c", i32 524, i32 8}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4241513}
!87 = !{i64 2155171405}
!88 = !{i64 2155171978}
!89 = !{i64 4241095}
!90 = !{i64 2148733382, i64 2148733387, i64 2148733400, i64 2148733444, i64 2148733478, i64 2148733499}
!91 = !{!"auto-init"}
!92 = !{i64 2155176694}
!93 = !{i64 2155177289}
!94 = !{i64 2155178233}
!95 = !{i64 2155178718}
!96 = !{i64 2155159213}
!97 = !{i64 2155159938}
!98 = !{i8 0, i8 2}
!99 = !{i64 2155164287}
!100 = !{i64 2155165346}
!101 = !{i64 2155136071}
!102 = !{i64 2155136628}
!103 = !{i64 2155137185}
!104 = !{i64 2155142088}
!105 = !{i64 2155142683}
!106 = !{i64 2155143627}
!107 = !{i64 2155144030}
!108 = !{i64 2155144664}
!109 = !{i64 2155145500}
!110 = !{i64 2155148243}
!111 = !{i64 2155148887}
!112 = !{i64 2155149330}
!113 = !{i64 2155151112}
!114 = !{i64 2155158572}
!115 = !{i64 2155154121}
!116 = !{i64 2155179497}
!117 = !{i64 2155180628}
!118 = !{i64 2155181230}
!119 = !{i64 2155182009}
!120 = !{i64 2155182324}
