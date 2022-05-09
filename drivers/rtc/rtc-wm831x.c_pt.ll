; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-wm831x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-wm831x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_rtc = type { ptr, ptr, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_wm831x__228_470_wm831x_rtc_driver_init6 = internal global ptr @wm831x_rtc_driver_init, section ".initcall6.init", align 4
@wm831x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_rtc_driver_exit = internal global ptr @wm831x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [67 x i8] c"rtc_wm831x.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [62 x i8] c"rtc_wm831x.description=RTC driver for the WM831x series PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_wm831x.file=drivers/rtc/rtc-wm831x\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"rtc_wm831x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [37 x i8] c"rtc_wm831x.alias=platform:wm831x-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm831x-rtc\00", [21 x i8] zeroinitializer }, align 32
@wm831x_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wm831x_rtc_suspend, ptr @wm831x_rtc_resume, ptr @wm831x_rtc_freeze, ptr @wm831x_rtc_resume, ptr @wm831x_rtc_suspend, ptr @wm831x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALM\00", [28 x i8] zeroinitializer }, align 32
@wm831x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 417, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read RTC control: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-wm831x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_rtc_probe._entry_ptr = internal global ptr @wm831x_rtc_probe._entry, section ".printk_index", align 4
@wm831x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @wm831x_rtc_readtime, ptr @wm831x_rtc_settime, ptr @wm831x_rtc_readalarm, ptr @wm831x_rtc_setalarm, ptr null, ptr @wm831x_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTC alarm\00", [22 x i8] zeroinitializer }, align 32
@wm831x_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm831x_rtc_probe._entry_ptr.10 = internal global ptr @wm831x_rtc_probe._entry.8, section ".printk_index", align 4
@wm831x_rtc_readtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.11, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_rtc_readtime\00", [44 x i8] zeroinitializer }, align 32
@wm831x_rtc_readtime._entry_ptr = internal global ptr @wm831x_rtc_readtime._entry, section ".printk_index", align 4
@wm831x_rtc_readtime.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.4, ptr @.str.13, i8 0, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_wm831x\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RTC not yet configured\0A\00", [40 x i8] zeroinitializer }, align 32
@wm831x_rtc_readtime._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out reading current time\0A\00", [32 x i8] zeroinitializer }, align 32
@wm831x_rtc_readtime._entry_ptr.16 = internal global ptr @wm831x_rtc_readtime._entry.14, section ".printk_index", align 4
@wm831x_rtc_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write TIME_1: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_rtc_settime\00", [45 x i8] zeroinitializer }, align 32
@wm831x_rtc_settime._entry_ptr = internal global ptr @wm831x_rtc_settime._entry, section ".printk_index", align 4
@wm831x_rtc_settime._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write TIME_2: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_rtc_settime._entry_ptr.21 = internal global ptr @wm831x_rtc_settime._entry.19, section ".printk_index", align 4
@wm831x_rtc_settime._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timed out writing RTC update\0A\00", [34 x i8] zeroinitializer }, align 32
@wm831x_rtc_settime._entry_ptr.24 = internal global ptr @wm831x_rtc_settime._entry.22, section ".printk_index", align 4
@wm831x_rtc_settime._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTC update not permitted by hardware\0A\00", [58 x i8] zeroinitializer }, align 32
@wm831x_rtc_settime._entry_ptr.27 = internal global ptr @wm831x_rtc_settime._entry.25, section ".printk_index", align 4
@wm831x_rtc_readalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read alarm time: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm831x_rtc_readalarm\00", [43 x i8] zeroinitializer }, align 32
@wm831x_rtc_readalarm._entry_ptr = internal global ptr @wm831x_rtc_readalarm._entry, section ".printk_index", align 4
@wm831x_rtc_readalarm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.29, ptr @.str.4, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wm831x_rtc_readalarm._entry_ptr.31 = internal global ptr @wm831x_rtc_readalarm._entry.30, section ".printk_index", align 4
@wm831x_rtc_setalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to stop alarm: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_rtc_setalarm\00", [44 x i8] zeroinitializer }, align 32
@wm831x_rtc_setalarm._entry_ptr = internal global ptr @wm831x_rtc_setalarm._entry, section ".printk_index", align 4
@wm831x_rtc_setalarm._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write ALARM_1: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm831x_rtc_setalarm._entry_ptr.36 = internal global ptr @wm831x_rtc_setalarm._entry.34, section ".printk_index", align 4
@wm831x_rtc_setalarm._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write ALARM_2: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm831x_rtc_setalarm._entry_ptr.39 = internal global ptr @wm831x_rtc_setalarm._entry.37, section ".printk_index", align 4
@wm831x_rtc_setalarm._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to start alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm831x_rtc_setalarm._entry_ptr.42 = internal global ptr @wm831x_rtc_setalarm._entry.40, section ".printk_index", align 4
@wm831x_rtc_add_randomness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 111, ptr @.str.45, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read RTC write counter: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm831x_rtc_add_randomness\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm831x_rtc_add_randomness._entry_ptr = internal global ptr @wm831x_rtc_add_randomness._entry, section ".printk_index", align 4
@wm831x_rtc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to update RTC alarm: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_rtc_suspend\00", [45 x i8] zeroinitializer }, align 32
@wm831x_rtc_suspend._entry_ptr = internal global ptr @wm831x_rtc_suspend._entry, section ".printk_index", align 4
@wm831x_rtc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to restart RTC alarm: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x_rtc_resume\00", [46 x i8] zeroinitializer }, align 32
@wm831x_rtc_resume._entry_ptr = internal global ptr @wm831x_rtc_resume._entry, section ".printk_index", align 4
@wm831x_rtc_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to stop RTC alarm: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x_rtc_freeze\00", [46 x i8] zeroinitializer }, align 32
@wm831x_rtc_freeze._entry_ptr = internal global ptr @wm831x_rtc_freeze._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"wm831x_rtc_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 462, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 465, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"wm831x_rtc_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 451, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 405, i32 65 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 417, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"wm831x_rtc_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 337, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 439, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 442, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 129, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 133, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 160, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 182, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 188, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 205, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 220, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 240, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 250, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 289, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 296, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 302, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 309, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 110, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 360, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 376, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [28 x i8] c"../drivers/rtc/rtc-wm831x.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 391, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_wm831x_rtc_driver_exit, ptr @__initcall__kmod_rtc_wm831x__228_470_wm831x_rtc_driver_init6, ptr @wm831x_rtc_add_randomness._entry, ptr @wm831x_rtc_add_randomness._entry_ptr, ptr @wm831x_rtc_driver_exit, ptr @wm831x_rtc_freeze._entry, ptr @wm831x_rtc_freeze._entry_ptr, ptr @wm831x_rtc_probe._entry, ptr @wm831x_rtc_probe._entry.8, ptr @wm831x_rtc_probe._entry_ptr, ptr @wm831x_rtc_probe._entry_ptr.10, ptr @wm831x_rtc_readalarm._entry, ptr @wm831x_rtc_readalarm._entry.30, ptr @wm831x_rtc_readalarm._entry_ptr, ptr @wm831x_rtc_readalarm._entry_ptr.31, ptr @wm831x_rtc_readtime._entry, ptr @wm831x_rtc_readtime._entry.14, ptr @wm831x_rtc_readtime._entry_ptr, ptr @wm831x_rtc_readtime._entry_ptr.16, ptr @wm831x_rtc_resume._entry, ptr @wm831x_rtc_resume._entry_ptr, ptr @wm831x_rtc_setalarm._entry, ptr @wm831x_rtc_setalarm._entry.34, ptr @wm831x_rtc_setalarm._entry.37, ptr @wm831x_rtc_setalarm._entry.40, ptr @wm831x_rtc_setalarm._entry_ptr, ptr @wm831x_rtc_setalarm._entry_ptr.36, ptr @wm831x_rtc_setalarm._entry_ptr.39, ptr @wm831x_rtc_setalarm._entry_ptr.42, ptr @wm831x_rtc_settime._entry, ptr @wm831x_rtc_settime._entry.19, ptr @wm831x_rtc_settime._entry.22, ptr @wm831x_rtc_settime._entry.25, ptr @wm831x_rtc_settime._entry_ptr, ptr @wm831x_rtc_settime._entry_ptr.21, ptr @wm831x_rtc_settime._entry_ptr.24, ptr @wm831x_rtc_settime._entry_ptr.27, ptr @wm831x_rtc_suspend._entry, ptr @wm831x_rtc_suspend._entry_ptr, ptr @wm831x_rtc_driver, ptr @.str, ptr @wm831x_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wm831x_rtc_ops, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_readtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_readtime._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_settime._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_settime._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_settime._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_readalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_readalarm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_setalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_setalarm._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_setalarm._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_setalarm._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_add_randomness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_rtc_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %call1, ptr noundef null) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %call.i, align 4
  %call6 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call6) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and = and i32 %call6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10.if.end12_crit_edge, label %if.then11

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_enabled = getelementptr inbounds %struct.wm831x_rtc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %alarm_enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %alarm_enabled, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10.if.end12_crit_edge
  %call14 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call16 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.wm831x_rtc, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call16, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wm831x_rtc_ops, ptr %ops, align 8
  %12 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 4294967295, ptr %range_max, align 8
  %15 = load ptr, ptr %rtc, align 4
  %call26 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call31 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_alm_irq, i32 noundef 8193, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end29.if.end38_crit_edge, label %do.end36

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i.i, i32 noundef %call31) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end29.if.end38_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %call.i71 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16416) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i71)
  %cmp.i72 = icmp sgt i32 %call.i71, -1
  br i1 %cmp.i72, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i71 to i16
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %reg.i, align 2
  call void @add_device_randomness(ptr noundef nonnull %reg.i, i32 noundef 2) #6
  br label %wm831x_rtc_add_randomness.exit

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.43, i32 noundef %call.i71) #9
  br label %wm831x_rtc_add_randomness.exit

