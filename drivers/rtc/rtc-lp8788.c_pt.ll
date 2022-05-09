; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-lp8788.c_pt.bc'
source_filename = "../drivers/rtc/rtc-lp8788.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_rtc = type { ptr, ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_lp8788__227_317_lp8788_rtc_driver_init6 = internal global ptr @lp8788_rtc_driver_init, section ".initcall6.init", align 4
@lp8788_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_rtc_driver_exit = internal global ptr @lp8788_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [59 x i8] c"rtc_lp8788.description=Texas Instruments LP8788 RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [27 x i8] c"rtc_lp8788.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_lp8788.file=drivers/rtc/rtc-lp8788\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_lp8788.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_lp8788.alias=platform:lp8788-rtc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp8788-rtc\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lp8788_rtc\00", [21 x i8] zeroinitializer }, align 32
@lp8788_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @lp8788_rtc_read_time, ptr @lp8788_rtc_set_time, ptr @lp8788_read_alarm, ptr @lp8788_set_alarm, ptr null, ptr @lp8788_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@lp8788_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can not register rtc device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8788_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-lp8788.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_rtc_probe._entry_ptr = internal global ptr @lp8788_rtc_probe._entry, section ".printk_index", align 4
@lp8788_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 306, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no rtc irq handler\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lp8788_rtc_probe._entry_ptr.10 = internal global ptr @lp8788_rtc_probe._entry.7, section ".printk_index", align 4
@lp8788_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid year: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lp8788_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@lp8788_rtc_set_time._entry_ptr = internal global ptr @lp8788_rtc_set_time._entry, section ".printk_index", align 4
@addr_alarm_sec = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"w~", [30 x i8] zeroinitializer }, align 32
@lp8788_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.13, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8788_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@lp8788_set_alarm._entry_ptr = internal global ptr @lp8788_set_alarm._entry, section ".printk_index", align 4
@addr_alarm_en = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"}\84", [30 x i8] zeroinitializer }, align 32
@mask_alarm_en = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\04", [30 x i8] zeroinitializer }, align 32
@shift_alarm_en = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\02", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALARM_IRQ\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"lp8788_rtc_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 311, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 314, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 298, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"lp8788_rtc_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 239, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 301, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 306, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 142, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"addr_alarm_sec\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 62, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 198, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"addr_alarm_en\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 67, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"mask_alarm_en\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 72, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"shift_alarm_en\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 77, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [28 x i8] c"../drivers/rtc/rtc-lp8788.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 266, i32 57 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_lp8788_rtc_driver_exit, ptr @__initcall__kmod_rtc_lp8788__227_317_lp8788_rtc_driver_init6, ptr @lp8788_rtc_driver_exit, ptr @lp8788_rtc_probe._entry, ptr @lp8788_rtc_probe._entry.7, ptr @lp8788_rtc_probe._entry_ptr, ptr @lp8788_rtc_probe._entry_ptr.10, ptr @lp8788_rtc_set_time._entry, ptr @lp8788_rtc_set_time._entry_ptr, ptr @lp8788_set_alarm._entry, ptr @lp8788_set_alarm._entry_ptr, ptr @lp8788_rtc_driver, ptr @.str, ptr @.str.1, ptr @lp8788_rtc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @addr_alarm_sec, ptr @.str.13, ptr @addr_alarm_en, ptr @mask_alarm_en, ptr @shift_alarm_en, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_alarm_sec to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_alarm_en to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_alarm_en to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift_alarm_en to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %alarm_sel = getelementptr inbounds %struct.lp8788_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alarm_sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alarm_sel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %alarm = getelementptr inbounds %struct.lp8788_rtc, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %alarm, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %call8 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @lp8788_rtc_ops, ptr noundef null) #5
  %rdev = getelementptr inbounds %struct.lp8788_rtc, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %rdev, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %irqdm2.i = getelementptr inbounds %struct.lp8788, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %irqdm2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irqdm2.i, align 4
  %irq3.i = getelementptr inbounds %struct.lp8788_rtc, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %irq3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irq3.i, align 4
  %call.i41 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.14) #5
  %tobool.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %lp8788_alarm_irq_register.exit

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp8788_alarm_irq_register.exit:                   ; preds = %if.end14
  %20 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i42 = icmp eq i32 %21, 0
  %end.i = getelementptr inbounds %struct.resource, ptr %call.i41, i32 0, i32 1
  %irq.0.in.i = select i1 %cmp.i42, ptr %call.i41, ptr %end.i
  %22 = ptrtoint ptr %irq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %irq.0.i = load i32, ptr %irq.0.in.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %18, i32 noundef %irq.0.i, ptr noundef null) #5
  %23 = ptrtoint ptr %irq3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %irq3.i, align 4
  %call9.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @lp8788_alarm_irq_handler, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool16.not = icmp eq i32 %call9.i, 0
  br i1 %tobool16.not, label %lp8788_alarm_irq_register.exit.cleanup_crit_edge, label %do.end20

