; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rk808.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rk808.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rk_rtc_compat_reg = type { i32, i32, i32, i32, i32 }
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
%struct.rk808 = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rk808_rtc = type { ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rk808__293_461_rk808_rtc_driver_init6 = internal global ptr @rk808_rtc_driver_init, section ".initcall6.init", align 4
@rk808_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk808_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk808_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk808_rtc_driver_exit = internal global ptr @rk808_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [60 x i8] c"rtc_rk808.description=RTC driver for the rk808 series PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [50 x i8] c"rtc_rk808.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [55 x i8] c"rtc_rk808.author=Zhang Qing <zhangqing@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [37 x i8] c"rtc_rk808.file=drivers/rtc/rtc-rk808\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [22 x i8] c"rtc_rk808.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [35 x i8] c"rtc_rk808.alias=platform:rk808-rtc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rk808-rtc\00", [22 x i8] zeroinitializer }, align 32
@rk808_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr @rk808_rtc_suspend, ptr @rk808_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk817_creg = internal global { %struct.rk_rtc_compat_reg, [44 x i8] } { %struct.rk_rtc_compat_reg { i32 13, i32 14, i32 7, i32 15, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rk808_creg = internal global { %struct.rk_rtc_compat_reg, [44 x i8] } { %struct.rk_rtc_compat_reg { i32 16, i32 17, i32 8, i32 18, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rk808_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to update RTC control: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk808_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-rk808.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk808_rtc_probe._entry_ptr = internal global ptr @rk808_rtc_probe._entry, section ".printk_index", align 4
@rk808_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write RTC status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rk808_rtc_probe._entry_ptr.8 = internal global ptr @rk808_rtc_probe._entry.6, section ".printk_index", align 4
@rk808_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rk808_rtc_readtime, ptr @rk808_rtc_set_time, ptr @rk808_rtc_readalarm, ptr @rk808_rtc_setalarm, ptr null, ptr @rk808_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTC alarm\00", [22 x i8] zeroinitializer }, align 32
@rk808_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rk808_rtc_probe._entry_ptr.12 = internal global ptr @rk808_rtc_probe._entry.10, section ".printk_index", align 4
@rk808_rtc_readtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update bits rtc_ctrl: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk808_rtc_readtime\00", [45 x i8] zeroinitializer }, align 32
@rk808_rtc_readtime._entry_ptr = internal global ptr @rk808_rtc_readtime._entry, section ".printk_index", align 4
@rk808_rtc_readtime._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk808_rtc_readtime._entry_ptr.16 = internal global ptr @rk808_rtc_readtime._entry.15, section ".printk_index", align 4
@rk808_rtc_readtime._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to bulk read rtc_data: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rk808_rtc_readtime._entry_ptr.19 = internal global ptr @rk808_rtc_readtime._entry.17, section ".printk_index", align 4
@rk808_rtc_readtime.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.14, ptr @.str.3, ptr @.str.21, i8 0, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_rk808\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RTC date/time %ptRd(%d) %ptRt\0A\00", [33 x i8] zeroinitializer }, align 32
@rk808_rtc_set_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk808_rtc_set_time\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set RTC date/time %ptRd(%d) %ptRt\0A\00", [61 x i8] zeroinitializer }, align 32
@rk808_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.22, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk808_rtc_set_time._entry_ptr = internal global ptr @rk808_rtc_set_time._entry, section ".printk_index", align 4
@rk808_rtc_set_time._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to bull write rtc_data: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rk808_rtc_set_time._entry_ptr.26 = internal global ptr @rk808_rtc_set_time._entry.24, section ".printk_index", align 4
@rk808_rtc_set_time._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.22, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rk808_rtc_set_time._entry_ptr.28 = internal global ptr @rk808_rtc_set_time._entry.27, section ".printk_index", align 4
@rk808_rtc_readalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read RTC alarm date REG: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk808_rtc_readalarm\00", [44 x i8] zeroinitializer }, align 32
@rk808_rtc_readalarm._entry_ptr = internal global ptr @rk808_rtc_readalarm._entry, section ".printk_index", align 4
@rk808_rtc_readalarm._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read RTC INT REG: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rk808_rtc_readalarm._entry_ptr.33 = internal global ptr @rk808_rtc_readalarm._entry.31, section ".printk_index", align 4
@rk808_rtc_readalarm.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.30, ptr @.str.3, ptr @.str.34, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"alrm read RTC date/time %ptRd(%d) %ptRt\0A\00", [55 x i8] zeroinitializer }, align 32
@rk808_rtc_setalarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to stop alarm: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk808_rtc_setalarm\00", [45 x i8] zeroinitializer }, align 32
@rk808_rtc_setalarm._entry_ptr = internal global ptr @rk808_rtc_setalarm._entry, section ".printk_index", align 4
@rk808_rtc_setalarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"alrm set RTC date/time %ptRd(%d) %ptRt\0A\00", [56 x i8] zeroinitializer }, align 32
@rk808_rtc_setalarm._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to bulk write: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rk808_rtc_setalarm._entry_ptr.40 = internal global ptr @rk808_rtc_setalarm._entry.38, section ".printk_index", align 4
@rk808_rtc_setalarm._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to start alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rk808_rtc_setalarm._entry_ptr.43 = internal global ptr @rk808_rtc_setalarm._entry.41, section ".printk_index", align 4
@rk808_alarm_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:Failed to update RTC status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk808_alarm_irq\00", [16 x i8] zeroinitializer }, align 32
@rk808_alarm_irq._entry_ptr = internal global ptr @rk808_alarm_irq._entry, section ".printk_index", align 4
@rk808_alarm_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:irq=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"rk808_rtc_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 453, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 456, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"rk808_rtc_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 368, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"rk817_creg\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 379, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"rk808_creg\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 371, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 415, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 423, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"rk808_rtc_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 334, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 443, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 445, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 109, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 123, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 130, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 142, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 155, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 170, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 177, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 184, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 203, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 217, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 221, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 261, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 264, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 279, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 285, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 323, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [27 x i8] c"../drivers/rtc/rtc-rk808.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 329, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_rk808_rtc_driver_exit, ptr @__initcall__kmod_rtc_rk808__293_461_rk808_rtc_driver_init6, ptr @rk808_alarm_irq._entry, ptr @rk808_alarm_irq._entry_ptr, ptr @rk808_rtc_driver_exit, ptr @rk808_rtc_probe._entry, ptr @rk808_rtc_probe._entry.10, ptr @rk808_rtc_probe._entry.6, ptr @rk808_rtc_probe._entry_ptr, ptr @rk808_rtc_probe._entry_ptr.12, ptr @rk808_rtc_probe._entry_ptr.8, ptr @rk808_rtc_readalarm._entry, ptr @rk808_rtc_readalarm._entry.31, ptr @rk808_rtc_readalarm._entry_ptr, ptr @rk808_rtc_readalarm._entry_ptr.33, ptr @rk808_rtc_readtime._entry, ptr @rk808_rtc_readtime._entry.15, ptr @rk808_rtc_readtime._entry.17, ptr @rk808_rtc_readtime._entry_ptr, ptr @rk808_rtc_readtime._entry_ptr.16, ptr @rk808_rtc_readtime._entry_ptr.19, ptr @rk808_rtc_set_time._entry, ptr @rk808_rtc_set_time._entry.24, ptr @rk808_rtc_set_time._entry.27, ptr @rk808_rtc_set_time._entry_ptr, ptr @rk808_rtc_set_time._entry_ptr.26, ptr @rk808_rtc_set_time._entry_ptr.28, ptr @rk808_rtc_setalarm._entry, ptr @rk808_rtc_setalarm._entry.38, ptr @rk808_rtc_setalarm._entry.41, ptr @rk808_rtc_setalarm._entry_ptr, ptr @rk808_rtc_setalarm._entry_ptr.40, ptr @rk808_rtc_setalarm._entry_ptr.43, ptr @rk808_rtc_driver, ptr @.str, ptr @rk808_rtc_pm_ops, ptr @rk817_creg, ptr @rk808_creg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rk808_rtc_ops, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk817_creg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_creg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_readtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_readtime._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_readtime._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_set_time._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_set_time._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_readalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_readalarm._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_setalarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_setalarm._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_rtc_setalarm._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk808_alarm_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk808_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk808_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk808_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32912, i32 %5)
  %switch.selectcmp.case1 = icmp eq i32 %5, 32912
  call void @__sanitizer_cov_trace_const_cmp4(i32 33136, i32 %5)
  %switch.selectcmp.case2 = icmp eq i32 %5, 33136
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, ptr @rk817_creg, ptr @rk808_creg
  %creg3 = getelementptr inbounds %struct.rk808_rtc, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %creg3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %creg3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %creg5 = getelementptr inbounds %struct.rk808_rtc, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %creg5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %creg5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %15, i32 noundef 129, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not = icmp eq i32 %call.i89, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i89) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %creg5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %creg5, align 4
  %status_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status_reg, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %21, i32 noundef 254) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call12) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call21 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call23 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.rk808_rtc, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call23, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call23, i32 0, i32 3
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rk808_rtc_ops, ptr %ops, align 8
  %call31 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.rk808_rtc, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call31, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.end29.cleanup_crit_edge, label %if.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call39 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call31, ptr noundef null, ptr noundef nonnull @rk808_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %27, i32 noundef %call39) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rtc, align 4
  %call49 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end44, %if.end29.cleanup_crit_edge, %if.then26, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i89, %do.end ], [ %call12, %do.end17 ], [ %23, %if.then26 ], [ %call39, %do.end44 ], [ %call49, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap = getelementptr inbounds %struct.rk808, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %creg = getelementptr inbounds %struct.rk808_rtc, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %creg, align 4
  %status_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %status_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status_reg, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef 254) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtc = getelementptr inbounds %struct.rk808_rtc, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %11, i32 noundef 1, i32 noundef 160) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk808_alarm_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk808_alarm_irq, %cleanup)) #6
          to label %if.then8 [label %cleanup], !srcloc !119

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk808_alarm_irq.__UNIQUE_ID_ddebug292, ptr noundef %dev9, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %irq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 1, %if.then8 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_readtime(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %rtc_data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rtc_data) #6
  %4 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 6
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %10 = call ptr @memset(ptr %rtc_data, i32 255, i32 7)
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %creg = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %creg, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %16, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %creg, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call.i216 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %22, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool7.not = icmp eq i32 %call.i216, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i216) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %creg, align 4
  %seconds_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %seconds_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seconds_reg, align 4
  %call15 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef %28, ptr noundef nonnull %rtc_data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cond.end, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call15) #9
  br label %cleanup

