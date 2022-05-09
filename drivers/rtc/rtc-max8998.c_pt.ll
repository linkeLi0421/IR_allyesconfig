; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max8998.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8998.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_rtc_info = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_max8998__288_316_max8998_rtc_driver_init6 = internal global ptr @max8998_rtc_driver_init, section ".initcall6.init", align 4
@max8998_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8998_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8998_rtc_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8998_rtc_driver_exit = internal global ptr @max8998_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"rtc_max8998.author=Minkyu Kang <mk7.kang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [60 x i8] c"rtc_max8998.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [49 x i8] c"rtc_max8998.description=Maxim MAX8998 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"rtc_max8998.file=drivers/rtc/rtc-max8998\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"rtc_max8998.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8998-rtc\00", [20 x i8] zeroinitializer }, align 32
@max8998_rtc_id = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8998-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"lp3974-rtc\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max8998_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max8998_rtc_read_time, ptr @max8998_rtc_set_time, ptr @max8998_rtc_read_alarm, ptr @max8998_rtc_set_alarm, ptr null, ptr @max8998_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register RTC device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8998_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-max8998.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry_ptr = internal global ptr @max8998_rtc_probe._entry, section ".printk_index", align 4
@max8998_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map alarm IRQ\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry_ptr.9 = internal global ptr @max8998_rtc_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-alarm0\00", [21 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry_ptr.13 = internal global ptr @max8998_rtc_probe._entry.11, section ".printk_index", align 4
@max8998_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTC CHIP NAME: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry_ptr.17 = internal global ptr @max8998_rtc_probe._entry.14, section ".printk_index", align 4
@max8998_rtc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"LP3974 with RTC REGERR option. RTC updates will be extremely slow.\0A\00", [60 x i8] zeroinitializer }, align 32
@max8998_rtc_probe._entry_ptr.20 = internal global ptr @max8998_rtc_probe._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"max8998_rtc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 308, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 310, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"max8998_rtc_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 301, i32 40 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"max8998_rtc_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 239, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 270, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 279, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 284, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 287, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 291, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [29 x i8] c"../drivers/rtc/rtc-max8998.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 294, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max8998_rtc_driver_exit, ptr @__initcall__kmod_rtc_max8998__288_316_max8998_rtc_driver_init6, ptr @max8998_rtc_driver_exit, ptr @max8998_rtc_probe._entry, ptr @max8998_rtc_probe._entry.11, ptr @max8998_rtc_probe._entry.14, ptr @max8998_rtc_probe._entry.18, ptr @max8998_rtc_probe._entry.6, ptr @max8998_rtc_probe._entry_ptr, ptr @max8998_rtc_probe._entry_ptr.13, ptr @max8998_rtc_probe._entry_ptr.17, ptr @max8998_rtc_probe._entry_ptr.20, ptr @max8998_rtc_probe._entry_ptr.9, ptr @max8998_rtc_driver, ptr @.str, ptr @max8998_rtc_id, ptr @max8998_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_rtc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8998_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8998_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8998_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %pdata1 = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %max89986 = getelementptr inbounds %struct.max8998_rtc_info, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %max89986 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %max89986, align 4
  %rtc = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc, align 4
  %rtc7 = getelementptr inbounds %struct.max8998_rtc_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %rtc7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rtc7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @max8998_rtc_ops, ptr noundef null) #7
  %rtc_dev = getelementptr inbounds %struct.max8998_rtc_info, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %rtc_dev, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %irq_domain = getelementptr inbounds %struct.max8998_dev, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end16.do.end42_crit_edge, label %if.end19

if.end16.do.end42_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end19:                                         ; preds = %if.end16
  %call.i88 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %15, i32 noundef 9, ptr noundef null) #7
  %irq = getelementptr inbounds %struct.max8998_rtc_info, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i88, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool23.not = icmp eq i32 %call.i88, 0
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %do.end42

if.end29:                                         ; preds = %if.end19
  %call32 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i88, ptr noundef null, ptr noundef nonnull @max8998_rtc_alarm_irq, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %do.end36, label %if.end29.do.end42_crit_edge

