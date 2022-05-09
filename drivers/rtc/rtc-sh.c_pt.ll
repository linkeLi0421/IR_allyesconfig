; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-sh.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sh_rtc = type { ptr, i32, ptr, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i16 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_sh__228_680_sh_rtc_platform_driver_init6 = internal global ptr @sh_rtc_platform_driver_init, section ".initcall6.init", align 4
@sh_rtc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_rtc_platform_driver_exit = internal global ptr @sh_rtc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [45 x i8] c"rtc_sh.description=SuperH on-chip RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [126 x i8] c"rtc_sh.author=Paul Mundt <lethal@linux-sh.org>, Jamie Lenehan <lenehan@twibble.org>, Angelo Castello <angelo.castello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [31 x i8] c"rtc_sh.file=drivers/rtc/rtc-sh\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"rtc_sh.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [29 x i8] c"rtc_sh.alias=platform:sh-rtc\00", section ".modinfo", align 1
@sh_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No IRQ resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_rtc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/rtc/rtc-sh.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr = internal global ptr @sh_rtc_probe._entry, section ".printk_index", align 4
@sh_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No IO resource\0A\00", [16 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr.8 = internal global ptr @sh_rtc_probe._entry.6, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rtc%d\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-rtc\00", [25 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"request IRQ failed with %d, IRQ %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr.14 = internal global ptr @sh_rtc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh-rtc period\00", [18 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"request period IRQ failed with %d, IRQ %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr.18 = internal global ptr @sh_rtc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh-rtc carry\00", [19 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 579, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request carry IRQ failed with %d, IRQ %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr.22 = internal global ptr @sh_rtc_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh-rtc alarm\00", [19 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"request alarm IRQ failed with %d, IRQ %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sh_rtc_probe._entry_ptr.26 = internal global ptr @sh_rtc_probe._entry.24, section ".printk_index", align 4
@sh_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @sh_rtc_read_time, ptr @sh_rtc_set_time, ptr @sh_rtc_read_alarm, ptr @sh_rtc_set_alarm, ptr @sh_rtc_proc, ptr @sh_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sh_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtc_sh\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_rtc_read_time\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"carry_IRQ\09: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"periodic_IRQ\09: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_rtc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sh_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"sh_rtc_platform_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 671, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 479, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 484, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 496, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 517, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 556, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 558, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 566, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 568, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 575, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 577, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 584, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 586, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"sh_rtc_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 459, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 327, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 240, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 240, i32 58 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 240, i32 66 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 243, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"sh_rtc_of_match\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 665, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"sh_rtc_pm_ops\00", align 1
@___asan_gen_.134 = private constant [24 x i8] c"../drivers/rtc/rtc-sh.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 663, i32 8 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_sh_rtc_platform_driver_exit, ptr @__initcall__kmod_rtc_sh__228_680_sh_rtc_platform_driver_init6, ptr @sh_rtc_platform_driver_exit, ptr @sh_rtc_probe._entry, ptr @sh_rtc_probe._entry.12, ptr @sh_rtc_probe._entry.16, ptr @sh_rtc_probe._entry.20, ptr @sh_rtc_probe._entry.24, ptr @sh_rtc_probe._entry.6, ptr @sh_rtc_probe._entry_ptr, ptr @sh_rtc_probe._entry_ptr.14, ptr @sh_rtc_probe._entry_ptr.18, ptr @sh_rtc_probe._entry_ptr.22, ptr @sh_rtc_probe._entry_ptr.26, ptr @sh_rtc_probe._entry_ptr.8, ptr @sh_rtc_remove, ptr @sh_rtc_platform_driver, ptr @sh_rtc_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @sh_rtc_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @sh_rtc_of_match, ptr @sh_rtc_pm_ops], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %and.i = and i8 %4, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and.i) #8, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i6 = getelementptr inbounds %struct.sh_rtc, ptr %8, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i6) #8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 28
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %12 = and i8 %11, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %add.ptr6.i8 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i8, i8 %12) #8, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i6) #8
  %clk = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sh_rtc_platform_driver, ptr noundef nonnull @sh_rtc_probe, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_rtc_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_rtc_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %clk_name) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %clk_name, i32 255, i32 6)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !91

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sh_rtc_probe.__key, i16 noundef signext 3) #8
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %do.end15, label %if.end17, !prof !91

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end17:                                         ; preds = %do.body
  %periodic_irq = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %periodic_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call5, ptr %periodic_irq, align 4
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #8
  %carry_irq = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %carry_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call18, ptr %carry_irq, align 4
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #8
  %alarm_irq = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call19, ptr %alarm_irq, align 4
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end24, label %if.end17.if.end37_crit_edge

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end24:                                         ; preds = %if.end17
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %do.end35, label %if.end24.if.end37_crit_edge, !prof !91

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end35:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end24.if.end37_crit_edge, %if.end17.if.end37_crit_edge
  %res.0298 = phi ptr [ %call23, %if.end24.if.end37_crit_edge ], [ %call20, %if.end17.if.end37_crit_edge ]
  %end.i = getelementptr inbounds %struct.resource, ptr %res.0298, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %res.0298 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res.0298, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  %regsize = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %regsize, align 4
  %9 = load i32, ptr %res.0298, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call41 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %add.i, ptr noundef %11) #8
  %res42 = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %res42 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call41, ptr %res42, align 4
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.end37.cleanup_crit_edge, label %if.end54, !prof !91

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end37
  %13 = ptrtoint ptr %call41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call41, align 4
  %15 = ptrtoint ptr %regsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regsize, align 4
  %call59 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %14, i32 noundef %16) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call59, ptr %call.i, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.end54.cleanup_crit_edge, label %if.end71, !prof !91

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end54
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool73.not = icmp eq ptr %19, null
  br i1 %tobool73.not, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %call78 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name, i32 noundef 6, ptr noundef nonnull @.str.9, i32 noundef %22)
  br label %if.end81

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1717791488, ptr %clk_name, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then74
  %call84 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clk_name) #8
  %clk = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 6
  %cmp.i = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call84
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.store.select, ptr %clk, align 4
  %call91 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #8
  %rtc_dev = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call91, ptr %rtc_dev, align 4
  %cmp.i286 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call91 to i32
  br label %cleanup