lp8788_alarm_irq_register.exit.cleanup_crit_edge: ; preds = %lp8788_alarm_irq_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %lp8788_alarm_irq_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %lp8788_alarm_irq_register.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end20 ], [ 0, %lp8788_alarm_irq_register.exit.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #5
  %4 = call ptr @memset(ptr %data, i32 255, i32 7)
  %call.i = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 100, i8 noundef zeroext 1) #5
  %call1.i = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 100, i8 noundef zeroext 2) #5
  %call2 = call i32 @lp8788_read_multi_bytes(ptr noundef %3, i8 noundef zeroext 112, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %10 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %tm, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %10, align 1
  %conv4 = zext i8 %15 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv4, ptr %tm_min, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %9, align 1
  %conv6 = zext i8 %18 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv6, ptr %tm_hour, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %8, align 1
  %conv8 = zext i8 %21 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv8, ptr %tm_mday, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %conv10 = zext i8 %24 to i32
  %sub = add nsw i32 %conv10, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %tm_mon, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %conv12 = zext i8 %27 to i32
  %sub13 = add nuw nsw i32 %conv12, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub13, ptr %tm_year, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %conv.i = zext i8 %30 to i32
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %for.cond.i.1 [
    i8 0, label %if.end._to_tm_wday.exit_crit_edge
    i8 1, label %if.end._to_tm_wday.exit.loopexit_crit_edge
  ]

if.end._to_tm_wday.exit.loopexit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

if.end._to_tm_wday.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit

for.cond.i.1:                                     ; preds = %if.end
  %shr.i.1.mask = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.1.mask)
  %cmp5.i.1 = icmp eq i32 %shr.i.1.mask, 2
  br i1 %cmp5.i.1, label %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.2

for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %shr.i.2.mask = and i32 %conv.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i.2.mask)
  %cmp5.i.2 = icmp eq i32 %shr.i.2.mask, 4
  br i1 %cmp5.i.2, label %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.3

for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %shr.i.3.mask = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr.i.3.mask)
  %cmp5.i.3 = icmp eq i32 %shr.i.3.mask, 8
  br i1 %cmp5.i.3, label %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.4

for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %shr.i.4.mask = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr.i.4.mask)
  %cmp5.i.4 = icmp eq i32 %shr.i.4.mask, 16
  br i1 %cmp5.i.4, label %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.5

for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %shr.i.5.mask = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i.5.mask)
  %cmp5.i.5 = icmp eq i32 %shr.i.5.mask, 32
  br i1 %cmp5.i.5, label %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.6

for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.6:                                     ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.6.mask = and i32 %conv.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr.i.6.mask)
  %cmp5.i.6 = icmp eq i32 %shr.i.6.mask, 64
  %spec.select = select i1 %cmp5.i.6, i32 7, i32 8
  br label %_to_tm_wday.exit.loopexit