if.end29.do.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %call32) #10
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %if.end29.do.end42_crit_edge, %do.end27, %if.end16.do.end42_crit_edge
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %19 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %id_entry, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %20) #10
  %tobool44.not = icmp eq ptr %5, null
  br i1 %tobool44.not, label %do.end42.cleanup_crit_edge, label %land.lhs.true

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end42
  %rtc_delay = getelementptr inbounds %struct.max8998_platform_data, ptr %5, i32 0, i32 13
  %21 = ptrtoint ptr %rtc_delay to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rtc_delay, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool45.not = icmp eq i8 %22, 0
  br i1 %tobool45.not, label %land.lhs.true.cleanup_crit_edge, label %if.then46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %lp3974_bug_workaround = getelementptr inbounds %struct.max8998_rtc_info, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %lp3974_bug_workaround to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %lp3974_bug_workaround, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %land.lhs.true.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then12 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc_dev = getelementptr inbounds %struct.max8998_rtc_info, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %rtc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc_dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %rtc = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8998_bulk_read(ptr noundef %4, i8 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @max8998_data_to_tm(ptr noundef nonnull %data, ptr noundef %tm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call16.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call32.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %18 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_wday.i, align 4
  %conv38.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv38.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %21 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mday.i, align 4
  %call50.i = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #11
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call50.i, ptr %5, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon.i, align 4
  %call66.i = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #11
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call66.i, ptr %6, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year.i, align 4
  %rem72.i = srem i32 %28, 100
  %call86.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem72.i) #11
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call86.i, ptr %7, align 1
  %add93.i = add i32 %28, 1900
  %div94.i = sdiv i32 %add93.i, 100
  %call111.i = tail call zeroext i8 @_bin2bcd(i32 noundef %div94.i) #11
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call111.i, ptr %8, align 1
  %rtc = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc, align 4
  %call2 = call i32 @max8998_bulk_write(ptr noundef %32, i8 noundef zeroext 0, i32 noundef 8, ptr noundef nonnull %data) #7
  %lp3974_bug_workaround = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %lp3974_bug_workaround to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lp3974_bug_workaround, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 2000) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val, align 1, !annotation !58
  %rtc = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8998_bulk_read(ptr noundef %5, i8 noundef zeroext 8, i32 noundef 8, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call fastcc void @max8998_data_to_tm(ptr noundef nonnull %data, ptr noundef %time)
  %6 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc, align 4
  %call4 = call i32 @max8998_read_reg(ptr noundef %7, i8 noundef zeroext 24, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %conv = zext i1 %tobool to i8
  %10 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %alrm, align 4
  %11 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtc, align 4
  %call10 = call i32 @max8998_read_reg(ptr noundef %12, i8 noundef zeroext 26, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %pending18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %15 = lshr i8 %14, 1
  %.lobit = and i8 %15, 1
  %16 = ptrtoint ptr %pending18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.lobit, ptr %pending18, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i, ptr %data, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call16.i, ptr %2, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour.i, align 4
  %call32.i = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call32.i, ptr %3, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_wday.i, align 4
  %conv38.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv38.i, ptr %4, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mday.i, align 4
  %call50.i = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #11
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call50.i, ptr %5, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon.i, align 4
  %call66.i = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #11
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call66.i, ptr %6, align 1
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year.i, align 4
  %rem72.i = srem i32 %28, 100
  %call86.i = tail call zeroext i8 @_bin2bcd(i32 noundef %rem72.i) #11
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call86.i, ptr %7, align 1
  %add93.i = add i32 %28, 1900
  %div94.i = sdiv i32 %add93.i, 100
  %call111.i = tail call zeroext i8 @_bin2bcd(i32 noundef %div94.i) #11
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call111.i, ptr %8, align 1
  %rtc.i = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtc.i, align 4
  %call.i23 = tail call i32 @max8998_write_reg(ptr noundef %32, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  %lp3974_bug_workaround.i = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %entry.max8998_rtc_stop_alarm.exit_crit_edge, label %if.then.i

entry.max8998_rtc_stop_alarm.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %max8998_rtc_stop_alarm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 2000) #7
  br label %max8998_rtc_stop_alarm.exit

max8998_rtc_stop_alarm.exit:                      ; preds = %if.then.i, %entry.max8998_rtc_stop_alarm.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp = icmp slt i32 %call.i23, 0
  br i1 %cmp, label %max8998_rtc_stop_alarm.exit.cleanup_crit_edge, label %if.end

max8998_rtc_stop_alarm.exit.cleanup_crit_edge:    ; preds = %max8998_rtc_stop_alarm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %max8998_rtc_stop_alarm.exit
  %35 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtc.i, align 4
  %call3 = call i32 @max8998_bulk_write(ptr noundef %36, i8 noundef zeroext 8, i32 noundef 8, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %37 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %if.end6.if.end8_crit_edge, label %if.then7

if.end6.if.end8_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 2000) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6.if.end8_crit_edge
  %39 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool9.not = icmp eq i8 %40, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %41 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i25 = icmp eq i8 %42, 0
  %spec.store.select.i = select i1 %tobool.not.i25, i8 119, i8 87
  %43 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc.i, align 4
  %call.i27 = call i32 @max8998_write_reg(ptr noundef %44, i8 noundef zeroext 24, i8 noundef zeroext %spec.store.select.i) #7
  %45 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool2.not.i = icmp eq i8 %46, 0
  br i1 %tobool2.not.i, label %if.then10.cleanup_crit_edge, label %if.then3.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 2000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.then10.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %max8998_rtc_stop_alarm.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i23, %max8998_rtc_stop_alarm.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call3, %if.end8.cleanup_crit_edge ], [ %call.i27, %if.then10.cleanup_crit_edge ], [ %call.i27, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %lp3974_bug_workaround.i = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 119, i8 87
  %rtc.i = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc.i, align 4
  %call.i = tail call i32 @max8998_write_reg(ptr noundef %5, i8 noundef zeroext 24, i8 noundef zeroext %spec.store.select.i) #7
  %6 = ptrtoint ptr %lp3974_bug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lp3974_bug_workaround.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %rtc.i4 = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rtc.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtc.i4, align 4
  %call.i5 = tail call i32 @max8998_write_reg(ptr noundef %9, i8 noundef zeroext 24, i8 noundef zeroext 0) #7
  %lp3974_bug_workaround.i6 = getelementptr inbounds %struct.max8998_rtc_info, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %lp3974_bug_workaround.i6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lp3974_bug_workaround.i6, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i7 = icmp eq i8 %11, 0
  br i1 %tobool.not.i7, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.then.cleanup.sink.split_crit_edge ], [ %call.i5, %if.else.cleanup.sink.split_crit_edge ]
  tail call void @msleep(i32 noundef 2000) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i5, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @max8998_data_to_tm(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %tm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %call = tail call i32 @_bcd2bin(i8 noundef zeroext %1) #11
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %tm, align 4
  %arrayidx5 = getelementptr i8, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %call17 = tail call i32 @_bcd2bin(i8 noundef zeroext %4) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call17, ptr %tm_min, align 4
  %arrayidx20 = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %cond.end74, label %cond.false38

cond.false38:                                     ; preds = %entry
  %and25 = and i8 %7, 31
  %call43 = tail call i32 @_bcd2bin(i8 noundef zeroext %and25) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call43, ptr %tm_hour, align 4
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool49.not = icmp eq i8 %11, 0
  br i1 %tobool49.not, label %cond.false38.if.end77_crit_edge, label %if.then50

cond.false38.if.end77_crit_edge:                  ; preds = %cond.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then50:                                        ; preds = %cond.false38
  call void @__sanitizer_cov_trace_pc() #9
  %add52 = add i32 %call43, 12
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add52, ptr %tm_hour, align 4
  br label %if.end77

cond.end74:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and55 = and i8 %7, 63
  %call73 = tail call i32 @_bcd2bin(i8 noundef zeroext %and55) #11
  %tm_hour76 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %13 = ptrtoint ptr %tm_hour76 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call73, ptr %tm_hour76, align 4
  br label %if.end77

if.end77:                                         ; preds = %cond.end74, %if.then50, %cond.false38.if.end77_crit_edge
  %arrayidx78 = getelementptr i8, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx78, align 1
  %16 = and i8 %15, 7
  %and80 = zext i8 %16 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and80, ptr %tm_wday, align 4
  %arrayidx81 = getelementptr i8, ptr %data, i32 4
  %18 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx81, align 1
  %call93 = tail call i32 @_bcd2bin(i8 noundef zeroext %19) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call93, ptr %tm_mday, align 4
  %arrayidx96 = getelementptr i8, ptr %data, i32 5
  %21 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx96, align 1
  %call108 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #11
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call108, ptr %tm_mon, align 4
  %arrayidx111 = getelementptr i8, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx111, align 1
  %arrayidx126 = getelementptr i8, ptr %data, i32 7
  %26 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx126, align 1
  %call138 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #11
  %call123 = tail call i32 @_bcd2bin(i8 noundef zeroext %25) #11
  %mul141 = mul i32 %call138, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add142 = add i32 %call123, -1900
  %sub = add i32 %add142, %mul141
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %tm_year, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_rtc_max8998__288_316_max8998_rtc_driver_init6, !1, !"__initcall__kmod_rtc_max8998__288_316_max8998_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max8998.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_max8998_rtc_driver_exit, !1, !"__exitcall_max8998_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max8998.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max8998.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max8998.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-max8998.c", i32 321, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max8998.c", i32 310, i32 11}
!14 = !{ptr @max8998_rtc_driver, !15, !"max8998_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max8998.c", i32 308, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-max8998.c", i32 270, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max8998_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max8998_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-max8998.c", i32 279, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max8998_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @max8998_rtc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-max8998.c", i32 284, i32 31}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-max8998.c", i32 287, i32 3}
!33 = !{ptr @max8998_rtc_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max8998_rtc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-max8998.c", i32 291, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @max8998_rtc_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @max8998_rtc_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-max8998.c", i32 294, i32 3}
!42 = !{ptr @max8998_rtc_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max8998_rtc_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @max8998_rtc_ops, !45, !"max8998_rtc_ops", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-max8998.c", i32 239, i32 35}
!46 = !{ptr @max8998_rtc_id, !47, !"max8998_rtc_id", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-max8998.c", i32 301, i32 40}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{!"auto-init"}