cond.end:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %rtc_data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rtc_data, align 1
  %31 = and i8 %30, 127
  %call34 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %32 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call34, ptr %tm, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %4, align 1
  %35 = and i8 %34, 127
  %call55 = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %36 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call55, ptr %tm_min, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %39 = and i8 %38, 63
  %call78 = call i32 @_bcd2bin(i8 noundef zeroext %39) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %40 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call78, ptr %tm_hour, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %6, align 1
  %43 = and i8 %42, 63
  %call101 = call i32 @_bcd2bin(i8 noundef zeroext %43) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %44 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call101, ptr %tm_mday, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %7, align 1
  %47 = and i8 %46, 31
  %call124 = call i32 @_bcd2bin(i8 noundef zeroext %47) #10
  %sub = add i32 %call124, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %48 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %tm_mon, align 4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %8, align 1
  %call147 = call i32 @_bcd2bin(i8 noundef zeroext %50) #10
  %add150 = add i32 %call147, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %51 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add150, ptr %tm_year, align 4
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %9, align 1
  %54 = and i8 %53, 7
  %call171 = call i32 @_bcd2bin(i8 noundef zeroext %54) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %55 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call171, ptr %tm_wday, align 4
  %call.i217 = call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %56 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_year, align 4
  %sub.i.i = add i32 %57, -116
  %58 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tm_mon, align 4
  %add1.i.i = add i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i.i)
  %cmp.i.i = icmp sgt i32 %add1.i.i, 11
  %cond.i.i = zext i1 %cmp.i.i to i32
  %add2.i.i = add i32 %sub.i.i, %cond.i.i
  %conv.i.i = sext i32 %add2.i.i to i64
  %mul.i = mul nsw i64 %conv.i.i, 86400
  %add.i = add i64 %mul.i, %call.i217
  call void @rtc_time64_to_tm(i64 noundef %add.i, ptr noundef %tm) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk808_rtc_readtime.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk808_rtc_readtime, %cleanup)) #6
          to label %if.then180 [label %cleanup], !srcloc !119

