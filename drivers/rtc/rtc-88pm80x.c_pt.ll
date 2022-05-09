; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-88pm80x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-88pm80x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pm80x_rtc_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.pm80x_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.pm80x_rtc_pdata = type { i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_88pm80x__236_336_pm80x_rtc_driver_init6 = internal global ptr @pm80x_rtc_driver_init, section ".initcall6.init", align 4
@pm80x_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm80x_rtc_probe, ptr @pm80x_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm80x_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm80x_rtc_driver_exit = internal global ptr @pm80x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"rtc_88pm80x.file=drivers/rtc/rtc-88pm80x\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"rtc_88pm80x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"rtc_88pm80x.description=Marvell 88PM80x RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [52 x i8] c"rtc_88pm80x.author=Qiao Zhou <zhouqiao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [39 x i8] c"rtc_88pm80x.alias=platform:88pm80x-rtc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"88pm80x-rtc\00", [20 x i8] zeroinitializer }, align 32
@pm80x_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm80x_rtc_suspend, ptr @pm80x_rtc_resume, ptr @pm80x_rtc_suspend, ptr @pm80x_rtc_resume, ptr @pm80x_rtc_suspend, ptr @pm80x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pm80x-rtc requires platform data or of_node\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm80x_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-88pm80x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry_ptr = internal global ptr @pm80x_rtc_probe._entry, section ".printk_index", align 4
@pm80x_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry_ptr.8 = internal global ptr @pm80x_rtc_probe._entry.6, section ".printk_index", align 4
@pm80x_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no regmap!\0A\00", [20 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry_ptr.11 = internal global ptr @pm80x_rtc_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pm80x_rtc_probe._entry_ptr.15 = internal global ptr @pm80x_rtc_probe._entry.13, section ".printk_index", align 4
@pm80x_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @pm80x_rtc_read_time, ptr @pm80x_rtc_set_time, ptr @pm80x_rtc_read_alarm, ptr @pm80x_rtc_set_alarm, ptr null, ptr @pm80x_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pm80x_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_88pm80x\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm80x_rtc_read_time\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%x-%x-%x-%x\0A\00", [19 x i8] zeroinitializer }, align 32
@pm80x_rtc_read_time.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 28, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"get base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@pm80x_rtc_set_time.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm80x_rtc_set_time\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"set base:0x%lx, RO count:0x%lx, ticks:0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.22, ptr @.str.3, ptr @.str.18, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm80x_rtc_read_alarm\00", [43 x i8] zeroinitializer }, align 32
@pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.22, ptr @.str.3, ptr @.str.19, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.23, ptr @.str.3, ptr @.str.18, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm80x_rtc_set_alarm\00", [44 x i8] zeroinitializer }, align 32
@pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.23, ptr @.str.3, ptr @.str.19, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, now time : %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s, alarm time: %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"pm80x_rtc_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 327, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 329, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"pm80x_rtc_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 237, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 248, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 256, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 274, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 287, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 289, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"pm80x_rtc_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 217, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 107, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 114, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 133, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 154, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 183, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 194, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [29 x i8] c"../drivers/rtc/rtc-88pm80x.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 198, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pm80x_rtc_driver_exit, ptr @__initcall__kmod_rtc_88pm80x__236_336_pm80x_rtc_driver_init6, ptr @pm80x_rtc_driver_exit, ptr @pm80x_rtc_probe._entry, ptr @pm80x_rtc_probe._entry.13, ptr @pm80x_rtc_probe._entry.6, ptr @pm80x_rtc_probe._entry.9, ptr @pm80x_rtc_probe._entry_ptr, ptr @pm80x_rtc_probe._entry_ptr.11, ptr @pm80x_rtc_probe._entry_ptr.15, ptr @pm80x_rtc_probe._entry_ptr.8, ptr @pm80x_rtc_driver, ptr @.str, ptr @pm80x_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @pm80x_rtc_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm80x_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm80x_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm80x_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_probe(ptr noundef %pdev) #2 align 64 {
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
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end, label %if.then7.critedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.then7.critedge:                                ; preds = %land.lhs.true
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end14, label %if.then7.critedge.if.end17_crit_edge

if.then7.critedge.if.end17_crit_edge:             ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end14:                                         ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end17:                                         ; preds = %if.then7.critedge.if.end17_crit_edge, %entry.if.end17_crit_edge
  %pdata.0 = phi ptr [ %call.i, %if.then7.critedge.if.end17_crit_edge ], [ %5, %entry.if.end17_crit_edge ]
  %call.i117 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool20.not = icmp eq ptr %call.i117, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.pm80x_rtc_info, ptr %call.i117, i32 0, i32 4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %9 = ptrtoint ptr %call.i117 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %call.i117, align 4
  %regmap = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %call.i117, i32 0, i32 1
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %map, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %dev37 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %call.i117, i32 0, i32 3
  %13 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev37, align 4
  %driver_data.i118 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i118 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i117, ptr %driver_data.i118, align 4
  %call40 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %rtc_dev = getelementptr inbounds %struct.pm80x_rtc_info, ptr %call.i117, i32 0, i32 2
  %15 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call40, ptr %rtc_dev, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %irq_data.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_data.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end46.do.end53_crit_edge, label %pm80x_request_irq.exit

if.end46.do.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

pm80x_request_irq.exit:                           ; preds = %if.end46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call.i119 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %18, i32 noundef %20) #5
  %call2.i = tail call i32 @request_threaded_irq(i32 noundef %call.i119, ptr noundef null, ptr noundef nonnull @rtc_update_handler, i32 noundef 8192, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i117) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp49 = icmp slt i32 %call2.i, 0
  br i1 %cmp49, label %pm80x_request_irq.exit.do.end53_crit_edge, label %if.end56