if.end97:                                         ; preds = %if.end81
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call99 = call i32 @clk_enable(ptr noundef %28) #8
  %capabilities = getelementptr inbounds %struct.sh_rtc, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %capabilities, align 4
  %30 = ptrtoint ptr %carry_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %carry_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp101 = icmp slt i32 %31, 1
  %32 = ptrtoint ptr %periodic_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %periodic_irq, align 4
  br i1 %cmp101, label %if.then102, label %if.else120

if.then102:                                       ; preds = %if.end97
  %call.i287 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @sh_rtc_shared, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool106.not = icmp eq i32 %call.i287, 0
  br i1 %tobool106.not, label %if.then102.if.end172_crit_edge, label %do.end116, !prof !92

if.then102.if.end172_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

do.end116:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %periodic_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %periodic_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i287, i32 noundef %35) #11
  br label %err_unmap

if.else120:                                       ; preds = %if.end97
  %call.i288 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @sh_rtc_periodic, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool124.not = icmp eq i32 %call.i288, 0
  br i1 %tobool124.not, label %if.end137, label %do.end134, !prof !92

do.end134:                                        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %periodic_irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %periodic_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i288, i32 noundef %37) #11
  br label %err_unmap

if.end137:                                        ; preds = %if.else120
  %38 = ptrtoint ptr %carry_irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %carry_irq, align 4
  %call.i289 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %39, ptr noundef nonnull @sh_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool141.not = icmp eq i32 %call.i289, 0
  br i1 %tobool141.not, label %if.end154, label %do.end151, !prof !92

do.end151:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %carry_irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %carry_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i289, i32 noundef %41) #11
  br label %err_unmap

if.end154:                                        ; preds = %if.end137
  %42 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alarm_irq, align 4
  %call.i290 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %43, ptr noundef nonnull @sh_rtc_alarm, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool158.not = icmp eq i32 %call.i290, 0
  br i1 %tobool158.not, label %if.end154.if.end172_crit_edge, label %do.end168, !prof !92

if.end154.if.end172_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

do.end168:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alarm_irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i290, i32 noundef %45) #11
  br label %err_unmap

if.end172:                                        ; preds = %if.end154.if.end172_crit_edge, %if.then102.if.end172_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 28
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %and.i = and i8 %49, -9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %51, i32 28
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and.i) #8, !srcloc !88
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i293 = getelementptr inbounds %struct.sh_rtc, ptr %53, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock.i293) #8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %add.ptr.i294 = getelementptr i8, ptr %55, i32 28
  %56 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i294) #8, !srcloc !85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %57 = and i8 %56, -17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  %add.ptr6.i295 = getelementptr i8, ptr %59, i32 28
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i295, i8 %57) #8, !srcloc !88
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i293) #8
  %60 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rtc_dev, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @sh_rtc_ops, ptr %ops, align 8
  %63 = load ptr, ptr %rtc_dev, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 256, ptr %max_user_freq, align 8
  %65 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %capabilities, align 4
  %and = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool178.not = icmp eq i32 %and, 0
  br i1 %tobool178.not, label %if.else182, label %if.then179

if.then179:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rtc_dev, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %68, i32 0, i32 22
  %69 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 -2208988800, ptr %range_min, align 8
  br label %if.end189

