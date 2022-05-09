; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-st-lpc.c_pt.bc'
source_filename = "../drivers/rtc/rtc-st-lpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.st_rtc = type { ptr, %struct.rtc_wkalrm, ptr, i32, ptr, i8, %struct.spinlock, i16 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }

@__initcall__kmod_rtc_st_lpc__227_316_st_rtc_platform_driver_init6 = internal global ptr @st_rtc_platform_driver_init, section ".initcall6.init", align 4
@st_rtc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_rtc_platform_driver_exit = internal global ptr @st_rtc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"rtc_st_lpc.description=STMicroelectronics LPC RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [51 x i8] c"rtc_st_lpc.author=David Paris <david.paris@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_st_lpc.file=drivers/rtc/rtc-st-lpc\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_st_lpc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st-lpc-rtc\00", [21 x i8] zeroinitializer }, align 32
@st_rtc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,lpc-mode\00", [20 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"An LPC mode must be provided\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_rtc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-st-lpc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry_ptr = internal global ptr @st_rtc_probe._entry, section ".printk_index", align 4
@st_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ missing or invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry_ptr.10 = internal global ptr @st_rtc_probe._entry.8, section ".printk_index", align 4
@st_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %i\0A\00", [38 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry_ptr.13 = internal global ptr @st_rtc_probe._entry.11, section ".printk_index", align 4
@st_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry_ptr.16 = internal global ptr @st_rtc_probe._entry.14, section ".printk_index", align 4
@st_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to fetch clock rate\0A\00", [36 x i8] zeroinitializer }, align 32
@st_rtc_probe._entry_ptr.19 = internal global ptr @st_rtc_probe._entry.17, section ".printk_index", align 4
@st_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @st_rtc_read_time, ptr @st_rtc_set_time, ptr @st_rtc_read_alarm, ptr @st_rtc_set_alarm, ptr null, ptr @st_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"st_rtc_platform_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 307, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 309, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"st_rtc_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 301, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"st_rtc_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 299, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 191, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 193, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 209, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 217, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 224, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 233, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 241, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"st_rtc_ops\00", align 1
@___asan_gen_.84 = private constant [28 x i8] c"../drivers/rtc/rtc-st-lpc.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 176, i32 35 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_st_rtc_platform_driver_exit, ptr @__initcall__kmod_rtc_st_lpc__227_316_st_rtc_platform_driver_init6, ptr @st_rtc_platform_driver_exit, ptr @st_rtc_probe._entry, ptr @st_rtc_probe._entry.11, ptr @st_rtc_probe._entry.14, ptr @st_rtc_probe._entry.17, ptr @st_rtc_probe._entry.8, ptr @st_rtc_probe._entry_ptr, ptr @st_rtc_probe._entry_ptr.10, ptr @st_rtc_probe._entry_ptr.13, ptr @st_rtc_probe._entry_ptr.16, ptr @st_rtc_probe._entry_ptr.19, ptr @st_rtc_platform_driver, ptr @.str, ptr @st_rtc_match, ptr @st_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @st_rtc_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @st_rtc_ops], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_rtc_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_rtc_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_rtc_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !58
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %mode, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call10 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup

do.body17:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.st_rtc, ptr %call.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @st_rtc_probe.__key, i16 noundef signext 3) #6
  %call21 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %ioaddr = getelementptr inbounds %struct.st_rtc, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %ioaddr, align 4
  %cmp.i436 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i436, label %if.then24, label %if.end27

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %do.body17
  %call28 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #6
  %conv = trunc i32 %call28 to i16
  %irq = getelementptr inbounds %struct.st_rtc, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool30.not = icmp eq i16 %conv, 0
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %sext = shl i32 %call28, 16
  %conv39 = ashr exact i32 %sext, 16
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call.i437 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %conv39, ptr noundef nonnull @st_rtc_handler, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool41.not = icmp eq i32 %call.i437, 0
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %irq, align 4
  %conv51 = sext i16 %13 to i32
  br i1 %tobool41.not, label %if.end49, label %do.end45

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv51) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end36
  %call.i438 = call i32 @irq_set_irq_wake(i32 noundef %conv51, i32 noundef 1) #6
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %irq, align 4
  %conv54 = sext i16 %15 to i32
  call void @disable_irq(i32 noundef %conv54) #6
  %call56 = call ptr @clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.st_rtc, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call56, ptr %clk, align 4
  %cmp.i439 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i439, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end49
  %call.i440 = call i32 @clk_prepare(ptr noundef %call56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %tobool.not.i = icmp eq i32 %call.i440, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.clk_prepare_enable.exit_crit_edge

if.end66.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end66
  %call1.i = call i32 @clk_enable(ptr noundef %call56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call56) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end66.clk_prepare_enable.exit_crit_edge
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call70 = call i32 @clk_get_rate(ptr noundef %21) #6
  %clkrate = getelementptr inbounds %struct.st_rtc, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %clkrate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call70, ptr %clkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %do.end76, label %if.end78

do.end76:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end78:                                         ; preds = %clk_prepare_enable.exit
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @st_rtc_ops, ptr %ops, align 8
  %27 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %range_max, align 8
  %29 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clkrate, align 4
  %31 = load ptr, ptr %call.i, align 4
  %range_max265 = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %range_max265 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %range_max265, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %33)
  %cmp267 = icmp ult i64 %33, 4294967296
  br i1 %cmp267, label %if.then271, label %if.else283, !prof !59

if.then271:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %conv274 = trunc i64 %33 to i32
  %div279 = udiv i32 %conv274, %30
  %conv280 = zext i32 %div279 to i64
  br label %if.end289

if.else283:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %34 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %33) #10, !srcloc !60
  %asmresult1.i = extractvalue { i64, i64 } %34, 1
  br label %if.end289

if.end289:                                        ; preds = %if.else283, %if.then271
  %storemerge = phi i64 [ %asmresult1.i, %if.else283 ], [ %conv280, %if.then271 ]
  %35 = ptrtoint ptr %range_max265 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %storemerge, ptr %range_max265, align 8
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call292 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.end289.cleanup_crit_edge, label %if.then294

if.end289.cleanup_crit_edge:                      ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then294:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %39) #6
  call void @clk_unprepare(ptr noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then294, %if.end289.cleanup_crit_edge, %do.end76, %do.end62, %do.end45, %do.end34, %if.then24, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %6, %if.then13 ], [ %8, %if.then24 ], [ %call.i437, %do.end45 ], [ %19, %do.end62 ], [ %call292, %if.then294 ], [ -22, %do.end76 ], [ -22, %do.end34 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.end289.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_handler(i32 noundef %this_irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 32) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ioaddr = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 4
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %entry
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !61
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr11 = getelementptr i8, ptr %6, i32 1024
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !61
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 1028
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #6, !srcloc !61
  %cmp20.not = icmp eq i32 %10, %4
  br i1 %cmp20.not, label %do.end22, label %do.body6.do.body6_crit_edge

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.end22:                                         ; preds = %do.body6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %11 = zext i32 %4 to i64
  %12 = zext i32 %7 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %clkrate = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %15)
  %cmp196 = icmp ult i64 %15, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !59

if.then200:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %conv201 = trunc i64 %15 to i32
  %div204 = udiv i32 %conv201, %17
  %conv205 = zext i32 %div204 to i64
  br label %if.end210

if.else206:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %15) #10, !srcloc !60
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  br label %if.end210

if.end210:                                        ; preds = %if.else206, %if.then200
  %lpt.0 = phi i64 [ %conv205, %if.then200 ], [ %asmresult1.i, %if.else206 ]
  tail call void @rtc_time64_to_tm(i64 noundef %lpt.0, ptr noundef %tm) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %clkrate = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clkrate, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %call1, %conv
  %lock = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %shr = lshr i64 %mul, 32
  %conv8 = trunc i64 %shr to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %ioaddr = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !62
  %conv9 = trunc i64 %mul to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %7) #6, !srcloc !62
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16777216) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wkalrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %alarm = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %wkalrm, ptr %alarm, i32 40)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %t) #2 align 64 {
entry:
  %now = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now) #6
  %2 = call ptr @memset(ptr %now, i32 255, i32 36)
  %lock.i = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 6
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %ioaddr.i = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 4
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.body6.i.do.body6.i_crit_edge, %entry
  %3 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1028
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 1024
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !61
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %10, i32 1028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #6, !srcloc !61
  %cmp20.not.i = icmp eq i32 %11, %5
  br i1 %cmp20.not.i, label %do.end22.i, label %do.body6.i.do.body6.i_crit_edge

