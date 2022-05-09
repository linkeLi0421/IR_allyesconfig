; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-bd70528.c_pt.bc'
source_filename = "../drivers/rtc/rtc-bd70528.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bd70528_rtc_data = type { %struct.bd70528_rtc_day, i8, i8, i8, i8 }
%struct.bd70528_rtc_day = type { i8, i8, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.bd70528_rtc = type { ptr, ptr, ptr, i8, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.bd71828_rtc_alm = type { %struct.bd70528_rtc_data, %struct.bd70528_rtc_data, i8, i8 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_bd70528__288_355_bd70528_rtc_init6 = internal global ptr @bd70528_rtc_init, section ".initcall6.init", align 4
@bd70528_rtc = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd70528_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bd718x7_rtc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd70528_rtc_exit = internal global ptr @bd70528_rtc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [71 x i8] c"rtc_bd70528.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"rtc_bd70528.description=ROHM BD71828 and BD71815 PMIC RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"rtc_bd70528.file=drivers/rtc/rtc-bd70528\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"rtc_bd70528.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [39 x i8] c"rtc_bd70528.alias=platform:bd70528-rtc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd70528-rtc\00", [20 x i8] zeroinitializer }, align 32
@bd718x7_rtc_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"bd71828-rtc\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"bd71815-rtc\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@bd70528_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"No regmap\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd70528_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-bd70528.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd70528_probe._entry_ptr = internal global ptr @bd70528_probe._entry, section ".printk_index", align 4
@bd71828_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @bd70528_get_time, ptr @bd71828_set_time, ptr @bd71828_read_alarm, ptr @bd71828_set_alarm, ptr null, ptr @bd71828_alm_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71815-rtc-alm-0\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828-rtc-alm-0\00", [46 x i8] zeroinitializer }, align 32
@bd70528_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown chip\0A\00", [18 x i8] zeroinitializer }, align 32
@bd70528_probe._entry_ptr.10 = internal global ptr @bd70528_probe._entry.8, section ".printk_index", align 4
@bd70528_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to reag RTC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@bd70528_probe._entry_ptr.13 = internal global ptr @bd70528_probe._entry.11, section ".printk_index", align 4
@bd70528_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting 24H clock for RTC failed\0A\00", [62 x i8] zeroinitializer }, align 32
@bd70528_probe._entry_ptr.16 = internal global ptr @bd70528_probe._entry.14, section ".printk_index", align 4
@bd70528_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTC device creation failed\0A\00", [36 x i8] zeroinitializer }, align 32
@bd70528_probe._entry_ptr.19 = internal global ptr @bd70528_probe._entry.17, section ".printk_index", align 4
@bd70528_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read RTC time (err %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd70528_get_time\00", [47 x i8] zeroinitializer }, align 32
@bd70528_get_time._entry_ptr = internal global ptr @bd70528_get_time._entry, section ".printk_index", align 4
@bd71828_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read RTC time registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd71828_set_time\00", [47 x i8] zeroinitializer }, align 32
@bd71828_set_time._entry_ptr = internal global ptr @bd71828_set_time._entry, section ".printk_index", align 4
@bd71828_set_time._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set RTC time\0A\00", [40 x i8] zeroinitializer }, align 32
@bd71828_set_time._entry_ptr.26 = internal global ptr @bd71828_set_time._entry.24, section ".printk_index", align 4
@bd71828_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read alarm regs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bd71828_read_alarm\00", [45 x i8] zeroinitializer }, align 32
@bd71828_read_alarm._entry_ptr = internal global ptr @bd71828_read_alarm._entry, section ".printk_index", align 4
@bd71828_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bd71828_set_alarm\00", [46 x i8] zeroinitializer }, align 32
@bd71828_set_alarm._entry_ptr = internal global ptr @bd71828_set_alarm._entry, section ".printk_index", align 4
@bd71828_set_alarm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set alarm time\0A\00", [38 x i8] zeroinitializer }, align 32
@bd71828_set_alarm._entry_ptr.32 = internal global ptr @bd71828_set_alarm._entry.30, section ".printk_index", align 4
@bd71828_alm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to change alarm state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bd71828_alm_enable\00", [45 x i8] zeroinitializer }, align 32
@bd71828_alm_enable._entry_ptr = internal global ptr @bd71828_alm_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"bd70528_rtc\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 347, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 349, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"bd718x7_rtc_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 340, i32 40 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 253, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"bd71828_rtc_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 219, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 262, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 279, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 285, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 299, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 312, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 323, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 192, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 169, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 177, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 146, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 117, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 131, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [29 x i8] c"../drivers/rtc/rtc-bd70528.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 214, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd70528_rtc_exit, ptr @__initcall__kmod_rtc_bd70528__288_355_bd70528_rtc_init6, ptr @bd70528_get_time._entry, ptr @bd70528_get_time._entry_ptr, ptr @bd70528_probe._entry, ptr @bd70528_probe._entry.11, ptr @bd70528_probe._entry.14, ptr @bd70528_probe._entry.17, ptr @bd70528_probe._entry.8, ptr @bd70528_probe._entry_ptr, ptr @bd70528_probe._entry_ptr.10, ptr @bd70528_probe._entry_ptr.13, ptr @bd70528_probe._entry_ptr.16, ptr @bd70528_probe._entry_ptr.19, ptr @bd70528_rtc_exit, ptr @bd71828_alm_enable._entry, ptr @bd71828_alm_enable._entry_ptr, ptr @bd71828_read_alarm._entry, ptr @bd71828_read_alarm._entry_ptr, ptr @bd71828_set_alarm._entry, ptr @bd71828_set_alarm._entry.30, ptr @bd71828_set_alarm._entry_ptr, ptr @bd71828_set_alarm._entry_ptr.32, ptr @bd71828_set_time._entry, ptr @bd71828_set_time._entry.24, ptr @bd71828_set_time._entry_ptr, ptr @bd71828_set_time._entry_ptr.26, ptr @bd70528_rtc, ptr @.str, ptr @bd718x7_rtc_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bd71828_rtc_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_rtc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd718x7_rtc_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd70528_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_set_time._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_set_alarm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd71828_alm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd70528_rtc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd70528_rtc, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd70528_rtc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd70528_rtc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd70528_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rtc_data.i = alloca %struct.bd70528_rtc_data, align 1
  %hr = alloca i32, align 4
  %t = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hr) #7
  %0 = ptrtoint ptr %hr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hr, align 4, !annotation !89
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %1 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %6, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %regmap, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup65

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.bd70528_rtc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev9, align 4
  %9 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end15 [
    i32 4, label %if.end7.sw.epilog_crit_edge
    i32 5, label %sw.bb10
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup65

sw.epilog:                                        ; preds = %sw.bb10, %if.end7.sw.epilog_crit_edge
  %.sink121 = phi i8 [ 76, %sw.bb10 ], [ 30, %if.end7.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 83, %sw.bb10 ], [ 37, %if.end7.sw.epilog_crit_edge ]
  %irq_name.0 = phi ptr [ @.str.7, %sw.bb10 ], [ @.str.6, %if.end7.sw.epilog_crit_edge ]
  %hour_reg.0 = phi i32 [ 78, %sw.bb10 ], [ 32, %if.end7.sw.epilog_crit_edge ]
  %reg_time_start11 = getelementptr inbounds %struct.bd70528_rtc, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %reg_time_start11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink121, ptr %reg_time_start11, align 4
  %bd718xx_alm_block_start12 = getelementptr inbounds %struct.bd70528_rtc, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %bd718xx_alm_block_start12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %bd718xx_alm_block_start12, align 1
  %call17 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %irq_name.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %sw.epilog.cleanup65_crit_edge, label %if.end19

sw.epilog.cleanup65_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end19:                                         ; preds = %sw.epilog
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %14, i32 noundef %hour_reg.0, ptr noundef nonnull %hr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup65

if.end28:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %hr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hr, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t) #7
  %17 = getelementptr inbounds i8, ptr %t, i32 28
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 -1, ptr %17, align 4, !annotation !89
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rtc_data.i) #7
  %regmap.i = getelementptr inbounds %struct.bd70528_rtc, ptr %20, i32 0, i32 1
  %21 = call ptr @memset(ptr %rtc_data.i, i32 255, i32 7)
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %reg_time_start.i = getelementptr inbounds %struct.bd70528_rtc, ptr %20, i32 0, i32 3
  %24 = ptrtoint ptr %reg_time_start.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_time_start.i, align 4
  %conv.i = zext i8 %25 to i32
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef %conv.i, ptr noundef nonnull %rtc_data.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %cond.end.i, label %if.end37.thread

cond.end.i:                                       ; preds = %if.then30
  %26 = ptrtoint ptr %rtc_data.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rtc_data.i, align 1
  %28 = and i8 %27, 127
  %call.i116 = call i32 @_bcd2bin(i8 noundef zeroext %28) #11
  %29 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i116, ptr %t, align 4
  %min.i = getelementptr inbounds %struct.bd70528_rtc_day, ptr %rtc_data.i, i32 0, i32 1
  %30 = ptrtoint ptr %min.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %min.i, align 1
  %32 = and i8 %31, 127
  %call39.i = call i32 @_bcd2bin(i8 noundef zeroext %32) #11
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %33 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call39.i, ptr %tm_min.i, align 4
  %hour.i = getelementptr inbounds %struct.bd70528_rtc_day, ptr %rtc_data.i, i32 0, i32 2
  %34 = ptrtoint ptr %hour.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hour.i, align 1
  %36 = and i8 %35, 63
  %call65.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %37 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call65.i, ptr %tm_hour.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool.not.i117 = icmp sgt i8 %35, -1
  br i1 %tobool.not.i117, label %if.then.i, label %cond.end.i.cond.end102.i_crit_edge

cond.end.i.cond.end102.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end102.i

if.then.i:                                        ; preds = %cond.end.i
  %rem.i = srem i32 %call65.i, 12
  %38 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rem.i, ptr %tm_hour.i, align 4
  %39 = and i8 %35, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool77.not.i = icmp eq i8 %39, 0
  br i1 %tobool77.not.i, label %if.then.i.cond.end102.i_crit_edge, label %if.then78.i

if.then.i.cond.end102.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end102.i

if.then78.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add80.i = add nsw i32 %rem.i, 12
  %40 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add80.i, ptr %tm_hour.i, align 4
  br label %cond.end102.i

cond.end102.i:                                    ; preds = %if.then78.i, %if.then.i.cond.end102.i_crit_edge, %cond.end.i.cond.end102.i_crit_edge
  %day.i = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data.i, i32 0, i32 2
  %41 = ptrtoint ptr %day.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %day.i, align 1
  %43 = and i8 %42, 63
  %call101.i = call i32 @_bcd2bin(i8 noundef zeroext %43) #11
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %44 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call101.i, ptr %tm_mday.i, align 4
  %month.i = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data.i, i32 0, i32 3
  %45 = ptrtoint ptr %month.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %month.i, align 1
  %47 = and i8 %46, 31
  %call123.i = call i32 @_bcd2bin(i8 noundef zeroext %47) #11
  %sub.i = add i32 %call123.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %48 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %year.i = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data.i, i32 0, i32 4
  %49 = ptrtoint ptr %year.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %year.i, align 1
  %call145.i = call i32 @_bcd2bin(i8 noundef zeroext %50) #11
  %add148.i = add i32 %call145.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %51 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add148.i, ptr %tm_year.i, align 4
  %week.i = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data.i, i32 0, i32 1
  %52 = ptrtoint ptr %week.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %week.i, align 1
  %54 = and i8 %53, 7
  %call168.i = call i32 @_bcd2bin(i8 noundef zeroext %54) #11
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %55 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call168.i, ptr %tm_wday.i, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data.i) #7
  %call36 = call i32 @bd71828_set_time(ptr noundef %dev, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end45.critedge, label %cond.end102.i.do.end42_crit_edge

cond.end102.i.do.end42_crit_edge:                 ; preds = %cond.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end37.thread:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call1.i) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data.i) #7
  br label %do.end42