wm831x_rtc_add_randomness.exit:                   ; preds = %do.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wm831x_rtc_add_randomness.exit, %if.end22.cleanup_crit_edge, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %10, %if.then19 ], [ 0, %wm831x_rtc_add_randomness.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_alm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.wm831x_rtc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_readtime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %time1 = alloca [2 x i16], align 2
  %time2 = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time1) #6
  %4 = ptrtoint ptr %time1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %time1, align 2, !annotation !120
  %5 = getelementptr inbounds [2 x i16], ptr %time1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time2) #6
  %7 = ptrtoint ptr %time2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %time2, align 2, !annotation !120
  %8 = getelementptr inbounds [2 x i16], ptr %time2, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !120
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.body15.preheader

do.body15.preheader:                              ; preds = %if.end
  %call16 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %do.body15.preheader.do.cond34_crit_edge

do.body15.preheader.do.cond34_crit_edge:          ; preds = %do.body15.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_rtc_readtime.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_rtc_readtime, %cleanup)) #6
          to label %if.then10 [label %cleanup], !srcloc !121

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_rtc_readtime.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end19:                                         ; preds = %do.body15.preheader
  %call21 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end24, label %if.end19.do.cond34_crit_edge

if.end19.do.cond34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34

if.end24:                                         ; preds = %if.end19
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %time1, ptr noundef nonnull dereferenceable(4) %time2, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp28 = icmp eq i32 %bcmp, 0
  br i1 %cmp28, label %if.end24.if.then29_crit_edge, label %if.end24.do.cond34_crit_edge