if.else182:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %call183 = call i64 @mktime64(i32 noundef 1999, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %70 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rtc_dev, align 4
  %range_min185 = getelementptr inbounds %struct.rtc_device, ptr %71, i32 0, i32 22
  %72 = ptrtoint ptr %range_min185 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %call183, ptr %range_min185, align 8
  %call186 = call i64 @mktime64(i32 noundef 2098, i32 noundef 12, i32 noundef 31, i32 noundef 23, i32 noundef 59, i32 noundef 59) #8
  br label %if.end189

if.end189:                                        ; preds = %if.else182, %if.then179
  %call186.sink = phi i64 [ %call186, %if.else182 ], [ 253402300799, %if.then179 ]
  %73 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rtc_dev, align 4
  %range_max188 = getelementptr inbounds %struct.rtc_device, ptr %74, i32 0, i32 23
  %75 = ptrtoint ptr %range_max188 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %call186.sink, ptr %range_max188, align 8
  %76 = load ptr, ptr %rtc_dev, align 4
  %call191 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end189.err_unmap_crit_edge

if.end189.err_unmap_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.end194:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %call196 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %cleanup

err_unmap:                                        ; preds = %if.end189.err_unmap_crit_edge, %do.end168, %do.end151, %do.end134, %do.end116
  %ret.0 = phi i32 [ %call.i287, %do.end116 ], [ %call191, %if.end189.err_unmap_crit_edge ], [ %call.i288, %do.end134 ], [ %call.i289, %do.end151 ], [ %call.i290, %do.end168 ]
  %77 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end194, %if.then94, %if.end54.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end35, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end15 ], [ -2, %do.end35 ], [ %26, %if.then94 ], [ %ret.0, %err_unmap ], [ 0, %if.end194 ], [ -12, %entry.cleanup_crit_edge ], [ -16, %if.end37.cleanup_crit_edge ], [ -22, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %clk_name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_shared(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %3 = and i8 %2, -128
  %and3.i = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and3.i) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.__sh_rtc_interrupt.exit_crit_edge, label %land.lhs.true.i

entry.__sh_rtc_interrupt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_interrupt.exit

land.lhs.true.i:                                  ; preds = %entry
  %periodic_freq.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 10
  %6 = ptrtoint ptr %periodic_freq.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %periodic_freq.i, align 4
  %8 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not.i = icmp eq i16 %8, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge, label %if.then.i

land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_interrupt.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %rtc_dev.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %9 = ptrtoint ptr %rtc_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc_dev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 144) #8
  br label %__sh_rtc_interrupt.exit

__sh_rtc_interrupt.exit:                          ; preds = %if.then.i, %land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge, %entry.__sh_rtc_interrupt.exit_crit_edge
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %add.ptr.i11 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i11) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %14 = and i8 %13, 1
  %and3.i12 = and i8 %13, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i13 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i13, i8 %and3.i12) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i14 = icmp eq i8 %14, 0
  br i1 %tobool.not.i14, label %__sh_rtc_interrupt.exit.__sh_rtc_alarm.exit_crit_edge, label %if.then.i16

__sh_rtc_interrupt.exit.__sh_rtc_alarm.exit_crit_edge: ; preds = %__sh_rtc_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_alarm.exit

if.then.i16:                                      ; preds = %__sh_rtc_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rtc_dev.i15 = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %17 = ptrtoint ptr %rtc_dev.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtc_dev.i15, align 4
  tail call void @rtc_update_irq(ptr noundef %18, i32 noundef 1, i32 noundef 160) #8
  br label %__sh_rtc_alarm.exit

__sh_rtc_alarm.exit:                              ; preds = %if.then.i16, %__sh_rtc_interrupt.exit.__sh_rtc_alarm.exit_crit_edge
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18 = getelementptr i8, ptr %20, i32 30
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %22 = and i8 %21, -128
  %and3.i19 = and i8 %21, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i20 = getelementptr i8, ptr %24, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i20, i8 %and3.i19) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i21 = icmp eq i8 %22, 0
  br i1 %tobool.not.i21, label %__sh_rtc_alarm.exit.__sh_rtc_periodic.exit_crit_edge, label %if.end.i

__sh_rtc_alarm.exit.__sh_rtc_periodic.exit_crit_edge: ; preds = %__sh_rtc_alarm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_periodic.exit

if.end.i:                                         ; preds = %__sh_rtc_alarm.exit
  %periodic_freq.i22 = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 10
  %25 = ptrtoint ptr %periodic_freq.i22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %periodic_freq.i22, align 4
  %27 = and i16 %26, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %27)
  %.not.i = icmp eq i16 %27, 768
  br i1 %.not.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and17.i = and i16 %26, -513
  %28 = ptrtoint ptr %periodic_freq.i22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %and17.i, ptr %periodic_freq.i22, align 4
  br label %__sh_rtc_periodic.exit

if.else.i:                                        ; preds = %if.end.i
  %29 = and i16 %26, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool22.not.i = icmp eq i16 %29, 0
  br i1 %tobool22.not.i, label %if.else.i.if.end27.i_crit_edge, label %if.then23.i

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i16 %26, 512
  %30 = ptrtoint ptr %periodic_freq.i22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or.i, ptr %periodic_freq.i22, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.else.i.if.end27.i_crit_edge
  %rtc_dev.i23 = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %31 = ptrtoint ptr %rtc_dev.i23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc_dev.i23, align 4
  tail call void @rtc_update_irq(ptr noundef %32, i32 noundef 1, i32 noundef 192) #8
  br label %__sh_rtc_periodic.exit

