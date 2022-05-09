; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-88pm860x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-88pm860x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pm860x_rtc_info = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32 }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_88pm860x__236_379_pm860x_rtc_driver_init6 = internal global ptr @pm860x_rtc_driver_init, section ".initcall6.init", align 4
@pm860x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_rtc_probe, ptr @pm860x_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_rtc_driver_exit = internal global ptr @pm860x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [53 x i8] c"rtc_88pm860x.description=Marvell 88PM860x RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [64 x i8] c"rtc_88pm860x.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [43 x i8] c"rtc_88pm860x.file=drivers/rtc/rtc-88pm860x\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [25 x i8] c"rtc_88pm860x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-rtc\00", [19 x i8] zeroinitializer }, align 32
@pm860x_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm860x_rtc_suspend, ptr @pm860x_rtc_resume, ptr @pm860x_rtc_suspend, ptr @pm860x_rtc_resume, ptr @pm860x_rtc_suspend, ptr @pm860x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@pm860x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm860x_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-88pm860x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_rtc_probe._entry_ptr = internal global ptr @pm860x_rtc_probe._entry, section ".printk_index", align 4
@pm860x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @pm860x_rtc_read_time, ptr @pm860x_rtc_set_time, ptr @pm860x_rtc_read_alarm, ptr @pm860x_rtc_set_alarm, ptr null, ptr @pm860x_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pm860x_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&info->calib_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@pm860x_rtc_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&info->calib_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@pm860x_rtc_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to find rtc node\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm860x_rtc_dt_init\00", [45 x i8] zeroinitializer }, align 32
@pm860x_rtc_dt_init._entry_ptr = internal global ptr @pm860x_rtc_dt_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,88pm860x-vrtc\00", [42 x i8] zeroinitializer }, align 32
@pm860x_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 21, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_88pm860x\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%x-%x-%x-%x-%x-%x-%x-%x\0A\00", [39 x i8] zeroinitializer }, align 32
@pm860x_rtc_read_time.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@pm860x_rtc_set_time.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm860x_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"set base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.19, ptr @.str.4, ptr @.str.15, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm860x_rtc_read_alarm\00", [42 x i8] zeroinitializer }, align 32
@pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.19, ptr @.str.4, ptr @.str.16, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pm860x_rtc_set_alarm.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.20, ptr @.str.4, ptr @.str.15, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm860x_rtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@calibrate_vrtc_work.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calibrate_vrtc_work\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mean:%d, vrtc_set:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@calibrate_vrtc_work.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set 0x%x to RTC_MISC1\0A\00", [41 x i8] zeroinitializer }, align 32
@calibrate_vrtc_work.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.4, ptr @.str.24, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"finish VRTC calibration\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"pm860x_rtc_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 370, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 372, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"pm860x_rtc_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 368, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 291, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 294, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"pm860x_rtc_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 188, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 325, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 254, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 257, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 85, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 95, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 116, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 135, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 164, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 214, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 232, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [30 x i8] c"../drivers/rtc/rtc-88pm860x.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 239, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pm860x_rtc_driver_exit, ptr @__initcall__kmod_rtc_88pm860x__236_379_pm860x_rtc_driver_init6, ptr @pm860x_rtc_driver_exit, ptr @pm860x_rtc_dt_init._entry, ptr @pm860x_rtc_dt_init._entry_ptr, ptr @pm860x_rtc_probe._entry, ptr @pm860x_rtc_probe._entry_ptr, ptr @pm860x_rtc_driver, ptr @.str, ptr @pm860x_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pm860x_rtc_ops, ptr @pm860x_rtc_probe.__key, ptr @.str.7, ptr @pm860x_rtc_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_rtc_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp9 = icmp eq i32 %7, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp9, ptr %client, ptr %companion
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %i2c, align 4
  %dev11 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev11, align 4
  %driver_data.i120 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i120 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i120, align 4
  %call14 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc_dev = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call14, ptr %rtc_dev, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call23 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %15, ptr noundef null, ptr noundef nonnull @rtc_update_handler, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %19, i32 noundef %call23) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %call30 = tail call i32 @pm860x_page_reg_write(ptr noundef %21, i32 noundef 176, i8 noundef zeroext -79) #6
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call32 = tail call i32 @pm860x_page_reg_write(ptr noundef %23, i32 noundef 178, i8 noundef zeroext -77) #6
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %call34 = tail call i32 @pm860x_page_reg_write(ptr noundef %25, i32 noundef 180, i8 noundef zeroext -75) #6
  %26 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c, align 4
  %call36 = tail call i32 @pm860x_page_reg_write(ptr noundef %27, i32 noundef 182, i8 noundef zeroext -73) #6
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end28.pm860x_rtc_dt_init.exit_crit_edge, label %if.end.i