if.then180:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk808_rtc_readtime.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %tm, i32 noundef %61, ptr noundef %tm) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %cond.end, %do.end20, %do.end11, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i216, %do.end11 ], [ %call15, %do.end20 ], [ 0, %if.then180 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %rtc_data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rtc_data) #6
  %4 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i8], ptr %rtc_data, i32 0, i32 6
  %10 = getelementptr inbounds i8, ptr %rtc_data, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk808_rtc_set_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk808_rtc_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %12 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk808_rtc_set_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %tm, i32 noundef %13, ptr noundef %tm) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tm_year.i.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %14 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_year.i.i, align 4
  %sub.i.i = add i32 %15, -116
  %tm_mon.i.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i.i, align 4
  %add1.i.i = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i.i)
  %cmp.i.i = icmp sgt i32 %add1.i.i, 11
  %cond.i.i = zext i1 %cmp.i.i to i32
  %add2.i.i = add i32 %sub.i.i, %cond.i.i
  %conv.i.i = sext i32 %add2.i.i to i64
  %call1.i = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %mul.neg.i = mul nsw i64 %conv.i.i, -86400
  %sub.i = add i64 %mul.neg.i, %call1.i
  tail call void @rtc_time64_to_tm(i64 noundef %sub.i, ptr noundef %tm) #6
  %18 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_year.i.i, align 4
  %sub.i19.i = add i32 %19, -116
  %20 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mon.i.i, align 4
  %add1.i21.i = add i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i21.i)
  %cmp.i22.i = icmp sgt i32 %add1.i21.i, 11
  %cond.i23.i = zext i1 %cmp.i22.i to i32
  %add2.i24.i = add i32 %sub.i19.i, %cond.i23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i24.i, i32 %add2.i.i)
  %cmp.i = icmp slt i32 %add2.i24.i, %add2.i.i
  br i1 %cmp.i, label %if.then.i, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp3.i = icmp eq i32 %21, 10
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %tm_mday.i, align 4
  br label %cond.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub7.i = add i64 %sub.i, 86400
  tail call void @rtc_time64_to_tm(i64 noundef %sub7.i, ptr noundef %tm) #6
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.then4.i, %do.end.cond.end_crit_edge
  %24 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  %26 = ptrtoint ptr %rtc_data to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call9, ptr %rtc_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %27 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_min, align 4
  %call22 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #10
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call22, ptr %4, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %30 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_hour, align 4
  %call38 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #10
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call38, ptr %5, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %33 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_mday, align 4
  %call54 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #10
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call54, ptr %6, align 1
  %36 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mon.i.i, align 4
  %add60 = add i32 %37, 1
  %call74 = tail call zeroext i8 @_bin2bcd(i32 noundef %add60) #10
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call74, ptr %7, align 1
  %39 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_year.i.i, align 4
  %sub = add i32 %40, -100
  %call93 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call93, ptr %8, align 1
  %tm_wday99 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %42 = ptrtoint ptr %tm_wday99 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_wday99, align 4
  %call110 = tail call zeroext i8 @_bin2bcd(i32 noundef %43) #10
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call110, ptr %9, align 1
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %creg = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %creg, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %50, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool117.not = icmp eq i32 %call.i, 0
  br i1 %tobool117.not, label %if.end122, label %do.end121

