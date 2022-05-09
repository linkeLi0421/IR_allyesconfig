; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ftrtc010.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ftrtc010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ftrtc010_rtc = type { ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }

@__UNIQUE_ID_author227 = internal constant [64 x i8] c"rtc_ftrtc010.author=Hans Ulli Kroll <ulli.kroll@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [51 x i8] c"rtc_ftrtc010.description=RTC driver for Gemini SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [43 x i8] c"rtc_ftrtc010.file=drivers/rtc/rtc-ftrtc010\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [25 x i8] c"rtc_ftrtc010.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [41 x i8] c"rtc_ftrtc010.alias=platform:rtc-ftrtc010\00", section ".modinfo", align 1
@__initcall__kmod_rtc_ftrtc010__232_208_ftrtc010_rtc_driver_init6 = internal global ptr @ftrtc010_rtc_driver_init, section ".initcall6.init", align 4
@ftrtc010_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftrtc010_rtc_probe, ptr @ftrtc010_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftrtc010_rtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ftrtc010_rtc_driver_exit = internal global ptr @ftrtc010_rtc_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLK\00", [27 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not get PCLK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ftrtc010_rtc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-ftrtc010.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry_ptr = internal global ptr @ftrtc010_rtc_probe._entry, section ".printk_index", align 4
@ftrtc010_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable PCLK\0A\00", [41 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry_ptr.8 = internal global ptr @ftrtc010_rtc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EXTCLK\00", [25 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not get EXTCLK\0A\00", [42 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry_ptr.12 = internal global ptr @ftrtc010_rtc_probe._entry.10, section ".printk_index", align 4
@ftrtc010_rtc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable EXTCLK\0A\00", [39 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_probe._entry_ptr.15 = internal global ptr @ftrtc010_rtc_probe._entry.13, section ".printk_index", align 4
@ftrtc010_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ftrtc010_rtc_read_time, ptr @ftrtc010_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-ftrtc010\00", [19 x i8] zeroinitializer }, align 32
@ftrtc010_rtc_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,gemini-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"faraday,ftrtc010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"ftrtc010_rtc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 199, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 123, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 125, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 129, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 133, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 135, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 139, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ftrtc010_rtc_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 105, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 201, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"ftrtc010_rtc_dt_match\00", align 1
@___asan_gen_.69 = private constant [30 x i8] c"../drivers/rtc/rtc-ftrtc010.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 192, i32 34 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_ftrtc010_rtc_driver_exit, ptr @__initcall__kmod_rtc_ftrtc010__232_208_ftrtc010_rtc_driver_init6, ptr @ftrtc010_rtc_driver_exit, ptr @ftrtc010_rtc_probe._entry, ptr @ftrtc010_rtc_probe._entry.10, ptr @ftrtc010_rtc_probe._entry.13, ptr @ftrtc010_rtc_probe._entry.6, ptr @ftrtc010_rtc_probe._entry_ptr, ptr @ftrtc010_rtc_probe._entry_ptr.12, ptr @ftrtc010_rtc_probe._entry_ptr.15, ptr @ftrtc010_rtc_probe._entry_ptr.8, ptr @ftrtc010_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @ftrtc010_rtc_ops, ptr @.str.16, ptr @ftrtc010_rtc_dt_match], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrtc010_rtc_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrtc010_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ftrtc010_rtc_driver, ptr noundef nonnull @ftrtc010_rtc_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftrtc010_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftrtc010_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrtc010_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str) #6
  %pclk = getelementptr inbounds %struct.ftrtc010_rtc, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %pclk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.do.end16_crit_edge

if.else.do.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call6) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.else.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i161, %if.else.do.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.if.end18_crit_edge, %do.end
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %extclk = getelementptr inbounds %struct.ftrtc010_rtc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call19, ptr %extclk, align 4
  %cmp.i162 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end25, label %if.else26

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %if.end35

