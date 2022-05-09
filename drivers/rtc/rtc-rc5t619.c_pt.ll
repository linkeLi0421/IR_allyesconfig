; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rc5t619.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rc5t619.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rc5t619_rtc = type { i32, ptr, ptr }
%struct.rn5t618 = type { ptr, ptr, i32, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rc5t619__228_439_rc5t619_rtc_driver_init6 = internal global ptr @rc5t619_rtc_driver_init, section ".initcall6.init", align 4
@rc5t619_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rc5t619_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rc5t619_rtc_driver_exit = internal global ptr @rc5t619_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias229 = internal constant [39 x i8] c"rtc_rc5t619.alias=platform:rc5t619-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"rtc_rc5t619.description=RICOH RC5T619 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [41 x i8] c"rtc_rc5t619.file=drivers/rtc/rtc-rc5t619\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [24 x i8] c"rtc_rc5t619.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc5t619-rtc\00", [20 x i8] zeroinitializer }, align 32
@rc5t619_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RTC device register: err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc5t619_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-rc5t619.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rc5t619_rtc_probe._entry_ptr = internal global ptr @rc5t619_rtc_probe._entry, section ".printk_index", align 4
@rc5t619_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rc5t619_rtc_read_time, ptr @rc5t619_rtc_set_time, ptr @rc5t619_rtc_read_alarm, ptr @rc5t619_rtc_set_alarm, ptr null, ptr @rc5t619_rtc_alarm_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-rc5t619\00", [20 x i8] zeroinitializer }, align 32
@rc5t619_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request IRQ:%d fail\0A\00", [43 x i8] zeroinitializer }, align 32
@rc5t619_rtc_probe._entry_ptr.9 = internal global ptr @rc5t619_rtc_probe._entry.7, section ".printk_index", align 4
@rc5t619_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rc5t619 interrupt is disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rc5t619_rtc_probe._entry_ptr.13 = internal global ptr @rc5t619_rtc_probe._entry.10, section ".printk_index", align 4
@rc5t619_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to program new time: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc5t619_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@rc5t619_rtc_set_time._entry_ptr = internal global ptr @rc5t619_rtc_set_time._entry, section ".printk_index", align 4
@rc5t619_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read time: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc5t619_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@rc5t619_rtc_read_alarm._entry_ptr = internal global ptr @rc5t619_rtc_read_alarm._entry, section ".printk_index", align 4
@rc5t619_rtc_read_alarm.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_rc5t619\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read alarm: %ptR\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"rc5t619_rtc_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 432, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 434, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 392, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"rc5t619_rtc_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 321, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 405, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 408, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 426, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 206, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 239, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [29 x i8] c"../drivers/rtc/rtc-rc5t619.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 267, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_rc5t619_rtc_driver_exit, ptr @__initcall__kmod_rtc_rc5t619__228_439_rc5t619_rtc_driver_init6, ptr @rc5t619_rtc_driver_exit, ptr @rc5t619_rtc_probe._entry, ptr @rc5t619_rtc_probe._entry.10, ptr @rc5t619_rtc_probe._entry.7, ptr @rc5t619_rtc_probe._entry_ptr, ptr @rc5t619_rtc_probe._entry_ptr.13, ptr @rc5t619_rtc_probe._entry_ptr.9, ptr @rc5t619_rtc_read_alarm._entry, ptr @rc5t619_rtc_read_alarm._entry_ptr, ptr @rc5t619_rtc_set_time._entry, ptr @rc5t619_rtc_set_time._entry_ptr, ptr @rc5t619_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rc5t619_rtc_ops, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t619_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rc5t619_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rc5t619_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rc5t619_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ctrl2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #7
  %4 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl2, align 4, !annotation !58
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rn5t6184 = getelementptr inbounds %struct.rc5t619_rtc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %rn5t6184 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %rn5t6184, align 4
  %driver_data.i134 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i134, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %call.i, align 4
  %irq_data = getelementptr inbounds %struct.rn5t618, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_data, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.then12_crit_edge, label %if.end10

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end10:                                         ; preds = %if.end
  %call8 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end10.if.then12_crit_edge, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end.if.then12_crit_edge
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %storemerge = phi i32 [ -1, %if.then12 ], [ %call8, %if.end10.if.end14_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %call.i, align 4
  %11 = ptrtoint ptr %rn5t6184 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rn5t6184, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call16 = call i32 @regmap_read(ptr noundef %14, i32 noundef 175, ptr noundef nonnull %ctrl2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i134, align 4
  %rn5t618.i = getelementptr inbounds %struct.rc5t619_rtc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rn5t618.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 174, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end19.cleanup_crit_edge, label %rc5t619_rtc_periodic_disable.exit

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rc5t619_rtc_periodic_disable.exit:                ; preds = %if.end19
  %21 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rn5t618.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i13.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 175, i32 noundef 133, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %25 = call i32 @llvm.smin.i32(i32 %call.i13.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i13.i)
  %tobool22.not = icmp sgt i32 %call.i13.i, -1
  br i1 %tobool22.not, label %if.end24, label %rc5t619_rtc_periodic_disable.exit.cleanup_crit_edge

rc5t619_rtc_periodic_disable.exit.cleanup_crit_edge: ; preds = %rc5t619_rtc_periodic_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %rc5t619_rtc_periodic_disable.exit
  %26 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctrl2, align 4
  %and = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %28 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i134, align 4
  %rn5t618.i136 = getelementptr inbounds %struct.rc5t619_rtc, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rn5t618.i136 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rn5t618.i136, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call.i.i137 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 175, i32 noundef 129, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %tobool29.not = icmp eq i32 %call.i.i137, 0
  br i1 %tobool29.not, label %if.then26.if.end32_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %call34 = call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #7
  %rtc35 = getelementptr inbounds %struct.rc5t619_rtc, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %rtc35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call34, ptr %rtc35, align 4
  %cmp.i138 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %35) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call34, i32 0, i32 3
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rc5t619_rtc_ops, ptr %ops, align 8
  %37 = ptrtoint ptr %rtc35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtc35, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -2208988800, ptr %range_min, align 8
  %40 = load ptr, ptr %rtc35, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 4102444799, ptr %range_max, align 8
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp46.not = icmp eq i32 %43, -1
  br i1 %cmp46.not, label %if.else70, label %if.then47

if.then47:                                        ; preds = %if.end41
  %call51 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %43, ptr noundef null, ptr noundef nonnull @rc5t619_rtc_irq, i32 noundef 8192, ptr noundef nonnull @.str.6, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.else

do.end56:                                         ; preds = %if.then47
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %45) #10
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %call.i, align 4
  %47 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i134, align 4
  %rn5t618.i140 = getelementptr inbounds %struct.rc5t619_rtc, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %rn5t618.i140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rn5t618.i140, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call.i.i141 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 174, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141)
  %tobool62.not = icmp eq i32 %call.i.i141, 0
  br i1 %tobool62.not, label %do.end56.if.end80_crit_edge, label %do.end56.cleanup_crit_edge

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56.if.end80_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #7
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call.i, align 4
  %call.i142 = call i32 @irq_set_irq_wake(i32 noundef %54, i32 noundef 1) #7
  br label %if.end80

