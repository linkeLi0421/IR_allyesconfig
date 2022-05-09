; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-da9055.c_pt.bc'
source_filename = "../drivers/rtc/rtc-da9055.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da9055_rtc = type { ptr, ptr, i32 }
%struct.da9055 = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.da9055_pdata = type { ptr, i32, i32, [8 x ptr], i8, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_da9055__227_394_da9055_rtc_driver_init6 = internal global ptr @da9055_rtc_driver_init, section ".initcall6.init", align 4
@da9055_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9055_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9055_rtc_driver_exit = internal global ptr @da9055_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [55 x i8] c"rtc_da9055.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [57 x i8] c"rtc_da9055.description=RTC driver for Dialog DA9055 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_da9055.file=drivers/rtc/rtc-da9055\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_da9055.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_da9055.alias=platform:da9055-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da9055-rtc\00", [21 x i8] zeroinitializer }, align 32
@da9055_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @da9055_rtc_suspend, ptr @da9055_rtc_resume, ptr @da9055_rtc_freeze, ptr @da9055_rtc_resume, ptr @da9055_rtc_suspend, ptr @da9055_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@da9055_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @da9055_rtc_read_time, ptr @da9055_rtc_set_time, ptr @da9055_rtc_read_alarm, ptr @da9055_rtc_set_alarm, ptr null, ptr @da9055_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALM\00", [28 x i8] zeroinitializer }, align 32
@da9055_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq registration failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9055_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-da9055.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9055_rtc_probe._entry_ptr = internal global ptr @da9055_rtc_probe._entry, section ".printk_index", align 4
@da9055_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read RTC time : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9055_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@da9055_rtc_read_time._entry_ptr = internal global ptr @da9055_rtc_read_time._entry, section ".printk_index", align 4
@da9055_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to group read ALM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9055_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@da9055_read_alarm._entry_ptr = internal global ptr @da9055_read_alarm._entry, section ".printk_index", align 4
@da9055_rtc_get_alarm_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read ALM: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da9055_rtc_get_alarm_status\00", [36 x i8] zeroinitializer }, align 32
@da9055_rtc_get_alarm_status._entry_ptr = internal global ptr @da9055_rtc_get_alarm_status._entry, section ".printk_index", align 4
@da9055_rtc_enable_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 33, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable ALM: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da9055_rtc_enable_alarm\00", [40 x i8] zeroinitializer }, align 32
@da9055_rtc_enable_alarm._entry_ptr = internal global ptr @da9055_rtc_enable_alarm._entry, section ".printk_index", align 4
@da9055_rtc_enable_alarm._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 40, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable ALM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@da9055_rtc_enable_alarm._entry_ptr.17 = internal global ptr @da9055_rtc_enable_alarm._entry.15, section ".printk_index", align 4
@da9055_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 88, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write ALRM MIN: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9055_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@da9055_set_alarm._entry_ptr = internal global ptr @da9055_set_alarm._entry, section ".printk_index", align 4
@da9055_set_alarm._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write ALM Month:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@da9055_set_alarm._entry_ptr.22 = internal global ptr @da9055_set_alarm._entry.20, section ".printk_index", align 4
@da9055_set_alarm._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write ALM Year:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@da9055_set_alarm._entry_ptr.25 = internal global ptr @da9055_set_alarm._entry.23, section ".printk_index", align 4
@da9055_rtc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable RTC ALM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9055_rtc_suspend\00", [45 x i8] zeroinitializer }, align 32
@da9055_rtc_suspend._entry_ptr = internal global ptr @da9055_rtc_suspend._entry, section ".printk_index", align 4
@da9055_rtc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to restart RTC ALM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9055_rtc_resume\00", [46 x i8] zeroinitializer }, align 32
@da9055_rtc_resume._entry_ptr = internal global ptr @da9055_rtc_resume._entry, section ".printk_index", align 4
@da9055_rtc_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to freeze RTC ALMs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9055_rtc_freeze\00", [46 x i8] zeroinitializer }, align 32
@da9055_rtc_freeze._entry_ptr = internal global ptr @da9055_rtc_freeze._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"da9055_rtc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 386, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 389, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"da9055_rtc_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 375, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"da9055_rtc_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 218, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 300, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 309, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 144, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 63, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 118, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 32, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 39, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 88, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 102, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 107, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 328, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 347, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [28 x i8] c"../drivers/rtc/rtc-da9055.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 364, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9055_rtc_driver_exit, ptr @__initcall__kmod_rtc_da9055__227_394_da9055_rtc_driver_init6, ptr @da9055_read_alarm._entry, ptr @da9055_read_alarm._entry_ptr, ptr @da9055_rtc_driver_exit, ptr @da9055_rtc_enable_alarm._entry, ptr @da9055_rtc_enable_alarm._entry.15, ptr @da9055_rtc_enable_alarm._entry_ptr, ptr @da9055_rtc_enable_alarm._entry_ptr.17, ptr @da9055_rtc_freeze._entry, ptr @da9055_rtc_freeze._entry_ptr, ptr @da9055_rtc_get_alarm_status._entry, ptr @da9055_rtc_get_alarm_status._entry_ptr, ptr @da9055_rtc_probe._entry, ptr @da9055_rtc_probe._entry_ptr, ptr @da9055_rtc_read_time._entry, ptr @da9055_rtc_read_time._entry_ptr, ptr @da9055_rtc_resume._entry, ptr @da9055_rtc_resume._entry_ptr, ptr @da9055_rtc_suspend._entry, ptr @da9055_rtc_suspend._entry_ptr, ptr @da9055_set_alarm._entry, ptr @da9055_set_alarm._entry.20, ptr @da9055_set_alarm._entry.23, ptr @da9055_set_alarm._entry_ptr, ptr @da9055_set_alarm._entry_ptr.22, ptr @da9055_set_alarm._entry_ptr.25, ptr @da9055_rtc_driver, ptr @.str, ptr @da9055_rtc_pm_ops, ptr @da9055_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_get_alarm_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_enable_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_enable_alarm._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_alarm._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_alarm._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_rtc_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9055_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9055_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9055_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %da9055 = getelementptr inbounds %struct.da9055_rtc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %da9055 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %da9055, align 4
  %dev4 = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 11, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 53, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %cmp2.i = icmp slt i32 %call.i.i34.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call.i.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 11, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35.i)
  %cmp6.i = icmp slt i32 %call.i.i35.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup_crit_edge, label %if.end8.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end8.i.da9055_rtc_device_init.exit_crit_edge, label %land.lhs.true.i