__sh_rtc_periodic.exit:                           ; preds = %if.end27.i, %if.then14.i, %__sh_rtc_alarm.exit.__sh_rtc_periodic.exit_crit_edge
  %or25 = or i8 %14, %3
  %or326 = or i8 %or25, %22
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or326)
  %tobool.not = icmp ne i8 %or326, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_periodic(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 30
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %and3.i = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i = getelementptr i8, ptr %4, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and3.i) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %entry.__sh_rtc_periodic.exit_crit_edge, label %if.end.i

entry.__sh_rtc_periodic.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_periodic.exit

if.end.i:                                         ; preds = %entry
  %periodic_freq.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 10
  %5 = ptrtoint ptr %periodic_freq.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %periodic_freq.i, align 4
  %7 = and i16 %6, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %7)
  %.not.i = icmp eq i16 %7, 768
  br i1 %.not.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and17.i = and i16 %6, -513
  %8 = ptrtoint ptr %periodic_freq.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %and17.i, ptr %periodic_freq.i, align 4
  br label %__sh_rtc_periodic.exit

if.else.i:                                        ; preds = %if.end.i
  %9 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool22.not.i = icmp eq i16 %9, 0
  br i1 %tobool22.not.i, label %if.else.i.if.end27.i_crit_edge, label %if.then23.i

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i16 %6, 512
  %10 = ptrtoint ptr %periodic_freq.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %periodic_freq.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.else.i.if.end27.i_crit_edge
  %rtc_dev.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %11 = ptrtoint ptr %rtc_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc_dev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %12, i32 noundef 1, i32 noundef 192) #8
  br label %__sh_rtc_periodic.exit

__sh_rtc_periodic.exit:                           ; preds = %if.end27.i, %if.then14.i, %entry.__sh_rtc_periodic.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %.lobit = lshr i8 %2, 7
  %13 = zext i8 %.lobit to i32
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %and3.i = and i8 %2, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and3.i) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %entry.__sh_rtc_interrupt.exit_crit_edge, label %land.lhs.true.i

entry.__sh_rtc_interrupt.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_interrupt.exit

land.lhs.true.i:                                  ; preds = %entry
  %periodic_freq.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 10
  %5 = ptrtoint ptr %periodic_freq.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %periodic_freq.i, align 4
  %7 = and i16 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not.i = icmp eq i16 %7, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge, label %if.then.i

land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_interrupt.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %rtc_dev.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %8 = ptrtoint ptr %rtc_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc_dev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %9, i32 noundef 1, i32 noundef 144) #8
  br label %__sh_rtc_interrupt.exit

__sh_rtc_interrupt.exit:                          ; preds = %if.then.i, %land.lhs.true.i.__sh_rtc_interrupt.exit_crit_edge, %entry.__sh_rtc_interrupt.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %.lobit = lshr i8 %2, 7
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_alarm(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %3 = and i8 %2, 1
  %and3.i = and i8 %2, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and3.i) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.__sh_rtc_alarm.exit_crit_edge, label %if.then.i

entry.__sh_rtc_alarm.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sh_rtc_alarm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rtc_dev.i = getelementptr inbounds %struct.sh_rtc, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %rtc_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_dev.i, align 4
  tail call void @rtc_update_irq(ptr noundef %7, i32 noundef 1, i32 noundef 160) #8
  br label %__sh_rtc_alarm.exit

__sh_rtc_alarm.exit:                              ; preds = %if.then.i, %entry.__sh_rtc_alarm.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %8 = zext i8 %3 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 30
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %capabilities = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 9
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end123.do.body_crit_edge, %do.body.preheader
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %9 = and i8 %8, 111
  %10 = or i8 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %10) #8, !srcloc !88
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr28 = getelementptr i8, ptr %17, i32 2
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %call32 = tail call i32 @_bcd2bin(i8 noundef zeroext %18) #12
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call32, ptr %tm, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr36) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %call40 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #12
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call40, ptr %tm_min, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr44 = getelementptr i8, ptr %25, i32 6
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %call48 = tail call i32 @_bcd2bin(i8 noundef zeroext %26) #12
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call48, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr52 = getelementptr i8, ptr %29, i32 8
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %call56 = tail call i32 @_bcd2bin(i8 noundef zeroext %30) #12
  %31 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call56, ptr %tm_wday, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr60 = getelementptr i8, ptr %33, i32 10
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %call64 = tail call i32 @_bcd2bin(i8 noundef zeroext %34) #12
  %35 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call64, ptr %tm_mday, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr68 = getelementptr i8, ptr %37, i32 12
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr68) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %call72 = tail call i32 @_bcd2bin(i8 noundef zeroext %38) #12
  %sub = add i32 %call72, -1
  %39 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %tm_mon, align 4
  %40 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capabilities, align 4
  %and73 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr96 = getelementptr i8, ptr %43, i32 14
  br i1 %tobool74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr96) #8, !srcloc !109
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %shr = lshr i16 %45, 8
  %conv84 = trunc i16 %shr to i8
  %call91 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv84) #12
  %and92 = trunc i16 %45 to i8
  br label %if.end123

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr96) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %46)
  %cmp = icmp eq i8 %46, -103
  %conv103 = select i1 %cmp, i8 25, i8 32
  %call120 = tail call i32 @_bcd2bin(i8 noundef zeroext %conv103) #12
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then75
  %yr100.0 = phi i32 [ %call91, %if.then75 ], [ %call120, %if.else ]
  %yr.0 = phi i8 [ %and92, %if.then75 ], [ %46, %if.else ]
  %mul124 = mul i32 %yr100.0, 100
  %call133 = tail call i32 @_bcd2bin(i8 noundef zeroext %yr.0) #12
  %add136 = add i32 %mul124, -1900
  %sub137 = add i32 %add136, %call133
  %47 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub137, ptr %tm_year, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %add.ptr149 = getelementptr i8, ptr %52, i32 28
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr149) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %cmp157.not = icmp sgt i8 %53, -1
  br i1 %cmp157.not, label %do.end162, label %if.end123.do.body_crit_edge