if.else70:                                        ; preds = %if.end41
  %55 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i134, align 4
  %rn5t618.i144 = getelementptr inbounds %struct.rc5t619_rtc, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %rn5t618.i144 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rn5t618.i144, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i.i145 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 174, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %tobool73.not = icmp eq i32 %call.i.i145, 0
  br i1 %tobool73.not, label %do.end78, label %if.else70.cleanup_crit_edge

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end78:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %if.end80

if.end80:                                         ; preds = %do.end78, %if.else, %do.end56.if.end80_crit_edge
  %61 = ptrtoint ptr %rtc35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtc35, align 4
  %call82 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %62) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.else70.cleanup_crit_edge, %do.end56.cleanup_crit_edge, %if.then38, %if.then26.cleanup_crit_edge, %rc5t619_rtc_periodic_disable.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then38 ], [ %call82, %if.end80 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %25, %rc5t619_rtc_periodic_disable.exit.cleanup_crit_edge ], [ %call.i.i137, %if.then26.cleanup_crit_edge ], [ %call.i.i141, %do.end56.cleanup_crit_edge ], [ %call.i.i145, %if.else70.cleanup_crit_edge ], [ %call.i.i, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rn5t618.i = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn5t618.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 175, i32 noundef 129, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %rtc2 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc2, align 4
  tail call void @rtc_update_irq(ptr noundef %7, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_alarm_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rn5t618 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn5t618, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool.not, i32 0, i32 64
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 174, i32 noundef 64, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %buff = alloca [7 x i8], align 1
  %ctrl1 = alloca i32, align 4
  %ctrl2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buff) #7
  %2 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 6
  %8 = call ptr @memset(ptr %buff, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #7
  %9 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ctrl1, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #7
  %10 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ctrl2, align 4, !annotation !58
  %rn5t618 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rn5t618, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call1 = call i32 @regmap_read(ptr noundef %14, i32 noundef 175, ptr noundef nonnull %ctrl2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl2, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %17 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rn5t618, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call6 = call i32 @regmap_read(ptr noundef %20, i32 noundef 174, ptr noundef nonnull %ctrl1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %21 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rn5t618, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call12 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 160, ptr noundef nonnull %buff, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool17.not = icmp sgt i8 %26, -1
  %. = select i1 %tobool17.not, i32 0, i32 100
  %27 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buff, align 1
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %28) #11
  %29 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call27, ptr %tm, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %call40 = call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %32 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call40, ptr %tm_min, align 4
  %33 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl1, align 4
  %and43 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  br i1 %tobool44.not, label %if.else61, label %cond.false56

cond.false56:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  br label %if.end66

if.else61:                                        ; preds = %if.end15
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %cond.end31.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i8 %36, -33
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %and2.i) #11
  %conv13.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv13.i)
  %cmp.i = icmp eq i32 %conv13.i, 12
  %phi.cast55.i = add i32 %call.i, 12
  %cond20.i = select i1 %cmp.i, i32 12, i32 %phi.cast55.i
  br label %rtc5t619_12hour_bcd2bin.exit

cond.end31.i:                                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %conv34.i = and i32 %call30.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv34.i)
  %cmp35.i = icmp eq i32 %conv34.i, 12
  %spec.select.i = select i1 %cmp35.i, i32 0, i32 %call30.i
  br label %rtc5t619_12hour_bcd2bin.exit