if.end24.do.cond34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %if.end24.4.if.then29_crit_edge, %if.end24.3.if.then29_crit_edge, %if.end24.2.if.then29_crit_edge, %if.end24.1.if.then29_crit_edge, %if.end24.if.then29_crit_edge
  %10 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %time1, align 2
  %conv = zext i16 %11 to i32
  %shl = shl nuw i32 %conv, 16
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 2
  %conv31 = zext i16 %13 to i32
  %or = or i32 %shl, %conv31
  %conv32 = zext i32 %or to i64
  call void @rtc_time64_to_tm(i64 noundef %conv32, ptr noundef %tm) #6
  br label %cleanup

do.cond34:                                        ; preds = %if.end24.do.cond34_crit_edge, %if.end19.do.cond34_crit_edge, %do.body15.preheader.do.cond34_crit_edge
  %call16.1 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1)
  %cmp17.not.1 = icmp eq i32 %call16.1, 0
  br i1 %cmp17.not.1, label %if.end19.1, label %do.cond34.do.cond34.1_crit_edge

do.cond34.do.cond34.1_crit_edge:                  ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.1

if.end19.1:                                       ; preds = %do.cond34
  %call21.1 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %cmp22.not.1, label %if.end24.1, label %if.end19.1.do.cond34.1_crit_edge