if.end123.do.body_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end162:                                        ; preds = %if.end123
  %periodic_freq = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 10
  %54 = ptrtoint ptr %periodic_freq to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %periodic_freq, align 4
  %56 = and i16 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool165.not = icmp eq i16 %56, 0
  br i1 %tobool165.not, label %if.then166, label %do.end162.do.body168_crit_edge

do.end162.do.body168_crit_edge:                   ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body168

if.then166:                                       ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i, align 4
  %lock.i = getelementptr inbounds %struct.sh_rtc, ptr %58, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 28
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %62 = and i8 %61, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %58, align 4
  %add.ptr6.i = getelementptr i8, ptr %64, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %62) #8, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  br label %do.body168

do.body168:                                       ; preds = %if.then166, %do.end162.do.body168_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_rtc_read_time, %cleanup)) #8
          to label %if.then175 [label %cleanup], !srcloc !114

if.then175:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm, align 4
  %67 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tm_min, align 4
  %69 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tm_hour, align 4
  %71 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tm_mday, align 4
  %73 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tm_mon, align 4
  %add181 = add i32 %74, 1
  %75 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tm_year, align 4
  %77 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %add181, i32 noundef %76, i32 noundef %78) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %do.body168, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then175 ], [ 0, %do.body168 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 30
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %5 = and i8 %4, -4
  %6 = or i8 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %6) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %call14 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %call14) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call32 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr38 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 %call32) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour, align 4
  %call52 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr58 = getelementptr i8, ptr %20, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %call52) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_wday, align 4
  %call72 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr78 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 %call72) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday, align 4
  %call92 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr98 = getelementptr i8, ptr %28, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 %call92) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %29 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mon, align 4
  %add102 = add i32 %30, 1
  %call116 = tail call zeroext i8 @_bin2bcd(i32 noundef %add102) #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr122 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr122, i8 %call116) #8, !srcloc !88
  %capabilities = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %capabilities, align 4
  %and123 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool.not = icmp eq i32 %and123, 0
  %tm_year173 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year173 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_year173, align 4
  br i1 %tobool.not, label %if.else, label %cond.end144

cond.end144:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add124 = add i32 %36, 1900
  %div125 = sdiv i32 %add124, 100
  %call142 = tail call zeroext i8 @_bin2bcd(i32 noundef %div125) #12
  %conv143 = zext i8 %call142 to i16
  %shl146 = shl nuw i16 %conv143, 8
  %rem148 = srem i32 %36, 100
  %call162 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem148) #12
  %conv163 = zext i8 %call162 to i16
  %or166 = or i16 %shl146, %conv163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %37 = tail call i16 @llvm.bswap.i16(i16 %or166)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr172 = getelementptr i8, ptr %39, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr172, i16 %37) #8, !srcloc !124
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %rem174 = srem i32 %36, 100
  %call185 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem174) #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr191 = getelementptr i8, ptr %41, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr191, i8 %call185) #8, !srcloc !88
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end144
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr195 = getelementptr i8, ptr %43, i32 30
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr195) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %45 = and i8 %44, -12
  %46 = or i8 %45, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr207 = getelementptr i8, ptr %48, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr207, i8 %46) #8, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wkalrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool.not.i = icmp sgt i8 %4, -1
  br i1 %tobool.not.i, label %entry.sh_rtc_read_alarm_value.exit_crit_edge, label %cond.false.i

entry.sh_rtc_read_alarm_value.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i8 %4, 127
  %call6.i = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i) #12
  br label %sh_rtc_read_alarm_value.exit

sh_rtc_read_alarm_value.exit:                     ; preds = %cond.false.i, %entry.sh_rtc_read_alarm_value.exit_crit_edge
  %value.0.i = phi i32 [ -1, %entry.sh_rtc_read_alarm_value.exit_crit_edge ], [ %call6.i, %cond.false.i ]
  %5 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value.0.i, ptr %time, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %7, i32 18
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not.i32 = icmp sgt i8 %8, -1
  br i1 %tobool.not.i32, label %sh_rtc_read_alarm_value.exit.sh_rtc_read_alarm_value.exit44_crit_edge, label %cond.false.i42