rtc5t619_12hour_bcd2bin.exit:                     ; preds = %cond.end31.i, %cond.end.i
  %retval.0.i = phi i32 [ %cond20.i, %cond.end.i ], [ %spec.select.i, %cond.end31.i ]
  %conv64 = and i32 %retval.0.i, 255
  br label %if.end66

if.end66:                                         ; preds = %rtc5t619_12hour_bcd2bin.exit, %cond.false56
  %conv64.sink = phi i32 [ %conv64, %rtc5t619_12hour_bcd2bin.exit ], [ %call58, %cond.false56 ]
  %tm_hour65 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %38 = ptrtoint ptr %tm_hour65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv64.sink, ptr %tm_hour65, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %call79 = call i32 @_bcd2bin(i8 noundef zeroext %40) #11
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %41 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call79, ptr %tm_wday, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 1
  %call94 = call i32 @_bcd2bin(i8 noundef zeroext %43) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %44 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call94, ptr %tm_mday, align 4
  %45 = and i8 %26, 31
  %call117 = call i32 @_bcd2bin(i8 noundef zeroext %45) #11
  %sub = add i32 %call117, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %46 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %tm_mon, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %call132 = call i32 @_bcd2bin(i8 noundef zeroext %48) #11
  %add136 = add i32 %call132, %.
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %49 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add136, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %reg_data.i = alloca i32, align 4
  %buff = alloca [7 x i8], align 1
  %ctrl1 = alloca i32, align 4
  %ctrl2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buff) #7
  %2 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %buff, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #7
  %8 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ctrl1, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl2) #7
  %9 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ctrl2, align 4, !annotation !58
  %rn5t618 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rn5t618, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call1 = call i32 @regmap_read(ptr noundef %13, i32 noundef 175, ptr noundef nonnull %ctrl2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl2, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i) #7
  %18 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg_data.i, align 4, !annotation !58
  %rn5t618.i = getelementptr inbounds %struct.rc5t619_rtc, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rn5t618.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 175, ptr noundef nonnull %reg_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.rc5t619_rtc_pon_setup.exit_crit_edge, label %if.end.i

if.then2.rc5t619_rtc_pon_setup.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc5t619_rtc_pon_setup.exit

if.end.i:                                         ; preds = %if.then2
  %23 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_data.i, align 4
  %and.i = and i32 %24, -124
  %or.i = or i32 %and.i, 32
  store i32 %or.i, ptr %reg_data.i, align 4
  %25 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rn5t618.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 175, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.rc5t619_rtc_pon_setup.exit_crit_edge, label %if.end7.i

