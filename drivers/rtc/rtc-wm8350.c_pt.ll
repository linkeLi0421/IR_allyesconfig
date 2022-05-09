; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-wm8350.c_pt.bc'
source_filename = "../drivers/rtc/rtc-wm8350.c"
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
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_wm8350__290_469_wm8350_rtc_driver_init6 = internal global ptr @wm8350_rtc_driver_init, section ".initcall6.init", align 4
@wm8350_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8350_rtc_probe, ptr @wm8350_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8350_rtc_driver_exit = internal global ptr @wm8350_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [67 x i8] c"rtc_wm8350.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [49 x i8] c"rtc_wm8350.description=RTC driver for the WM8350\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"rtc_wm8350.file=drivers/rtc/rtc-wm8350\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"rtc_wm8350.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [37 x i8] c"rtc_wm8350.alias=platform:wm8350-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8350-rtc\00", [21 x i8] zeroinitializer }, align 32
@wm8350_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wm8350_rtc_suspend, ptr @wm8350_rtc_resume, ptr @wm8350_rtc_suspend, ptr @wm8350_rtc_resume, ptr @wm8350_rtc_suspend, ptr @wm8350_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTC BCD mode not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8350_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-wm8350.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr = internal global ptr @wm8350_rtc_probe._entry, section ".printk_index", align 4
@wm8350_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RTC 12 hour mode not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.8 = internal global ptr @wm8350_rtc_probe._entry.6, section ".printk_index", align 4
@wm8350_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Starting RTC\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.12 = internal global ptr @wm8350_rtc_probe._entry.9, section ".printk_index", align 4
@wm8350_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable RTC: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.15 = internal global ptr @wm8350_rtc_probe._entry.13, section ".printk_index", align 4
@wm8350_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to start: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.18 = internal global ptr @wm8350_rtc_probe._entry.16, section ".printk_index", align 4
@wm8350_rtc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start: timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.21 = internal global ptr @wm8350_rtc_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8350\00", [25 x i8] zeroinitializer }, align 32
@wm8350_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @wm8350_rtc_readtime, ptr @wm8350_rtc_settime, ptr @wm8350_rtc_readalarm, ptr @wm8350_rtc_setalarm, ptr null, ptr @wm8350_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register RTC: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8350_rtc_probe._entry_ptr.25 = internal global ptr @wm8350_rtc_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RTC Seconds\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTC Alarm\00", [22 x i8] zeroinitializer }, align 32
@wm8350_rtc_readtime.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_wm8350\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm8350_rtc_readtime\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read (%d left): %04x %04x %04x %04x\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8350_rtc_readtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timed out reading RTC time\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8350_rtc_readtime._entry_ptr = internal global ptr @wm8350_rtc_readtime._entry, section ".printk_index", align 4
@wm8350_rtc_settime.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8350_rtc_settime\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Setting: %04x %04x %04x %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8350_rtc_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timed out on set confirmation\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8350_rtc_settime._entry_ptr = internal global ptr @wm8350_rtc_settime._entry, section ".printk_index", align 4
@wm8350_rtc_alarm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable alarm: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm8350_rtc_alarm_handler\00", [39 x i8] zeroinitializer }, align 32
@wm8350_rtc_alarm_handler._entry_ptr = internal global ptr @wm8350_rtc_alarm_handler._entry, section ".printk_index", align 4
@wm8350_rtc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to stop RTC alarm: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8350_rtc_suspend\00", [45 x i8] zeroinitializer }, align 32
@wm8350_rtc_suspend._entry_ptr = internal global ptr @wm8350_rtc_suspend._entry, section ".printk_index", align 4
@wm8350_rtc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to restart RTC alarm: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8350_rtc_resume\00", [46 x i8] zeroinitializer }, align 32
@wm8350_rtc_resume._entry_ptr = internal global ptr @wm8350_rtc_resume._entry, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"wm8350_rtc_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 460, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 464, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"wm8350_rtc_pm_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 457, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 378, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 382, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 389, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 396, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 409, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 420, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 427, i32 53 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"wm8350_rtc_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 327, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 431, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 437, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 442, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 75, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 83, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 106, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 121, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 310, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 348, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [28 x i8] c"../drivers/rtc/rtc-wm8350.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 362, i32 4 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_wm8350_rtc_driver_exit, ptr @__initcall__kmod_rtc_wm8350__290_469_wm8350_rtc_driver_init6, ptr @wm8350_rtc_alarm_handler._entry, ptr @wm8350_rtc_alarm_handler._entry_ptr, ptr @wm8350_rtc_driver_exit, ptr @wm8350_rtc_probe._entry, ptr @wm8350_rtc_probe._entry.13, ptr @wm8350_rtc_probe._entry.16, ptr @wm8350_rtc_probe._entry.19, ptr @wm8350_rtc_probe._entry.23, ptr @wm8350_rtc_probe._entry.6, ptr @wm8350_rtc_probe._entry.9, ptr @wm8350_rtc_probe._entry_ptr, ptr @wm8350_rtc_probe._entry_ptr.12, ptr @wm8350_rtc_probe._entry_ptr.15, ptr @wm8350_rtc_probe._entry_ptr.18, ptr @wm8350_rtc_probe._entry_ptr.21, ptr @wm8350_rtc_probe._entry_ptr.25, ptr @wm8350_rtc_probe._entry_ptr.8, ptr @wm8350_rtc_readtime._entry, ptr @wm8350_rtc_readtime._entry_ptr, ptr @wm8350_rtc_resume._entry, ptr @wm8350_rtc_resume._entry_ptr, ptr @wm8350_rtc_settime._entry, ptr @wm8350_rtc_settime._entry_ptr, ptr @wm8350_rtc_suspend._entry, ptr @wm8350_rtc_suspend._entry_ptr, ptr @wm8350_rtc_driver, ptr @.str, ptr @wm8350_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @wm8350_rtc_ops, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_readtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_alarm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_rtc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8350_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8350_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %conv = zext i16 %call1 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup78