sh_rtc_read_alarm_value.exit.sh_rtc_read_alarm_value.exit44_crit_edge: ; preds = %sh_rtc_read_alarm_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit44

cond.false.i42:                                   ; preds = %sh_rtc_read_alarm_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i33 = and i8 %8, 127
  %call6.i41 = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i33) #12
  br label %sh_rtc_read_alarm_value.exit44

sh_rtc_read_alarm_value.exit44:                   ; preds = %cond.false.i42, %sh_rtc_read_alarm_value.exit.sh_rtc_read_alarm_value.exit44_crit_edge
  %value.0.i43 = phi i32 [ -1, %sh_rtc_read_alarm_value.exit.sh_rtc_read_alarm_value.exit44_crit_edge ], [ %call6.i41, %cond.false.i42 ]
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %value.0.i43, ptr %tm_min, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i45 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i45) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not.i48 = icmp sgt i8 %12, -1
  br i1 %tobool.not.i48, label %sh_rtc_read_alarm_value.exit44.sh_rtc_read_alarm_value.exit60_crit_edge, label %cond.false.i58

sh_rtc_read_alarm_value.exit44.sh_rtc_read_alarm_value.exit60_crit_edge: ; preds = %sh_rtc_read_alarm_value.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit60

cond.false.i58:                                   ; preds = %sh_rtc_read_alarm_value.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i49 = and i8 %12, 127
  %call6.i57 = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i49) #12
  br label %sh_rtc_read_alarm_value.exit60

sh_rtc_read_alarm_value.exit60:                   ; preds = %cond.false.i58, %sh_rtc_read_alarm_value.exit44.sh_rtc_read_alarm_value.exit60_crit_edge
  %value.0.i59 = phi i32 [ -1, %sh_rtc_read_alarm_value.exit44.sh_rtc_read_alarm_value.exit60_crit_edge ], [ %call6.i57, %cond.false.i58 ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %value.0.i59, ptr %tm_hour, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i61 = getelementptr i8, ptr %15, i32 22
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i61) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool.not.i64 = icmp sgt i8 %16, -1
  br i1 %tobool.not.i64, label %sh_rtc_read_alarm_value.exit60.sh_rtc_read_alarm_value.exit76_crit_edge, label %cond.false.i74

sh_rtc_read_alarm_value.exit60.sh_rtc_read_alarm_value.exit76_crit_edge: ; preds = %sh_rtc_read_alarm_value.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit76

cond.false.i74:                                   ; preds = %sh_rtc_read_alarm_value.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i65 = and i8 %16, 127
  %call6.i73 = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i65) #12
  br label %sh_rtc_read_alarm_value.exit76

sh_rtc_read_alarm_value.exit76:                   ; preds = %cond.false.i74, %sh_rtc_read_alarm_value.exit60.sh_rtc_read_alarm_value.exit76_crit_edge
  %value.0.i75 = phi i32 [ -1, %sh_rtc_read_alarm_value.exit60.sh_rtc_read_alarm_value.exit76_crit_edge ], [ %call6.i73, %cond.false.i74 ]
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %value.0.i75, ptr %tm_wday, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i77 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i77) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool.not.i80 = icmp sgt i8 %20, -1
  br i1 %tobool.not.i80, label %sh_rtc_read_alarm_value.exit76.sh_rtc_read_alarm_value.exit92_crit_edge, label %cond.false.i90

sh_rtc_read_alarm_value.exit76.sh_rtc_read_alarm_value.exit92_crit_edge: ; preds = %sh_rtc_read_alarm_value.exit76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit92

cond.false.i90:                                   ; preds = %sh_rtc_read_alarm_value.exit76
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i81 = and i8 %20, 127
  %call6.i89 = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i81) #12
  br label %sh_rtc_read_alarm_value.exit92

sh_rtc_read_alarm_value.exit92:                   ; preds = %cond.false.i90, %sh_rtc_read_alarm_value.exit76.sh_rtc_read_alarm_value.exit92_crit_edge
  %value.0.i91 = phi i32 [ -1, %sh_rtc_read_alarm_value.exit76.sh_rtc_read_alarm_value.exit92_crit_edge ], [ %call6.i89, %cond.false.i90 ]
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %value.0.i91, ptr %tm_mday, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i93 = getelementptr i8, ptr %23, i32 26
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i93) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not.i96 = icmp sgt i8 %24, -1
  br i1 %tobool.not.i96, label %sh_rtc_read_alarm_value.exit92.sh_rtc_read_alarm_value.exit108.thread_crit_edge, label %sh_rtc_read_alarm_value.exit108

sh_rtc_read_alarm_value.exit92.sh_rtc_read_alarm_value.exit108.thread_crit_edge: ; preds = %sh_rtc_read_alarm_value.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sh_rtc_read_alarm_value.exit108.thread