if.end.i.rc5t619_rtc_pon_setup.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc5t619_rtc_pon_setup.exit

if.end7.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rn5t618.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 167, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end7.i.rc5t619_rtc_pon_setup.exit_crit_edge

if.end7.i.rc5t619_rtc_pon_setup.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc5t619_rtc_pon_setup.exit

if.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rn5t618.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 174, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %rc5t619_rtc_pon_setup.exit

rc5t619_rtc_pon_setup.exit:                       ; preds = %if.end12.i, %if.end7.i.rc5t619_rtc_pon_setup.exit_crit_edge, %if.end.i.rc5t619_rtc_pon_setup.exit_crit_edge, %if.then2.rc5t619_rtc_pon_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i) #7
  br label %if.end4

if.end4:                                          ; preds = %rc5t619_rtc_pon_setup.exit, %if.end.if.end4_crit_edge
  %37 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rn5t618, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call7 = call i32 @regmap_read(ptr noundef %40, i32 noundef 174, ptr noundef nonnull %ctrl1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %41 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %42)
  %cmp11 = icmp sgt i32 %42, 99
  %. = select i1 %cmp11, i32 -100, i32 0
  %43 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm, align 4
  %call17 = call zeroext i8 @_bin2bcd(i32 noundef %44) #11
  %45 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call17, ptr %buff, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %46 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_min, align 4
  %call30 = call zeroext i8 @_bin2bcd(i32 noundef %47) #11
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call30, ptr %2, align 1
  %49 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl1, align 4
  %and36 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %tm_hour56 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %51 = ptrtoint ptr %tm_hour56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_hour56, align 4
  %conv57 = trunc i32 %52 to i8
  br i1 %tobool37.not, label %if.else55, label %cond.end51

cond.end51:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call zeroext i8 @_bin2bcd(i32 noundef %52) #11
  br label %if.end60

if.else55:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv57)
  %tobool.not.i197 = icmp eq i8 %conv57, 0
  br i1 %tobool.not.i197, label %if.else55.if.end60_crit_edge, label %if.end.i199

if.else55.if.end60_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end.i199:                                      ; preds = %if.else55
  %conv.i = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv57)
  %cmp.i198 = icmp ult i8 %conv57, 12
  br i1 %cmp.i198, label %cond.false.i, label %if.end8.i

cond.false.i:                                     ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %conv.i) #11
  br label %if.end60

if.end8.i:                                        ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv57)
  %cmp10.i = icmp eq i8 %conv57, 12
  br i1 %cmp10.i, label %if.end8.i.if.end60_crit_edge, label %cond.end30.i

if.end8.i.if.end60_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

cond.end30.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv.i, -12
  %call28.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %conv32.i = or i8 %call28.i, 32
  br label %if.end60

if.end60:                                         ; preds = %cond.end30.i, %if.end8.i.if.end60_crit_edge, %cond.false.i, %if.else55.if.end60_crit_edge, %cond.end51
  %storemerge = phi i8 [ %call49, %cond.end51 ], [ %conv32.i, %cond.end30.i ], [ 18, %if.else55.if.end60_crit_edge ], [ %call.i, %cond.false.i ], [ 50, %if.end8.i.if.end60_crit_edge ]
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %54 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_wday, align 4
  %call71 = call zeroext i8 @_bin2bcd(i32 noundef %55) #11
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %call71, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %57 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_mday, align 4
  %call87 = call zeroext i8 @_bin2bcd(i32 noundef %58) #11
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %call87, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %60 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_mon, align 4
  %add93 = add i32 %61, 1
  %call107 = call zeroext i8 @_bin2bcd(i32 noundef %add93) #11
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %call107, ptr %6, align 1
  %sub = add i32 %., %42
  %call130 = call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %call130, ptr %7, align 1
  br i1 %cmp11, label %if.then137, label %if.end60.if.end141_crit_edge