do.end121:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %cleanup

if.end122:                                        ; preds = %cond.end
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %53 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %creg, align 4
  %seconds_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %seconds_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %seconds_reg, align 4
  %call125 = call i32 @regmap_bulk_write(ptr noundef %52, i32 noundef %56, ptr noundef nonnull %rtc_data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end131, label %do.end130

do.end130:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call125) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end122
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %59 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %creg, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %call.i193 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %62, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool136.not = icmp eq i32 %call.i193, 0
  br i1 %tobool136.not, label %if.end131.cleanup_crit_edge, label %do.end140

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end140:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i193) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.end131.cleanup_crit_edge, %do.end130, %do.end121
  %retval.0 = phi i32 [ %call.i, %do.end121 ], [ %call125, %do.end130 ], [ %call.i193, %do.end140 ], [ 0, %if.end131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_readalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %alrm_data = alloca [6 x i8], align 1
  %int_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alrm_data) #6
  %4 = call ptr @memset(ptr %alrm_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_reg) #6
  %5 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %int_reg, align 4, !annotation !120
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %creg = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %creg, align 4
  %alarm_seconds_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %alarm_seconds_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alarm_seconds_reg, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %11, ptr noundef nonnull %alrm_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call2) #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %12 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 5
  %13 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 4
  %14 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 3
  %15 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 2
  %16 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 1
  %17 = ptrtoint ptr %alrm_data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %alrm_data, align 1
  %19 = and i8 %18, 127
  %call15 = call i32 @_bcd2bin(i8 noundef zeroext %19) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %20 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call15, ptr %time, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %16, align 1
  %23 = and i8 %22, 127
  %call36 = call i32 @_bcd2bin(i8 noundef zeroext %23) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call36, ptr %tm_min, align 4
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %15, align 1
  %27 = and i8 %26, 63
  %call60 = call i32 @_bcd2bin(i8 noundef zeroext %27) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call60, ptr %tm_hour, align 4
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %14, align 1
  %31 = and i8 %30, 63
  %call84 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call84, ptr %tm_mday, align 4
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %13, align 1
  %35 = and i8 %34, 31
  %call108 = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %sub = add i32 %call108, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %tm_mon, align 4
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %12, align 1
  %call132 = call i32 @_bcd2bin(i8 noundef zeroext %38) #10
  %add135 = add i32 %call132, 100
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add135, ptr %tm_year, align 4
  %call.i = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_year, align 4
  %sub.i.i = add i32 %41, -116
  %42 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mon, align 4
  %add1.i.i = add i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i.i)
  %cmp.i.i = icmp sgt i32 %add1.i.i, 11
  %cond.i.i = zext i1 %cmp.i.i to i32
  %add2.i.i = add i32 %sub.i.i, %cond.i.i
  %conv.i.i = sext i32 %add2.i.i to i64
  %mul.i = mul nsw i64 %conv.i.i, 86400
  %add.i = add i64 %mul.i, %call.i
  call void @rtc_time64_to_tm(i64 noundef %add.i, ptr noundef %time) #6
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %creg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %creg, align 4
  %int_reg140 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %int_reg140 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %int_reg140, align 4
  %call141 = call i32 @regmap_read(ptr noundef %45, i32 noundef %49, ptr noundef nonnull %int_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body148, label %do.end146

do.end146:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call141) #9
  br label %cleanup