sh_rtc_read_alarm_value.exit108:                  ; preds = %sh_rtc_read_alarm_value.exit92
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i97 = and i8 %24, 127
  %call6.i105 = tail call i32 @_bcd2bin(i8 noundef zeroext %and2.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i105)
  %cmp = icmp sgt i32 %call6.i105, 0
  %sub = sext i1 %cmp to i32
  %spec.select = add i32 %call6.i105, %sub
  br label %sh_rtc_read_alarm_value.exit108.thread

sh_rtc_read_alarm_value.exit108.thread:           ; preds = %sh_rtc_read_alarm_value.exit108, %sh_rtc_read_alarm_value.exit92.sh_rtc_read_alarm_value.exit108.thread_crit_edge
  %25 = phi i32 [ -1, %sh_rtc_read_alarm_value.exit92.sh_rtc_read_alarm_value.exit108.thread_crit_edge ], [ %spec.select, %sh_rtc_read_alarm_value.exit108 ]
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tm_mon, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 28
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %30 = lshr i8 %29, 3
  %.lobit = and i8 %30, 1
  %31 = ptrtoint ptr %wkalrm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.lobit, ptr %wkalrm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %wkalrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2
  %lock = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %5 = and i8 %4, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %5) #8, !srcloc !88
  %8 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i, label %do.body.i, label %cond.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit

cond.end.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #12
  %conv4.i = or i8 %call.i, -128
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv4.i) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit

sh_rtc_write_alarm_value.exit:                    ; preds = %cond.end.i, %do.body.i
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i37 = icmp slt i32 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i37, label %do.body.i39, label %cond.end.i53

do.body.i39:                                      ; preds = %sh_rtc_write_alarm_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i38 = getelementptr i8, ptr %17, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i38, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit54

cond.end.i53:                                     ; preds = %sh_rtc_write_alarm_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #12
  %conv4.i51 = or i8 %call.i47, -128
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr6.i52 = getelementptr i8, ptr %19, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i52, i8 %conv4.i51) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit54

sh_rtc_write_alarm_value.exit54:                  ; preds = %cond.end.i53, %do.body.i39
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i55 = icmp slt i32 %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i55, label %do.body.i57, label %cond.end.i71

do.body.i57:                                      ; preds = %sh_rtc_write_alarm_value.exit54
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i56 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit72

cond.end.i71:                                     ; preds = %sh_rtc_write_alarm_value.exit54
  call void @__sanitizer_cov_trace_pc() #10
  %call.i65 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  %conv4.i69 = or i8 %call.i65, -128
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr6.i70 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i70, i8 %conv4.i69) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit72

sh_rtc_write_alarm_value.exit72:                  ; preds = %cond.end.i71, %do.body.i57
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i73 = icmp slt i32 %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i73, label %do.body.i75, label %cond.end.i89

do.body.i75:                                      ; preds = %sh_rtc_write_alarm_value.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i74 = getelementptr i8, ptr %29, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit90

cond.end.i89:                                     ; preds = %sh_rtc_write_alarm_value.exit72
  call void @__sanitizer_cov_trace_pc() #10
  %call.i83 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #12
  %conv4.i87 = or i8 %call.i83, -128
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr6.i88 = getelementptr i8, ptr %31, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i88, i8 %conv4.i87) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit90

sh_rtc_write_alarm_value.exit90:                  ; preds = %cond.end.i89, %do.body.i75
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i91 = icmp slt i32 %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i91, label %do.body.i93, label %cond.end.i107

do.body.i93:                                      ; preds = %sh_rtc_write_alarm_value.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %add.ptr.i92 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i92, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit108

cond.end.i107:                                    ; preds = %sh_rtc_write_alarm_value.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %call.i101 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #12
  %conv4.i105 = or i8 %call.i101, -128
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr6.i106 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i106, i8 %conv4.i105) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit108

sh_rtc_write_alarm_value.exit108:                 ; preds = %cond.end.i107, %do.body.i93
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %wkalrm, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mon, align 4
  %40 = xor i32 %39, -1
  %.lobit.not = lshr i32 %40, 31
  %spec.select = add i32 %.lobit.not, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp.i109 = icmp slt i32 %spec.select, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.i109, label %do.body.i111, label %cond.end.i125

do.body.i111:                                     ; preds = %sh_rtc_write_alarm_value.exit108
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i110 = getelementptr i8, ptr %42, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i110, i8 0) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit126

cond.end.i125:                                    ; preds = %sh_rtc_write_alarm_value.exit108
  call void @__sanitizer_cov_trace_pc() #10
  %call.i119 = tail call zeroext i8 @_bin2bcd(i32 noundef %spec.select) #12
  %conv4.i123 = or i8 %call.i119, -128
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr6.i124 = getelementptr i8, ptr %44, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i124, i8 %conv4.i123) #8, !srcloc !88
  br label %sh_rtc_write_alarm_value.exit126

sh_rtc_write_alarm_value.exit126:                 ; preds = %cond.end.i125, %do.body.i111
  %45 = ptrtoint ptr %wkalrm to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wkalrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %sh_rtc_write_alarm_value.exit126.if.end14_crit_edge, label %if.then7

