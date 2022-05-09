; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-tps6586x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-tps6586x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps6586x_rtc = type { ptr, ptr, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_tps6586x__228_322_tps6586x_rtc_driver_init6 = internal global ptr @tps6586x_rtc_driver_init, section ".initcall6.init", align 4
@tps6586x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps6586x_rtc_probe, ptr @tps6586x_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps6586x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps6586x_rtc_driver_exit = internal global ptr @tps6586x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [41 x i8] c"rtc_tps6586x.alias=platform:tps6586x-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [48 x i8] c"rtc_tps6586x.description=TI TPS6586x RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [59 x i8] c"rtc_tps6586x.author=Laxman dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [43 x i8] c"rtc_tps6586x.file=drivers/rtc/rtc-tps6586x\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"rtc_tps6586x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps6586x-rtc\00", [19 x i8] zeroinitializer }, align 32
@tps6586x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tps6586x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to start counter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps6586x_rtc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-tps6586x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps6586x_rtc_probe._entry_ptr = internal global ptr @tps6586x_rtc_probe._entry, section ".printk_index", align 4
@tps6586x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @tps6586x_rtc_read_time, ptr @tps6586x_rtc_set_time, ptr @tps6586x_rtc_read_alarm, ptr @tps6586x_rtc_set_alarm, ptr null, ptr @tps6586x_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tps6586x_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request IRQ(%d) failed with ret %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tps6586x_rtc_probe._entry_ptr.8 = internal global ptr @tps6586x_rtc_probe._entry.6, section ".printk_index", align 4
@tps6586x_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 67, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read counter failed with err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps6586x_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@tps6586x_rtc_read_time._entry_ptr = internal global ptr @tps6586x_rtc_read_time._entry, section ".printk_index", align 4
@tps6586x_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to clear RTC_ENABLE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tps6586x_rtc_set_time\00", [42 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_time._entry_ptr = internal global ptr @tps6586x_rtc_set_time._entry, section ".printk_index", align 4
@tps6586x_rtc_set_time._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to program new time\0A\00", [36 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_time._entry_ptr.15 = internal global ptr @tps6586x_rtc_set_time._entry.13, section ".printk_index", align 4
@tps6586x_rtc_set_time._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set RTC_ENABLE\0A\00", [38 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_time._entry_ptr.18 = internal global ptr @tps6586x_rtc_set_time._entry.16, section ".printk_index", align 4
@tps6586x_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"read RTC_ALARM1_HI failed with err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps6586x_rtc_read_alarm\00", [40 x i8] zeroinitializer }, align 32
@tps6586x_rtc_read_alarm._entry_ptr = internal global ptr @tps6586x_rtc_read_alarm._entry, section ".printk_index", align 4
@tps6586x_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't set alarm irq, err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps6586x_rtc_set_alarm\00", [41 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_alarm._entry_ptr = internal global ptr @tps6586x_rtc_set_alarm._entry, section ".printk_index", align 4
@tps6586x_rtc_set_alarm._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.22, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_alarm._entry_ptr.24 = internal global ptr @tps6586x_rtc_set_alarm._entry.23, section ".printk_index", align 4
@tps6586x_rtc_set_alarm._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"programming alarm failed with err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tps6586x_rtc_set_alarm._entry_ptr.27 = internal global ptr @tps6586x_rtc_set_alarm._entry.25, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"tps6586x_rtc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 314, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 316, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"tps6586x_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 311, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 240, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"tps6586x_rtc_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 205, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 265, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 67, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 102, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 108, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 115, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 194, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 152, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 159, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [30 x i8] c"../drivers/rtc/rtc-tps6586x.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 179, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_tps6586x_rtc_driver_exit, ptr @__initcall__kmod_rtc_tps6586x__228_322_tps6586x_rtc_driver_init6, ptr @tps6586x_rtc_driver_exit, ptr @tps6586x_rtc_probe._entry, ptr @tps6586x_rtc_probe._entry.6, ptr @tps6586x_rtc_probe._entry_ptr, ptr @tps6586x_rtc_probe._entry_ptr.8, ptr @tps6586x_rtc_read_alarm._entry, ptr @tps6586x_rtc_read_alarm._entry_ptr, ptr @tps6586x_rtc_read_time._entry, ptr @tps6586x_rtc_read_time._entry_ptr, ptr @tps6586x_rtc_set_alarm._entry, ptr @tps6586x_rtc_set_alarm._entry.23, ptr @tps6586x_rtc_set_alarm._entry.25, ptr @tps6586x_rtc_set_alarm._entry_ptr, ptr @tps6586x_rtc_set_alarm._entry_ptr.24, ptr @tps6586x_rtc_set_alarm._entry_ptr.27, ptr @tps6586x_rtc_set_time._entry, ptr @tps6586x_rtc_set_time._entry.13, ptr @tps6586x_rtc_set_time._entry.16, ptr @tps6586x_rtc_set_time._entry_ptr, ptr @tps6586x_rtc_set_time._entry_ptr.15, ptr @tps6586x_rtc_set_time._entry_ptr.18, ptr @tps6586x_rtc_driver, ptr @.str, ptr @tps6586x_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tps6586x_rtc_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_time._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_time._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_alarm._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rtc_set_alarm._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6586x_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps6586x_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6586x_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.tps6586x_rtc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5, ptr %irq, align 4
  %call6 = tail call i32 @tps6586x_update(ptr noundef %1, i32 noundef 192, i8 noundef zeroext 96, i8 noundef zeroext 110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %rtc14 = getelementptr inbounds %struct.tps6586x_rtc, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %rtc14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %rtc14, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call13 to i32
  br label %fail_rtc_register

if.end20:                                         ; preds = %if.end9
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call13, i32 0, i32 3
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tps6586x_rtc_ops, ptr %ops, align 8
  %8 = ptrtoint ptr %rtc14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc14, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1073741823, ptr %range_max, align 8
  %call23 = tail call i64 @mktime64(i32 noundef 2009, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %11 = ptrtoint ptr %rtc14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc14, align 4
  %start_secs = getelementptr inbounds %struct.rtc_device, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %start_secs to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call23, ptr %start_secs, align 8
  %14 = load ptr, ptr %rtc14, align 4
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %set_start_time to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %set_start_time, align 8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %17, i32 noundef 0, i32 noundef 4096) #5
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %if.end20.dev_name.exit_crit_edge ]
  %call31 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef null, ptr noundef nonnull @tps6586x_rtc_irq, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end39