do.end42:                                         ; preds = %if.end37.thread, %cond.end102.i.do.end42_crit_edge
  %ret.0120 = phi i32 [ %call1.i, %if.end37.thread ], [ %call36, %cond.end102.i.do.end42_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #7
  br label %cleanup65

if.end45.critedge:                                ; preds = %cond.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end45.critedge, %if.end28.if.end45_crit_edge
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call48 = call i32 @device_wakeup_enable(ptr noundef %dev) #7
  %call50 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %56 = ptrtoint ptr %call50 to i32
  br label %cleanup65

if.end58:                                         ; preds = %if.end45
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call50, i32 0, i32 22
  %57 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 946684800, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call50, i32 0, i32 23
  %58 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 4102444799, ptr %range_max, align 8
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call50, i32 0, i32 3
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @bd71828_rtc_ops, ptr %ops, align 8
  %call60 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call17, ptr noundef null, ptr noundef nonnull @alm_hndlr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %call50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.cleanup65_crit_edge

if.end58.cleanup65_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call50) #7
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %if.end58.cleanup65_crit_edge, %do.end55, %do.end42, %do.end26, %sw.epilog.cleanup65_crit_edge, %do.end15, %do.end, %entry.cleanup65_crit_edge
  %retval.1 = phi i32 [ -2, %do.end15 ], [ %call21, %do.end26 ], [ %56, %do.end55 ], [ %call64, %if.end63 ], [ -22, %do.end ], [ -12, %entry.cleanup65_crit_edge ], [ %call17, %sw.epilog.cleanup65_crit_edge ], [ %ret.0120, %do.end42 ], [ %call60, %if.end58.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hr) #7
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alm_hndlr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtc_update_irq(ptr noundef %data, i32 noundef 1, i32 noundef 224) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd70528_get_time(ptr noundef %dev, ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  %rtc_data = alloca %struct.bd70528_rtc_data, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rtc_data) #7
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %rtc_data, i32 255, i32 7)
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %reg_time_start = getelementptr inbounds %struct.bd70528_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %reg_time_start to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_time_start, align 4
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %rtc_data, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @rtc2tm(ptr noundef nonnull %rtc_data, ptr noundef %t)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_set_time(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %rtc_data = alloca %struct.bd70528_rtc_data, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rtc_data) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = call ptr @memset(ptr %rtc_data, i32 255, i32 7)
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %reg_time_start = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg_time_start to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_time_start, align 4
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %rtc_data, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data, i32 0, i32 4
  %8 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data, i32 0, i32 3
  %9 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data, i32 0, i32 2
  %10 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %rtc_data, i32 0, i32 1
  %11 = getelementptr inbounds %struct.bd70528_rtc_day, ptr %rtc_data, i32 0, i32 2
  %12 = getelementptr inbounds %struct.bd70528_rtc_day, ptr %rtc_data, i32 0, i32 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %15 = and i8 %14, -64
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %10, align 1
  %18 = and i8 %17, -8
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %8, align 1
  %21 = and i8 %20, -32
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %11, align 1
  %24 = ptrtoint ptr %rtc_data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rtc_data, align 1
  %26 = and i8 %25, -128
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %12, align 1
  %29 = and i8 %28, -128
  %30 = and i8 %23, 64
  %31 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t, align 4
  %call.i.i = call zeroext i8 @_bin2bcd(i32 noundef %32) #11
  %conv15.i.i = or i8 %26, %call.i.i
  %33 = ptrtoint ptr %rtc_data to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv15.i.i, ptr %rtc_data, align 1
  %tm_min.i.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %34 = ptrtoint ptr %tm_min.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_min.i.i, align 4
  %call26.i.i = call zeroext i8 @_bin2bcd(i32 noundef %35) #11
  %conv33.i.i = or i8 %29, %call26.i.i
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv33.i.i, ptr %12, align 1
  %tm_hour.i.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %37 = ptrtoint ptr %tm_hour.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_hour.i.i, align 4
  %call44.i.i = call zeroext i8 @_bin2bcd(i32 noundef %38) #11
  %conv51.i.i = or i8 %30, %call44.i.i
  %39 = or i8 %conv51.i.i, -128
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %11, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %41 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday.i, align 4
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %42) #11
  %conv24.i = or i8 %15, %call.i
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv24.i, ptr %9, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %44 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_wday.i, align 4
  %call35.i = call zeroext i8 @_bin2bcd(i32 noundef %45) #11
  %conv42.i = or i8 %18, %call35.i
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv42.i, ptr %10, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_mon.i, align 4
  %add43.i = add i32 %48, 1
  %call57.i = call zeroext i8 @_bin2bcd(i32 noundef %add43.i) #11
  %conv64.i = or i8 %21, %call57.i
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv64.i, ptr %8, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %50 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %51, -100
  %call78.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call78.i, ptr %7, align 1
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %reg_time_start to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg_time_start, align 4
  %conv4 = zext i8 %56 to i32
  %call5 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef %conv4, ptr noundef nonnull %rtc_data, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.22, %entry.cleanup.sink.split_crit_edge ], [ @.str.25, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call5, %if.end.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.25.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rtc_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %a) #2 align 64 {