if.end28.pm860x_rtc_dt_init.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm860x_rtc_dt_init.exit

if.end.i:                                         ; preds = %if.end28
  %call.i121 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %31, ptr noundef nonnull @.str.1) #6
  %tobool1.not.i = icmp eq ptr %call.i121, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %pm860x_rtc_dt_init.exit

if.end4.i:                                        ; preds = %if.end.i
  %vrtc.i = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i121, ptr noundef nonnull @.str.12, ptr noundef %vrtc.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.end4.i.if.end9.i_crit_edge, label %if.then7.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %vrtc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %vrtc.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end9.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i121) #6
  br label %pm860x_rtc_dt_init.exit

pm860x_rtc_dt_init.exit:                          ; preds = %if.end9.i, %do.end.i, %if.end28.pm860x_rtc_dt_init.exit_crit_edge
  %33 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtc_dev, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pm860x_rtc_ops, ptr %ops, align 8
  %36 = load ptr, ptr %rtc_dev, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 4294967295, ptr %range_max, align 8
  %38 = load ptr, ptr %rtc_dev, align 4
  %call41 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %pm860x_rtc_dt_init.exit.cleanup_crit_edge

pm860x_rtc_dt_init.exit.cleanup_crit_edge:        ; preds = %pm860x_rtc_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %pm860x_rtc_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c, align 4
  %call46 = tail call i32 @pm860x_set_bits(ptr noundef %40, i32 noundef 160, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %41 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c, align 4
  %call48 = tail call i32 @pm860x_set_bits(ptr noundef %42, i32 noundef 81, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %calib_work = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %calib_work, i32 noundef 0) #6
  %43 = ptrtoint ptr %calib_work to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %calib_work, align 4
  %lockdep_map = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @pm860x_rtc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry57 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %44 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry57, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @calibrate_vrtc_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.pm860x_rtc_info, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @pm860x_rtc_probe.__key.8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %calib_work, i32 noundef 60000) #6
  %call71 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %pm860x_rtc_dt_init.exit.cleanup_crit_edge, %do.end, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then17 ], [ %call23, %do.end ], [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call41, %pm860x_rtc_dt_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %calib_work = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %calib_work) #6
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call2 = tail call i32 @pm860x_set_bits(ptr noundef %3, i32 noundef 81, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_update_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @pm860x_set_bits(ptr noundef %1, i32 noundef 160, i8 noundef zeroext 56, i8 noundef zeroext 48) #6
  %rtc_dev = getelementptr inbounds %struct.pm860x_rtc_info, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 32) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_page_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calibrate_vrtc_work(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !79
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !79
  %i2c = getelementptr i8, ptr %work, i32 -12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %sum.0128 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.0127 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @msleep(i32 noundef 100) #6
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %call = call i32 @pm860x_bulk_read(ptr noundef %4, i32 noundef 125, i32 noundef 2, ptr noundef nonnull %buf) #6
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv2 = zext i8 %8 to i32
  %or = or i32 %shl, %conv2
  %mul = mul nuw nsw i32 %or, 5400
  %shr = lshr i32 %mul, 12
  %add = add i32 %shr, %sum.0128
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %shr3 = lshr i32 %add, 4
  %vrtc = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %vrtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vrtc, align 4
  %and = and i32 %10, 3
  %mul4 = mul nuw nsw i32 %and, 200
  %add5 = add nuw nsw i32 %mul4, 2700
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calibrate_vrtc_work, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_vrtc_work.__UNIQUE_ID_ddebug233, ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef %shr3, i32 noundef %add5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call12 = call i32 @pm860x_reg_read(ptr noundef %14, i32 noundef 173) #6
  %and13 = and i32 %call12, 3
  %add14 = add nuw nsw i32 %shr3, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %add5)
  %cmp15 = icmp ult i32 %add14, %add5
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end
  %inc18 = add nuw nsw i32 %and13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc18)
  %cmp19 = icmp eq i32 %inc18, 4
  br i1 %cmp19, label %if.then17.out_crit_edge, label %if.end22

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %and23 = and i32 %call12, 248
  %or25 = or i32 %inc18, %and23
  br label %do.body45