do.body148:                                       ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk808_rtc_readalarm.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk808_rtc_readalarm, %do.end160)) #6
          to label %if.then154 [label %do.end160], !srcloc !119

if.then154:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #8
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %50 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk808_rtc_readalarm.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %time, i32 noundef %51, ptr noundef %time) #6
  br label %do.end160

do.end160:                                        ; preds = %if.then154, %do.body148
  %52 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %int_reg, align 4
  %54 = trunc i32 %53 to i8
  %55 = lshr i8 %54, 3
  %56 = and i8 %55, 1
  %57 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %do.end146, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call141, %do.end146 ], [ 0, %do.end160 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_reg) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alrm_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_setalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %alrm_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %alrm_data) #6
  %4 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %alrm_data, i32 0, i32 5
  %9 = getelementptr inbounds i8, ptr %alrm_data, i32 3
  %10 = call ptr @memset(ptr %9, i32 255, i32 3)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %regmap.i = getelementptr inbounds %struct.rk808, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %creg.i = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %creg.i, align 4
  %int_reg.i = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %int_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %18, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #9
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk808_rtc_setalarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk808_rtc_setalarm, %do.end14)) #6
          to label %if.then9 [label %do.end14], !srcloc !119

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk808_rtc_setalarm.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %time, i32 noundef %20, ptr noundef %time) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body3
  %time15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year.i.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_year.i.i, align 4
  %sub.i.i = add i32 %22, -116
  %tm_mon.i.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon.i.i, align 4
  %add1.i.i = add i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i.i)
  %cmp.i.i = icmp sgt i32 %add1.i.i, 11
  %cond.i.i = zext i1 %cmp.i.i to i32
  %add2.i.i = add i32 %sub.i.i, %cond.i.i
  %conv.i.i = sext i32 %add2.i.i to i64
  %call1.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time15) #6
  %mul.neg.i = mul nsw i64 %conv.i.i, -86400
  %sub.i = add i64 %mul.neg.i, %call1.i
  tail call void @rtc_time64_to_tm(i64 noundef %sub.i, ptr noundef %time15) #6
  %25 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_year.i.i, align 4
  %sub.i19.i = add i32 %26, -116
  %27 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_mon.i.i, align 4
  %add1.i21.i = add i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add1.i21.i)
  %cmp.i22.i = icmp sgt i32 %add1.i21.i, 11
  %cond.i23.i = zext i1 %cmp.i22.i to i32
  %add2.i24.i = add i32 %sub.i19.i, %cond.i23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i24.i, i32 %add2.i.i)
  %cmp.i = icmp slt i32 %add2.i24.i, %add2.i.i
  br i1 %cmp.i, label %if.then.i, label %do.end14.cond.end_crit_edge