do.end36:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %25, i32 noundef %call31) #8
  br label %fail_rtc_register

if.end39:                                         ; preds = %dev_name.exit
  %26 = ptrtoint ptr %rtc14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc14, align 4
  %call41 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.end39.fail_rtc_register_crit_edge

if.end39.fail_rtc_register_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_rtc_register

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail_rtc_register:                                ; preds = %if.end39.fail_rtc_register_crit_edge, %do.end36, %if.then17
  %ret.0 = phi i32 [ %6, %if.then17 ], [ %call31, %do.end36 ], [ %call41, %if.end39.fail_rtc_register_crit_edge ]
  %call45 = tail call i32 @tps6586x_update(ptr noundef %1, i32 noundef 192, i8 noundef zeroext 0, i8 noundef zeroext 110) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_rtc_register, %if.end39.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %ret.0, %fail_rtc_register ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call1 = tail call i32 @tps6586x_update(ptr noundef %1, i32 noundef 192, i8 noundef zeroext 0, i8 noundef zeroext 110) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_update(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc1 = getelementptr inbounds %struct.tps6586x_rtc, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc1, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buff = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buff) #5
  %2 = call ptr @memset(ptr %buff, i32 255, i32 6)
  %call1 = call i32 @tps6586x_reads(ptr noundef %1, i32 noundef 197, i32 noundef 6, ptr noundef nonnull %buff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv = zext i8 %8 to i64
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %5, align 1
  %conv.1 = zext i8 %10 to i64
  %11 = shl nuw nsw i64 %conv, 16
  %12 = shl nuw nsw i64 %conv.1, 8
  %shl.2 = or i64 %11, %12
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %4, align 1
  %conv.2 = zext i8 %14 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %conv.3 = zext i8 %16 to i64
  %17 = shl nuw nsw i64 %or.2, 16
  %18 = shl nuw nsw i64 %conv.3, 8
  %shl.4 = or i64 %17, %18
  %shr = lshr i64 %shl.4, 10
  call void @rtc_time64_to_tm(i64 noundef %shr, ptr noundef %tm) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.preheader
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buff) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_set_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buff = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buff) #5
  %2 = getelementptr inbounds [5 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buff, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buff, i32 0, i32 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %shl = shl i64 %call1, 10
  %shr = lshr i64 %shl, 32
  %conv = trunc i64 %shr to i8
  %6 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buff, align 1
  %shr2 = lshr i64 %shl, 24
  %conv4 = trunc i64 %shr2 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %2, align 1
  %shr6 = lshr i64 %shl, 16
  %conv8 = trunc i64 %shr6 to i8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %3, align 1
  %shr10 = lshr exact i64 %shl, 8
  %conv12 = trunc i64 %shr10 to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12, ptr %4, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %5, align 1
  %call17 = tail call i32 @tps6586x_clr_bits(ptr noundef %1, i32 noundef 192, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call19 = call i32 @tps6586x_writes(ptr noundef %1, i32 noundef 198, i32 noundef 5, ptr noundef nonnull %buff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call27 = call i32 @tps6586x_set_bits(ptr noundef %1, i32 noundef 192, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end26.cleanup_crit_edge, %do.end25, %do.end
  %retval.0 = phi i32 [ %call17, %do.end ], [ %call19, %do.end25 ], [ %call27, %do.end33 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buff) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buff = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff) #5
  %2 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buff, align 1, !annotation !76
  %3 = getelementptr inbounds [3 x i8], ptr %buff, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !76
  %5 = getelementptr inbounds [3 x i8], ptr %buff, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !76
  %call1 = call i32 @tps6586x_reads(ptr noundef %1, i32 noundef 193, i32 noundef 3, ptr noundef nonnull %buff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buff, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv3 = zext i8 %10 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %shr = lshr i32 %or, 10
  %conv8 = zext i32 %shr to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv8, ptr noundef %time) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_set_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buff = alloca [3 x i8], align 1
  %rbuff = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buff) #5
  %2 = getelementptr inbounds [3 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buff, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rbuff) #5
  %4 = getelementptr inbounds [6 x i8], ptr %rbuff, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %rbuff, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %rbuff, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %rbuff, i32 0, i32 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %8 = call ptr @memset(ptr %rbuff, i32 255, i32 6)
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #5
  %9 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %alrm, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %irq_en5.i = getelementptr inbounds %struct.tps6586x_rtc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %irq_en5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_en5.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true4.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge

land.lhs.true.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_rtc_alarm_irq_enable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq.i = getelementptr inbounds %struct.tps6586x_rtc, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %16) #5
  br label %if.end10.sink.split.i

land.lhs.true4.critedge.i:                        ; preds = %entry
  br i1 %tobool6.not.i, label %land.lhs.true4.critedge.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge, label %if.then7.i

land.lhs.true4.critedge.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge: ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_rtc_alarm_irq_enable.exit

if.then7.i:                                       ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq8.i = getelementptr inbounds %struct.tps6586x_rtc, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %irq8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq8.i, align 4
  tail call void @disable_irq(i32 noundef %18) #5
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.then7.i, %if.then.i
  %.sink.i = phi i8 [ 0, %if.then7.i ], [ 1, %if.then.i ]
  %19 = ptrtoint ptr %irq_en5.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink.i, ptr %irq_en5.i, align 4
  br label %tps6586x_rtc_alarm_irq_enable.exit

tps6586x_rtc_alarm_irq_enable.exit:               ; preds = %if.end10.sink.split.i, %land.lhs.true4.critedge.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge, %land.lhs.true.i.tps6586x_rtc_alarm_irq_enable.exit_crit_edge
  %call4 = call i32 @tps6586x_reads(ptr noundef %1, i32 noundef 197, i32 noundef 6, ptr noundef nonnull %rbuff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end10, label %for.body.preheader

for.body.preheader:                               ; preds = %tps6586x_rtc_alarm_irq_enable.exit
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv14 = zext i8 %21 to i64
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %conv14.1 = zext i8 %23 to i64
  %24 = shl nuw nsw i64 %conv14, 16
  %25 = shl nuw nsw i64 %conv14.1, 8
  %shl.2 = or i64 %24, %25
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %conv14.2 = zext i8 %27 to i64
  %or.2 = or i64 %shl.2, %conv14.2
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %conv14.3 = zext i8 %29 to i64
  %30 = shl nuw nsw i64 %or.2, 16
  %31 = shl nuw nsw i64 %conv14.3, 8
  %shl.4 = or i64 %30, %31
  %shr = lshr i64 %shl.4, 10
  %conv16 = and i64 %shr, 4294967295
  %sub = sub i64 %call1, %conv16
  call void @__sanitizer_cov_trace_const_cmp8(i64 16383, i64 %sub)
  %cmp17 = icmp sgt i64 %sub, 16383
  %extract.t72 = trunc i64 %call1 to i32
  %conv15 = trunc i64 %shr to i32
  %sub20 = add i32 %conv15, 4194303
  %seconds.0.off0 = select i1 %cmp17, i32 %sub20, i32 %extract.t72
  %conv24 = shl i32 %seconds.0.off0, 10
  %shr25 = lshr i32 %conv24, 16
  %conv26 = trunc i32 %shr25 to i8
  %32 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv26, ptr %buff, align 1
  %shr28 = lshr exact i32 %conv24, 8
  %conv30 = trunc i32 %shr28 to i8
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv30, ptr %2, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %3, align 1
  %call36 = call i32 @tps6586x_writes(ptr noundef %1, i32 noundef 193, i32 noundef 3, ptr noundef nonnull %buff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %for.body.preheader.cleanup_crit_edge, label %do.end40

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end10:                                         ; preds = %tps6586x_rtc_alarm_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call4) #8
  br label %cleanup

do.end40:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end10, %for.body.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end10 ], [ %call36, %do.end40 ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rbuff) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buff) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irq_en5 = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_en5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_en5, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  br label %if.end10.sink.split

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %tobool6.not, label %land.lhs.true4.critedge.if.end10_crit_edge, label %if.then7