if.end8.i.da9055_rtc_device_init.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_rtc_device_init.exit

land.lhs.true.i:                                  ; preds = %if.end8.i
  %reset_enable.i = getelementptr inbounds %struct.da9055_pdata, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %reset_enable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reset_enable.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not.i = icmp eq i8 %17, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.da9055_rtc_device_init.exit_crit_edge, label %if.then10.i

land.lhs.true.i.da9055_rtc_device_init.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_rtc_device_init.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 11, i32 noundef 2, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %cmp12.i = icmp slt i32 %call.i.i36.i, 0
  br i1 %cmp12.i, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.da9055_rtc_device_init.exit_crit_edge

if.then10.i.da9055_rtc_device_init.exit_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_rtc_device_init.exit

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

da9055_rtc_device_init.exit:                      ; preds = %if.then10.i.da9055_rtc_device_init.exit_crit_edge, %land.lhs.true.i.da9055_rtc_device_init.exit_crit_edge, %if.end8.i.da9055_rtc_device_init.exit_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call.i.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 92, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i.i37.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp = icmp slt i32 %call.i.i37.i, 0
  br i1 %cmp, label %da9055_rtc_device_init.exit.cleanup_crit_edge, label %if.end9

da9055_rtc_device_init.exit.cleanup_crit_edge:    ; preds = %da9055_rtc_device_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %da9055_rtc_device_init.exit
  %23 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %da9055, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i, align 4, !annotation !92
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %call.i68 = call i32 @regmap_read(ptr noundef %27, i32 noundef 93, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %if.end9
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12 = icmp slt i32 %29, 0
  br i1 %cmp12, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end14

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %da9055_reg_read.exit
  %and = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_enable = getelementptr inbounds %struct.da9055_rtc, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %alarm_enable to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %alarm_enable, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %call19 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %call21 = call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %32, ptr noundef nonnull @da9055_rtc_ops, ptr noundef null) #6
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i72 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call29 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %call34 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call29, ptr noundef null, ptr noundef nonnull @da9055_rtc_alm_irq, i32 noundef 8196, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end32.cleanup_crit_edge, label %do.end

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %da9055, align 4
  %dev38 = getelementptr inbounds %struct.da9055, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.2, i32 noundef %call34) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then25, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread, %da9055_rtc_device_init.exit.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %22, %da9055_rtc_device_init.exit.cleanup_crit_edge ], [ %29, %da9055_reg_read.exit.cleanup_crit_edge ], [ %34, %if.then25 ], [ %call34, %do.end ], [ 0, %if.end32.cleanup_crit_edge ], [ %call.i68, %da9055_reg_read.exit.thread ], [ %call.i.i36.i, %if.then10.i.cleanup_crit_edge ], [ %call.i.i35.i, %if.end4.i.cleanup_crit_edge ], [ %call.i.i34.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_alm_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %da9055.i = getelementptr inbounds %struct.da9055_rtc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9055.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 93, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp5.not.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %cmp5.not.i, label %entry.da9055_rtc_enable_alarm.exit_crit_edge, label %do.end9.i

entry.da9055_rtc_enable_alarm.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_rtc_enable_alarm.exit

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %da9055.i, align 4
  %dev11.i = getelementptr inbounds %struct.da9055, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %call.i.i24.i) #9
  br label %da9055_rtc_enable_alarm.exit