do.end14.cond.end_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %28)
  %cmp3.i = icmp eq i32 %28, 10
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mday.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %tm_mday.i, align 4
  br label %cond.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub7.i = add i64 %sub.i, 86400
  tail call void @rtc_time64_to_tm(i64 noundef %sub7.i, ptr noundef %time15) #6
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.then4.i, %do.end14.cond.end_crit_edge
  %31 = ptrtoint ptr %time15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %time15, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #10
  %33 = ptrtoint ptr %alrm_data to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call23, ptr %alrm_data, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_min, align 4
  %call40 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #10
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call40, ptr %4, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_hour, align 4
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #10
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call60, ptr %5, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mday, align 4
  %call80 = tail call zeroext i8 @_bin2bcd(i32 noundef %41) #10
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call80, ptr %6, align 1
  %43 = ptrtoint ptr %tm_mon.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_mon.i.i, align 4
  %add87 = add i32 %44, 1
  %call104 = tail call zeroext i8 @_bin2bcd(i32 noundef %add87) #10
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call104, ptr %7, align 1
  %46 = ptrtoint ptr %tm_year.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_year.i.i, align 4
  %sub = add i32 %47, -100
  %call127 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call127, ptr %8, align 1
  %regmap = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %51 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %creg.i, align 4
  %alarm_seconds_reg = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %alarm_seconds_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %alarm_seconds_reg, align 4
  %call133 = call i32 @regmap_bulk_write(ptr noundef %50, i32 noundef %54, ptr noundef nonnull %alrm_data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end139, label %do.end138

do.end138:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call133) #9
  br label %cleanup

if.end139:                                        ; preds = %cond.end
  %55 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool140.not = icmp eq i8 %56, 0
  br i1 %tobool140.not, label %if.end139.cleanup_crit_edge, label %if.then141

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then141:                                       ; preds = %if.end139
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %regmap.i196 = getelementptr inbounds %struct.rk808, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %regmap.i196 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i196, align 4
  %61 = ptrtoint ptr %creg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %creg.i, align 4
  %int_reg.i198 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %int_reg.i198 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_reg.i198, align 4
  %call.i.i199 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %64, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i199)
  %tobool143.not = icmp eq i32 %call.i.i199, 0
  br i1 %tobool143.not, label %if.then141.cleanup_crit_edge, label %do.end147

if.then141.cleanup_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end147:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call.i.i199) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end147, %if.then141.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.end138, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call133, %do.end138 ], [ %call.i.i199, %do.end147 ], [ 0, %if.then141.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %alrm_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regmap.i4 = getelementptr inbounds %struct.rk808, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i4, align 4
  %creg.i5 = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %creg.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %creg.i5, align 4
  %int_reg.i6 = getelementptr inbounds %struct.rk_rtc_compat_reg, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %int_reg.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_reg.i6, align 4
  %. = select i1 %tobool.not, i32 0, i32 8
  %call.i.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %9, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i.i7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk808_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.rk808_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_rtc_rk808__293_461_rk808_rtc_driver_init6, !1, !"__initcall__kmod_rtc_rk808__293_461_rk808_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rk808.c", i32 461, i32 1}