pm80x_request_irq.exit.do.end53_crit_edge:        ; preds = %pm80x_request_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

do.end53:                                         ; preds = %pm80x_request_irq.exit.do.end53_crit_edge, %if.end46.do.end53_crit_edge
  %retval.0.i128 = phi i32 [ %call2.i, %pm80x_request_irq.exit.do.end53_crit_edge ], [ -22, %if.end46.do.end53_crit_edge ]
  %dev54 = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev54, align 4
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %24, i32 noundef %retval.0.i128) #8
  br label %cleanup

if.end56:                                         ; preds = %pm80x_request_irq.exit
  %25 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc_dev, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pm80x_rtc_ops, ptr %ops, align 8
  %28 = load ptr, ptr %rtc_dev, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 4294967295, ptr %range_max, align 8
  %30 = load ptr, ptr %rtc_dev, align 4
  %call60 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %out_rtc

if.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 208, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rtc_wakeup = getelementptr inbounds %struct.pm80x_rtc_pdata, ptr %pdata.0, i32 0, i32 1
  %33 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtc_dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rtc_wakeup, ptr %platform_data, align 8
  %call69 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %cleanup

out_rtc:                                          ; preds = %if.end56
  %36 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_data.i, align 4
  %tobool.not.i122 = icmp eq ptr %37, null
  br i1 %tobool.not.i122, label %out_rtc.cleanup_crit_edge, label %if.end.i125

out_rtc.cleanup_crit_edge:                        ; preds = %out_rtc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i125:                                      ; preds = %out_rtc
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call.i123 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %37, i32 noundef %39) #5
  %call2.i124 = tail call ptr @free_irq(i32 noundef %call.i123, ptr noundef nonnull %call.i117) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i125, %out_rtc.cleanup_crit_edge, %if.end63, %do.end53, %if.then43, %do.end33, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %16, %if.then43 ], [ 0, %if.end63 ], [ -12, %do.end14 ], [ -22, %do.end ], [ -12, %if.end17.cleanup_crit_edge ], [ %retval.0.i128, %do.end53 ], [ -22, %do.end33 ], [ -22, %if.end22.cleanup_crit_edge ], [ %call60, %out_rtc.cleanup_crit_edge ], [ %call60, %if.end.i125 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq_data.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.pm80x_free_irq.exit_crit_edge, label %if.end.i

entry.pm80x_free_irq.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm80x_free_irq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %5, i32 noundef %7) #5
  %call2.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %1) #5
  br label %pm80x_free_irq.exit