_to_tm_wday.exit.loopexit:                        ; preds = %for.cond.i.6, %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge, %if.end._to_tm_wday.exit.loopexit_crit_edge
  %inc.i.lcssa = phi i32 [ 2, %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge ], [ 3, %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge ], [ 4, %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge ], [ 5, %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge ], [ 6, %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge ], [ 1, %if.end._to_tm_wday.exit.loopexit_crit_edge ], [ %spec.select, %for.cond.i.6 ]
  br label %_to_tm_wday.exit

_to_tm_wday.exit:                                 ; preds = %_to_tm_wday.exit.loopexit, %if.end._to_tm_wday.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end._to_tm_wday.exit_crit_edge ], [ %inc.i.lcssa, %_to_tm_wday.exit.loopexit ]
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i, ptr %tm_wday, align 4
  br label %cleanup

cleanup:                                          ; preds = %_to_tm_wday.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_to_tm_wday.exit ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %sub = add i32 %5, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %sub) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %conv = trunc i32 %9 to i8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %conv5 = trunc i32 %13 to i8
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %conv7 = trunc i32 %15 to i8
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %18 = trunc i32 %17 to i8
  %conv10 = add i8 %18, 1
  %conv12 = trunc i32 %sub to i8
  %call19 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 112, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %conv3 = trunc i32 %11 to i8
  %call19.1 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 113, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call19.2 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 114, i8 noundef zeroext %conv5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call19.3 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 115, i8 noundef zeroext %conv7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %tobool.not.3 = icmp eq i32 %call19.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call19.4 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 116, i8 noundef zeroext %conv10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4)
  %tobool.not.4 = icmp eq i32 %call19.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  %call19.5 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext 117, i8 noundef zeroext %conv12) #5
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %if.end.cleanup_crit_edge ], [ %call19.1, %for.cond.cleanup_crit_edge ], [ %call19.2, %for.cond.1.cleanup_crit_edge ], [ %call19.3, %for.cond.2.cleanup_crit_edge ], [ %call19.4, %for.cond.3.cleanup_crit_edge ], [ %call19.5, %for.cond.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #5
  %alarm2 = getelementptr inbounds %struct.lp8788_rtc, ptr %1, i32 0, i32 2
  %4 = call ptr @memset(ptr %data, i32 255, i32 7)
  %5 = ptrtoint ptr %alarm2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm2, align 4
  %arrayidx = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call3 = call i32 @lp8788_read_multi_bytes(ptr noundef %3, i8 noundef zeroext %8, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %10 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %11 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %12 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %13 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %14 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %time, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %14, align 1
  %conv6 = zext i8 %19 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv6, ptr %tm_min, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %13, align 1
  %conv8 = zext i8 %22 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv8, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %12, align 1
  %conv10 = zext i8 %25 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv10, ptr %tm_mday, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %11, align 1
  %conv12 = zext i8 %28 to i32
  %sub = add nsw i32 %conv12, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %tm_mon, align 4
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %10, align 1
  %conv14 = zext i8 %31 to i32
  %sub15 = add nuw nsw i32 %conv14, 100
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub15, ptr %tm_year, align 4
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %9, align 1
  %conv.i = zext i8 %34 to i32
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %34, label %for.cond.i.1 [
    i8 0, label %if.end._to_tm_wday.exit_crit_edge
    i8 1, label %if.end._to_tm_wday.exit.loopexit_crit_edge
  ]

if.end._to_tm_wday.exit.loopexit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

if.end._to_tm_wday.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit

for.cond.i.1:                                     ; preds = %if.end
  %shr.i.1.mask = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.1.mask)
  %cmp5.i.1 = icmp eq i32 %shr.i.1.mask, 2
  br i1 %cmp5.i.1, label %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.2

for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %shr.i.2.mask = and i32 %conv.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr.i.2.mask)
  %cmp5.i.2 = icmp eq i32 %shr.i.2.mask, 4
  br i1 %cmp5.i.2, label %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.3