if.end60.if.end141_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then137:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %64 = or i8 %call107, -128
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %6, align 1
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end60.if.end141_crit_edge
  %66 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rn5t618, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call144 = call i32 @regmap_bulk_write(ptr noundef %69, i32 noundef 160, ptr noundef nonnull %buff, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %do.end, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call144) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end141.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call144, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_read_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buff = alloca [6 x i8], align 1
  %buff_cent = alloca i32, align 4
  %ctrl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buff) #7
  %2 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 5
  %7 = call ptr @memset(ptr %buff, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff_cent) #7
  %8 = ptrtoint ptr %buff_cent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %buff_cent, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #7
  %9 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ctrl1, align 4, !annotation !58
  %rn5t618 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rn5t618, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call1 = call i32 @regmap_read(ptr noundef %13, i32 noundef 174, ptr noundef nonnull %ctrl1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rn5t618, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call4 = call i32 @regmap_read(ptr noundef %17, i32 noundef 165, ptr noundef nonnull %buff_cent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call4) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %18 = ptrtoint ptr %buff_cent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buff_cent, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %. = select i1 %tobool7.not, i32 0, i32 100
  %20 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rn5t618, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call12 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 168, ptr noundef nonnull %buff, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  %26 = and i8 %25, 63
  store i8 %26, ptr %4, align 1
  %27 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buff, align 1
  %call26 = call i32 @_bcd2bin(i8 noundef zeroext %28) #11
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %29 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call26, ptr %time, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %call39 = call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call39, ptr %tm_min, align 4
  %33 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl1, align 4
  %and43 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  br i1 %tobool44.not, label %if.else62, label %cond.false56

cond.false56:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  br label %if.end68

if.else62:                                        ; preds = %if.end15
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %cond.end31.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i8 %36, -33
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %and2.i) #11
  %conv13.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv13.i)
  %cmp.i = icmp eq i32 %conv13.i, 12
  %phi.cast55.i = add i32 %call.i, 12
  %cond20.i = select i1 %cmp.i, i32 12, i32 %phi.cast55.i
  br label %rtc5t619_12hour_bcd2bin.exit

cond.end31.i:                                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %conv34.i = and i32 %call30.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv34.i)
  %cmp35.i = icmp eq i32 %conv34.i, 12
  %spec.select.i = select i1 %cmp35.i, i32 0, i32 %call30.i
  br label %rtc5t619_12hour_bcd2bin.exit

rtc5t619_12hour_bcd2bin.exit:                     ; preds = %cond.end31.i, %cond.end.i
  %retval.0.i161 = phi i32 [ %cond20.i, %cond.end.i ], [ %spec.select.i, %cond.end31.i ]
  %conv65 = and i32 %retval.0.i161, 255
  br label %if.end68

if.end68:                                         ; preds = %rtc5t619_12hour_bcd2bin.exit, %cond.false56
  %conv65.sink = phi i32 [ %conv65, %rtc5t619_12hour_bcd2bin.exit ], [ %call58, %cond.false56 ]
  %tm_hour67 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tm_hour67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv65.sink, ptr %tm_hour67, align 4
  %call81 = call i32 @_bcd2bin(i8 noundef zeroext %26) #11
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call81, ptr %tm_mday, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %call97 = call i32 @_bcd2bin(i8 noundef zeroext %41) #11
  %sub = add i32 %call97, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %tm_mon, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %6, align 1
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %44) #11
  %add117 = add i32 %call113, %.
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add117, ptr %tm_year, align 4
  %46 = trunc i32 %34 to i8
  %47 = lshr i8 %46, 6
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %alrm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rc5t619_rtc_read_alarm.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rc5t619_rtc_read_alarm, %cleanup)) #7
          to label %if.then133 [label %cleanup], !srcloc !59

if.then133:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rc5t619_rtc_read_alarm.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %time) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %if.end68, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ], [ 0, %if.then133 ], [ 0, %if.end68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff_cent) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t619_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alrm) #2 align 64 {
entry:
  %buff = alloca [6 x i8], align 1
  %ctrl1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buff) #7
  %2 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #7
  %7 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ctrl1, align 4, !annotation !58
  %rn5t618 = getelementptr inbounds %struct.rc5t619_rtc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rn5t618, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 174, ptr noundef nonnull %ctrl1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %rn5t618.i = getelementptr inbounds %struct.rc5t619_rtc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rn5t618.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rn5t618.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 174, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp5 = icmp eq i32 %19, -1
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %20 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp8 = icmp eq i8 %21, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %23)
  %cmp12 = icmp sgt i32 %23, 99
  %. = select i1 %cmp12, i32 -100, i32 0
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon, align 4
  %add = add i32 %25, 1
  store i32 %add, ptr %tm_mon, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %26 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %time, align 4
  %call26 = call zeroext i8 @_bin2bcd(i32 noundef %27) #11
  %28 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call26, ptr %buff, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_min, align 4
  %call43 = call zeroext i8 @_bin2bcd(i32 noundef %30) #11
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call43, ptr %2, align 1
  %32 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl1, align 4
  %and = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  %tm_hour73 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %tm_hour73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_hour73, align 4
  %conv74 = trunc i32 %35 to i8
  br i1 %tobool49.not, label %if.else71, label %cond.end67

