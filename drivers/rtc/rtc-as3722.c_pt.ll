; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-as3722.c_pt.bc'
source_filename = "../drivers/rtc/rtc-as3722.c"
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
%struct.as3722_rtc = type { ptr, ptr, ptr, i32, i8 }
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_as3722__227_246_as3722_rtc_driver_init6 = internal global ptr @as3722_rtc_driver_init, section ".initcall6.init", align 4
@as3722_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @as3722_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_as3722_rtc_driver_exit = internal global ptr @as3722_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [51 x i8] c"rtc_as3722.description=RTC driver for AS3722 PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [37 x i8] c"rtc_as3722.alias=platform:as3722-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [62 x i8] c"rtc_as3722.author=Florian Lobmaier <florian.lobmaier@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [57 x i8] c"rtc_as3722.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [39 x i8] c"rtc_as3722.file=drivers/rtc/rtc-as3722\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [23 x i8] c"rtc_as3722.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-rtc\00", [21 x i8] zeroinitializer }, align 32
@as3722_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RTC_CONTROL reg write failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as3722_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-as3722.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry_ptr = internal global ptr @as3722_rtc_probe._entry, section ".printk_index", align 4
@as3722_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @as3722_rtc_read_time, ptr @as3722_rtc_set_time, ptr @as3722_rtc_read_alarm, ptr @as3722_rtc_set_alarm, ptr null, ptr @as3722_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RTC register failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry_ptr.8 = internal global ptr @as3722_rtc_probe._entry.6, section ".printk_index", align 4
@as3722_rtc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 201, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RTC interrupt %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry_ptr.12 = internal global ptr @as3722_rtc_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-alarm\00", [22 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@as3722_rtc_probe._entry_ptr.16 = internal global ptr @as3722_rtc_probe._entry.14, section ".printk_index", align 4
@as3722_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RTC_SECOND reg block read failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"as3722_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@as3722_rtc_read_time._entry_ptr = internal global ptr @as3722_rtc_read_time._entry, section ".printk_index", align 4
@as3722_rtc_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTC_SECOND reg block write failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"as3722_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@as3722_rtc_set_time._entry_ptr = internal global ptr @as3722_rtc_set_time._entry, section ".printk_index", align 4
@as3722_rtc_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTC_ALARM_SECOND block read failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as3722_rtc_read_alarm\00", [42 x i8] zeroinitializer }, align 32
@as3722_rtc_read_alarm._entry_ptr = internal global ptr @as3722_rtc_read_alarm._entry, section ".printk_index", align 4
@as3722_rtc_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disable RTC alarm failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"as3722_rtc_set_alarm\00", [43 x i8] zeroinitializer }, align 32
@as3722_rtc_set_alarm._entry_ptr = internal global ptr @as3722_rtc_set_alarm._entry, section ".printk_index", align 4
@as3722_rtc_set_alarm._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RTC_ALARM_SECOND block write failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@as3722_rtc_set_alarm._entry_ptr.27 = internal global ptr @as3722_rtc_set_alarm._entry.25, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"as3722_rtc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 239, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 242, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"as3722_rtc_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 236, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 186, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"as3722_rtc_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 159, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 196, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 201, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 205, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 207, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 64, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 85, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 114, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 134, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [28 x i8] c"../drivers/rtc/rtc-as3722.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 142, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_as3722_rtc_driver_exit, ptr @__initcall__kmod_rtc_as3722__227_246_as3722_rtc_driver_init6, ptr @as3722_rtc_driver_exit, ptr @as3722_rtc_probe._entry, ptr @as3722_rtc_probe._entry.14, ptr @as3722_rtc_probe._entry.6, ptr @as3722_rtc_probe._entry.9, ptr @as3722_rtc_probe._entry_ptr, ptr @as3722_rtc_probe._entry_ptr.12, ptr @as3722_rtc_probe._entry_ptr.16, ptr @as3722_rtc_probe._entry_ptr.8, ptr @as3722_rtc_read_alarm._entry, ptr @as3722_rtc_read_alarm._entry_ptr, ptr @as3722_rtc_read_time._entry, ptr @as3722_rtc_read_time._entry_ptr, ptr @as3722_rtc_set_alarm._entry, ptr @as3722_rtc_set_alarm._entry.25, ptr @as3722_rtc_set_alarm._entry_ptr, ptr @as3722_rtc_set_alarm._entry_ptr.27, ptr @as3722_rtc_set_time._entry, ptr @as3722_rtc_set_time._entry_ptr, ptr @as3722_rtc_driver, ptr @.str, ptr @as3722_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @as3722_rtc_ops, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_rtc_set_alarm._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3722_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3722_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3722_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %as37223 = getelementptr inbounds %struct.as3722_rtc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %as37223 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %as37223, align 4
  %dev5 = getelementptr inbounds %struct.as3722_rtc, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 96, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %call13 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @as3722_rtc_ops, ptr noundef null) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %10) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %alarm_irq = getelementptr inbounds %struct.as3722_rtc, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call24, ptr %alarm_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call24) #9
  %12 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alarm_irq, align 4
  %call32 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %13, ptr noundef null, ptr noundef nonnull @as3722_alarm_irq, i32 noundef 8192, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  %14 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alarm_irq, align 4
  br i1 %cmp33, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %call32) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disable_irq(i32 noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end37, %if.then16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %10, %if.then16 ], [ %call32, %do.end37 ], [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %as_time_array = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %as37221 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as37221, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %as_time_array) #6
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %4 = call ptr @memset(ptr %as_time_array, i32 255, i32 6)
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 97, ptr noundef nonnull %as_time_array, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %cond.end.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i) #9
  br label %cleanup