for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %shr.i.3.mask = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr.i.3.mask)
  %cmp5.i.3 = icmp eq i32 %shr.i.3.mask, 8
  br i1 %cmp5.i.3, label %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.4

for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %shr.i.4.mask = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %shr.i.4.mask)
  %cmp5.i.4 = icmp eq i32 %shr.i.4.mask, 16
  br i1 %cmp5.i.4, label %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.5

for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %shr.i.5.mask = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr.i.5.mask)
  %cmp5.i.5 = icmp eq i32 %shr.i.5.mask, 32
  br i1 %cmp5.i.5, label %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge, label %for.cond.i.6

for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge: ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %_to_tm_wday.exit.loopexit

for.cond.i.6:                                     ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.6.mask = and i32 %conv.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr.i.6.mask)
  %cmp5.i.6 = icmp eq i32 %shr.i.6.mask, 64
  %spec.select = select i1 %cmp5.i.6, i32 7, i32 8
  br label %_to_tm_wday.exit.loopexit

_to_tm_wday.exit.loopexit:                        ; preds = %for.cond.i.6, %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge, %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge, %if.end._to_tm_wday.exit.loopexit_crit_edge
  %inc.i.lcssa = phi i32 [ 2, %for.cond.i.1._to_tm_wday.exit.loopexit_crit_edge ], [ 3, %for.cond.i.2._to_tm_wday.exit.loopexit_crit_edge ], [ 4, %for.cond.i.3._to_tm_wday.exit.loopexit_crit_edge ], [ 5, %for.cond.i.4._to_tm_wday.exit.loopexit_crit_edge ], [ 6, %for.cond.i.5._to_tm_wday.exit.loopexit_crit_edge ], [ 1, %if.end._to_tm_wday.exit.loopexit_crit_edge ], [ %spec.select, %for.cond.i.6 ]
  br label %_to_tm_wday.exit

_to_tm_wday.exit:                                 ; preds = %_to_tm_wday.exit.loopexit, %if.end._to_tm_wday.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end._to_tm_wday.exit_crit_edge ], [ %inc.i.lcssa, %_to_tm_wday.exit.loopexit ]
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %tm_wday, align 4
  %37 = and i8 %34, -128
  %38 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %alarm, align 4
  br label %cleanup

cleanup:                                          ; preds = %_to_tm_wday.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %_to_tm_wday.exit ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %sub = add i32 %5, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef %sub) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  %conv = trunc i32 %9 to i8
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %conv5 = trunc i32 %13 to i8
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mday, align 4
  %conv7 = trunc i32 %15 to i8
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon, align 4
  %18 = trunc i32 %17 to i8
  %conv10 = add i8 %18, 1
  %conv12 = trunc i32 %sub to i8
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday, align 4
  %sub.i = add i32 %20, -1
  %shl.i = shl nuw i32 1, %sub.i
  %conv15 = trunc i32 %shl.i to i8
  %alarm19 = getelementptr inbounds %struct.lp8788_rtc, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alarm19, align 4
  %arrayidx20 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20, align 1
  %call25 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %24, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %conv3 = trunc i32 %11 to i8
  %25 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %alarm19, align 4
  %arrayidx20.1 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx20.1, align 1
  %conv23.1 = add i8 %28, 1
  %call25.1 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.1, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %29 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alarm19, align 4
  %arrayidx20.2 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx20.2, align 1
  %conv23.2 = add i8 %32, 2
  %call25.2 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.2, i8 noundef zeroext %conv5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %tobool.not.2 = icmp eq i32 %call25.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %33 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alarm19, align 4
  %arrayidx20.3 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx20.3, align 1
  %conv23.3 = add i8 %36, 3
  %call25.3 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.3, i8 noundef zeroext %conv7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %tobool.not.3 = icmp eq i32 %call25.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %37 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %alarm19, align 4
  %arrayidx20.4 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20.4, align 1
  %conv23.4 = add i8 %40, 4
  %call25.4 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.4, i8 noundef zeroext %conv10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4)
  %tobool.not.4 = icmp eq i32 %call25.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %41 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %alarm19, align 4
  %arrayidx20.5 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx20.5, align 1
  %conv23.5 = add i8 %44, 5
  %call25.5 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.5, i8 noundef zeroext %conv12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.5)
  %tobool.not.5 = icmp eq i32 %call25.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %45 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %alarm19, align 4
  %arrayidx20.6 = getelementptr [2 x i8], ptr @addr_alarm_sec, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx20.6, align 1
  %conv23.6 = add i8 %48, 6
  %call25.6 = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %conv23.6, i8 noundef zeroext %conv15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.6)
  %tobool.not.6 = icmp eq i32 %call25.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %alarm, align 4
  %50 = ptrtoint ptr %alarm19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %alarm19, align 4
  %arrayidx29 = getelementptr [2 x i8], ptr @addr_alarm_en, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx29, align 1
  %call33 = tail call i32 @lp8788_update_bits(ptr noundef %3, i8 noundef zeroext %53, i8 noundef zeroext -128, i8 noundef zeroext -128) #5
  br label %cleanup