do.body6.i.do.body6.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6.i

do.end22.i:                                       ; preds = %do.body6.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %12 = zext i32 %5 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #6
  %clkrate.i = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %clkrate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clkrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %16)
  %cmp196.i = icmp ult i64 %16, 4294967296
  br i1 %cmp196.i, label %if.then200.i, label %if.else206.i, !prof !59

if.then200.i:                                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv201.i = trunc i64 %16 to i32
  %div204.i = udiv i32 %conv201.i, %18
  %conv205.i = zext i32 %div204.i to i64
  br label %st_rtc_read_time.exit

if.else206.i:                                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %16) #10, !srcloc !60
  %asmresult1.i.i = extractvalue { i64, i64 } %19, 1
  br label %st_rtc_read_time.exit

st_rtc_read_time.exit:                            ; preds = %if.else206.i, %if.then200.i
  %lpt.0.i = phi i64 [ %conv205.i, %if.then200.i ], [ %asmresult1.i.i, %if.else206.i ]
  call void @rtc_time64_to_tm(i64 noundef %lpt.0.i, ptr noundef nonnull %now) #6
  %call2 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now) #6
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %alarm = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %alarm, ptr %t, i32 40)
  %sub = sub i64 %call3, %call2
  %21 = ptrtoint ptr %clkrate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clkrate.i, align 4
  %conv = zext i32 %22 to i64
  %mul = mul i64 %sub, %conv
  %shr = lshr i64 %mul, 32
  %conv4 = trunc i64 %shr to i32
  %conv5 = trunc i64 %mul to i32
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %24, i32 1296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 16777216) #6, !srcloc !62
  %25 = call i32 @llvm.bswap.i32(i32 %conv4) #6
  %26 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %27, i32 1044
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %25) #6, !srcloc !62
  %28 = call i32 @llvm.bswap.i32(i32 %conv5) #6
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %30, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %28) #6, !srcloc !62
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %32, i32 1048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777216) #6, !srcloc !62
  %33 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %34, i32 1296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #6, !srcloc !62
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %35 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %t, align 4
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i20 = icmp eq i8 %36, 0
  %irq_enabled5.i = getelementptr inbounds %struct.st_rtc, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %irq_enabled5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load6.i = load i8, ptr %irq_enabled5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %bf.cast8.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %tobool.not.i20, label %land.lhs.true4.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %st_rtc_read_time.exit
  br i1 %bf.cast8.not.i, label %if.then.i, label %land.lhs.true.i.st_rtc_alarm_irq_enable.exit_crit_edge

land.lhs.true.i.st_rtc_alarm_irq_enable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %st_rtc_alarm_irq_enable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq.i = getelementptr inbounds %struct.st_rtc, ptr %38, i32 0, i32 7
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %irq.i, align 4
  %conv.i = sext i16 %41 to i32
  call void @enable_irq(i32 noundef %conv.i) #6
  %42 = ptrtoint ptr %irq_enabled5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load2.i = load i8, ptr %irq_enabled5.i, align 4
  %bf.set.i = or i8 %bf.load2.i, -128
  br label %if.end17.sink.split.i

land.lhs.true4.critedge.i:                        ; preds = %st_rtc_read_time.exit
  br i1 %bf.cast8.not.i, label %land.lhs.true4.critedge.i.st_rtc_alarm_irq_enable.exit_crit_edge, label %if.then10.i

land.lhs.true4.critedge.i.st_rtc_alarm_irq_enable.exit_crit_edge: ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %st_rtc_alarm_irq_enable.exit