if.end:                                           ; preds = %entry
  %and3 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.7) #9
  br label %cleanup78

if.end10:                                         ; preds = %if.end
  %call11 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 12) #6
  %2 = and i16 %call11, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool14.not = icmp eq i16 %2, 0
  br i1 %tobool14.not, label %do.end18, label %if.end10.if.end30_crit_edge

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end18:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10) #9
  %call20 = tail call i32 @wm8350_reg_unlock(ptr noundef %1) #6
  %call21 = tail call i32 @wm8350_set_bits(ptr noundef %1, i16 noundef zeroext 12, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end26, label %if.end28

do.end26:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.14, i32 noundef %call21) #9
  br label %cleanup78

if.end28:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @wm8350_reg_lock(ptr noundef %1) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end10.if.end30_crit_edge
  %and32 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end60_crit_edge, label %if.then34

if.end30.if.end60_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then34:                                        ; preds = %if.end30
  %call35 = tail call i32 @wm8350_clear_bits(ptr noundef %1, i16 noundef zeroext 23, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end41, label %do.body44.preheader

do.body44.preheader:                              ; preds = %if.then34
  %call45 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %5 = and i16 %call45, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool49.not = icmp eq i16 %5, 0
  br i1 %tobool49.not, label %do.body44.preheader.if.end60_crit_edge, label %land.rhs

do.body44.preheader.if.end60_crit_edge:           ; preds = %do.body44.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end41:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.17, i32 noundef %call35) #9
  br label %cleanup78

land.rhs:                                         ; preds = %do.body44.preheader
  %call45.1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %6 = and i16 %call45.1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool49.not.1 = icmp eq i16 %6, 0
  br i1 %tobool49.not.1, label %land.rhs.if.end60_crit_edge, label %land.rhs.1

land.rhs.if.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.rhs.1:                                       ; preds = %land.rhs
  %call45.2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %7 = and i16 %call45.2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool49.not.2 = icmp eq i16 %7, 0
  br i1 %tobool49.not.2, label %land.rhs.1.if.end60_crit_edge, label %land.rhs.2

land.rhs.1.if.end60_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.rhs.2:                                       ; preds = %land.rhs.1
  %call45.3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %8 = and i16 %call45.3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool49.not.3 = icmp eq i16 %8, 0
  br i1 %tobool49.not.3, label %land.rhs.2.if.end60_crit_edge, label %land.rhs.3

land.rhs.2.if.end60_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.rhs.3:                                       ; preds = %land.rhs.2
  %call45.4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %9 = and i16 %call45.4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool49.not.4 = icmp eq i16 %9, 0
  br i1 %tobool49.not.4, label %land.rhs.3.if.end60_crit_edge, label %land.rhs.4

land.rhs.3.if.end60_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.rhs.4:                                       ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #8
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.20) #9
  br label %cleanup78