da9055_rtc_enable_alarm.exit:                     ; preds = %do.end9.i, %entry.da9055_rtc_enable_alarm.exit_crit_edge
  %alarm_enable13.i = getelementptr inbounds %struct.da9055_rtc, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %alarm_enable13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %alarm_enable13.i, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %rtc_tm) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %v = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %v) #6
  %2 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 5
  %da9055 = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %7 = call ptr @memset(ptr %v, i32 255, i32 6)
  %8 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da9055, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !92
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 83, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %entry
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_reg_read.exit
  %and = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %15 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %da9055, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i41 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 83, ptr noundef nonnull %v, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp6 = icmp slt i32 %call.i41, 0
  br i1 %cmp6, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %da9055, align 4
  %dev9 = getelementptr inbounds %struct.da9055, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %call.i41) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %6, align 1
  %25 = and i8 %24, 63
  %narrow = add nuw i8 %25, 100
  %add = zext i8 %narrow to i32
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %tm_year, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %5, align 1
  %29 = and i8 %28, 15
  %and14 = zext i8 %29 to i32
  %sub = add nsw i32 %and14, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 4
  %30 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %tm_mon, align 4
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  %33 = and i8 %32, 31
  %and17 = zext i8 %33 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 3
  %34 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and17, ptr %tm_mday, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %37 = and i8 %36, 31
  %and20 = zext i8 %37 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 2
  %38 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and20, ptr %tm_hour, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %41 = and i8 %40, 63
  %and23 = zext i8 %41 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %rtc_tm, i32 0, i32 1
  %42 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and23, ptr %tm_min, align 4
  %43 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %v, align 1
  %45 = and i8 %44, 63
  %and26 = zext i8 %45 to i32
  %46 = ptrtoint ptr %rtc_tm to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and26, ptr %rtc_tm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread
  %retval.0 = phi i32 [ %call.i41, %do.end ], [ 0, %if.end10 ], [ %14, %da9055_reg_read.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call.i, %da9055_reg_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %v = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %v) #6
  %0 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %v, i32 0, i32 5
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %7 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %v, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %conv1 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %0, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %conv3 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %1, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %conv5 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv5, ptr %2, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %21 = trunc i32 %20 to i8
  %conv7 = add i8 %21, 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7, ptr %3, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %23 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_year, align 4
  %25 = trunc i32 %24 to i8
  %conv9 = add i8 %25, -100
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9, ptr %4, align 1
  %da9055 = getelementptr inbounds %struct.da9055_rtc, ptr %6, i32 0, i32 1
  %27 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %da9055, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %30, i32 noundef 83, ptr noundef nonnull %v, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %v) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %v.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da9055 = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da9055, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %v.i) #6
  %4 = call ptr @memset(ptr %v.i, i32 255, i32 5)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 89, ptr noundef nonnull %v.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %da9055_read_alarm.exit, label %da9055_read_alarm.exit.thread

