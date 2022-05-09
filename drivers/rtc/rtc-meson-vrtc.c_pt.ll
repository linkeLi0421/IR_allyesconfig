; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-meson-vrtc.c_pt.bc'
source_filename = "../drivers/rtc/rtc-meson-vrtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.meson_vrtc_data = type { ptr, ptr, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_meson_vrtc__233_147_meson_vrtc_driver_init6 = internal global ptr @meson_vrtc_driver_init, section ".initcall6.init", align 4
@meson_vrtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_vrtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_vrtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_vrtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_vrtc_driver_exit = internal global ptr @meson_vrtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [67 x i8] c"rtc_meson_vrtc.description=Amlogic Virtual Wakeup RTC Timer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [47 x i8] c"rtc_meson_vrtc.file=drivers/rtc/rtc-meson-vrtc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [27 x i8] c"rtc_meson_vrtc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson-vrtc\00", [21 x i8] zeroinitializer }, align 32
@meson_vrtc_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-vrtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@meson_vrtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @meson_vrtc_suspend, ptr @meson_vrtc_resume, ptr @meson_vrtc_suspend, ptr @meson_vrtc_resume, ptr @meson_vrtc_suspend, ptr @meson_vrtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_vrtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @meson_vrtc_read_time, ptr null, ptr null, ptr @meson_vrtc_set_alarm, ptr null, ptr @meson_vrtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@meson_vrtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtc_meson_vrtc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_vrtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/rtc/rtc-meson-vrtc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@meson_vrtc_set_alarm.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_vrtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: alarm->enabled=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@meson_vrtc_suspend.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.4, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_vrtc_suspend\00", [45 x i8] zeroinitializer }, align 32
@meson_vrtc_suspend.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"alarm_time = %lus, local_time=%lus\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_vrtc_suspend.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"system will wakeup in %lds.\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_vrtc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 111, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alarm time already passed: %lds.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_vrtc_suspend._entry_ptr = internal global ptr @meson_vrtc_suspend._entry, section ".printk_index", align 4
@meson_vrtc_resume.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.4, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_vrtc_resume\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"meson_vrtc_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 138, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 141, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"meson_vrtc_dt_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 132, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"meson_vrtc_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 129, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"meson_vrtc_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 59, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 25, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 93, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 102, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 107, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 110, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [32 x i8] c"../drivers/rtc/rtc-meson-vrtc.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 122, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_meson_vrtc_driver_exit, ptr @__initcall__kmod_rtc_meson_vrtc__233_147_meson_vrtc_driver_init6, ptr @meson_vrtc_driver_exit, ptr @meson_vrtc_suspend._entry, ptr @meson_vrtc_suspend._entry_ptr, ptr @meson_vrtc_driver, ptr @.str, ptr @meson_vrtc_dt_match, ptr @meson_vrtc_pm_ops, ptr @meson_vrtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vrtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vrtc_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vrtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vrtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vrtc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_vrtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_vrtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_vrtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #7
  %rtc = getelementptr inbounds %struct.meson_vrtc_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %rtc, align 4
  %cmp.i34 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @meson_vrtc_ops, ptr %ops, align 8
  %6 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc, align 4
  %call20 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %4, %if.then14 ], [ %call20, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %time = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time) #7
  %0 = call ptr @memset(ptr %time, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_read_time, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @ktime_get_raw_ts64(ptr noundef nonnull %time) #7
  %1 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %time, align 8
  call void @rtc_time64_to_tm(i64 noundef %2, ptr noundef %tm) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_set_alarm.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_set_alarm, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarm, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_set_alarm.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %do.end.if.end11_crit_edge, label %if.then7

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call8 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #7
  %conv9 = trunc i64 %call8 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.end.if.end11_crit_edge
  %conv9.sink = phi i32 [ %conv9, %if.then7 ], [ 0, %do.end.if.end11_crit_edge ]
  %6 = getelementptr inbounds %struct.meson_vrtc_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv9.sink, ptr %6, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_vrtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool = icmp ne i32 %enabled, 0
  %enabled1 = getelementptr inbounds %struct.meson_vrtc_data, ptr %1, i32 0, i32 3
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %enabled1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %time = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_suspend, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_suspend.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %alarm_time = getelementptr inbounds %struct.meson_vrtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %alarm_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarm_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end.if.end51_crit_edge, label %if.then6

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %time) #7
  %4 = call ptr @memset(ptr %time, i32 255, i32 16)
  call void @ktime_get_raw_ts64(ptr noundef nonnull %time) #7
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time, align 8
  %conv = trunc i64 %6 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_suspend, %do.end25)) #7
          to label %if.then21 [label %do.end25], !srcloc !55

if.then21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %alarm_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alarm_time, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_suspend.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %8, i32 noundef %conv) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %if.then6
  %9 = ptrtoint ptr %alarm_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarm_time, align 4
  %sub = sub i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then28, label %do.end49

if.then28:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call i32 @llvm.bswap.i32(i32 %sub) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_suspend, %if.end50)) #7
          to label %if.then43 [label %if.end50], !srcloc !55

if.then43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_suspend.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %sub) #7
  br label %if.end50

do.end49:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %sub) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %if.then43, %if.then28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %time) #7
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %do.end.if.end51_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_vrtc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_vrtc_resume.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_vrtc_resume, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_vrtc_resume.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %alarm_time = getelementptr inbounds %struct.meson_vrtc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %alarm_time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %alarm_time, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !56
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_rtc_meson_vrtc__233_147_meson_vrtc_driver_init6, !1, !"__initcall__kmod_rtc_meson_vrtc__233_147_meson_vrtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_meson_vrtc_driver_exit, !1, !"__exitcall_meson_vrtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description234, !4, !"__UNIQUE_ID_description234", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 149, i32 1}
!5 = !{ptr @__UNIQUE_ID_file235, !6, !"__UNIQUE_ID_file235", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 150, i32 1}
!7 = !{ptr @__UNIQUE_ID_license236, !6, !"__UNIQUE_ID_license236", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 141, i32 11}
!10 = !{ptr @meson_vrtc_driver, !11, !"meson_vrtc_driver", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 138, i32 31}
!12 = !{ptr @meson_vrtc_ops, !13, !"meson_vrtc_ops", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 59, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 25, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @meson_vrtc_read_time.__UNIQUE_ID_ddebug227, !15, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 42, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @meson_vrtc_set_alarm.__UNIQUE_ID_ddebug228, !21, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!24 = !{ptr @meson_vrtc_dt_match, !25, !"meson_vrtc_dt_match", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 132, i32 34}
!26 = !{ptr @meson_vrtc_pm_ops, !27, !"meson_vrtc_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 129, i32 8}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 93, i32 2}
!30 = !{ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug229, !29, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 102, i32 3}
!33 = !{ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug230, !32, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 107, i32 4}
!36 = !{ptr @meson_vrtc_suspend.__UNIQUE_ID_ddebug231, !35, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 110, i32 4}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @meson_vrtc_suspend._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @meson_vrtc_suspend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-meson-vrtc.c", i32 122, i32 2}
!45 = !{ptr @meson_vrtc_resume.__UNIQUE_ID_ddebug232, !44, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148955055, i64 2148955060, i64 2148955073, i64 2148955117, i64 2148955151, i64 2148955172}
!56 = !{i64 4882860}