if.end60:                                         ; preds = %land.rhs.3.if.end60_crit_edge, %land.rhs.2.if.end60_crit_edge, %land.rhs.1.if.end60_crit_edge, %land.rhs.if.end60_crit_edge, %do.body44.preheader.if.end60_crit_edge, %if.end30.if.end60_crit_edge
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call62 = tail call i32 @device_init_wakeup(ptr noundef %dev61, i1 noundef zeroext true) #6
  %call64 = tail call ptr @devm_rtc_device_register(ptr noundef %dev61, ptr noundef nonnull @.str.22, ptr noundef nonnull @wm8350_rtc_ops, ptr noundef null) #6
  %rtc65 = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %rtc65 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call64, ptr %rtc65, align 4
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call64 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.24, i32 noundef %11) #9
  br label %cleanup78

if.end75:                                         ; preds = %if.end60
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end75.wm8350_register_irq.exit_crit_edge, label %if.end.i

if.end75.wm8350_register_irq.exit_crit_edge:      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8350_register_irq.exit

if.end.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %13, 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %add.i, ptr noundef null, ptr noundef nonnull @wm8350_rtc_update_handler, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %1) #6
  br label %wm8350_register_irq.exit

wm8350_register_irq.exit:                         ; preds = %if.end.i, %if.end75.wm8350_register_irq.exit_crit_edge
  %14 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_base.i, align 4
  %add.i118 = add i32 %15, 8
  tail call void @disable_irq(i32 noundef %add.i118) #6
  %16 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i120 = icmp eq i32 %17, 0
  br i1 %tobool.not.i120, label %wm8350_register_irq.exit.cleanup78_crit_edge, label %if.end.i123

wm8350_register_irq.exit.cleanup78_crit_edge:     ; preds = %wm8350_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup78

if.end.i123:                                      ; preds = %wm8350_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.i121 = add i32 %17, 9
  %call.i122 = tail call i32 @request_threaded_irq(i32 noundef %add.i121, ptr noundef null, ptr noundef nonnull @wm8350_rtc_alarm_handler, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %1) #6
  br label %cleanup78

cleanup78:                                        ; preds = %if.end.i123, %wm8350_register_irq.exit.cleanup78_crit_edge, %if.then68, %land.rhs.4, %do.end41, %do.end26, %do.end8, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ %11, %if.then68 ], [ %call21, %do.end26 ], [ 0, %wm8350_register_irq.exit.cleanup78_crit_edge ], [ 0, %if.end.i123 ], [ -19, %land.rhs.4 ], [ %call35, %do.end41 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base.i, align 4
  %add.i = add i32 %3, 8
  %call.i = tail call ptr @free_irq(i32 noundef %add.i, ptr noundef %1) #6
  %4 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base.i, align 4
  %add.i5 = add i32 %5, 9
  %call.i6 = tail call ptr @free_irq(i32 noundef %add.i5, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_clear_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_update_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc2 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %rtc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc2, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 144) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_alarm_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc2 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %rtc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc2, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  %call = tail call i32 @wm8350_set_bits(ptr noundef %data, i16 noundef zeroext 23, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtc1 = getelementptr inbounds %struct.wm8350, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %rtc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_readtime(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %time1 = alloca [4 x i16], align 8
  %time2 = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time1) #6
  %2 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 3
  %5 = ptrtoint ptr %time1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %time1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time2) #6
  %6 = ptrtoint ptr %time2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %time2, align 8
  %call1 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp10 = icmp eq i32 %bcmp, 0
  br i1 %cmp10, label %if.end6.if.then11_crit_edge, label %do.cond60

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end6.5.if.then11_crit_edge, %if.end6.4.if.then11_crit_edge, %if.end6.3.if.then11_crit_edge, %if.end6.2.if.then11_crit_edge, %if.end6.1.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %retries.0.lcssa93 = phi i32 [ 5, %if.end6.if.then11_crit_edge ], [ 4, %if.end6.1.if.then11_crit_edge ], [ 3, %if.end6.2.if.then11_crit_edge ], [ 2, %if.end6.3.if.then11_crit_edge ], [ 1, %if.end6.4.if.then11_crit_edge ], [ 0, %if.end6.5.if.then11_crit_edge ]
  %7 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %time1, align 8
  %9 = and i16 %8, 127
  %and = zext i16 %9 to i32
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %tm, align 4
  %11 = lshr i16 %8, 8
  %12 = and i16 %11, 127
  %13 = zext i16 %12 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tm_min, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %2, align 2
  %17 = and i16 %16, 31
  %and17 = zext i16 %17 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and17, ptr %tm_hour, align 4
  %19 = lshr i16 %16, 8
  %20 = and i16 %19, 7
  %and21 = zext i16 %20 to i32
  %sub = add nsw i32 %and21, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %tm_wday, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %3, align 4
  %24 = lshr i16 %23, 8
  %25 = and i16 %24, 31
  %26 = zext i16 %25 to i32
  %sub26 = add nsw i32 %26, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub26, ptr %tm_mon, align 4
  %28 = and i16 %23, 63
  %and29 = zext i16 %28 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and29, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %4, align 2
  %32 = lshr i16 %31, 8
  %33 = and i16 %32, 63
  %narrow = mul nuw nsw i16 %33, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %34 = and i16 %31, 255
  %narrow89 = add nuw nsw i16 %narrow, %34
  %add = zext i16 %narrow89 to i32
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %tm_year, align 4
  %call41 = call i32 @rtc_year_days(i32 noundef %and29, i32 noundef %sub26, i32 noundef %add) #6
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %36 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call41, ptr %tm_yday, align 4
  %37 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_year, align 4
  %sub43 = add i32 %38, -1900
  store i32 %sub43, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_rtc_readtime.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_rtc_readtime, %cleanup)) #6
          to label %if.then49 [label %cleanup], !srcloc !100