entry:
  %alm = alloca %struct.bd71828_rtc_alm, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %alm) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = call ptr @memset(ptr %alm, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %bd718xx_alm_block_start = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %bd718xx_alm_block_start to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bd718xx_alm_block_start, align 1
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %alm, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds %struct.bd71828_rtc_alm, ptr %alm, i32 0, i32 2
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2
  call fastcc void @rtc2tm(ptr noundef nonnull %alm, ptr noundef %time)
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tm_year, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 1
  %13 = and i8 %12, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6 = icmp ne i8 %13, 0
  %conv8 = zext i1 %tobool6 to i8
  %14 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %a, align 4
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 1
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %alm) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  %alm = alloca %struct.bd71828_rtc_alm, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %alm) #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = call ptr @memset(ptr %alm, i32 255, i32 16)
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %bd718xx_alm_block_start = getelementptr inbounds %struct.bd70528_rtc, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %bd718xx_alm_block_start to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bd718xx_alm_block_start, align 1
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %alm, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.bd71828_rtc_alm, ptr %alm, i32 0, i32 2
  %8 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %alm, i32 0, i32 4
  %9 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %alm, i32 0, i32 3
  %10 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %alm, i32 0, i32 2
  %11 = getelementptr inbounds %struct.bd70528_rtc_data, ptr %alm, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bd70528_rtc_day, ptr %alm, i32 0, i32 2
  %13 = getelementptr inbounds %struct.bd70528_rtc_day, ptr %alm, i32 0, i32 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %10, align 1
  %16 = and i8 %15, -64
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %11, align 1
  %19 = and i8 %18, -8
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %9, align 1
  %22 = and i8 %21, -32
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %12, align 1
  %25 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %alm, align 1
  %27 = and i8 %26, -128
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %13, align 1
  %30 = and i8 %29, -128
  %31 = and i8 %24, 64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2
  %32 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time, align 4
  %call.i.i = call zeroext i8 @_bin2bcd(i32 noundef %33) #11
  %conv15.i.i = or i8 %27, %call.i.i
  %34 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv15.i.i, ptr %alm, align 1
  %tm_min.i.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %tm_min.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_min.i.i, align 4
  %call26.i.i = call zeroext i8 @_bin2bcd(i32 noundef %36) #11
  %conv33.i.i = or i8 %30, %call26.i.i
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv33.i.i, ptr %13, align 1
  %tm_hour.i.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tm_hour.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour.i.i, align 4
  %call44.i.i = call zeroext i8 @_bin2bcd(i32 noundef %39) #11
  %conv51.i.i = or i8 %31, %call44.i.i
  %40 = or i8 %conv51.i.i, -128
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %12, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mday.i, align 4
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %43) #11
  %conv24.i = or i8 %16, %call.i
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv24.i, ptr %10, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_wday.i, align 4
  %call35.i = call zeroext i8 @_bin2bcd(i32 noundef %46) #11
  %conv42.i = or i8 %19, %call35.i
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv42.i, ptr %11, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_mon.i, align 4
  %add43.i = add i32 %49, 1
  %call57.i = call zeroext i8 @_bin2bcd(i32 noundef %add43.i) #11
  %conv64.i = or i8 %22, %call57.i
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv64.i, ptr %9, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %a, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %52, -100
  %call78.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %call78.i, ptr %8, align 1
  %54 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool2.not = icmp eq i8 %55, 0
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %7, align 1
  %58 = and i8 %57, -8
  %masksel = select i1 %tobool2.not, i8 0, i8 7
  %storemerge = or i8 %58, %masksel
  store i8 %storemerge, ptr %7, align 1
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %bd718xx_alm_block_start to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bd718xx_alm_block_start, align 1
  %conv12 = zext i8 %62 to i32
  %call13 = call i32 @regmap_bulk_write(ptr noundef %60, i32 noundef %conv12, ptr noundef nonnull %alm, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.27, %entry.cleanup.sink.split_crit_edge ], [ @.str.31, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call13, %if.end.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.31.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %alm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd71828_alm_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 7
  %regmap = getelementptr inbounds %struct.bd70528_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %bd718xx_alm_block_start = getelementptr inbounds %struct.bd70528_rtc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bd718xx_alm_block_start to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd718xx_alm_block_start, align 1
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 14
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 7, i32 noundef %spec.store.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %do.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rtc2tm(ptr nocapture noundef readonly %r, ptr nocapture noundef writeonly %t) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %r, align 1
  %2 = and i8 %1, 127
  %call = tail call i32 @_bcd2bin(i8 noundef zeroext %2) #11
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %t, align 4
  %min = getelementptr inbounds %struct.bd70528_rtc_day, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min, align 1
  %6 = and i8 %5, 127
  %call39 = tail call i32 @_bcd2bin(i8 noundef zeroext %6) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call39, ptr %tm_min, align 4
  %hour = getelementptr inbounds %struct.bd70528_rtc_day, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %hour to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hour, align 1
  %10 = and i8 %9, 63
  %call65 = tail call i32 @_bcd2bin(i8 noundef zeroext %10) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call65, ptr %tm_hour, align 4
  %12 = ptrtoint ptr %hour to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hour, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not = icmp sgt i8 %13, -1
  br i1 %tobool.not, label %if.then, label %entry.cond.end102_crit_edge

entry.cond.end102_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end102

if.then:                                          ; preds = %entry
  %rem = srem i32 %call65, 12
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rem, ptr %tm_hour, align 4
  %15 = ptrtoint ptr %hour to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hour, align 1
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool77.not = icmp eq i8 %17, 0
  br i1 %tobool77.not, label %if.then.cond.end102_crit_edge, label %if.then78

if.then.cond.end102_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end102

if.then78:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add80 = add nsw i32 %rem, 12
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add80, ptr %tm_hour, align 4
  br label %cond.end102

cond.end102:                                      ; preds = %if.then78, %if.then.cond.end102_crit_edge, %entry.cond.end102_crit_edge
  %day = getelementptr inbounds %struct.bd70528_rtc_data, ptr %r, i32 0, i32 2
  %19 = ptrtoint ptr %day to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %day, align 1
  %21 = and i8 %20, 63
  %call101 = tail call i32 @_bcd2bin(i8 noundef zeroext %21) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call101, ptr %tm_mday, align 4
  %month = getelementptr inbounds %struct.bd70528_rtc_data, ptr %r, i32 0, i32 3
  %23 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %month, align 1
  %25 = and i8 %24, 31
  %call123 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #11
  %sub = add i32 %call123, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %year = getelementptr inbounds %struct.bd70528_rtc_data, ptr %r, i32 0, i32 4
  %27 = ptrtoint ptr %year to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %year, align 1
  %call145 = tail call i32 @_bcd2bin(i8 noundef zeroext %28) #11
  %add148 = add i32 %call145, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add148, ptr %tm_year, align 4
  %week = getelementptr inbounds %struct.bd70528_rtc_data, ptr %r, i32 0, i32 1
  %30 = ptrtoint ptr %week to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %week, align 1
  %32 = and i8 %31, 7
  %call168 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #11
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %33 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call168, ptr %tm_wday, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_rtc_bd70528__288_355_bd70528_rtc_init6, !1, !"__initcall__kmod_rtc_bd70528__288_355_bd70528_rtc_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-bd70528.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_bd70528_rtc_exit, !1, !"__exitcall_bd70528_rtc_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-bd70528.c", i32 357, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-bd70528.c", i32 358, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-bd70528.c", i32 359, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-bd70528.c", i32 360, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-bd70528.c", i32 349, i32 11}
!14 = !{ptr @bd70528_rtc, !15, !"bd70528_rtc", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-bd70528.c", i32 347, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-bd70528.c", i32 253, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bd70528_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bd70528_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-bd70528.c", i32 262, i32 14}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-bd70528.c", i32 279, i32 14}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-bd70528.c", i32 285, i32 3}
!30 = !{ptr @bd70528_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bd70528_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-bd70528.c", i32 299, i32 3}
!34 = !{ptr @bd70528_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd70528_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-bd70528.c", i32 312, i32 4}
!38 = !{ptr @bd70528_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bd70528_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-bd70528.c", i32 323, i32 3}
!42 = !{ptr @bd70528_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bd70528_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bd71828_rtc_ops, !45, !"bd71828_rtc_ops", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-bd70528.c", i32 219, i32 35}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-bd70528.c", i32 192, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bd70528_get_time._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @bd70528_get_time._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-bd70528.c", i32 169, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bd71828_set_time._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bd71828_set_time._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-bd70528.c", i32 177, i32 3}
!58 = !{ptr @bd71828_set_time._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bd71828_set_time._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-bd70528.c", i32 146, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bd71828_read_alarm._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bd71828_read_alarm._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-bd70528.c", i32 117, i32 3}
!67 = !{ptr @bd71828_set_alarm._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @bd71828_set_alarm._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-bd70528.c", i32 131, i32 3}
!71 = !{ptr @bd71828_set_alarm._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @bd71828_set_alarm._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-bd70528.c", i32 214, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @bd71828_alm_enable._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @bd71828_alm_enable._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @bd718x7_rtc_id, !79, !"bd718x7_rtc_id", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-bd70528.c", i32 340, i32 40}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