cond.end67:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call zeroext i8 @_bin2bcd(i32 noundef %35) #11
  br label %if.end77

if.else71:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv74)
  %tobool.not.i = icmp eq i8 %conv74, 0
  br i1 %tobool.not.i, label %if.else71.if.end77_crit_edge, label %if.end.i

if.else71.if.end77_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end.i:                                         ; preds = %if.else71
  %conv.i = and i32 %35, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv74)
  %cmp.i = icmp ult i8 %conv74, 12
  br i1 %cmp.i, label %cond.false.i, label %if.end8.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %conv.i) #11
  br label %if.end77

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv74)
  %cmp10.i = icmp eq i8 %conv74, 12
  br i1 %cmp10.i, label %if.end8.i.if.end77_crit_edge, label %cond.end30.i

if.end8.i.if.end77_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

cond.end30.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv.i, -12
  %call28.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #11
  %conv32.i = or i8 %call28.i, 32
  br label %if.end77

if.end77:                                         ; preds = %cond.end30.i, %if.end8.i.if.end77_crit_edge, %cond.false.i, %if.else71.if.end77_crit_edge, %cond.end67
  %storemerge = phi i8 [ %call65, %cond.end67 ], [ %conv32.i, %cond.end30.i ], [ 18, %if.else71.if.end77_crit_edge ], [ %call.i, %cond.false.i ], [ 50, %if.end8.i.if.end77_crit_edge ]
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge, ptr %3, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_mday, align 4
  %call92 = call zeroext i8 @_bin2bcd(i32 noundef %38) #11
  %call113 = call zeroext i8 @_bin2bcd(i32 noundef %add) #11
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call113, ptr %5, align 1
  %sub = add i32 %., %23
  %call140 = call zeroext i8 @_bin2bcd(i32 noundef %sub) #11
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call140, ptr %6, align 1
  %41 = or i8 %call92, -128
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %4, align 1
  %43 = ptrtoint ptr %rn5t618 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rn5t618, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call151 = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 168, ptr noundef nonnull %buff, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.end77.cleanup_crit_edge, label %if.end155

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end155:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %alrm, align 4
  %49 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i, align 4
  %rn5t618.i204 = getelementptr inbounds %struct.rc5t619_rtc, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %rn5t618.i204 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rn5t618.i204, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i205 = icmp eq i8 %48, 0
  %cond.i = select i1 %tobool.not.i205, i32 0, i32 64
  %call.i.i206 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 174, i32 noundef 64, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.end77.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i206, %if.end155 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call151, %if.end77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_rtc_rc5t619__228_439_rc5t619_rtc_driver_init6, !1, !"__initcall__kmod_rtc_rc5t619__228_439_rc5t619_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 439, i32 1}
!2 = !{ptr @__exitcall_rc5t619_rtc_driver_exit, !1, !"__exitcall_rc5t619_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias229, !4, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 440, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 441, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 442, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 434, i32 11}
!12 = !{ptr @rc5t619_rtc_driver, !13, !"rc5t619_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 432, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 392, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rc5t619_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rc5t619_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 405, i32 7}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 408, i32 4}
!26 = !{ptr @rc5t619_rtc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rc5t619_rtc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 426, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rc5t619_rtc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rc5t619_rtc_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @rc5t619_rtc_ops, !34, !"rc5t619_rtc_ops", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 321, i32 35}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 206, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rc5t619_rtc_set_time._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rc5t619_rtc_set_time._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 239, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rc5t619_rtc_read_alarm._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rc5t619_rtc_read_alarm._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-rc5t619.c", i32 267, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rc5t619_rtc_read_alarm.__UNIQUE_ID_ddebug227, !46, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{i64 2148699732, i64 2148699737, i64 2148699750, i64 2148699794, i64 2148699828, i64 2148699849}