cond.end.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 5
  %8 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 4
  %9 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 2
  %11 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 1
  %12 = ptrtoint ptr %as_time_array to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %as_time_array, align 1
  %14 = and i8 %13, 127
  %call.i10 = call i32 @_bcd2bin(i8 noundef zeroext %14) #10
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i10, ptr %tm, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %11, align 1
  %18 = and i8 %17, 127
  %call33.i = call i32 @_bcd2bin(i8 noundef zeroext %18) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call33.i, ptr %tm_min.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %10, align 1
  %22 = and i8 %21, 63
  %call56.i = call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %23 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call56.i, ptr %tm_hour.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %9, align 1
  %26 = and i8 %25, 63
  %call79.i = call i32 @_bcd2bin(i8 noundef zeroext %26) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %27 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call79.i, ptr %tm_mday.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %30 = and i8 %29, 31
  %call102.i = call i32 @_bcd2bin(i8 noundef zeroext %30) #10
  %sub.i = add i32 %call102.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %31 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %34 = and i8 %33, 127
  %call125.i = call i32 @_bcd2bin(i8 noundef zeroext %34) #10
  %add128.i = add i32 %call125.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add128.i, ptr %tm_year.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end.i, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %as_time_array) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %as_time_array = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %as37221 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as37221, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %as_time_array) #6
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %cmp = icmp slt i32 %5, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.i:                                       ; preds = %entry
  %6 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 5
  %7 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 2
  %10 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 1
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #10
  %13 = ptrtoint ptr %as_time_array to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call.i, ptr %as_time_array, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call16.i, ptr %10, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #10
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call32.i, ptr %9, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday.i, align 4
  %call48.i = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #10
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call48.i, ptr %8, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon.i, align 4
  %add54.i = add i32 %24, 1
  %call68.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add54.i) #10
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call68.i, ptr %7, align 1
  %sub.i = add nsw i32 %5, -100
  %call87.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call87.i, ptr %6, align 1
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i14 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 97, ptr noundef nonnull %as_time_array, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp4 = icmp slt i32 %call.i14, 0
  br i1 %cmp4, label %do.end, label %cond.end.i.cleanup_crit_edge

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i14, %do.end ], [ %call.i14, %cond.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %as_time_array) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_read_alarm(ptr noundef %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %as_time_array = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %as37221 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as37221, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %as_time_array) #6
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %4 = call ptr @memset(ptr %as_time_array, i32 255, i32 6)
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 103, ptr noundef nonnull %as_time_array, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 5
  %8 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 4
  %9 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 2
  %11 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %12 = ptrtoint ptr %as_time_array to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %as_time_array, align 1
  %14 = and i8 %13, 127
  %call.i10 = call i32 @_bcd2bin(i8 noundef zeroext %14) #10
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i10, ptr %time, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %11, align 1
  %18 = and i8 %17, 127
  %call33.i = call i32 @_bcd2bin(i8 noundef zeroext %18) #10
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call33.i, ptr %tm_min.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %10, align 1
  %22 = and i8 %21, 63
  %call56.i = call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call56.i, ptr %tm_hour.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %9, align 1
  %26 = and i8 %25, 63
  %call79.i = call i32 @_bcd2bin(i8 noundef zeroext %26) #10
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call79.i, ptr %tm_mday.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %8, align 1
  %30 = and i8 %29, 31
  %call102.i = call i32 @_bcd2bin(i8 noundef zeroext %30) #10
  %sub.i = add i32 %call102.i, -1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %34 = and i8 %33, 127
  %call125.i = call i32 @_bcd2bin(i8 noundef zeroext %34) #10
  %add128.i = add i32 %call125.i, 100
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add128.i, ptr %tm_year.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %as_time_array) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %as_time_array = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %as37221 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %as37221, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %as_time_array) #6
  %4 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %as_time_array, i32 0, i32 5
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %10)
  %cmp = icmp slt i32 %10, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_enable5.i = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %irq_enable5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_enable5.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.i = icmp eq i8 %12, 0
  br i1 %tobool6.not.i, label %if.end.cond.end.i_crit_edge, label %if.then7.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq8.i = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %alarm_irq8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alarm_irq8.i, align 4
  tail call void @disable_irq(i32 noundef %14) #6
  %15 = ptrtoint ptr %irq_enable5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %irq_enable5.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then7.i, %if.end.cond.end.i_crit_edge
  %16 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  %18 = ptrtoint ptr %as_time_array to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call.i, ptr %as_time_array, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call16.i, ptr %4, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #10
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call32.i, ptr %5, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday.i, align 4
  %call48.i = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #10
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call48.i, ptr %6, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mon.i, align 4
  %add54.i = add i32 %29, 1
  %call68.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add54.i) #10
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call68.i, ptr %7, align 1
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_year, align 4
  %sub.i = add i32 %32, -100
  %call87.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call87.i, ptr %8, align 1
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i34 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 103, ptr noundef nonnull %as_time_array, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp9 = icmp slt i32 %call.i34, 0
  br i1 %cmp9, label %do.end13, label %if.end14