if.then49:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %time1, align 8
  %conv51 = zext i16 %40 to i32
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %2, align 2
  %conv53 = zext i16 %42 to i32
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %3, align 4
  %conv55 = zext i16 %44 to i32
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %4, align 2
  %conv57 = zext i16 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_rtc_readtime.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %retries.0.lcssa93, i32 noundef %conv51, i32 noundef %conv53, i32 noundef %conv55, i32 noundef %conv57) #6
  br label %cleanup

do.cond60:                                        ; preds = %if.end6
  %call1.1 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp.1, label %do.cond60.cleanup_crit_edge, label %if.end.1

do.cond60.cleanup_crit_edge:                      ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %do.cond60
  %call3.1 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %if.end.1.cleanup_crit_edge, label %if.end6.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.1:                                        ; preds = %if.end.1
  %bcmp.1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %cmp10.1 = icmp eq i32 %bcmp.1, 0
  br i1 %cmp10.1, label %if.end6.1.if.then11_crit_edge, label %do.cond60.1

if.end6.1.if.then11_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.cond60.1:                                      ; preds = %if.end6.1
  %call1.2 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp.2, label %do.cond60.1.cleanup_crit_edge, label %if.end.2

do.cond60.1.cleanup_crit_edge:                    ; preds = %do.cond60.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %do.cond60.1
  %call3.2 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %if.end.2.cleanup_crit_edge, label %if.end6.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.2:                                        ; preds = %if.end.2
  %bcmp.2 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %cmp10.2 = icmp eq i32 %bcmp.2, 0
  br i1 %cmp10.2, label %if.end6.2.if.then11_crit_edge, label %do.cond60.2

if.end6.2.if.then11_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.cond60.2:                                      ; preds = %if.end6.2
  %call1.3 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp.3, label %do.cond60.2.cleanup_crit_edge, label %if.end.3

do.cond60.2.cleanup_crit_edge:                    ; preds = %do.cond60.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %do.cond60.2
  %call3.3 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %if.end.3.cleanup_crit_edge, label %if.end6.3

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.3:                                        ; preds = %if.end.3
  %bcmp.3 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %cmp10.3 = icmp eq i32 %bcmp.3, 0
  br i1 %cmp10.3, label %if.end6.3.if.then11_crit_edge, label %do.cond60.3

if.end6.3.if.then11_crit_edge:                    ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.cond60.3:                                      ; preds = %if.end6.3
  %call1.4 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %cmp.4 = icmp slt i32 %call1.4, 0
  br i1 %cmp.4, label %do.cond60.3.cleanup_crit_edge, label %if.end.4

do.cond60.3.cleanup_crit_edge:                    ; preds = %do.cond60.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %do.cond60.3
  %call3.4 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %if.end.4.cleanup_crit_edge, label %if.end6.4

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.4:                                        ; preds = %if.end.4
  %bcmp.4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %cmp10.4 = icmp eq i32 %bcmp.4, 0
  br i1 %cmp10.4, label %if.end6.4.if.then11_crit_edge, label %do.cond60.4