if.end19.1.do.cond34.1_crit_edge:                 ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.1

if.end24.1:                                       ; preds = %if.end19.1
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %time1, ptr noundef nonnull dereferenceable(4) %time2, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %cmp28.1 = icmp eq i32 %bcmp.1, 0
  br i1 %cmp28.1, label %if.end24.1.if.then29_crit_edge, label %if.end24.1.do.cond34.1_crit_edge

if.end24.1.do.cond34.1_crit_edge:                 ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.1

if.end24.1.if.then29_crit_edge:                   ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

do.cond34.1:                                      ; preds = %if.end24.1.do.cond34.1_crit_edge, %if.end19.1.do.cond34.1_crit_edge, %do.cond34.do.cond34.1_crit_edge
  %call16.2 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2)
  %cmp17.not.2 = icmp eq i32 %call16.2, 0
  br i1 %cmp17.not.2, label %if.end19.2, label %do.cond34.1.do.cond34.2_crit_edge

do.cond34.1.do.cond34.2_crit_edge:                ; preds = %do.cond34.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.2

if.end19.2:                                       ; preds = %do.cond34.1
  %call21.2 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp22.not.2 = icmp eq i32 %call21.2, 0
  br i1 %cmp22.not.2, label %if.end24.2, label %if.end19.2.do.cond34.2_crit_edge

if.end19.2.do.cond34.2_crit_edge:                 ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.2

if.end24.2:                                       ; preds = %if.end19.2
  %bcmp.2 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %time1, ptr noundef nonnull dereferenceable(4) %time2, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %cmp28.2 = icmp eq i32 %bcmp.2, 0
  br i1 %cmp28.2, label %if.end24.2.if.then29_crit_edge, label %if.end24.2.do.cond34.2_crit_edge

if.end24.2.do.cond34.2_crit_edge:                 ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.2

if.end24.2.if.then29_crit_edge:                   ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

do.cond34.2:                                      ; preds = %if.end24.2.do.cond34.2_crit_edge, %if.end19.2.do.cond34.2_crit_edge, %do.cond34.1.do.cond34.2_crit_edge
  %call16.3 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3)
  %cmp17.not.3 = icmp eq i32 %call16.3, 0
  br i1 %cmp17.not.3, label %if.end19.3, label %do.cond34.2.do.cond34.3_crit_edge

do.cond34.2.do.cond34.3_crit_edge:                ; preds = %do.cond34.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.3

if.end19.3:                                       ; preds = %do.cond34.2
  %call21.3 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %cmp22.not.3 = icmp eq i32 %call21.3, 0
  br i1 %cmp22.not.3, label %if.end24.3, label %if.end19.3.do.cond34.3_crit_edge

if.end19.3.do.cond34.3_crit_edge:                 ; preds = %if.end19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.3

if.end24.3:                                       ; preds = %if.end19.3
  %bcmp.3 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %time1, ptr noundef nonnull dereferenceable(4) %time2, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %cmp28.3 = icmp eq i32 %bcmp.3, 0
  br i1 %cmp28.3, label %if.end24.3.if.then29_crit_edge, label %if.end24.3.do.cond34.3_crit_edge