if.else:                                          ; preds = %do.end
  %sub = add nsw i32 %shr3, -200
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add5)
  %cmp29 = icmp ule i32 %sub, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp32 = icmp eq i32 %and13, 0
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.else.out_crit_edge, label %if.end35

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %call12, 3
  %and36 = and i32 %call12, 248
  %and37 = and i32 %dec, 3
  %or38 = or i32 %and37, %and36
  br label %do.body45

do.body45:                                        ; preds = %if.end35, %if.end22
  %or25.sink = phi i32 [ %or25, %if.end22 ], [ %or38, %if.end35 ]
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %conv27 = trunc i32 %or25.sink to i8
  %call28 = call i32 @pm860x_reg_write(ptr noundef %16, i32 noundef 173, i8 noundef zeroext %conv27) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calibrate_vrtc_work, %do.end63)) #6
          to label %if.then59 [label %do.end63], !srcloc !80

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %dev60 = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev60, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_vrtc_work.__UNIQUE_ID_ddebug234, ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %or25.sink) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %work, i32 noundef 60000) #6
  br label %cleanup

out:                                              ; preds = %if.else.out_crit_edge, %if.then17.out_crit_edge
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %call66 = call i32 @pm860x_set_bits(ptr noundef %21, i32 noundef 81, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@calibrate_vrtc_work, %cleanup)) #6
          to label %if.then81 [label %cleanup], !srcloc !80

if.then81:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %dev82 = getelementptr i8, ptr %work, i32 -4
  %22 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev82, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @calibrate_vrtc_work.__UNIQUE_ID_ddebug235, ptr noundef %23, ptr noundef nonnull @.str.24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %out, %do.end63
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call1 = call i32 @pm860x_page_bulk_read(ptr noundef %9, i32 noundef 176, i32 noundef 8, ptr noundef nonnull %buf) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_read_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %dev6 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 8
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv8 = zext i8 %17 to i32
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 2
  %conv10 = zext i8 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv12 = zext i8 %21 to i32
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %11, align 4
  %conv14 = zext i8 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv16 = zext i8 %25 to i32
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %10, align 2
  %conv18 = zext i8 %27 to i32
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  %conv20 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %conv22 = zext i8 %31 to i32
  %shl = shl nuw i32 %conv22, 24
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %conv24 = zext i8 %33 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or = or i32 %shl25, %shl
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %conv27 = zext i8 %35 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %or29 = or i32 %or, %shl28
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %6, align 1
  %conv31 = zext i8 %37 to i32
  %or32 = or i32 %or29, %conv31
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 4
  %call35 = call i32 @pm860x_bulk_read(ptr noundef %39, i32 noundef 161, i32 noundef 4, ptr noundef nonnull %buf) #6
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  %conv37 = zext i8 %41 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 2
  %conv40 = zext i8 %43 to i32
  %shl41 = shl nuw nsw i32 %conv40, 16
  %or42 = or i32 %shl41, %shl38
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %2, align 1
  %conv44 = zext i8 %45 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or46 = or i32 %or42, %shl45
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 8
  %conv48 = zext i8 %47 to i32
  %or49 = or i32 %or46, %conv48
  %add = add i32 %or49, %or32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_read_time.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_read_time, %do.end68)) #6
          to label %if.then64 [label %do.end68], !srcloc !80

