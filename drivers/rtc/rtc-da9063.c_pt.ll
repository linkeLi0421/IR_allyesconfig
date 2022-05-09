; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-da9063.c_pt.bc'
source_filename = "../drivers/rtc/rtc-da9063.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.da9063_compatible_rtc_regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.da9063_compatible_rtc = type { ptr, %struct.rtc_time, ptr, ptr, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_da9063__228_512_da9063_rtc_driver_init6 = internal global ptr @da9063_rtc_driver_init, section ".initcall6.init", align 4
@da9063_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9063_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_compatible_reg_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9063_rtc_driver_exit = internal global ptr @da9063_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [58 x i8] c"rtc_da9063.author=S Twiss <stwiss.opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [71 x i8] c"rtc_da9063.description=Real time clock device driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_da9063.file=drivers/rtc/rtc-da9063\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"rtc_da9063.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [37 x i8] c"rtc_da9063.alias=platform:da9063-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9063-rtc\00", [21 x i8] zeroinitializer }, align 32
@da9063_compatible_reg_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_bb_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9062_aa_regs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlg,da9063-rtc\00", [17 x i8] zeroinitializer }, align 32
@da9063_ad_regs = internal constant { %struct.da9063_compatible_rtc_regmap, [40 x i8] } { %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 74, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 192, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 1, i32 5 }, [40 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Parent regmap unavailable.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9063_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-da9063.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr = internal global ptr @da9063_rtc_probe._entry, section ".printk_index", align 4
@da9063_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable RTC\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.10 = internal global ptr @da9063_rtc_probe._entry.7, section ".printk_index", align 4
@da9063_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 423, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to run 32kHz oscillator\0A\00", [32 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.13 = internal global ptr @da9063_rtc_probe._entry.11, section ".printk_index", align 4
@da9063_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to access RTC alarm register\0A\00", [59 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.16 = internal global ptr @da9063_rtc_probe._entry.14, section ".printk_index", align 4
@da9063_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 441, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.18 = internal global ptr @da9063_rtc_probe._entry.17, section ".printk_index", align 4
@da9063_rtc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to disable TICKs\0A\00", [39 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.21 = internal global ptr @da9063_rtc_probe._entry.19, section ".printk_index", align 4
@da9063_rtc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 461, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read initial alarm data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.24 = internal global ptr @da9063_rtc_probe._entry.22, section ".printk_index", align 4
@da9063_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @da9063_rtc_read_time, ptr @da9063_rtc_set_time, ptr @da9063_rtc_read_alarm, ptr @da9063_rtc_set_alarm, ptr null, ptr @da9063_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALARM\00", [26 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 497, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request ALARM IRQ %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@da9063_rtc_probe._entry_ptr.28 = internal global ptr @da9063_rtc_probe._entry.26, section ".printk_index", align 4
@da9063_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 231, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read RTC time data: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9063_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@da9063_rtc_read_time._entry_ptr = internal global ptr @da9063_rtc_read_time._entry, section ".printk_index", align 4
@da9063_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.30, ptr @.str.4, ptr @.str.32, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_da9063\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RTC not yet ready to be read by the host\0A\00", [54 x i8] zeroinitializer }, align 32
@da9063_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 266, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set RTC time data: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"da9063_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@da9063_rtc_set_time._entry_ptr = internal global ptr @da9063_rtc_set_time._entry, section ".printk_index", align 4
@da9063_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 316, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to stop alarm: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9063_rtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@da9063_rtc_set_alarm._entry_ptr = internal global ptr @da9063_rtc_set_alarm._entry, section ".printk_index", align 4
@da9063_rtc_set_alarm._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 325, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da9063_rtc_set_alarm._entry_ptr.39 = internal global ptr @da9063_rtc_set_alarm._entry.37, section ".printk_index", align 4
@da9063_rtc_set_alarm._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 334, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to start alarm: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da9063_rtc_set_alarm._entry_ptr.42 = internal global ptr @da9063_rtc_set_alarm._entry.40, section ".printk_index", align 4
@da9063_bb_regs = internal constant { %struct.da9063_compatible_rtc_regmap, [40 x i8] } { %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 75, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 192, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 0, i32 6 }, [40 x i8] zeroinitializer }, align 32
@da9062_aa_regs = internal constant { %struct.da9063_compatible_rtc_regmap, [40 x i8] } { %struct.da9063_compatible_rtc_regmap { i32 18, i32 152, i32 70, i32 75, i32 64, i32 69, i32 6, i32 4, i32 8, i32 2, i32 64, i32 128, i32 128, i32 128, i32 63, i32 63, i32 31, i32 31, i32 15, i32 63, i32 0, i32 6 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"da9063_rtc_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 504, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 507, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"da9063_compatible_reg_id_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 159, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 395, i32 49 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"da9063_ad_regs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 73, i32 50 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 404, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 414, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 423, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 432, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 441, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 450, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 460, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"da9063_rtc_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 367, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 487, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 496, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 231, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 236, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 266, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 316, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 325, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 334, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"da9063_bb_regs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 102, i32 50 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"da9062_aa_regs\00", align 1
@___asan_gen_.173 = private constant [28 x i8] c"../drivers/rtc/rtc-da9063.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 131, i32 50 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_da9063_rtc_driver_exit, ptr @__initcall__kmod_rtc_da9063__228_512_da9063_rtc_driver_init6, ptr @da9063_rtc_driver_exit, ptr @da9063_rtc_probe._entry, ptr @da9063_rtc_probe._entry.11, ptr @da9063_rtc_probe._entry.14, ptr @da9063_rtc_probe._entry.17, ptr @da9063_rtc_probe._entry.19, ptr @da9063_rtc_probe._entry.22, ptr @da9063_rtc_probe._entry.26, ptr @da9063_rtc_probe._entry.7, ptr @da9063_rtc_probe._entry_ptr, ptr @da9063_rtc_probe._entry_ptr.10, ptr @da9063_rtc_probe._entry_ptr.13, ptr @da9063_rtc_probe._entry_ptr.16, ptr @da9063_rtc_probe._entry_ptr.18, ptr @da9063_rtc_probe._entry_ptr.21, ptr @da9063_rtc_probe._entry_ptr.24, ptr @da9063_rtc_probe._entry_ptr.28, ptr @da9063_rtc_read_time._entry, ptr @da9063_rtc_read_time._entry_ptr, ptr @da9063_rtc_set_alarm._entry, ptr @da9063_rtc_set_alarm._entry.37, ptr @da9063_rtc_set_alarm._entry.40, ptr @da9063_rtc_set_alarm._entry_ptr, ptr @da9063_rtc_set_alarm._entry_ptr.39, ptr @da9063_rtc_set_alarm._entry_ptr.42, ptr @da9063_rtc_set_time._entry, ptr @da9063_rtc_set_time._entry_ptr, ptr @da9063_rtc_driver, ptr @.str, ptr @da9063_compatible_reg_id_table, ptr @.str.1, ptr @da9063_ad_regs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @da9063_rtc_ops, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @da9063_bb_regs, ptr @da9062_aa_regs], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_compatible_reg_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_regs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_set_alarm._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_rtc_set_alarm._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_regs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_aa_regs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9063_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %0 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = getelementptr inbounds i8, ptr %data, i32 1
  %6 = call ptr @memset(ptr %5, i32 255, i32 5)
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @da9063_compatible_reg_id_table, ptr noundef nonnull %8) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data8 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data8, align 4
  %config9 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %config9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config9, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call12 = tail call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end7.if.end21_crit_edge, label %if.then14

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then14:                                        ; preds = %if.end7
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %variant_code = getelementptr inbounds %struct.da9063, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %variant_code to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %variant_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp = icmp eq i8 %19, 3
  br i1 %cmp, label %if.then18, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %config9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @da9063_ad_regs, ptr %config9, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then14.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  %parent23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %parent23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent23, align 8
  %call24 = tail call ptr @dev_get_regmap(ptr noundef %22, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call24, ptr %regmap, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %24 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config9, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %rtc_enable_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %rtc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rtc_enable_mask, align 4
  %call.i214 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %call24, i32 noundef %27, i32 noundef %29, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp34 = icmp slt i32 %call.i214, 0
  br i1 %cmp34, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %rtc_enable_32k_crystal_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %rtc_enable_32k_crystal_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rtc_enable_32k_crystal_reg, align 4
  %rtc_crystal_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 8
  %34 = ptrtoint ptr %rtc_crystal_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rtc_crystal_mask, align 4
  %call.i215 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp45 = icmp slt i32 %call.i215, 0
  br i1 %cmp45, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %rtc_alarm_secs_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 2
  %38 = ptrtoint ptr %rtc_alarm_secs_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rtc_alarm_secs_reg, align 4
  %rtc_alarm_status_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 11
  %40 = ptrtoint ptr %rtc_alarm_status_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rtc_alarm_status_mask, align 4
  %call.i216 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp55 = icmp slt i32 %call.i216, 0
  br i1 %cmp55, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %44 = ptrtoint ptr %rtc_alarm_secs_reg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rtc_alarm_secs_reg, align 4
  %call.i217 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %45, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp66 = icmp slt i32 %call.i217, 0
  br i1 %cmp66, label %do.end71, label %if.end73

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end62
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %rtc_alarm_year_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 3
  %48 = ptrtoint ptr %rtc_alarm_year_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rtc_alarm_year_reg, align 4
  %rtc_tick_on_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 12
  %50 = ptrtoint ptr %rtc_tick_on_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rtc_tick_on_mask, align 4
  %call.i218 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp76 = icmp slt i32 %call.i218, 0
  br i1 %cmp76, label %do.end81, label %if.end83

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %52 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %data, align 1
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %rtc_alarm_secs_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rtc_alarm_secs_reg, align 4
  %rtc_data_start = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 20
  %57 = ptrtoint ptr %rtc_data_start to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rtc_data_start, align 4
  %arrayidx86 = getelementptr [6 x i8], ptr %data, i32 0, i32 %58
  %rtc_alarm_len = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %25, i32 0, i32 21
  %59 = ptrtoint ptr %rtc_alarm_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rtc_alarm_len, align 4
  %call87 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef %56, ptr noundef %arrayidx86, i32 noundef %60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call87) #8
  br label %cleanup

if.end95:                                         ; preds = %if.end83
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call97 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call97, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %call97 to i32
  br label %cleanup

if.end103:                                        ; preds = %if.end95
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call97, i32 0, i32 3
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @da9063_rtc_ops, ptr %ops, align 8
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 946684800, ptr %range_min, align 8
  %68 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %68, i32 0, i32 23
  %69 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 2966371199, ptr %range_max, align 8
  %alarm_time = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %config9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config9, align 4
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %data, align 1
  %conv.i = zext i8 %73 to i32
  %rtc_count_sec_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 14
  %74 = ptrtoint ptr %rtc_count_sec_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rtc_count_sec_mask.i, align 4
  %and.i = and i32 %75, %conv.i
  %76 = ptrtoint ptr %alarm_time to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i, ptr %alarm_time, align 4
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %0, align 1
  %conv3.i = zext i8 %78 to i32
  %rtc_count_min_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 15
  %79 = ptrtoint ptr %rtc_count_min_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rtc_count_min_mask.i, align 4
  %and4.i = and i32 %80, %conv3.i
  %tm_min.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and4.i, ptr %tm_min.i, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %1, align 1
  %conv6.i = zext i8 %83 to i32
  %rtc_count_hour_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 16
  %84 = ptrtoint ptr %rtc_count_hour_mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rtc_count_hour_mask.i, align 4
  %and7.i = and i32 %85, %conv6.i
  %tm_hour.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1, i32 2
  %86 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and7.i, ptr %tm_hour.i, align 4
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %2, align 1
  %conv9.i = zext i8 %88 to i32
  %rtc_count_day_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 17
  %89 = ptrtoint ptr %rtc_count_day_mask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rtc_count_day_mask.i, align 4
  %and10.i = and i32 %90, %conv9.i
  %tm_mday.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and10.i, ptr %tm_mday.i, align 4
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %3, align 1
  %conv12.i = zext i8 %93 to i32
  %rtc_count_month_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 18
  %94 = ptrtoint ptr %rtc_count_month_mask.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rtc_count_month_mask.i, align 4
  %and13.i = and i32 %95, %conv12.i
  %sub.i = add nsw i32 %and13.i, -1
  %tm_mon.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %4, align 1
  %conv15.i = zext i8 %98 to i32
  %rtc_count_year_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %71, i32 0, i32 19
  %99 = ptrtoint ptr %rtc_count_year_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rtc_count_year_mask.i, align 4
  %and16.i = and i32 %100, %conv15.i
  %add.i = add nuw nsw i32 %and16.i, 100
  %tm_year.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 1, i32 5
  %101 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add.i, ptr %tm_year.i, align 4
  %rtc_sync = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %call.i, i32 0, i32 4
  %102 = ptrtoint ptr %rtc_sync to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %rtc_sync, align 4
  %103 = ptrtoint ptr %rtc_data_start to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rtc_data_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp108.not = icmp eq i32 %104, 0
  br i1 %cmp108.not, label %if.end103.if.end116_crit_edge, label %if.then110

if.end103.if.end116_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %106, i32 0, i32 21
  call void @_set_bit(i32 noundef 1, ptr noundef %features) #5
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 4
  %features114 = getelementptr inbounds %struct.rtc_device, ptr %108, i32 0, i32 21
  call void @_clear_bit(i32 noundef 4, ptr noundef %features114) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.end103.if.end116_crit_edge
  %call117 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end116.cleanup_crit_edge, label %if.end121

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end121:                                        ; preds = %if.end116
  %call123 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call117, ptr noundef null, ptr noundef nonnull @da9063_alarm_event, i32 noundef 8200, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end121.if.end130_crit_edge, label %do.end128

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call117, i32 noundef %call123) #8
  br label %if.end130