pm80x_free_irq.exit:                              ; preds = %if.end.i, %entry.pm80x_free_irq.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_update_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 208, i32 noundef 49, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rtc_dev = getelementptr inbounds %struct.pm80x_rtc_info, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 32) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 221, ptr noundef nonnull %buf, i32 noundef 4) #5
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %4, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 2
  %conv3 = zext i8 %11 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  %conv6 = zext i8 %13 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %or, %shl7
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 4
  %conv10 = zext i8 %15 to i32
  %or11 = or i32 %or8, %conv10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_read_time, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev16, align 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 4
  %conv18 = zext i8 %19 to i32
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 1
  %conv20 = zext i8 %21 to i32
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %3, align 2
  %conv22 = zext i8 %23 to i32
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  %conv24 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call27 = call i32 @regmap_raw_read(ptr noundef %27, i32 noundef 209, ptr noundef nonnull %buf, i32 noundef 4) #5
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %conv29 = zext i8 %29 to i32
  %shl30 = shl nuw i32 %conv29, 24
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 2
  %conv32 = zext i8 %31 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or34 = or i32 %shl33, %shl30
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %2, align 1
  %conv36 = zext i8 %33 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %or34, %shl37
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 4
  %conv40 = zext i8 %35 to i32
  %or41 = or i32 %or38, %conv40
  %add = add i32 %or41, %or11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_read_time.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_read_time, %do.end60)) #5
          to label %if.then56 [label %do.end60], !srcloc !79

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev57 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_read_time.__UNIQUE_ID_ddebug228, ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %or11, i32 noundef %or41, i32 noundef %add) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end
  %conv61 = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv61, ptr noundef %tm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %conv = trunc i64 %call1 to i32
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 209, ptr noundef nonnull %buf, i32 noundef 4) #5
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_set_time.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_set_time, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_set_time.__UNIQUE_ID_ddebug229, ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %sub, i32 noundef %or13, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv19 = trunc i32 %sub to i8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %buf, align 4
  %shr = lshr i32 %sub, 8
  %conv22 = trunc i32 %shr to i8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv22, ptr %2, align 1
  %shr24 = lshr i32 %sub, 16
  %conv26 = trunc i32 %shr24 to i8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26, ptr %3, align 2
  %shr28 = lshr i32 %sub, 24
  %conv30 = trunc i32 %shr28 to i8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv30, ptr %4, align 1
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %call34 = call i32 @regmap_raw_write(ptr noundef %23, i32 noundef 221, ptr noundef nonnull %buf, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #5
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ret, align 4, !annotation !80
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_raw_read(ptr noundef %8, i32 noundef 221, ptr noundef nonnull %buf, i32 noundef 4) #5
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 %conv, 24
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 2
  %conv3 = zext i8 %12 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  %conv6 = zext i8 %14 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %or, %shl7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 4
  %conv10 = zext i8 %16 to i32
  %or11 = or i32 %or8, %conv10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_read_alarm, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16, align 4
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 4
  %conv18 = zext i8 %20 to i32
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %2, align 1
  %conv20 = zext i8 %22 to i32
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 2
  %conv22 = zext i8 %24 to i32
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %4, align 1
  %conv24 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug230, ptr noundef %18, ptr noundef nonnull @.str.18, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %call27 = call i32 @regmap_raw_read(ptr noundef %28, i32 noundef 213, ptr noundef nonnull %buf, i32 noundef 4) #5
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %conv29 = zext i8 %30 to i32
  %shl30 = shl nuw i32 %conv29, 24
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 2
  %conv32 = zext i8 %32 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or34 = or i32 %shl33, %shl30
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %conv36 = zext i8 %34 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %or34, %shl37
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf, align 4
  %conv40 = zext i8 %36 to i32
  %or41 = or i32 %or38, %conv40
  %add = add i32 %or41, %or11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_read_alarm, %do.end60)) #5
          to label %if.then56 [label %do.end60], !srcloc !79

if.then56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev57 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug231, ptr noundef %38, ptr noundef nonnull @.str.19, i32 noundef %or11, i32 noundef %or41, i32 noundef %add) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end
  %conv61 = zext i32 %add to i64
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %conv61, ptr noundef %time) #5
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %call63 = call i32 @regmap_read(ptr noundef %40, i32 noundef 208, ptr noundef nonnull %ret) #5
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret, align 4
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %alrm, align 4
  %and66 = and i32 %42, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp ne i32 %and66, 0
  %conv69 = zext i1 %tobool67.not to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %46 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv69, ptr %pending, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %now_tm = alloca %struct.rtc_time, align 4
  %alarm_tm = alloca %struct.rtc_time, align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now_tm) #5
  %2 = call ptr @memset(ptr %now_tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %alarm_tm) #5
  %3 = call ptr @memset(ptr %alarm_tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %map = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf, align 4
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 208, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call3 = call i32 @regmap_raw_read(ptr noundef %11, i32 noundef 221, ptr noundef nonnull %buf, i32 noundef 4) #5
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %6, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %5, align 2
  %conv5 = zext i8 %15 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %conv8 = zext i8 %17 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 4
  %conv12 = zext i8 %19 to i32
  %or13 = or i32 %or10, %conv12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_set_alarm, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 4
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 4
  %conv20 = zext i8 %23 to i32
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  %conv22 = zext i8 %25 to i32
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %5, align 2
  %conv24 = zext i8 %27 to i32
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  %conv26 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug232, ptr noundef %21, ptr noundef nonnull @.str.18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %conv26) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %call29 = call i32 @regmap_raw_read(ptr noundef %31, i32 noundef 209, ptr noundef nonnull %buf, i32 noundef 4) #5
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %conv31 = zext i8 %33 to i32
  %shl32 = shl nuw i32 %conv31, 24
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 2
  %conv34 = zext i8 %35 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %shl35, %shl32
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv38 = zext i8 %37 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or40 = or i32 %or36, %shl39
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf, align 4
  %conv42 = zext i8 %39 to i32
  %or43 = or i32 %or40, %conv42
  %add = add i32 %or43, %or13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_set_alarm, %do.end62)) #5
          to label %if.then58 [label %do.end62], !srcloc !79

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev59 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev59, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug233, ptr noundef %41, ptr noundef nonnull @.str.19, i32 noundef %or13, i32 noundef %or43, i32 noundef %add) #5
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.end
  %conv63 = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv63, ptr noundef nonnull %now_tm) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_set_alarm, %do.end82)) #5
          to label %if.then78 [label %do.end82], !srcloc !79