!2 = !{ptr @__exitcall_rk808_rtc_driver_exit, !1, !"__exitcall_rk808_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rk808.c", i32 463, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rk808.c", i32 464, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rk808.c", i32 465, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-rk808.c", i32 466, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias299, !13, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rk808.c", i32 467, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rk808.c", i32 456, i32 11}
!16 = !{ptr @rk808_rtc_driver, !17, !"rk808_rtc_driver", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rk808.c", i32 453, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-rk808.c", i32 415, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rk808_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rk808_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-rk808.c", i32 423, i32 3}
!28 = !{ptr @rk808_rtc_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rk808_rtc_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-rk808.c", i32 443, i32 6}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-rk808.c", i32 445, i32 3}
!34 = !{ptr @rk808_rtc_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rk808_rtc_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @rk817_creg, !37, !"rk817_creg", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-rk808.c", i32 379, i32 33}
!38 = !{ptr @rk808_creg, !39, !"rk808_creg", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-rk808.c", i32 371, i32 33}
!40 = !{ptr @rk808_rtc_ops, !41, !"rk808_rtc_ops", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-rk808.c", i32 334, i32 35}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-rk808.c", i32 109, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rk808_rtc_readtime._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rk808_rtc_readtime._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rk808_rtc_readtime._entry.15, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-rk808.c", i32 123, i32 3}
!49 = !{ptr @rk808_rtc_readtime._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rk808.c", i32 130, i32 3}
!52 = !{ptr @rk808_rtc_readtime._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rk808_rtc_readtime._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-rk808.c", i32 142, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rk808_rtc_readtime.__UNIQUE_ID_ddebug288, !55, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-rk808.c", i32 155, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rk808_rtc_set_time.__UNIQUE_ID_ddebug289, !59, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!62 = !{ptr @rk808_rtc_set_time._entry, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-rk808.c", i32 170, i32 3}
!64 = !{ptr @rk808_rtc_set_time._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-rk808.c", i32 177, i32 3}
!67 = !{ptr @rk808_rtc_set_time._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rk808_rtc_set_time._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @rk808_rtc_set_time._entry.27, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-rk808.c", i32 184, i32 3}
!71 = !{ptr @rk808_rtc_set_time._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-rk808.c", i32 203, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rk808_rtc_readalarm._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @rk808_rtc_readalarm._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-rk808.c", i32 217, i32 3}
!79 = !{ptr @rk808_rtc_readalarm._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @rk808_rtc_readalarm._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-rk808.c", i32 221, i32 2}
!83 = !{ptr @rk808_rtc_readalarm.__UNIQUE_ID_ddebug290, !82, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-rk808.c", i32 261, i32 3}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rk808_rtc_setalarm._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rk808_rtc_setalarm._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-rk808.c", i32 264, i32 2}
!91 = !{ptr @rk808_rtc_setalarm.__UNIQUE_ID_ddebug291, !90, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-rk808.c", i32 279, i32 3}
!94 = !{ptr @rk808_rtc_setalarm._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rk808_rtc_setalarm._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-rk808.c", i32 285, i32 4}
!98 = !{ptr @rk808_rtc_setalarm._entry.41, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rk808_rtc_setalarm._entry_ptr.43, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/rtc/rtc-rk808.c", i32 323, i32 3}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rk808_alarm_irq._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @rk808_alarm_irq._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rtc/rtc-rk808.c", i32 329, i32 2}
!107 = !{ptr @rk808_alarm_irq.__UNIQUE_ID_ddebug292, !106, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!108 = !{ptr @rk808_rtc_pm_ops, !109, !"rk808_rtc_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/rtc/rtc-rk808.c", i32 368, i32 8}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148964812, i64 2148964817, i64 2148964830, i64 2148964874, i64 2148964908, i64 2148964929}
!120 = !{!"auto-init"}