do.end13:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i34) #9
  br label %cleanup

if.end14:                                         ; preds = %cond.end.i
  %36 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %land.lhs.true.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end14
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i, align 4
  %irq_enable5.i36 = getelementptr inbounds %struct.as3722_rtc, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %irq_enable5.i36 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %irq_enable5.i36, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool6.not.i37 = icmp eq i8 %41, 0
  br i1 %tobool6.not.i37, label %if.end10.sink.split.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.sink.split.i:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq.i = getelementptr inbounds %struct.as3722_rtc, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %alarm_irq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alarm_irq.i, align 4
  call void @enable_irq(i32 noundef %43) #6
  %44 = ptrtoint ptr %irq_enable5.i36 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %irq_enable5.i36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i34, %do.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i34, %if.end14.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end10.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %as_time_array) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %irq_enable5 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_enable5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_enable5, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alarm_irq, align 4
  tail call void @enable_irq(i32 noundef %5) #6
  br label %if.end10.sink.split

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %tobool6.not, label %land.lhs.true4.critedge.if.end10_crit_edge, label %if.then7

land.lhs.true4.critedge.if.end10_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq8 = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alarm_irq8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alarm_irq8, align 4
  tail call void @disable_irq(i32 noundef %7) #6
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %if.then
  %.sink = phi i8 [ 0, %if.then7 ], [ 1, %if.then ]
  %8 = ptrtoint ptr %irq_enable5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %irq_enable5, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %land.lhs.true4.critedge.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  ret i32 0
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
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %alarm_irq = getelementptr inbounds %struct.as3722_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %alarm_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %alarm_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_rtc_as3722__227_246_as3722_rtc_driver_init6, !1, !"__initcall__kmod_rtc_as3722__227_246_as3722_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-as3722.c", i32 246, i32 1}
!2 = !{ptr @__exitcall_as3722_rtc_driver_exit, !1, !"__exitcall_as3722_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-as3722.c", i32 248, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias229, !6, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-as3722.c", i32 249, i32 1}
!7 = !{ptr @__UNIQUE_ID_author230, !8, !"__UNIQUE_ID_author230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-as3722.c", i32 250, i32 1}
!9 = !{ptr @__UNIQUE_ID_author231, !10, !"__UNIQUE_ID_author231", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-as3722.c", i32 251, i32 1}
!11 = !{ptr @__UNIQUE_ID_file232, !12, !"__UNIQUE_ID_file232", i1 false, i1 false}
!12 = !{!"../drivers/rtc/rtc-as3722.c", i32 252, i32 1}
!13 = !{ptr @__UNIQUE_ID_license233, !12, !"__UNIQUE_ID_license233", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-as3722.c", i32 242, i32 11}
!16 = !{ptr @as3722_rtc_driver, !17, !"as3722_rtc_driver", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-as3722.c", i32 239, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-as3722.c", i32 186, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @as3722_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @as3722_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-as3722.c", i32 196, i32 3}
!28 = !{ptr @as3722_rtc_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @as3722_rtc_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-as3722.c", i32 201, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @as3722_rtc_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @as3722_rtc_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-as3722.c", i32 205, i32 4}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-as3722.c", i32 207, i32 3}
!39 = !{ptr @as3722_rtc_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @as3722_rtc_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @as3722_rtc_ops, !42, !"as3722_rtc_ops", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-as3722.c", i32 159, i32 35}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-as3722.c", i32 64, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @as3722_rtc_read_time._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @as3722_rtc_read_time._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-as3722.c", i32 85, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @as3722_rtc_set_time._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @as3722_rtc_set_time._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-as3722.c", i32 114, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @as3722_rtc_read_alarm._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @as3722_rtc_read_alarm._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-as3722.c", i32 134, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @as3722_rtc_set_alarm._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @as3722_rtc_set_alarm._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-as3722.c", i32 142, i32 3}
!65 = !{ptr @as3722_rtc_set_alarm._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @as3722_rtc_set_alarm._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @as3722_rtc_pm_ops, !68, !"as3722_rtc_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-as3722.c", i32 236, i32 8}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i8 0, i8 2}