cleanup:                                          ; preds = %for.cond.6, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %for.cond.6 ], [ %call25, %if.end.cleanup_crit_edge ], [ %call25.1, %for.cond.cleanup_crit_edge ], [ %call25.2, %for.cond.1.cleanup_crit_edge ], [ %call25.3, %for.cond.2.cleanup_crit_edge ], [ %call25.4, %for.cond.3.cleanup_crit_edge ], [ %call25.5, %for.cond.4.cleanup_crit_edge ], [ %call25.6, %for.cond.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.lp8788_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %alarm = getelementptr inbounds %struct.lp8788_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %alarm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alarm, align 4
  %arrayidx = getelementptr [2 x i8], ptr @mask_alarm_en, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr [2 x i8], ptr @shift_alarm_en, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 %enable, %conv
  %conv4 = trunc i32 %shl to i8
  %call5 = tail call i32 @lp8788_update_bits(ptr noundef %5, i8 noundef zeroext 5, i8 noundef zeroext %9, i8 noundef zeroext %conv4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_multi_bytes(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_alarm_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr inbounds %struct.lp8788_rtc, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_rtc_lp8788__227_317_lp8788_rtc_driver_init6, !1, !"__initcall__kmod_rtc_lp8788__227_317_lp8788_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-lp8788.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_lp8788_rtc_driver_exit, !1, !"__exitcall_lp8788_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-lp8788.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-lp8788.c", i32 320, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-lp8788.c", i32 321, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-lp8788.c", i32 322, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-lp8788.c", i32 314, i32 11}
!14 = !{ptr @lp8788_rtc_driver, !15, !"lp8788_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-lp8788.c", i32 311, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-lp8788.c", i32 298, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-lp8788.c", i32 301, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lp8788_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lp8788_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-lp8788.c", i32 306, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lp8788_rtc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @lp8788_rtc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lp8788_rtc_ops, !32, !"lp8788_rtc_ops", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-lp8788.c", i32 239, i32 35}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-lp8788.c", i32 142, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lp8788_rtc_set_time._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lp8788_rtc_set_time._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @addr_alarm_sec, !39, !"addr_alarm_sec", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-lp8788.c", i32 62, i32 17}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-lp8788.c", i32 198, i32 3}
!42 = !{ptr @lp8788_set_alarm._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lp8788_set_alarm._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @addr_alarm_en, !45, !"addr_alarm_en", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-lp8788.c", i32 67, i32 17}
!46 = !{ptr @mask_alarm_en, !47, !"mask_alarm_en", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-lp8788.c", i32 72, i32 17}
!48 = !{ptr @shift_alarm_en, !49, !"shift_alarm_en", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-lp8788.c", i32 77, i32 17}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-lp8788.c", i32 266, i32 57}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