if.end130:                                        ; preds = %do.end128, %if.end121.if.end130_crit_edge
  %call132 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  %call134 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %110) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end116.cleanup_crit_edge, %if.then100, %do.end93, %do.end81, %do.end71, %do.end60, %do.end50, %do.end39, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i214, %do.end39 ], [ %call.i215, %do.end50 ], [ %call.i216, %do.end60 ], [ %call.i217, %do.end71 ], [ %call.i218, %do.end81 ], [ %call87, %do.end93 ], [ %63, %if.then100 ], [ %call134, %if.end130 ], [ -6, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call117, %if.end116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_alarm_event(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %regmap = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %rtc_alarm_year_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rtc_alarm_year_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtc_alarm_year_reg, align 4
  %rtc_alarm_on_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %rtc_alarm_on_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtc_alarm_on_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rtc_sync = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %rtc_sync to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rtc_sync, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 160) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %regmap = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %9 = call ptr @memset(ptr %data, i32 255, i32 6)
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %rtc_count_secs_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %rtc_count_secs_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rtc_count_secs_reg, align 4
  %call2 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %data, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data, align 1
  %conv = zext i8 %15 to i32
  %rtc_ready_to_read_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %rtc_ready_to_read_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtc_ready_to_read_mask, align 4
  %and = and i32 %17, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %if.end14

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9063_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@da9063_rtc_read_time, %cleanup)) #5
          to label %if.then10 [label %cleanup], !srcloc !102

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9063_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.32) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config1, align 4
  %rtc_count_sec_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %rtc_count_sec_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rtc_count_sec_mask.i, align 4
  %and.i = and i32 %21, %conv
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %tm, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %conv3.i = zext i8 %24 to i32
  %rtc_count_min_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 15
  %25 = ptrtoint ptr %rtc_count_min_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rtc_count_min_mask.i, align 4
  %and4.i = and i32 %26, %conv3.i
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %27 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and4.i, ptr %tm_min.i, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %conv6.i = zext i8 %29 to i32
  %rtc_count_hour_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 16
  %30 = ptrtoint ptr %rtc_count_hour_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rtc_count_hour_mask.i, align 4
  %and7.i = and i32 %31, %conv6.i
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %32 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and7.i, ptr %tm_hour.i, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv9.i = zext i8 %34 to i32
  %rtc_count_day_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 17
  %35 = ptrtoint ptr %rtc_count_day_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rtc_count_day_mask.i, align 4
  %and10.i = and i32 %36, %conv9.i
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %37 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and10.i, ptr %tm_mday.i, align 4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %7, align 1
  %conv12.i = zext i8 %39 to i32
  %rtc_count_month_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 18
  %40 = ptrtoint ptr %rtc_count_month_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rtc_count_month_mask.i, align 4
  %and13.i = and i32 %41, %conv12.i
  %sub.i = add nsw i32 %and13.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %42 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %8, align 1
  %conv15.i = zext i8 %44 to i32
  %rtc_count_year_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %19, i32 0, i32 19
  %45 = ptrtoint ptr %rtc_count_year_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rtc_count_year_mask.i, align 4
  %and16.i = and i32 %46, %conv15.i
  %add.i = add nuw nsw i32 %and16.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %47 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i, ptr %tm_year.i, align 4
  %call16 = call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %alarm_time = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1
  %call18 = call i64 @rtc_tm_to_time64(ptr noundef %alarm_time) #5
  %rtc_sync = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %rtc_sync to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rtc_sync, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not = icmp ne i8 %49, 0
  %conv19 = trunc i64 %call18 to i32
  %conv17 = trunc i64 %call16 to i32
  %sub = sub i32 %conv19, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp22 = icmp eq i32 %sub, 1
  %or.cond = select i1 %tobool20.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %50 = call ptr @memcpy(ptr %tm, ptr %alarm_time, i32 36)
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %rtc_sync to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %rtc_sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.then10, %do.body4, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %if.then10 ], [ 0, %if.else ], [ 0, %if.then24 ], [ -22, %do.body4 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %rtc_count_sec_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %rtc_count_sec_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rtc_count_sec_mask.i, align 4
  %and.i = and i32 %12, %10
  %conv.i = trunc i32 %and.i to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min.i, align 4
  %rtc_count_min_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %rtc_count_min_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtc_count_min_mask.i, align 4
  %and2.i = and i32 %17, %15
  %conv3.i = trunc i32 %and2.i to i8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %4, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour.i, align 4
  %rtc_count_hour_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %rtc_count_hour_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtc_count_hour_mask.i, align 4
  %and5.i = and i32 %22, %20
  %conv6.i = trunc i32 %and5.i to i8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i, ptr %5, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %24 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mday.i, align 4
  %rtc_count_day_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 17
  %26 = ptrtoint ptr %rtc_count_day_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rtc_count_day_mask.i, align 4
  %and8.i = and i32 %27, %25
  %conv9.i = trunc i32 %and8.i to i8
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %6, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %29 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mon.i, align 4
  %add.i = add i32 %30, 1
  %rtc_count_month_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 18
  %31 = ptrtoint ptr %rtc_count_month_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rtc_count_month_mask.i, align 4
  %and11.i = and i32 %add.i, %32
  %conv12.i = trunc i32 %and11.i to i8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv12.i, ptr %7, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %34 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %35, 156
  %rtc_count_year_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 19
  %36 = ptrtoint ptr %rtc_count_year_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rtc_count_year_mask.i, align 4
  %and14.i = and i32 %sub.i, %37
  %conv15.i = trunc i32 %and14.i to i8
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv15.i, ptr %8, align 1
  %regmap = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %rtc_count_secs_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %rtc_count_secs_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rtc_count_secs_reg, align 4
  %call3 = call i32 @regmap_bulk_write(ptr noundef %40, i32 noundef %42, ptr noundef nonnull %data, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %4 = getelementptr inbounds i8, ptr %data, i32 1
  %5 = call ptr @memset(ptr %4, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !104
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data, align 1
  %regmap = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %rtc_alarm_secs_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %rtc_alarm_secs_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtc_alarm_secs_reg, align 4
  %rtc_data_start = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 20
  %12 = ptrtoint ptr %rtc_data_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rtc_data_start, align 4
  %arrayidx2 = getelementptr [6 x i8], ptr %data, i32 0, i32 %13
  %rtc_alarm_len = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %rtc_alarm_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rtc_alarm_len, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %11, ptr noundef %arrayidx2, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %17 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %18 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %19 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %20 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %21 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config1, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %conv.i = zext i8 %24 to i32
  %rtc_count_sec_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 14
  %25 = ptrtoint ptr %rtc_count_sec_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rtc_count_sec_mask.i, align 4
  %and.i = and i32 %26, %conv.i
  %27 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %time, align 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %20, align 1
  %conv3.i = zext i8 %29 to i32
  %rtc_count_min_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 15
  %30 = ptrtoint ptr %rtc_count_min_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rtc_count_min_mask.i, align 4
  %and4.i = and i32 %31, %conv3.i
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and4.i, ptr %tm_min.i, align 4
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %19, align 1
  %conv6.i = zext i8 %34 to i32
  %rtc_count_hour_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 16
  %35 = ptrtoint ptr %rtc_count_hour_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rtc_count_hour_mask.i, align 4
  %and7.i = and i32 %36, %conv6.i
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and7.i, ptr %tm_hour.i, align 4
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %18, align 1
  %conv9.i = zext i8 %39 to i32
  %rtc_count_day_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 17
  %40 = ptrtoint ptr %rtc_count_day_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rtc_count_day_mask.i, align 4
  %and10.i = and i32 %41, %conv9.i
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and10.i, ptr %tm_mday.i, align 4
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %17, align 1
  %conv12.i = zext i8 %44 to i32
  %rtc_count_month_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 18
  %45 = ptrtoint ptr %rtc_count_month_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rtc_count_month_mask.i, align 4
  %and13.i = and i32 %46, %conv12.i
  %sub.i = add nsw i32 %and13.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %16, align 1
  %conv15.i = zext i8 %49 to i32
  %rtc_count_year_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %22, i32 0, i32 19
  %50 = ptrtoint ptr %rtc_count_year_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rtc_count_year_mask.i, align 4
  %and16.i = and i32 %51, %conv15.i
  %add.i = add nuw nsw i32 %and16.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %52 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i, ptr %tm_year.i, align 4
  %rtc_alarm_on_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 10
  %53 = ptrtoint ptr %rtc_alarm_on_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rtc_alarm_on_mask, align 4
  %and = and i32 %54, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %conv6 = zext i1 %tobool to i8
  %55 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6, ptr %alrm, align 4
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %rtc_event_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 6
  %58 = ptrtoint ptr %rtc_event_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rtc_event_reg, align 4
  %call8 = call i32 @regmap_read(ptr noundef %57, i32 noundef %59, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %rtc_event_alarm_mask = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 9
  %62 = ptrtoint ptr %rtc_event_alarm_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rtc_event_alarm_mask, align 4
  %and13 = and i32 %63, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %pending16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %. = zext i1 %tobool14.not to i8
  %64 = ptrtoint ptr %pending16 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %., ptr %pending16, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config1 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %rtc_count_sec_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %rtc_count_sec_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rtc_count_sec_mask.i, align 4
  %and.i = and i32 %12, %10
  %conv.i = trunc i32 %and.i to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min.i, align 4
  %rtc_count_min_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %rtc_count_min_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtc_count_min_mask.i, align 4
  %and2.i = and i32 %17, %15
  %conv3.i = trunc i32 %and2.i to i8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %4, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour.i, align 4
  %rtc_count_hour_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %rtc_count_hour_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtc_count_hour_mask.i, align 4
  %and5.i = and i32 %22, %20
  %conv6.i = trunc i32 %and5.i to i8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i, ptr %5, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mday.i, align 4
  %rtc_count_day_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 17
  %26 = ptrtoint ptr %rtc_count_day_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rtc_count_day_mask.i, align 4
  %and8.i = and i32 %27, %25
  %conv9.i = trunc i32 %and8.i to i8
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %6, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mon.i, align 4
  %add.i = add i32 %30, 1
  %rtc_count_month_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 18
  %31 = ptrtoint ptr %rtc_count_month_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rtc_count_month_mask.i, align 4
  %and11.i = and i32 %add.i, %32
  %conv12.i = trunc i32 %and11.i to i8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv12.i, ptr %7, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %34 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %35, 156
  %rtc_count_year_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 19
  %36 = ptrtoint ptr %rtc_count_year_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rtc_count_year_mask.i, align 4
  %and14.i = and i32 %sub.i, %37
  %conv15.i = trunc i32 %and14.i to i8
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv15.i, ptr %8, align 1
  %regmap.i = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %rtc_alarm_year_reg.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %rtc_alarm_year_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rtc_alarm_year_reg.i, align 4
  %rtc_alarm_on_mask.i = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 10
  %43 = ptrtoint ptr %rtc_alarm_on_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rtc_alarm_on_mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %rtc_alarm_secs_reg = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %rtc_alarm_secs_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rtc_alarm_secs_reg, align 4
  %rtc_data_start = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 20
  %49 = ptrtoint ptr %rtc_data_start to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rtc_data_start, align 4
  %arrayidx = getelementptr [6 x i8], ptr %data, i32 0, i32 %50
  %rtc_alarm_len = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 21
  %51 = ptrtoint ptr %rtc_alarm_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rtc_alarm_len, align 4
  %call3 = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef %48, ptr noundef %arrayidx, i32 noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call3) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %alarm_time = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config1, align 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %data, align 1
  %conv.i46 = zext i8 %56 to i32
  %rtc_count_sec_mask.i47 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 14
  %57 = ptrtoint ptr %rtc_count_sec_mask.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rtc_count_sec_mask.i47, align 4
  %and.i48 = and i32 %58, %conv.i46
  %59 = ptrtoint ptr %alarm_time to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i48, ptr %alarm_time, align 4
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %4, align 1
  %conv3.i49 = zext i8 %61 to i32
  %rtc_count_min_mask.i50 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 15
  %62 = ptrtoint ptr %rtc_count_min_mask.i50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rtc_count_min_mask.i50, align 4
  %and4.i = and i32 %63, %conv3.i49
  %tm_min.i51 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %tm_min.i51 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and4.i, ptr %tm_min.i51, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %5, align 1
  %conv6.i52 = zext i8 %66 to i32
  %rtc_count_hour_mask.i53 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 16
  %67 = ptrtoint ptr %rtc_count_hour_mask.i53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rtc_count_hour_mask.i53, align 4
  %and7.i = and i32 %68, %conv6.i52
  %tm_hour.i54 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %tm_hour.i54 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and7.i, ptr %tm_hour.i54, align 4
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %6, align 1
  %conv9.i55 = zext i8 %71 to i32
  %rtc_count_day_mask.i56 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 17
  %72 = ptrtoint ptr %rtc_count_day_mask.i56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rtc_count_day_mask.i56, align 4
  %and10.i = and i32 %73, %conv9.i55
  %tm_mday.i57 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %tm_mday.i57 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and10.i, ptr %tm_mday.i57, align 4
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %7, align 1
  %conv12.i58 = zext i8 %76 to i32
  %rtc_count_month_mask.i59 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 18
  %77 = ptrtoint ptr %rtc_count_month_mask.i59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rtc_count_month_mask.i59, align 4
  %and13.i = and i32 %78, %conv12.i58
  %sub.i60 = add nsw i32 %and13.i, -1
  %tm_mon.i61 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %tm_mon.i61 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.i60, ptr %tm_mon.i61, align 4
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %8, align 1
  %conv15.i62 = zext i8 %81 to i32
  %rtc_count_year_mask.i63 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %54, i32 0, i32 19
  %82 = ptrtoint ptr %rtc_count_year_mask.i63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rtc_count_year_mask.i63, align 4
  %and16.i = and i32 %83, %conv15.i62
  %add.i64 = add nuw nsw i32 %and16.i, 100
  %tm_year.i65 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 1, i32 5
  %84 = ptrtoint ptr %tm_year.i65 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i64, ptr %tm_year.i65, align 4
  %85 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not = icmp eq i8 %86, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %87 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i, align 4
  %config1.i67 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %config1.i67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config1.i67, align 4
  %regmap.i68 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %88, i32 0, i32 2
  %91 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i68, align 4
  %rtc_alarm_year_reg.i69 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %90, i32 0, i32 3
  %93 = ptrtoint ptr %rtc_alarm_year_reg.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rtc_alarm_year_reg.i69, align 4
  %rtc_alarm_on_mask.i70 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %90, i32 0, i32 10
  %95 = ptrtoint ptr %rtc_alarm_on_mask.i70 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rtc_alarm_on_mask.i70, align 4
  %call.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp13 = icmp slt i32 %call.i.i71, 0
  br i1 %cmp13, label %do.end17, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call.i.i71) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call3, %do.end8 ], [ %call.i.i71, %do.end17 ], [ %call.i.i71, %if.then11.cleanup_crit_edge ], [ %call3, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i3, align 4
  %config1.i4 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config1.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1.i4, align 4
  %regmap.i5 = getelementptr inbounds %struct.da9063_compatible_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i5, align 4
  %rtc_alarm_year_reg.i6 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %rtc_alarm_year_reg.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtc_alarm_year_reg.i6, align 4
  %rtc_alarm_on_mask.i7 = getelementptr inbounds %struct.da9063_compatible_rtc_regmap, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %rtc_alarm_on_mask.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rtc_alarm_on_mask.i7, align 4
  %. = select i1 %tobool.not, i32 0, i32 %9
  %call.i.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_rtc_da9063__228_512_da9063_rtc_driver_init6, !1, !"__initcall__kmod_rtc_da9063__228_512_da9063_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-da9063.c", i32 512, i32 1}
!2 = !{ptr @__exitcall_da9063_rtc_driver_exit, !1, !"__exitcall_da9063_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-da9063.c", i32 514, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-da9063.c", i32 515, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-da9063.c", i32 516, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-da9063.c", i32 517, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-da9063.c", i32 507, i32 11}
!14 = !{ptr @da9063_rtc_driver, !15, !"da9063_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-da9063.c", i32 504, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-da9063.c", i32 395, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-da9063.c", i32 404, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @da9063_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @da9063_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-da9063.c", i32 414, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @da9063_rtc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @da9063_rtc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-da9063.c", i32 423, i32 3}
!33 = !{ptr @da9063_rtc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @da9063_rtc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-da9063.c", i32 432, i32 3}
!37 = !{ptr @da9063_rtc_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9063_rtc_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @da9063_rtc_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-da9063.c", i32 441, i32 3}
!41 = !{ptr @da9063_rtc_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-da9063.c", i32 450, i32 3}
!44 = !{ptr @da9063_rtc_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @da9063_rtc_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-da9063.c", i32 460, i32 3}
!48 = !{ptr @da9063_rtc_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9063_rtc_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-da9063.c", i32 487, i32 44}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-da9063.c", i32 496, i32 3}
!54 = !{ptr @da9063_rtc_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @da9063_rtc_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @da9063_ad_regs, !57, !"da9063_ad_regs", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-da9063.c", i32 73, i32 50}
!58 = !{ptr @da9063_rtc_ops, !59, !"da9063_rtc_ops", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-da9063.c", i32 367, i32 35}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-da9063.c", i32 231, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @da9063_rtc_read_time._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @da9063_rtc_read_time._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-da9063.c", i32 236, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @da9063_rtc_read_time.__UNIQUE_ID_ddebug227, !66, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-da9063.c", i32 266, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @da9063_rtc_set_time._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @da9063_rtc_set_time._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-da9063.c", i32 316, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @da9063_rtc_set_alarm._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @da9063_rtc_set_alarm._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-da9063.c", i32 325, i32 3}
!81 = !{ptr @da9063_rtc_set_alarm._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @da9063_rtc_set_alarm._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-da9063.c", i32 334, i32 4}
!85 = !{ptr @da9063_rtc_set_alarm._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @da9063_rtc_set_alarm._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @da9063_compatible_reg_id_table, !88, !"da9063_compatible_reg_id_table", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-da9063.c", i32 159, i32 34}
!89 = !{ptr @da9063_bb_regs, !90, !"da9063_bb_regs", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-da9063.c", i32 102, i32 50}
!91 = !{ptr @da9062_aa_regs, !92, !"da9062_aa_regs", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-da9063.c", i32 131, i32 50}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148769834, i64 2148769839, i64 2148769852, i64 2148769896, i64 2148769930, i64 2148769951}
!103 = !{i8 0, i8 2}
!104 = !{!"auto-init"}