da9055_read_alarm.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %v.i) #6
  br label %cleanup

da9055_read_alarm.exit:                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %9 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 4
  %10 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 3
  %11 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 2
  %12 = getelementptr inbounds [5 x i8], ptr %v.i, i32 0, i32 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %15 = and i8 %14, 63
  %narrow.i = add nuw i8 %15, 100
  %add.i = zext i8 %narrow.i to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %tm_year.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %10, align 1
  %19 = and i8 %18, 15
  %and3.i = zext i8 %19 to i32
  %sub.i = add nsw i32 %and3.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %11, align 1
  %23 = and i8 %22, 31
  %and6.i = zext i8 %23 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and6.i, ptr %tm_mday.i, align 4
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %12, align 1
  %27 = and i8 %26, 31
  %and9.i = zext i8 %27 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and9.i, ptr %tm_hour.i, align 4
  %29 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %v.i, align 1
  %31 = and i8 %30, 63
  %and12.i = zext i8 %31 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and12.i, ptr %tm_min.i, align 4
  %33 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %time, align 4
  %call13.i = call i32 @rtc_valid_tm(ptr noundef %time) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %v.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %if.end, label %da9055_read_alarm.exit.cleanup_crit_edge

da9055_read_alarm.exit.cleanup_crit_edge:         ; preds = %da9055_read_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_read_alarm.exit
  %34 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %da9055, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i.i, align 4, !annotation !92
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 4
  %call.i.i9 = call i32 @regmap_read(ptr noundef %38, i32 noundef 93, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i.i = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i.i, label %da9055_reg_read.exit.thread.i, label %da9055_reg_read.exit.i

da9055_reg_read.exit.thread.i:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %do.end.i11

da9055_reg_read.exit.i:                           ; preds = %if.end
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp slt i32 %40, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.i.do.end.i11_crit_edge, label %if.end.i12

da9055_reg_read.exit.i.do.end.i11_crit_edge:      ; preds = %da9055_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i11

do.end.i11:                                       ; preds = %da9055_reg_read.exit.i.do.end.i11_crit_edge, %da9055_reg_read.exit.thread.i
  %retval.0.i9.i = phi i32 [ %call.i.i9, %da9055_reg_read.exit.thread.i ], [ %40, %da9055_reg_read.exit.i.do.end.i11_crit_edge ]
  %dev.i10 = getelementptr inbounds %struct.da9055, ptr %35, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i9.i) #9
  br label %da9055_rtc_get_alarm_status.exit

if.end.i12:                                       ; preds = %da9055_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = lshr i32 %40, 6
  %and.lobit.i = and i32 %and.i, 1
  br label %da9055_rtc_get_alarm_status.exit

da9055_rtc_get_alarm_status.exit:                 ; preds = %if.end.i12, %do.end.i11
  %retval.0.i13 = phi i32 [ %retval.0.i9.i, %do.end.i11 ], [ %and.lobit.i, %if.end.i12 ]
  %conv = trunc i32 %retval.0.i13 to i8
  %43 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %da9055_rtc_get_alarm_status.exit, %da9055_read_alarm.exit.cleanup_crit_edge, %da9055_read_alarm.exit.thread
  %retval.0 = phi i32 [ 0, %da9055_rtc_get_alarm_status.exit ], [ %call13.i, %da9055_read_alarm.exit.cleanup_crit_edge ], [ %call.i.i, %da9055_read_alarm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  %v.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da9055.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da9055.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 93, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp5.not.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %cmp5.not.i, label %da9055_rtc_enable_alarm.exit.thread, label %da9055_rtc_enable_alarm.exit

da9055_rtc_enable_alarm.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_enable13.i21 = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %alarm_enable13.i21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %alarm_enable13.i21, align 4
  br label %if.end

da9055_rtc_enable_alarm.exit:                     ; preds = %entry
  %7 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da9055.i, align 4
  %dev11.i = getelementptr inbounds %struct.da9055, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %call.i.i24.i) #9
  %alarm_enable13.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %alarm_enable13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %alarm_enable13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp, label %da9055_rtc_enable_alarm.exit.cleanup_crit_edge, label %da9055_rtc_enable_alarm.exit.if.end_crit_edge