land.lhs.true4.critedge.if.end10_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %irq8 = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq8, align 4
  tail call void @disable_irq(i32 noundef %7) #5
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %if.then
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.then ]
  %8 = ptrtoint ptr %irq_en5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %irq_en5, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %land.lhs.true4.critedge.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_reads(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_writes(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_rtc_tps6586x__228_322_tps6586x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_tps6586x__228_322_tps6586x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 322, i32 1}
!2 = !{ptr @__exitcall_tps6586x_rtc_driver_exit, !1, !"__exitcall_tps6586x_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias229, !4, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 324, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 325, i32 1}
!7 = !{ptr @__UNIQUE_ID_author231, !8, !"__UNIQUE_ID_author231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 326, i32 1}
!9 = !{ptr @__UNIQUE_ID_file232, !10, !"__UNIQUE_ID_file232", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 327, i32 1}
!11 = !{ptr @__UNIQUE_ID_license233, !10, !"__UNIQUE_ID_license233", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 316, i32 11}
!14 = !{ptr @tps6586x_rtc_driver, !15, !"tps6586x_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 314, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 240, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps6586x_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tps6586x_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 265, i32 3}
!26 = !{ptr @tps6586x_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tps6586x_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tps6586x_rtc_ops, !29, !"tps6586x_rtc_ops", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 205, i32 35}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 67, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tps6586x_rtc_read_time._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tps6586x_rtc_read_time._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 102, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tps6586x_rtc_set_time._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tps6586x_rtc_set_time._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 108, i32 3}
!42 = !{ptr @tps6586x_rtc_set_time._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tps6586x_rtc_set_time._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 115, i32 3}
!46 = !{ptr @tps6586x_rtc_set_time._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tps6586x_rtc_set_time._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 194, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tps6586x_rtc_read_alarm._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tps6586x_rtc_read_alarm._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 152, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tps6586x_rtc_set_alarm._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tps6586x_rtc_set_alarm._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @tps6586x_rtc_set_alarm._entry.23, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 159, i32 3}
!60 = !{ptr @tps6586x_rtc_set_alarm._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 179, i32 3}
!63 = !{ptr @tps6586x_rtc_set_alarm._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tps6586x_rtc_set_alarm._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tps6586x_pm_ops, !66, !"tps6586x_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-tps6586x.c", i32 311, i32 8}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i8 0, i8 2}