if.then78:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  %dev79 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev79, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug234, ptr noundef %43, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %add) #5
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.end62
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %now_tm, i32 0, i32 5
  %44 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_year.i, align 4
  %tm_year1.i = getelementptr inbounds %struct.rtc_time, ptr %alarm_tm, i32 0, i32 5
  %46 = ptrtoint ptr %tm_year1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tm_year1.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %now_tm, i32 0, i32 4
  %47 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_mon.i, align 4
  %tm_mon2.i = getelementptr inbounds %struct.rtc_time, ptr %alarm_tm, i32 0, i32 4
  %49 = ptrtoint ptr %tm_mon2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tm_mon2.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %now_tm, i32 0, i32 3
  %50 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_mday.i, align 4
  %tm_mday3.i = getelementptr inbounds %struct.rtc_time, ptr %alarm_tm, i32 0, i32 3
  %52 = ptrtoint ptr %tm_mday3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tm_mday3.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm_hour.i, align 4
  %tm_hour4.i = getelementptr inbounds %struct.rtc_time, ptr %alarm_tm, i32 0, i32 2
  %55 = ptrtoint ptr %tm_hour4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tm_hour4.i, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_min.i, align 4
  %tm_min5.i = getelementptr inbounds %struct.rtc_time, ptr %alarm_tm, i32 0, i32 1
  %58 = ptrtoint ptr %tm_min5.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tm_min5.i, align 4
  %59 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %time, align 4
  %61 = ptrtoint ptr %alarm_tm to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %alarm_tm, align 4
  %call.i159 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now_tm) #5
  %conv.i = trunc i64 %call.i159 to i32
  %call7.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %alarm_tm) #5
  %conv8.i = trunc i64 %call7.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %conv8.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %do.end82.rtc_next_alarm_time.exit_crit_edge

do.end82.rtc_next_alarm_time.exit_crit_edge:      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtc_next_alarm_time.exit

if.then.i:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add i32 %conv8.i, 86400
  %conv10.i = zext i32 %add.i to i64
  call void @rtc_time64_to_tm(i64 noundef %conv10.i, ptr noundef nonnull %alarm_tm) #5
  br label %rtc_next_alarm_time.exit

rtc_next_alarm_time.exit:                         ; preds = %if.then.i, %do.end82.rtc_next_alarm_time.exit_crit_edge
  %call83 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %alarm_tm) #5
  %conv84 = trunc i64 %call83 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm80x_rtc_set_alarm, %do.end103)) #5
          to label %if.then99 [label %do.end103], !srcloc !79