da9055_rtc_enable_alarm.exit.if.end_crit_edge:    ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

da9055_rtc_enable_alarm.exit.cleanup_crit_edge:   ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %da9055_rtc_enable_alarm.exit.if.end_crit_edge, %da9055_rtc_enable_alarm.exit.thread
  %alarm_enable13.i23 = phi ptr [ %alarm_enable13.i21, %da9055_rtc_enable_alarm.exit.thread ], [ %alarm_enable13.i, %da9055_rtc_enable_alarm.exit.if.end_crit_edge ]
  %12 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9055.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i) #6
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %15, -100
  store i32 %sub.i, ptr %tm_year.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i, align 4
  %add.i = add i32 %17, 1
  store i32 %add.i, ptr %tm_mon.i, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %conv2.i.i = and i32 %19, 255
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 89, i32 noundef 63, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.da9055, ptr %13, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.i) #9
  br label %da9055_set_alarm.exit.thread

if.end.i:                                         ; preds = %if.end
  %24 = getelementptr inbounds [2 x i8], ptr %v.i, i32 0, i32 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_hour.i, align 4
  %conv2.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i, ptr %v.i, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mday.i, align 4
  %conv3.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i, ptr %24, align 1
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %13, align 4
  %call.i.i = call i32 @regmap_raw_write(ptr noundef %32, i32 noundef 90, ptr noundef nonnull %v.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %if.end.i.da9055_set_alarm.exit.thread_crit_edge, label %if.end9.i

if.end.i.da9055_set_alarm.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_set_alarm.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_mon.i, align 4
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 4
  %conv2.i54.i = and i32 %34, 255
  %call.i.i55.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 92, i32 noundef 15, i32 noundef %conv2.i54.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55.i)
  %cmp13.i = icmp slt i32 %call.i.i55.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end9.i.if.end20.i_crit_edge

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev19.i = getelementptr inbounds %struct.da9055, ptr %13, i32 0, i32 2
  %37 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef %call.i.i55.i) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end18.i, %if.end9.i.if.end20.i_crit_edge
  %39 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_year.i, align 4
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %13, align 4
  %conv2.i56.i = and i32 %40, 255
  %call.i.i57.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 93, i32 noundef 63, i32 noundef %conv2.i56.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i)
  %cmp24.i = icmp slt i32 %call.i.i57.i, 0
  br i1 %cmp24.i, label %do.end29.i, label %da9055_set_alarm.exit

do.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev30.i = getelementptr inbounds %struct.da9055, ptr %13, i32 0, i32 2
  %43 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev30.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.24, i32 noundef %call.i.i57.i) #9
  br label %da9055_set_alarm.exit.thread

da9055_set_alarm.exit.thread:                     ; preds = %do.end29.i, %if.end.i.da9055_set_alarm.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i57.i, %do.end29.i ], [ %call.i.i, %if.end.i.da9055_set_alarm.exit.thread_crit_edge ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #6
  br label %cleanup

da9055_set_alarm.exit:                            ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i)
  %tobool.not = icmp eq i32 %call.i.i57.i, 0
  br i1 %tobool.not, label %if.end4, label %da9055_set_alarm.exit.cleanup_crit_edge

da9055_set_alarm.exit.cleanup_crit_edge:          ; preds = %da9055_set_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %da9055_set_alarm.exit
  %45 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %da9055.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i.i.i15 = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 93, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i15)
  %cmp.not.i16 = icmp eq i32 %call.i.i.i15, 0
  br i1 %cmp.not.i16, label %if.end4.da9055_rtc_enable_alarm.exit20_crit_edge, label %do.end.i18