if.then10.i:                                      ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq11.i = getelementptr inbounds %struct.st_rtc, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %irq11.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %irq11.i, align 4
  %conv12.i = sext i16 %44 to i32
  call void @disable_irq(i32 noundef %conv12.i) #6
  %45 = ptrtoint ptr %irq_enabled5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load14.i = load i8, ptr %irq_enabled5.i, align 4
  %bf.clear15.i = and i8 %bf.load14.i, 127
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then10.i, %if.then.i
  %bf.clear15.sink.i = phi i8 [ %bf.clear15.i, %if.then10.i ], [ %bf.set.i, %if.then.i ]
  %46 = ptrtoint ptr %irq_enabled5.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %bf.clear15.sink.i, ptr %irq_enabled5.i, align 4
  br label %st_rtc_alarm_irq_enable.exit

st_rtc_alarm_irq_enable.exit:                     ; preds = %if.end17.sink.split.i, %land.lhs.true4.critedge.i.st_rtc_alarm_irq_enable.exit_crit_edge, %land.lhs.true.i.st_rtc_alarm_irq_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irq_enabled5 = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load6 = load i8, ptr %irq_enabled5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6)
  %bf.cast8.not = icmp sgt i8 %bf.load6, -1
  br i1 %tobool.not, label %land.lhs.true4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %bf.cast8.not, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %irq, align 4
  %conv = sext i16 %4 to i32
  tail call void @enable_irq(i32 noundef %conv) #6
  %5 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load2 = load i8, ptr %irq_enabled5, align 4
  %bf.set = or i8 %bf.load2, -128
  br label %if.end17.sink.split

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %bf.cast8.not, label %land.lhs.true4.critedge.if.end17_crit_edge, label %if.then10

land.lhs.true4.critedge.if.end17_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %irq11 = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irq11, align 4
  %conv12 = sext i16 %7 to i32
  tail call void @disable_irq(i32 noundef %conv12) #6
  %8 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load14 = load i8, ptr %irq_enabled5, align 4
  %bf.clear15 = and i8 %bf.load14, 127
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then10, %if.then
  %bf.clear15.sink = phi i8 [ %bf.clear15, %if.then10 ], [ %bf.set, %if.then ]
  %9 = ptrtoint ptr %irq_enabled5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear15.sink, ptr %irq_enabled5, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %land.lhs.true4.critedge.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ioaddr = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !62
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #6, !srcloc !62
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %if.end, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %call1 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %3, i32 noundef 0) #6
  %alarm = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %alarm, i32 0, i32 40)
  %ioaddr = getelementptr inbounds %struct.st_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !62
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #6, !srcloc !62
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #6, !srcloc !62
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #6, !srcloc !62
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #6, !srcloc !62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_alarm_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_rtc_st_lpc__227_316_st_rtc_platform_driver_init6, !1, !"__initcall__kmod_rtc_st_lpc__227_316_st_rtc_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_st_rtc_platform_driver_exit, !1, !"__exitcall_st_rtc_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 309, i32 11}
!12 = !{ptr @st_rtc_platform_driver, !13, !"st_rtc_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 307, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 191, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 193, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @st_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @st_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @st_rtc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 209, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 217, i32 3}
!29 = !{ptr @st_rtc_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @st_rtc_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 224, i32 3}
!33 = !{ptr @st_rtc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @st_rtc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 233, i32 3}
!37 = !{ptr @st_rtc_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @st_rtc_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 241, i32 3}
!41 = !{ptr @st_rtc_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_rtc_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @st_rtc_ops, !44, !"st_rtc_ops", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 176, i32 35}
!45 = !{ptr @st_rtc_match, !46, !"st_rtc_match", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 301, i32 34}
!47 = !{ptr @st_rtc_pm_ops, !48, !"st_rtc_pm_ops", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-st-lpc.c", i32 299, i32 8}
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
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148636233, i64 2148636513, i64 2148636847, i64 2148637181}
!61 = !{i64 3075522}
!62 = !{i64 3075104}