if.end6.4.if.then11_crit_edge:                    ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.cond60.4:                                      ; preds = %if.end6.4
  %call1.5 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %cmp.5 = icmp slt i32 %call1.5, 0
  br i1 %cmp.5, label %do.cond60.4.cleanup_crit_edge, label %if.end.5

do.cond60.4.cleanup_crit_edge:                    ; preds = %do.cond60.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %do.cond60.4
  %call3.5 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp slt i32 %call3.5, 0
  br i1 %cmp4.5, label %if.end.5.cleanup_crit_edge, label %if.end6.5

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.5:                                        ; preds = %if.end.5
  %bcmp.5 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %time1, ptr noundef nonnull dereferenceable(8) %time2, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %cmp10.5 = icmp eq i32 %bcmp.5, 0
  br i1 %cmp10.5, label %if.end6.5.if.then11_crit_edge, label %do.cond60.5

if.end6.5.if.then11_crit_edge:                    ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.cond60.5:                                      ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  br label %cleanup

cleanup:                                          ; preds = %do.cond60.5, %if.end.5.cleanup_crit_edge, %do.cond60.4.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %do.cond60.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %do.cond60.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %do.cond60.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %do.cond60.cleanup_crit_edge, %if.then49, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.cond60.5 ], [ 0, %if.then49 ], [ 0, %if.then11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call1.1, %do.cond60.cleanup_crit_edge ], [ %call3.1, %if.end.1.cleanup_crit_edge ], [ %call1.2, %do.cond60.1.cleanup_crit_edge ], [ %call3.2, %if.end.2.cleanup_crit_edge ], [ %call1.3, %do.cond60.2.cleanup_crit_edge ], [ %call3.3, %if.end.3.cleanup_crit_edge ], [ %call1.4, %do.cond60.3.cleanup_crit_edge ], [ %call3.4, %if.end.4.cleanup_crit_edge ], [ %call1.5, %do.cond60.4.cleanup_crit_edge ], [ %call3.5, %if.end.5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_settime(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %time = alloca [4 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time) #6
  %2 = getelementptr inbounds [4 x i16], ptr %time, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i16], ptr %time, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i16], ptr %time, i32 0, i32 3
  %5 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_min, align 4
  %shl = shl i32 %8, 8
  %or = or i32 %shl, %6
  %conv3 = trunc i32 %or to i16
  %9 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %time, align 2
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %12 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_wday, align 4
  %add = shl i32 %13, 8
  %shl6 = add i32 %add, 256
  %or9 = or i32 %shl6, %11
  %conv10 = trunc i32 %or9 to i16
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv10, ptr %2, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %17 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mon, align 4
  %add13 = shl i32 %18, 8
  %shl14 = add i32 %add13, 256
  %or17 = or i32 %shl14, %16
  %conv18 = trunc i32 %or17 to i16
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18, ptr %3, align 2
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %20 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_year, align 4
  %add19 = add i32 %21, 1900
  %add19.frozen = freeze i32 %add19
  %div = sdiv i32 %add19.frozen, 100
  %div.tr = trunc i32 %div to i16
  %conv21 = shl i16 %div.tr, 8
  %22 = mul i32 %div, 100
  %rem.decomposed = sub i32 %add19.frozen, %22
  %23 = trunc i32 %rem.decomposed to i16
  %conv28 = or i16 %conv21, %23
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv28, ptr %4, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_rtc_settime.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8350_rtc_settime, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %time to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %time, align 2
  %conv34 = zext i16 %26 to i32
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %2, align 2
  %conv36 = zext i16 %28 to i32
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 2
  %conv38 = zext i16 %30 to i32
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %4, align 2
  %conv40 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_rtc_settime.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %conv40) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call41 = tail call i32 @wm8350_set_bits(ptr noundef %1, i16 noundef zeroext 23, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body45:                                        ; preds = %do.end
  %call46 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %call48 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %33 = and i16 %call46, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool52.not = icmp eq i16 %33, 0
  br i1 %tobool52.not, label %do.body45.1, label %do.body45.if.end61_crit_edge

do.body45.if.end61_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body45.1:                                      ; preds = %do.body45
  %call46.1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %call48.1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %34 = and i16 %call46.1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool52.not.1 = icmp eq i16 %34, 0
  br i1 %tobool52.not.1, label %do.body45.2, label %do.body45.1.if.end61_crit_edge

do.body45.1.if.end61_crit_edge:                   ; preds = %do.body45.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body45.2:                                      ; preds = %do.body45.1
  %call46.2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %call48.2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %35 = and i16 %call46.2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool52.not.2 = icmp eq i16 %35, 0
  br i1 %tobool52.not.2, label %do.body45.3, label %do.body45.2.if.end61_crit_edge

do.body45.2.if.end61_crit_edge:                   ; preds = %do.body45.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body45.3:                                      ; preds = %do.body45.2
  %call46.3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %call48.3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %36 = and i16 %call46.3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool52.not.3 = icmp eq i16 %36, 0
  br i1 %tobool52.not.3, label %do.body45.4, label %do.body45.3.if.end61_crit_edge

do.body45.3.if.end61_crit_edge:                   ; preds = %do.body45.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body45.4:                                      ; preds = %do.body45.3
  call void @__sanitizer_cov_trace_pc() #8
  %call46.4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %call48.4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end61:                                         ; preds = %do.body45.3.if.end61_crit_edge, %do.body45.2.if.end61_crit_edge, %do.body45.1.if.end61_crit_edge, %do.body45.if.end61_crit_edge
  %call62 = call i32 @wm8350_block_write(ptr noundef %1, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %time) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 @wm8350_clear_bits(ptr noundef %1, i16 noundef zeroext 23, i16 noundef zeroext 2048) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end61.cleanup_crit_edge, %do.body45.4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %if.end66 ], [ -5, %do.body45.4 ], [ %call41, %do.end.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_readalarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %time1 = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time1) #6
  %2 = ptrtoint ptr %time1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %time1, align 8
  %call2 = call i32 @wm8350_block_read(ptr noundef %1, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 3
  %4 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i16], ptr %time1, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %6 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %time1, align 8
  %8 = and i16 %7, 127
  %and = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %8)
  %cmp4 = icmp eq i16 %8, 127
  %spec.select = select i1 %cmp4, i32 -1, i32 %and
  %9 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %time, align 4
  %10 = and i16 %7, 32512
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32512, i16 %10)
  %cmp13 = icmp eq i16 %10, 32512
  %11 = lshr exact i16 %10, 8
  %12 = zext i16 %11 to i32
  %storemerge = select i1 %cmp13, i32 -1, i32 %12
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %tm_min, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %5, align 2
  %16 = and i16 %15, 31
  %and21 = zext i16 %16 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %16)
  %cmp23 = icmp eq i16 %16, 31
  %storemerge93 = select i1 %cmp23, i32 -1, i32 %and21
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge93, ptr %tm_hour, align 4
  %18 = lshr i16 %15, 8
  %19 = and i16 %18, 7
  %and31 = zext i16 %19 to i32
  %sub = add nsw i32 %and31, -1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %tm_wday, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 4
  %23 = and i16 %22, 7936
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7936, i16 %23)
  %cmp42 = icmp eq i16 %23, 7936
  %24 = lshr exact i16 %23, 8
  %25 = zext i16 %24 to i32
  %sub49 = add nsw i32 %25, -1
  %storemerge91 = select i1 %cmp42, i32 -1, i32 %sub49
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge91, ptr %tm_mon, align 4
  %27 = and i16 %22, 63
  %and54 = zext i16 %27 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %27)
  %cmp56 = icmp eq i16 %27, 63
  %storemerge92 = select i1 %cmp56, i32 -1, i32 %and54
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge92, ptr %tm_mday, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %tm_year, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %3, align 2
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_setalarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %time1 = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %time1) #6
  %2 = getelementptr inbounds [3 x i16], ptr %time1, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i16], ptr %time1, i32 0, i32 2
  %4 = call ptr @memset(ptr %time1, i32 0, i32 6)
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %time1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %time1, align 2
  %9 = trunc i32 %6 to i16
  %.sink = select i1 %cmp.not, i16 127, i16 %9
  %10 = or i16 %8, %.sink
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp8.not = icmp eq i32 %12, -1
  %.tr127 = trunc i32 %12 to i16
  %13 = shl i16 %.tr127, 8
  %storemerge121.v = select i1 %cmp8.not, i16 32512, i16 %13
  %storemerge121 = or i16 %storemerge121.v, %10
  %14 = ptrtoint ptr %time1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %storemerge121, ptr %time1, align 2
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp22.not = icmp eq i32 %16, -1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %2, align 2
  %19 = trunc i32 %16 to i16
  %.sink129 = select i1 %cmp22.not, i16 31, i16 %19
  %20 = or i16 %18, %.sink129
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp36.not = icmp eq i32 %22, -1
  %.tr126 = trunc i32 %22 to i16
  %23 = shl i16 %.tr126, 8
  %24 = add i16 %23, 256
  %storemerge123.v = select i1 %cmp36.not, i16 3840, i16 %24
  %storemerge123 = or i16 %storemerge123.v, %20
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge123, ptr %2, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp51.not = icmp eq i32 %27, -1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %3, align 2
  %30 = trunc i32 %27 to i16
  %.sink128 = select i1 %cmp51.not, i16 63, i16 %30
  %31 = or i16 %29, %.sink128
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp65.not = icmp eq i32 %33, -1
  %.tr = trunc i32 %33 to i16
  %34 = shl i16 %.tr, 8
  %35 = add i16 %34, 256
  %storemerge125.v = select i1 %cmp65.not, i16 7936, i16 %35
  %storemerge125 = or i16 %storemerge125.v, %31
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %storemerge125, ptr %3, align 2
  %call81 = tail call fastcc i32 @wm8350_rtc_stop_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %entry.cleanup_crit_edge, label %if.end85

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %entry
  %call87 = call i32 @wm8350_block_write(ptr noundef %1, i32 noundef 20, i32 noundef 3, ptr noundef nonnull %time1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end85.cleanup_crit_edge, label %if.end91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  %37 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %if.end91.cleanup_crit_edge, label %if.then92

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then92:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = call fastcc i32 @wm8350_rtc_start_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %if.end91.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call81, %entry.cleanup_crit_edge ], [ %call87, %if.end85.cleanup_crit_edge ], [ %call93, %if.then92 ], [ %call87, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %time1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @wm8350_rtc_start_alarm(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @wm8350_rtc_stop_alarm(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8350_rtc_stop_alarm(ptr noundef %wm8350) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 23, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %0 = and i16 %call1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool4.not = icmp eq i16 %0, 0
  br i1 %tobool4.not, label %do.body.1, label %do.body.preheader.do.end_crit_edge

do.body.preheader.do.end_crit_edge:               ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %do.body.preheader
  %call1.1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %1 = and i16 %call1.1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not.1 = icmp eq i16 %1, 0
  br i1 %tobool4.not.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %call1.2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %2 = and i16 %call1.2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not.2 = icmp eq i16 %2, 0
  br i1 %tobool4.not.2, label %do.body.3, label %do.body.2.do.end_crit_edge

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %call1.3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %3 = and i16 %call1.3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not.3 = icmp eq i16 %3, 0
  br i1 %tobool4.not.3, label %do.body.4, label %do.body.3.do.end_crit_edge

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  %call1.4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %4 = and i16 %call1.4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not.4 = icmp eq i16 %4, 0
  br i1 %tobool4.not.4, label %do.body.5, label %do.body.4.do.end_crit_edge

do.body.4.do.end_crit_edge:                       ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.5:                                        ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %call1.5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.5 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  br label %do.end

do.end:                                           ; preds = %do.body.5, %do.body.4.do.end_crit_edge, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %do.body.preheader.do.end_crit_edge
  %call1.lcssa = phi i16 [ %call1, %do.body.preheader.do.end_crit_edge ], [ %call1.1, %do.body.1.do.end_crit_edge ], [ %call1.2, %do.body.2.do.end_crit_edge ], [ %call1.3, %do.body.3.do.end_crit_edge ], [ %call1.4, %do.body.4.do.end_crit_edge ], [ %call1.5, %do.body.5 ]
  %5 = and i16 %call1.lcssa, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  %. = select i1 %tobool7.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8350_rtc_start_alarm(ptr noundef %wm8350) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 23, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %0 = and i16 %call1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool4.not = icmp eq i16 %0, 0
  br i1 %tobool4.not, label %do.body.preheader.do.end_crit_edge, label %do.body.1

do.body.preheader.do.end_crit_edge:               ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %do.body.preheader
  %call1.1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %1 = and i16 %call1.1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not.1 = icmp eq i16 %1, 0
  br i1 %tobool4.not.1, label %do.body.1.do.end_crit_edge, label %do.body.2

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %call1.2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %2 = and i16 %call1.2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not.2 = icmp eq i16 %2, 0
  br i1 %tobool4.not.2, label %do.body.2.do.end_crit_edge, label %do.body.3

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %call1.3 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %3 = and i16 %call1.3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.not.3 = icmp eq i16 %3, 0
  br i1 %tobool4.not.3, label %do.body.3.do.end_crit_edge, label %do.body.4

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  %call1.4 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  %4 = and i16 %call1.4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not.4 = icmp eq i16 %4, 0
  br i1 %tobool4.not.4, label %do.body.4.do.end_crit_edge, label %do.body.5

do.body.4.do.end_crit_edge:                       ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.5:                                        ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %call1.5 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 23) #6
  %call3.5 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #6
  br label %do.end

do.end:                                           ; preds = %do.body.5, %do.body.4.do.end_crit_edge, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %do.body.preheader.do.end_crit_edge
  %call1.lcssa = phi i16 [ %call1, %do.body.preheader.do.end_crit_edge ], [ %call1.1, %do.body.1.do.end_crit_edge ], [ %call1.2, %do.body.2.do.end_crit_edge ], [ %call1.3, %do.body.3.do.end_crit_edge ], [ %call1.4, %do.body.4.do.end_crit_edge ], [ %call1.5, %do.body.5 ]
  %5 = and i16 %call1.lcssa, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  %. = select i1 %tobool7.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 23) #6
  %rtc = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %device_may_wakeup.exit

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  %7 = and i16 %call1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %or.cond = select i1 %tobool2.i.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %device_may_wakeup.exit.if.end7_crit_edge, label %if.then

device_may_wakeup.exit.if.end7_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %device_may_wakeup.exit
  %call4 = tail call fastcc i32 @wm8350_rtc_stop_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %do.end

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call4) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then.if.end7_crit_edge, %device_may_wakeup.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end ], [ 0, %if.then.if.end7_crit_edge ], [ 0, %device_may_wakeup.exit.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_rtc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_enabled = getelementptr inbounds %struct.wm8350, ptr %1, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %alarm_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @wm8350_rtc_start_alarm(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call1) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_rtc_wm8350__290_469_wm8350_rtc_driver_init6, !1, !"__initcall__kmod_rtc_wm8350__290_469_wm8350_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-wm8350.c", i32 469, i32 1}
!2 = !{ptr @__exitcall_wm8350_rtc_driver_exit, !1, !"__exitcall_wm8350_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-wm8350.c", i32 471, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-wm8350.c", i32 472, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-wm8350.c", i32 473, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-wm8350.c", i32 474, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-wm8350.c", i32 464, i32 11}
!14 = !{ptr @wm8350_rtc_driver, !15, !"wm8350_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-wm8350.c", i32 460, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-wm8350.c", i32 378, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wm8350_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wm8350_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-wm8350.c", i32 382, i32 3}
!26 = !{ptr @wm8350_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm8350_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-wm8350.c", i32 389, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wm8350_rtc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm8350_rtc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-wm8350.c", i32 396, i32 4}
!35 = !{ptr @wm8350_rtc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm8350_rtc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-wm8350.c", i32 409, i32 4}
!39 = !{ptr @wm8350_rtc_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wm8350_rtc_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-wm8350.c", i32 420, i32 4}
!43 = !{ptr @wm8350_rtc_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wm8350_rtc_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-wm8350.c", i32 427, i32 53}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-wm8350.c", i32 431, i32 3}
!49 = !{ptr @wm8350_rtc_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wm8350_rtc_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-wm8350.c", i32 437, i32 8}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-wm8350.c", i32 442, i32 8}
!55 = !{ptr @wm8350_rtc_ops, !56, !"wm8350_rtc_ops", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-wm8350.c", i32 327, i32 35}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-wm8350.c", i32 75, i32 4}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @wm8350_rtc_readtime.__UNIQUE_ID_ddebug288, !58, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-wm8350.c", i32 83, i32 2}
!64 = !{ptr @wm8350_rtc_readtime._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wm8350_rtc_readtime._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-wm8350.c", i32 106, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wm8350_rtc_settime.__UNIQUE_ID_ddebug289, !67, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-wm8350.c", i32 121, i32 3}
!72 = !{ptr @wm8350_rtc_settime._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @wm8350_rtc_settime._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-wm8350.c", i32 310, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wm8350_rtc_alarm_handler._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @wm8350_rtc_alarm_handler._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @wm8350_rtc_pm_ops, !80, !"wm8350_rtc_pm_ops", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-wm8350.c", i32 457, i32 8}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-wm8350.c", i32 348, i32 4}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @wm8350_rtc_suspend._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @wm8350_rtc_suspend._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-wm8350.c", i32 362, i32 4}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @wm8350_rtc_resume._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @wm8350_rtc_resume._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148963020, i64 2148963025, i64 2148963038, i64 2148963082, i64 2148963116, i64 2148963137}