if.then99:                                        ; preds = %rtc_next_alarm_time.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev100 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev100, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug235, ptr noundef %63, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %conv84) #5
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %rtc_next_alarm_time.exit
  %sub = sub i32 %conv84, %or13
  %conv104 = trunc i32 %sub to i8
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv104, ptr %buf, align 4
  %shr = lshr i32 %sub, 8
  %conv107 = trunc i32 %shr to i8
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv107, ptr %4, align 1
  %shr109 = lshr i32 %sub, 16
  %conv111 = trunc i32 %shr109 to i8
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv111, ptr %5, align 2
  %shr113 = lshr i32 %sub, 24
  %conv115 = trunc i32 %shr113 to i8
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv115, ptr %6, align 1
  %68 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map, align 4
  %call119 = call i32 @regmap_raw_write(ptr noundef %69, i32 noundef 213, ptr noundef nonnull %buf, i32 noundef 4) #5
  %70 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool120.not = icmp eq i8 %71, 0
  %72 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map, align 4
  %. = select i1 %tobool120.not, i32 48, i32 49
  %call.i161 = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 208, i32 noundef 49, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %alarm_tm) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now_tm) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp ne i32 %enabled, 0
  %map2 = getelementptr inbounds %struct.pm80x_rtc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map2, align 4
  %. = zext i1 %tobool.not to i32
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 208, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #5
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.pm80x_dev_suspend.exit_crit_edge, label %device_may_wakeup.exit.i

entry.pm80x_dev_suspend.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm80x_dev_suspend.exit

device_may_wakeup.exit.i:                         ; preds = %entry
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %6, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.pm80x_dev_suspend.exit_crit_edge, label %if.then.i

device_may_wakeup.exit.i.pm80x_dev_suspend.exit_crit_edge: ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm80x_dev_suspend.exit

if.then.i:                                        ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %wu_flag.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %call2.i, ptr noundef %wu_flag.i) #5
  br label %pm80x_dev_suspend.exit

pm80x_dev_suspend.exit:                           ; preds = %if.then.i, %device_may_wakeup.exit.i.pm80x_dev_suspend.exit_crit_edge, %entry.pm80x_dev_suspend.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_rtc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #5
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.pm80x_dev_resume.exit_crit_edge, label %device_may_wakeup.exit.i

entry.pm80x_dev_resume.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm80x_dev_resume.exit

device_may_wakeup.exit.i:                         ; preds = %entry
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %6, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.pm80x_dev_resume.exit_crit_edge, label %if.then.i

device_may_wakeup.exit.i.pm80x_dev_resume.exit_crit_edge: ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm80x_dev_resume.exit

if.then.i:                                        ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %wu_flag.i = getelementptr inbounds %struct.pm80x_chip, ptr %3, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %call2.i, ptr noundef %wu_flag.i) #5
  br label %pm80x_dev_resume.exit

pm80x_dev_resume.exit:                            ; preds = %if.then.i, %device_may_wakeup.exit.i.pm80x_dev_resume.exit_crit_edge, %entry.pm80x_dev_resume.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_rtc_88pm80x__236_336_pm80x_rtc_driver_init6, !1, !"__initcall__kmod_rtc_88pm80x__236_336_pm80x_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 336, i32 1}
!2 = !{ptr @__exitcall_pm80x_rtc_driver_exit, !1, !"__exitcall_pm80x_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 338, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description239, !7, !"__UNIQUE_ID_description239", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 339, i32 1}
!8 = !{ptr @__UNIQUE_ID_author240, !9, !"__UNIQUE_ID_author240", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 340, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 341, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 329, i32 14}
!14 = !{ptr @pm80x_rtc_driver, !15, !"pm80x_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 327, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 248, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pm80x_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pm80x_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 256, i32 4}
!26 = !{ptr @pm80x_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pm80x_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 274, i32 3}
!30 = !{ptr @pm80x_rtc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pm80x_rtc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 287, i32 19}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 289, i32 3}
!36 = !{ptr @pm80x_rtc_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pm80x_rtc_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @pm80x_rtc_ops, !39, !"pm80x_rtc_ops", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 217, i32 35}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 107, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pm80x_rtc_read_time.__UNIQUE_ID_ddebug227, !41, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 114, i32 2}
!47 = !{ptr @pm80x_rtc_read_time.__UNIQUE_ID_ddebug228, !46, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 133, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pm80x_rtc_set_time.__UNIQUE_ID_ddebug229, !49, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 154, i32 2}
!54 = !{ptr @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug230, !53, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!55 = !{ptr @pm80x_rtc_read_alarm.__UNIQUE_ID_ddebug231, !56, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 160, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 183, i32 2}
!59 = !{ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug232, !58, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!60 = !{ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug233, !61, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 190, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 194, i32 2}
!64 = !{ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug234, !63, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 198, i32 2}
!67 = !{ptr @pm80x_rtc_set_alarm.__UNIQUE_ID_ddebug235, !66, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!68 = !{ptr @pm80x_rtc_pm_ops, !69, !"pm80x_rtc_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-88pm80x.c", i32 237, i32 8}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148699066, i64 2148699071, i64 2148699084, i64 2148699128, i64 2148699162, i64 2148699183}
!80 = !{!"auto-init"}