if.end24.3.do.cond34.3_crit_edge:                 ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.3

if.end24.3.if.then29_crit_edge:                   ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

do.cond34.3:                                      ; preds = %if.end24.3.do.cond34.3_crit_edge, %if.end19.3.do.cond34.3_crit_edge, %do.cond34.2.do.cond34.3_crit_edge
  %call16.4 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4)
  %cmp17.not.4 = icmp eq i32 %call16.4, 0
  br i1 %cmp17.not.4, label %if.end19.4, label %do.cond34.3.do.cond34.4_crit_edge

do.cond34.3.do.cond34.4_crit_edge:                ; preds = %do.cond34.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.4

if.end19.4:                                       ; preds = %do.cond34.3
  %call21.4 = call i32 @wm831x_bulk_read(ptr noundef %3, i16 noundef zeroext 16417, i32 noundef 2, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.4)
  %cmp22.not.4 = icmp eq i32 %call21.4, 0
  br i1 %cmp22.not.4, label %if.end24.4, label %if.end19.4.do.cond34.4_crit_edge

if.end19.4.do.cond34.4_crit_edge:                 ; preds = %if.end19.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.4

if.end24.4:                                       ; preds = %if.end19.4
  %bcmp.4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %time1, ptr noundef nonnull dereferenceable(4) %time2, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %cmp28.4 = icmp eq i32 %bcmp.4, 0
  br i1 %cmp28.4, label %if.end24.4.if.then29_crit_edge, label %if.end24.4.do.cond34.4_crit_edge

if.end24.4.do.cond34.4_crit_edge:                 ; preds = %if.end24.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond34.4

if.end24.4.if.then29_crit_edge:                   ; preds = %if.end24.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

do.cond34.4:                                      ; preds = %if.end24.4.do.cond34.4_crit_edge, %if.end19.4.do.cond34.4_crit_edge, %do.cond34.3.do.cond34.4_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

cleanup:                                          ; preds = %do.cond34.4, %if.then29, %if.then10, %do.body4, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -5, %do.cond34.4 ], [ 0, %if.then29 ], [ -22, %if.then10 ], [ -22, %do.body4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_settime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %new_tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %new_tm) #6
  %4 = call ptr @memset(ptr %new_tm, i32 255, i32 36)
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call2 to i32
  %shr73 = lshr i64 %call2, 16
  %conv3 = trunc i64 %shr73 to i16
  %call4 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16417, i16 noundef zeroext %conv3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = trunc i64 %call2 to i16
  %call8 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16418, i16 noundef zeroext %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %do.body16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call8) #9
  br label %cleanup

do.body16:                                        ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #6
  %call17 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  %5 = and i32 %call17, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %do.body16.1, label %do.body16.do.end26_crit_edge

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.body16.1:                                      ; preds = %do.body16
  tail call void @msleep(i32 noundef 1) #6
  %call17.1 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  %7 = and i32 %call17.1, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %do.body16.2, label %do.body16.1.do.end26_crit_edge

do.body16.1.do.end26_crit_edge:                   ; preds = %do.body16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.body16.2:                                      ; preds = %do.body16.1
  tail call void @msleep(i32 noundef 1) #6
  %call17.2 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  %9 = and i32 %call17.2, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %do.body16.3, label %do.body16.2.do.end26_crit_edge

do.body16.2.do.end26_crit_edge:                   ; preds = %do.body16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.body16.3:                                      ; preds = %do.body16.2
  tail call void @msleep(i32 noundef 1) #6
  %call17.3 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  %11 = and i32 %call17.3, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %do.body16.4, label %do.body16.3.do.end26_crit_edge

do.body16.3.do.end26_crit_edge:                   ; preds = %do.body16.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.body16.4:                                      ; preds = %do.body16.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  %call17.4 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext 16421) #6
  %13 = and i32 %call17.4, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br label %do.end26