if.then64:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev65 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_read_time.__UNIQUE_ID_ddebug228, ptr noundef %49, ptr noundef nonnull @.str.16, i32 noundef %or32, i32 noundef %or49, i32 noundef %add) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.end
  %conv69 = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv69, ptr noundef %tm) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %conv = trunc i64 %call1 to i32
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call2 = call i32 @pm860x_bulk_read(ptr noundef %7, i32 noundef 161, i32 noundef 4, ptr noundef nonnull %buf) #6
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %4, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl nuw i32 %conv3, 24
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 2
  %conv5 = zext i8 %11 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  %conv8 = zext i8 %13 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 4
  %conv12 = zext i8 %15 to i32
  %or13 = or i32 %or10, %conv12
  %sub = sub i32 %conv, %or13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_set_time.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_set_time.__UNIQUE_ID_ddebug229, ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %sub, i32 noundef %or13, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %shr = lshr i32 %sub, 24
  %conv20 = trunc i32 %shr to i8
  %call21 = call i32 @pm860x_page_reg_write(ptr noundef %19, i32 noundef 177, i8 noundef zeroext %conv20) #6
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %shr23 = lshr i32 %sub, 16
  %conv25 = trunc i32 %shr23 to i8
  %call26 = call i32 @pm860x_page_reg_write(ptr noundef %21, i32 noundef 179, i8 noundef zeroext %conv25) #6
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %shr28 = lshr i32 %sub, 8
  %conv30 = trunc i32 %shr28 to i8
  %call31 = call i32 @pm860x_page_reg_write(ptr noundef %23, i32 noundef 181, i8 noundef zeroext %conv30) #6
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %conv34 = trunc i32 %sub to i8
  %call35 = call i32 @pm860x_page_reg_write(ptr noundef %25, i32 noundef 183, i8 noundef zeroext %conv34) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call1 = call i32 @pm860x_page_bulk_read(ptr noundef %9, i32 noundef 176, i32 noundef 8, ptr noundef nonnull %buf) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_read_alarm, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %dev6 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 8
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %conv8 = zext i8 %17 to i32
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 2
  %conv10 = zext i8 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv12 = zext i8 %21 to i32
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %11, align 4
  %conv14 = zext i8 %23 to i32
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv16 = zext i8 %25 to i32
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %10, align 2
  %conv18 = zext i8 %27 to i32
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  %conv20 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug230, ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %conv22 = zext i8 %31 to i32
  %shl = shl nuw i32 %conv22, 24
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %conv24 = zext i8 %33 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or = or i32 %shl25, %shl
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %conv27 = zext i8 %35 to i32
  %shl28 = shl nuw nsw i32 %conv27, 8
  %or29 = or i32 %or, %shl28
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %6, align 1
  %conv31 = zext i8 %37 to i32
  %or32 = or i32 %or29, %conv31
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 4
  %call35 = call i32 @pm860x_bulk_read(ptr noundef %39, i32 noundef 165, i32 noundef 4, ptr noundef nonnull %buf) #6
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  %conv37 = zext i8 %41 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 2
  %conv40 = zext i8 %43 to i32
  %shl41 = shl nuw nsw i32 %conv40, 16
  %or42 = or i32 %shl41, %shl38
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %2, align 1
  %conv44 = zext i8 %45 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or46 = or i32 %or42, %shl45
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 8
  %conv48 = zext i8 %47 to i32
  %or49 = or i32 %or46, %conv48
  %add = add i32 %or49, %or32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_read_alarm, %do.end68)) #6
          to label %if.then64 [label %do.end68], !srcloc !80