if.end4.da9055_rtc_enable_alarm.exit20_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9055_rtc_enable_alarm.exit20

do.end.i18:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %da9055.i, align 4
  %dev.i17 = getelementptr inbounds %struct.da9055, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i15) #9
  br label %da9055_rtc_enable_alarm.exit20

da9055_rtc_enable_alarm.exit20:                   ; preds = %do.end.i18, %if.end4.da9055_rtc_enable_alarm.exit20_crit_edge
  %53 = ptrtoint ptr %alarm_enable13.i23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %alarm_enable13.i23, align 4
  br label %cleanup

cleanup:                                          ; preds = %da9055_rtc_enable_alarm.exit20, %da9055_set_alarm.exit.cleanup_crit_edge, %da9055_set_alarm.exit.thread, %da9055_rtc_enable_alarm.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i15, %da9055_rtc_enable_alarm.exit20 ], [ %call.i.i24.i, %da9055_rtc_enable_alarm.exit.cleanup_crit_edge ], [ %call.i.i57.i, %da9055_set_alarm.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %da9055_set_alarm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool = icmp ne i32 %enabled, 0
  %call1 = tail call fastcc i32 @da9055_rtc_enable_alarm(ptr noundef %1, i1 noundef zeroext %tobool)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9055_rtc_enable_alarm(ptr nocapture noundef %rtc, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %da9055 = getelementptr inbounds %struct.da9055_rtc, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da9055, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 93, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not, label %if.then.if.end14_crit_edge, label %do.end

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %da9055, align 4
  %dev = getelementptr inbounds %struct.da9055, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %call.i.i) #9
  br label %if.end14

if.else:                                          ; preds = %entry
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 93, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp5.not = icmp eq i32 %call.i.i24, 0
  br i1 %cmp5.not, label %if.else.if.end14_crit_edge, label %do.end9

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %da9055 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %da9055, align 4
  %dev11 = getelementptr inbounds %struct.da9055, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %call.i.i24) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %if.else.if.end14_crit_edge, %do.end, %if.then.if.end14_crit_edge
  %.sink = phi i32 [ 1, %do.end ], [ 1, %if.then.if.end14_crit_edge ], [ 0, %do.end9 ], [ 0, %if.else.if.end14_crit_edge ]
  %ret.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i, %if.then.if.end14_crit_edge ], [ %call.i.i24, %do.end9 ], [ %call.i.i24, %if.else.if.end14_crit_edge ]
  %alarm_enable13 = getelementptr inbounds %struct.da9055_rtc, ptr %rtc, i32 0, i32 2
  %12 = ptrtoint ptr %alarm_enable13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %alarm_enable13, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_suspend(ptr noundef %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end7_crit_edge

device_may_wakeup.exit.if.end7_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %da9055.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %da9055.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 93, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp5.not.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %cmp5.not.i, label %da9055_rtc_enable_alarm.exit.thread, label %da9055_rtc_enable_alarm.exit

da9055_rtc_enable_alarm.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_enable13.i10 = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %alarm_enable13.i10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %alarm_enable13.i10, align 4
  br label %if.end7

da9055_rtc_enable_alarm.exit:                     ; preds = %if.then
  %10 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %da9055.i, align 4
  %dev11.i = getelementptr inbounds %struct.da9055, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %call.i.i24.i) #9
  %alarm_enable13.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %alarm_enable13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %alarm_enable13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp, label %do.end, label %da9055_rtc_enable_alarm.exit.if.end7_crit_edge

da9055_rtc_enable_alarm.exit.if.end7_crit_edge:   ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %da9055_rtc_enable_alarm.exit.if.end7_crit_edge, %da9055_rtc_enable_alarm.exit.thread, %device_may_wakeup.exit.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_resume(ptr noundef %dev) #2 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end9_crit_edge

device_may_wakeup.exit.if.end9_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %alarm_enable = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %alarm_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %da9055.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da9055.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 93, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i, label %da9055_rtc_enable_alarm.exit.thread, label %da9055_rtc_enable_alarm.exit