do.end26:                                         ; preds = %do.body16.4, %do.body16.3.do.end26_crit_edge, %do.body16.2.do.end26_crit_edge, %do.body16.1.do.end26_crit_edge, %do.body16.do.end26_crit_edge
  %.lcssa = phi i1 [ %6, %do.body16.do.end26_crit_edge ], [ %8, %do.body16.1.do.end26_crit_edge ], [ %10, %do.body16.2.do.end26_crit_edge ], [ %12, %do.body16.3.do.end26_crit_edge ], [ %14, %do.body16.4 ]
  br i1 %.lcssa, label %if.end33, label %do.end32

do.end32:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end33:                                         ; preds = %do.end26
  %call34 = call i32 @wm831x_rtc_readtime(ptr noundef %dev, ptr noundef nonnull %new_tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call39 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %new_tm) #6
  %conv40 = trunc i64 %call39 to i32
  %sub = sub i32 %conv40, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp41 = icmp ugt i32 %sub, 1
  br i1 %cmp41, label %do.end46, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end32, %do.end14, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call8, %do.end14 ], [ -5, %do.end32 ], [ -1, %do.end46 ], [ %call34, %if.end33.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %new_tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_readalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !120
  %3 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !120
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call1 = call i32 @wm831x_bulk_read(ptr noundef %6, i16 noundef zeroext 16419, i32 noundef 2, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data, align 2
  %conv = zext i16 %8 to i32
  %shl = shl nuw i32 %conv, 16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv3 = zext i16 %10 to i32
  %or = or i32 %shl, %conv3
  %conv4 = zext i32 %or to i64
  %time5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv4, ptr noundef %time5) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call7 = call i32 @wm831x_reg_read(ptr noundef %12, i16 noundef zeroext 16421) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call7) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %call7, 10
  %13 = trunc i32 %and to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end13, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call7, %do.end13 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_setalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
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
  %time2 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call3 = tail call i64 @rtc_tm_to_time64(ptr noundef %time2) #6
  %conv = trunc i64 %call3 to i16
  %alarm_enabled.i = getelementptr inbounds %struct.wm831x_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %alarm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %alarm_enabled.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %alarm_enabled.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @wm831x_set_bits(ptr noundef %6, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr58 = lshr i64 %call3, 16
  %conv6 = trunc i64 %shr58 to i16
  %call7 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16419, i16 noundef zeroext %conv6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call7) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call17 = tail call i32 @wm831x_reg_write(ptr noundef %3, i16 noundef zeroext 16420, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call17) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end24.cleanup_crit_edge, label %if.then25

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end24
  %9 = ptrtoint ptr %alarm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i60 = load i8, ptr %alarm_enabled.i, align 4
  %bf.set.i = or i8 %bf.load.i60, -128
  store i8 %bf.set.i, ptr %alarm_enabled.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i61 = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext 1024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp27 = icmp slt i32 %call.i61, 0
  br i1 %cmp27, label %do.end32, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call.i61) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then25.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call7, %do.end13 ], [ %call17, %do.end23 ], [ %call.i61, %do.end32 ], [ 0, %if.then25.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %alarm_enabled.i4 = getelementptr inbounds %struct.wm831x_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %alarm_enabled.i4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i5 = load i8, ptr %alarm_enabled.i4, align 4
  %bf.clear.i = and i8 %bf.load.i5, 127
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %bf.clear.i.sink = or i8 %bf.clear.i, %masksel
  %.sink7 = select i1 %tobool.not, i16 0, i16 1024
  store i8 %bf.clear.i.sink, ptr %alarm_enabled.i4, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i6 = tail call i32 @wm831x_set_bits(ptr noundef %4, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext %.sink7) #6
  ret i32 %call.i6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_bulk_read(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_enabled = getelementptr inbounds %struct.wm831x_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %alarm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %device_may_wakeup.exit

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %land.lhs.true
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %device_may_wakeup.exit.if.end_crit_edge
  %enable.0 = phi i16 [ 0, %if.else ], [ 1024, %device_may_wakeup.exit.if.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @wm831x_set_bits(ptr noundef %7, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext %enable.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call2) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_enabled = getelementptr inbounds %struct.wm831x_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %alarm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %bf.set.i = or i8 %bf.load, -128
  %3 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set.i, ptr %alarm_enabled, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @wm831x_set_bits(ptr noundef %5, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext 1024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %call.i) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_rtc_freeze(ptr noundef %dev) #2 align 64 {
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
  %call1 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16421, i16 noundef zeroext 1024, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_rtc_wm831x__228_470_wm831x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_wm831x__228_470_wm831x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-wm831x.c", i32 470, i32 1}
!2 = !{ptr @__exitcall_wm831x_rtc_driver_exit, !1, !"__exitcall_wm831x_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-wm831x.c", i32 472, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-wm831x.c", i32 473, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-wm831x.c", i32 474, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-wm831x.c", i32 475, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-wm831x.c", i32 465, i32 11}
!14 = !{ptr @wm831x_rtc_driver, !15, !"wm831x_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-wm831x.c", i32 462, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-wm831x.c", i32 405, i32 65}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-wm831x.c", i32 417, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wm831x_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm831x_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-wm831x.c", i32 439, i32 5}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-wm831x.c", i32 442, i32 3}
!30 = !{ptr @wm831x_rtc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm831x_rtc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wm831x_rtc_ops, !33, !"wm831x_rtc_ops", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-wm831x.c", i32 337, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-wm831x.c", i32 129, i32 3}
!36 = !{ptr @wm831x_rtc_readtime._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm831x_rtc_readtime._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-wm831x.c", i32 133, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @wm831x_rtc_readtime.__UNIQUE_ID_ddebug227, !39, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-wm831x.c", i32 160, i32 2}
!44 = !{ptr @wm831x_rtc_readtime._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wm831x_rtc_readtime._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-wm831x.c", i32 182, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @wm831x_rtc_settime._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm831x_rtc_settime._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-wm831x.c", i32 188, i32 3}
!53 = !{ptr @wm831x_rtc_settime._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @wm831x_rtc_settime._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-wm831x.c", i32 205, i32 3}
!57 = !{ptr @wm831x_rtc_settime._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @wm831x_rtc_settime._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-wm831x.c", i32 220, i32 3}
!61 = !{ptr @wm831x_rtc_settime._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @wm831x_rtc_settime._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-wm831x.c", i32 240, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wm831x_rtc_readalarm._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wm831x_rtc_readalarm._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @wm831x_rtc_readalarm._entry.30, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-wm831x.c", i32 250, i32 3}
!70 = !{ptr @wm831x_rtc_readalarm._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-wm831x.c", i32 289, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @wm831x_rtc_setalarm._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @wm831x_rtc_setalarm._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-wm831x.c", i32 296, i32 3}
!78 = !{ptr @wm831x_rtc_setalarm._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wm831x_rtc_setalarm._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-wm831x.c", i32 302, i32 3}
!82 = !{ptr @wm831x_rtc_setalarm._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @wm831x_rtc_setalarm._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-wm831x.c", i32 309, i32 4}
!86 = !{ptr @wm831x_rtc_setalarm._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @wm831x_rtc_setalarm._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-wm831x.c", i32 110, i32 3}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wm831x_rtc_add_randomness._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @wm831x_rtc_add_randomness._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @wm831x_rtc_pm_ops, !95, !"wm831x_rtc_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-wm831x.c", i32 451, i32 32}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-wm831x.c", i32 360, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @wm831x_rtc_suspend._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @wm831x_rtc_suspend._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-wm831x.c", i32 376, i32 4}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @wm831x_rtc_resume._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @wm831x_rtc_resume._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-wm831x.c", i32 391, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @wm831x_rtc_freeze._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @wm831x_rtc_freeze._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i64 2148964081, i64 2148964086, i64 2148964099, i64 2148964143, i64 2148964177, i64 2148964198}