if.then64:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev65 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug231, ptr noundef %49, ptr noundef nonnull @.str.16, i32 noundef %or32, i32 noundef %or49, i32 noundef %add) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.end
  %conv69 = zext i32 %add to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv69, ptr noundef %time) #6
  %50 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c, align 4
  %call71 = call i32 @pm860x_reg_read(ptr noundef %51, i32 noundef 160) #6
  %52 = trunc i32 %call71 to i8
  %53 = lshr i8 %52, 3
  %54 = and i8 %53, 1
  %55 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %alrm, align 4
  %and74 = and i32 %call71, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp ne i32 %and74, 0
  %conv77 = zext i1 %tobool75.not to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %56 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv77, ptr %pending, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %i2c = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %buf, align 8
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call1 = tail call i32 @pm860x_set_bits(ptr noundef %9, i32 noundef 160, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call3 = call i32 @pm860x_page_bulk_read(ptr noundef %11, i32 noundef 176, i32 noundef 8, ptr noundef nonnull %buf) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_rtc_set_alarm.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm860x_rtc_set_alarm, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %13 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %dev8 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 8
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %conv10 = zext i8 %19 to i32
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 2
  %conv12 = zext i8 %21 to i32
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 1
  %conv14 = zext i8 %23 to i32
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %13, align 4
  %conv16 = zext i8 %25 to i32
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 1
  %conv18 = zext i8 %27 to i32
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %12, align 2
  %conv20 = zext i8 %29 to i32
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %conv22 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_rtc_set_alarm.__UNIQUE_ID_ddebug232, ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %2, align 1
  %conv24 = zext i8 %33 to i32
  %shl = shl nuw i32 %conv24, 24
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %conv26 = zext i8 %35 to i32
  %shl27 = shl nuw nsw i32 %conv26, 16
  %or = or i32 %shl27, %shl
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %conv29 = zext i8 %37 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %or, %shl30
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  %conv33 = zext i8 %39 to i32
  %or34 = or i32 %or31, %conv33
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %call35 = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv36 = trunc i64 %call35 to i32
  %sub = sub i32 %conv36, %or34
  %conv37 = trunc i32 %sub to i8
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv37, ptr %buf, align 8
  %shr = lshr i32 %sub, 8
  %conv40 = trunc i32 %shr to i8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv40, ptr %2, align 1
  %shr42 = lshr i32 %sub, 16
  %conv44 = trunc i32 %shr42 to i8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv44, ptr %3, align 2
  %shr46 = lshr i32 %sub, 24
  %conv48 = trunc i32 %shr46 to i8
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv48, ptr %4, align 1
  %44 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c, align 4
  %call52 = call i32 @pm860x_bulk_write(ptr noundef %45, i32 noundef 165, i32 noundef 4, ptr noundef nonnull %buf) #6
  %46 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool53.not = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c, align 4
  %. = select i1 %tobool53.not, i8 48, i8 56
  %call61 = call i32 @pm860x_set_bits(ptr noundef %49, i32 noundef 160, i8 noundef zeroext 56, i8 noundef zeroext %.) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %i2c2 = getelementptr inbounds %struct.pm860x_rtc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c2, align 4
  %. = select i1 %tobool.not, i8 0, i8 8
  %call3 = tail call i32 @pm860x_set_bits(ptr noundef %3, i32 noundef 160, i8 noundef zeroext 8, i8 noundef zeroext %.) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_page_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_bulk_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_rtc_suspend(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %or = or i32 %8, 16
  store i32 %or, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_rtc_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup_flag = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %and = and i32 %8, -17
  store i32 %and, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_rtc_88pm860x__236_379_pm860x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_88pm860x__236_379_pm860x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 379, i32 1}
!2 = !{ptr @__exitcall_pm860x_rtc_driver_exit, !1, !"__exitcall_pm860x_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 381, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 382, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 383, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 372, i32 11}
!12 = !{ptr @pm860x_rtc_driver, !13, !"pm860x_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 370, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 291, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 294, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pm860x_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pm860x_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pm860x_rtc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 325, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pm860x_rtc_probe.__key.8, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 254, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pm860x_rtc_dt_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pm860x_rtc_dt_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 257, i32 33}
!36 = !{ptr @pm860x_rtc_ops, !37, !"pm860x_rtc_ops", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 188, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 85, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pm860x_rtc_read_time.__UNIQUE_ID_ddebug227, !39, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 95, i32 2}
!45 = !{ptr @pm860x_rtc_read_time.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 116, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pm860x_rtc_set_time.__UNIQUE_ID_ddebug229, !47, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 135, i32 2}
!52 = !{ptr @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug230, !51, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!53 = !{ptr @pm860x_rtc_read_alarm.__UNIQUE_ID_ddebug231, !54, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 144, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 164, i32 2}
!57 = !{ptr @pm860x_rtc_set_alarm.__UNIQUE_ID_ddebug232, !56, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 214, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug233, !59, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 232, i32 2}
!64 = !{ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug234, !63, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 239, i32 2}
!67 = !{ptr @calibrate_vrtc_work.__UNIQUE_ID_ddebug235, !66, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!68 = !{ptr @pm860x_rtc_pm_ops, !69, !"pm860x_rtc_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-88pm860x.c", i32 368, i32 8}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148700340, i64 2148700345, i64 2148700358, i64 2148700402, i64 2148700436, i64 2148700457}