da9055_rtc_enable_alarm.exit.thread:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %alarm_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %alarm_enable, align 4
  br label %if.end9

da9055_rtc_enable_alarm.exit:                     ; preds = %if.then4
  %12 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %da9055.i, align 4
  %dev.i = getelementptr inbounds %struct.da9055, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i) #9
  %16 = ptrtoint ptr %alarm_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %alarm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %do.end, label %da9055_rtc_enable_alarm.exit.if.end9_crit_edge

da9055_rtc_enable_alarm.exit.if.end9_crit_edge:   ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %da9055_rtc_enable_alarm.exit.if.end9_crit_edge, %da9055_rtc_enable_alarm.exit.thread, %if.then.if.end9_crit_edge, %device_may_wakeup.exit.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_rtc_freeze(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da9055.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da9055.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 93, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp5.not.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %cmp5.not.i, label %da9055_rtc_enable_alarm.exit.thread, label %da9055_rtc_enable_alarm.exit

da9055_rtc_enable_alarm.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_enable13.i5 = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %alarm_enable13.i5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %alarm_enable13.i5, align 4
  br label %if.end

da9055_rtc_enable_alarm.exit:                     ; preds = %entry
  %7 = ptrtoint ptr %da9055.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da9055.i, align 4
  %dev11.i = getelementptr inbounds %struct.da9055, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %call.i.i24.i) #9
  %alarm_enable13.i = getelementptr inbounds %struct.da9055_rtc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %alarm_enable13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %alarm_enable13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp = icmp slt i32 %call.i.i24.i, 0
  br i1 %cmp, label %do.end, label %da9055_rtc_enable_alarm.exit.if.end_crit_edge

da9055_rtc_enable_alarm.exit.if.end_crit_edge:    ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %da9055_rtc_enable_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %da9055_rtc_enable_alarm.exit.if.end_crit_edge, %da9055_rtc_enable_alarm.exit.thread
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_rtc_da9055__227_394_da9055_rtc_driver_init6, !1, !"__initcall__kmod_rtc_da9055__227_394_da9055_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-da9055.c", i32 394, i32 1}
!2 = !{ptr @__exitcall_da9055_rtc_driver_exit, !1, !"__exitcall_da9055_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-da9055.c", i32 396, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-da9055.c", i32 397, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-da9055.c", i32 398, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-da9055.c", i32 399, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-da9055.c", i32 389, i32 13}
!14 = !{ptr @da9055_rtc_driver, !15, !"da9055_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-da9055.c", i32 386, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-da9055.c", i32 300, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-da9055.c", i32 309, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @da9055_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @da9055_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @da9055_rtc_ops, !27, !"da9055_rtc_ops", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-da9055.c", i32 218, i32 35}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-da9055.c", i32 144, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @da9055_rtc_read_time._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9055_rtc_read_time._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-da9055.c", i32 63, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @da9055_read_alarm._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @da9055_read_alarm._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-da9055.c", i32 118, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @da9055_rtc_get_alarm_status._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @da9055_rtc_get_alarm_status._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-da9055.c", i32 32, i32 4}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @da9055_rtc_enable_alarm._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @da9055_rtc_enable_alarm._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-da9055.c", i32 39, i32 4}
!50 = !{ptr @da9055_rtc_enable_alarm._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @da9055_rtc_enable_alarm._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-da9055.c", i32 88, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @da9055_set_alarm._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @da9055_set_alarm._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-da9055.c", i32 102, i32 3}
!59 = !{ptr @da9055_set_alarm._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @da9055_set_alarm._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-da9055.c", i32 107, i32 3}
!63 = !{ptr @da9055_set_alarm._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @da9055_set_alarm._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @da9055_rtc_pm_ops, !66, !"da9055_rtc_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-da9055.c", i32 375, i32 32}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-da9055.c", i32 328, i32 4}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @da9055_rtc_suspend._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @da9055_rtc_suspend._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-da9055.c", i32 347, i32 5}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @da9055_rtc_resume._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @da9055_rtc_resume._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-da9055.c", i32 364, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @da9055_rtc_freeze._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @da9055_rtc_freeze._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{!"auto-init"}