sh_rtc_write_alarm_value.exit126.if.end14_crit_edge: ; preds = %sh_rtc_write_alarm_value.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %sh_rtc_write_alarm_value.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %47 = or i8 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %add.ptr13 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %47) #8, !srcloc !88
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %sh_rtc_write_alarm_value.exit126.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %5 = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 30
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %9 = and i8 %8, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not.i = icmp eq i32 %enabled, 0
  %and.i = and i8 %4, -9
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 8
  %tmp.0.i = or i8 %and.i, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %tmp.0.i) #8, !srcloc !88
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_suspend(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %periodic_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %periodic_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %periodic_irq.i, align 4
  %call1.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #8
  %carry_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %carry_irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %carry_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #8
  %alarm_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %alarm_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_irq.i, align 4
  %call4.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_rtc_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %periodic_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %periodic_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %periodic_irq.i, align 4
  %call1.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #8
  %carry_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %carry_irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %carry_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #8
  %alarm_irq.i = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %alarm_irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_irq.i, align 4
  %call4.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_rtc_sh__228_680_sh_rtc_platform_driver_init6, !1, !"__initcall__kmod_rtc_sh__228_680_sh_rtc_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-sh.c", i32 680, i32 1}
!2 = !{ptr @__exitcall_sh_rtc_platform_driver_exit, !1, !"__exitcall_sh_rtc_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-sh.c", i32 682, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-sh.c", i32 683, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-sh.c", i32 686, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias233, !11, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-sh.c", i32 687, i32 1}
!12 = !{ptr @sh_rtc_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-sh.c", i32 479, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-sh.c", i32 484, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sh_rtc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sh_rtc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-sh.c", i32 496, i32 3}
!25 = !{ptr @sh_rtc_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sh_rtc_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-sh.c", i32 517, i32 40}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-sh.c", i32 519, i32 40}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-sh.c", i32 556, i32 23}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-sh.c", i32 558, i32 4}
!35 = !{ptr @sh_rtc_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sh_rtc_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-sh.c", i32 566, i32 25}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-sh.c", i32 568, i32 4}
!41 = !{ptr @sh_rtc_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sh_rtc_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-sh.c", i32 575, i32 26}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-sh.c", i32 577, i32 4}
!47 = !{ptr @sh_rtc_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sh_rtc_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-sh.c", i32 584, i32 22}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-sh.c", i32 586, i32 4}
!53 = !{ptr @sh_rtc_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sh_rtc_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sh_rtc_ops, !56, !"sh_rtc_ops", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-sh.c", i32 459, i32 35}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-sh.c", i32 327, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sh_rtc_read_time.__UNIQUE_ID_ddebug227, !58, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-sh.c", i32 240, i32 18}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-sh.c", i32 240, i32 58}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-sh.c", i32 240, i32 66}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-sh.c", i32 243, i32 18}
!70 = !{ptr @sh_rtc_platform_driver, !71, !"sh_rtc_platform_driver", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-sh.c", i32 671, i32 31}
!72 = !{ptr @sh_rtc_of_match, !73, !"sh_rtc_of_match", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-sh.c", i32 665, i32 34}
!74 = !{ptr @sh_rtc_pm_ops, !75, !"sh_rtc_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-sh.c", i32 663, i32 8}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 4670973}
!86 = !{i64 2153868791}
!87 = !{i64 2153869084}
!88 = !{i64 4670578}
!89 = !{i64 2153870303}
!90 = !{i64 2153870596}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2153866344}
!94 = !{i64 2153866637}
!95 = !{i64 2153867049}
!96 = !{i64 2153867347}
!97 = !{i64 2153867753}
!98 = !{i64 2153868046}
!99 = !{i64 2153870992}
!100 = !{i64 2153871322}
!101 = !{i64 2153871615}
!102 = !{i64 2153872007}
!103 = !{i64 2153872949}
!104 = !{i64 2153874306}
!105 = !{i64 2153875663}
!106 = !{i64 2153877020}
!107 = !{i64 2153878377}
!108 = !{i64 2153879734}
!109 = !{i64 4670355}
!110 = !{i64 2153880770}
!111 = !{i64 2153881237}
!112 = !{i64 2153881923}
!113 = !{i64 2153882245}
!114 = !{i64 2148968923, i64 2148968928, i64 2148968941, i64 2148968985, i64 2148969019, i64 2148969040}
!115 = !{i64 2153885723}
!116 = !{i64 2153886016}
!117 = !{i64 2153886658}
!118 = !{i64 2153887425}
!119 = !{i64 2153888201}
!120 = !{i64 2153888981}
!121 = !{i64 2153889761}
!122 = !{i64 2153890568}
!123 = !{i64 2153891512}
!124 = !{i64 4670155}
!125 = !{i64 2153892224}
!126 = !{i64 2153892721}
!127 = !{i64 2153893019}
!128 = !{i64 2153893504}
!129 = !{i64 2153894254}
!130 = !{i64 2153895668}
!131 = !{i64 2153895962}
!132 = !{i64 2153896610}
!133 = !{i64 2153869480}
!134 = !{i64 2153869807}