if.else26:                                        ; preds = %if.end18
  %call.i163 = tail call i32 @clk_prepare(ptr noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i164, label %if.end.i167, label %if.else26.do.end33_crit_edge

if.else26.do.end33_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

if.end.i167:                                      ; preds = %if.else26
  %call1.i165 = tail call i32 @clk_enable(ptr noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %tobool2.not.i166 = icmp eq i32 %call1.i165, 0
  br i1 %tobool2.not.i166, label %if.end.i167.if.end35_crit_edge, label %if.then3.i168

if.end.i167.if.end35_crit_edge:                   ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then3.i168:                                    ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call19) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then3.i168, %if.else26.do.end33_crit_edge
  %retval.0.i169.ph = phi i32 [ %call1.i165, %if.then3.i168 ], [ %call.i163, %if.else26.do.end33_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end.i167.if.end35_crit_edge, %do.end25
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %rtc_irq = getelementptr inbounds %struct.ftrtc010_rtc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call36, ptr %rtc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %call41 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %4 = ptrtoint ptr %call41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call41, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call41, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call46 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %5, i32 noundef %add.i) #6
  %rtc_base = getelementptr inbounds %struct.ftrtc010_rtc, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %rtc_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call46, ptr %rtc_base, align 4
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %call51 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call51, ptr %call.i, align 4
  %cmp.i171 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call51, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ftrtc010_rtc_ops, ptr %ops, align 8
  %12 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !54
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %16 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtc_base, align 4
  %add.ptr65 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #6, !srcloc !54
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %20 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtc_base, align 4
  %add.ptr72 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #6, !srcloc !54
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %24 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc_base, align 4
  %add.ptr79 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #6, !srcloc !54
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %conv = zext i32 %27 to i64
  %mul = mul nuw nsw i64 %conv, 86400
  %mul83 = mul i32 %23, 3600
  %conv84 = zext i32 %mul83 to i64
  %mul85 = mul i32 %19, 60
  %conv86 = zext i32 %mul85 to i64
  %conv88 = zext i32 %15 to i64
  %add = add nuw nsw i64 %conv86, %conv88
  %add87 = add nuw nsw i64 %add, %conv84
  %add89 = add nuw nsw i64 %add87, %mul
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add89, ptr %range_min, align 8
  %31 = load ptr, ptr %call.i, align 4
  %range_min92 = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %range_min92 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %range_min92, align 8
  %add93 = add i64 %33, 4294967295
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %34 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add93, ptr %range_max, align 8
  %35 = ptrtoint ptr %rtc_irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rtc_irq, align 4
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %call.i172 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %36, ptr noundef nonnull @ftrtc010_rtc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %38, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool97.not = icmp eq i32 %call.i172, 0
  br i1 %tobool97.not, label %if.end105, label %if.end57.cleanup_crit_edge, !prof !59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end105:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call107 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.end57.cleanup_crit_edge, %if.then54, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end33, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then54 ], [ %call107, %if.end105 ], [ %retval.0.i169.ph, %do.end33 ], [ %retval.0.i.ph, %do.end16 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ -19, %if.end40.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ %call.i172, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ftrtc010_rtc_interrupt(i32 noundef %irq, ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrtc010_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_base = getelementptr inbounds %struct.ftrtc010_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %6 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !54
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %10 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_base, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !54
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %14 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc_base, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !54
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %18 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc_base, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !54
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %mul = mul i32 %17, 86400
  %mul31 = mul i32 %13, 3600
  %mul33 = mul i32 %9, 60
  %add = add i32 %mul33, %5
  %add32 = add i32 %add, %mul31
  %add34 = add i32 %add32, %mul
  %add35 = add i32 %add34, %21
  %conv = zext i32 %add35 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrtc010_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #6
  %rtc_base = getelementptr inbounds %struct.ftrtc010_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %6 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtc_base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !54
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %10 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc_base, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !54
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %14 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc_base, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !54
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %18 = trunc i64 %call1 to i32
  %mul26.neg = mul i32 %9, -60
  %mul25.neg = mul i32 %13, -3600
  %mul.neg = mul i32 %17, -86400
  %add.neg = sub i32 %18, %5
  %add27.neg = add i32 %add.neg, %mul26.neg
  %add28.neg = add i32 %add27.neg, %mul25.neg
  %conv29 = add i32 %add28.neg, %mul.neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %20 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtc_base, align 4
  %add.ptr31 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %19) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %rtc_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtc_base, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 16777216) #6, !srcloc !70
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftrtc010_rtc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %extclk = getelementptr inbounds %struct.ftrtc010_rtc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pclk = getelementptr inbounds %struct.ftrtc010_rtc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %cmp.i10 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i10, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias231, !8, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 28, i32 1}
!9 = !{ptr @__initcall__kmod_rtc_ftrtc010__232_208_ftrtc010_rtc_driver_init6, !10, !"__initcall__kmod_rtc_ftrtc010__232_208_ftrtc010_rtc_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 208, i32 1}
!11 = !{ptr @__exitcall_ftrtc010_rtc_driver_exit, !10, !"__exitcall_ftrtc010_rtc_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 123, i32 32}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 125, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ftrtc010_rtc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ftrtc010_rtc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 129, i32 4}
!24 = !{ptr @ftrtc010_rtc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ftrtc010_rtc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 133, i32 34}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 135, i32 3}
!30 = !{ptr @ftrtc010_rtc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ftrtc010_rtc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 139, i32 4}
!34 = !{ptr @ftrtc010_rtc_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ftrtc010_rtc_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ftrtc010_rtc_ops, !37, !"ftrtc010_rtc_ops", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 105, i32 35}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 201, i32 11}
!40 = !{ptr @ftrtc010_rtc_driver, !41, !"ftrtc010_rtc_driver", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 199, i32 31}
!42 = !{ptr @ftrtc010_rtc_dt_match, !43, !"ftrtc010_rtc_dt_match", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-ftrtc010.c", i32 192, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 4210981}
!55 = !{i64 2153870053}
!56 = !{i64 2153870611}
!57 = !{i64 2153871161}
!58 = !{i64 2153871711}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2153857706}
!61 = !{i64 2153858264}
!62 = !{i64 2153858814}
!63 = !{i64 2153859364}
!64 = !{i64 2153859922}
!65 = !{i64 2153860480}
!66 = !{i64 2153861038}
!67 = !{i64 2153861588}
!68 = !{i64 2153862138}
!69 = !{i64 2153862373}
!70 = !{i64 4210563}
!71 = !{i64 2153862804}
