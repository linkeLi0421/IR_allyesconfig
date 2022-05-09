; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_dte.c_pt.bc'
source_filename = "../drivers/ptp/ptp_dte.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ptp_dte = type { ptr, ptr, %struct.ptp_clock_info, ptr, i32, i32, %struct.spinlock, [4 x i32] }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_ptp_dte__271_343_ptp_dte_driver_init6 = internal global ptr @ptp_dte_driver_init, section ".initcall6.init", align 4
@ptp_dte_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ptp_dte_probe, ptr @ptp_dte_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ptp_dte_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptp_dte_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ptp_dte_driver_exit = internal global ptr @ptp_dte_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author272 = internal constant [24 x i8] c"ptp_dte.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [50 x i8] c"ptp_dte.description=Broadcom DTE PTP Clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [33 x i8] c"ptp_dte.file=drivers/ptp/ptp_dte\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [23 x i8] c"ptp_dte.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp-dte\00", [24 x i8] zeroinitializer }, align 32
@ptp_dte_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ptp-dte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ptp_dte_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ptp_dte_suspend, ptr @ptp_dte_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ptp_dte_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ptp_dte->lock\00", [17 x i8] zeroinitializer }, align 32
@ptp_dte_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"DTE PTP timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ptp_dte_adjfreq, ptr null, ptr @ptp_dte_adjtime, ptr @ptp_dte_gettime, ptr null, ptr null, ptr @ptp_dte_settime, ptr @ptp_dte_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ptp_dte_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to register ptp clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ptp_dte_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ptp/ptp_dte.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ptp_dte_probe._entry_ptr = internal global ptr @ptp_dte_probe._entry, section ".printk_index", align 4
@ptp_dte_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 265, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptp clk probe done\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ptp_dte_probe._entry_ptr.10 = internal global ptr @ptp_dte_probe._entry.7, section ".printk_index", align 4
@ptp_dte_adjfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppb adj too big\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ptp_dte_adjfreq\00", [16 x i8] zeroinitializer }, align 32
@ptp_dte_adjfreq._entry_ptr = internal global ptr @ptp_dte_adjfreq._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ptp_dte_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 334, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 336, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"ptp_dte_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 328, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"ptp_dte_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 318, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 252, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"ptp_dte_caps\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 225, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 258, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 265, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [25 x i8] c"../drivers/ptp/ptp_dte.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 154, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_ptp_dte_driver_exit, ptr @__initcall__kmod_ptp_dte__271_343_ptp_dte_driver_init6, ptr @ptp_dte_adjfreq._entry, ptr @ptp_dte_adjfreq._entry_ptr, ptr @ptp_dte_driver_exit, ptr @ptp_dte_probe._entry, ptr @ptp_dte_probe._entry.7, ptr @ptp_dte_probe._entry_ptr, ptr @ptp_dte_probe._entry_ptr.10, ptr @ptp_dte_driver, ptr @.str, ptr @ptp_dte_of_match, ptr @ptp_dte_pm_ops, ptr @ptp_dte_probe.__key, ptr @.str.1, ptr @ptp_dte_caps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_dte_adjfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ptp_dte_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ptp_dte_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ptp_dte_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ptp_dte, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ptp_dte_probe.__key, i16 noundef signext 3) #7
  %dev10 = getelementptr inbounds %struct.ptp_dte, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev10, align 4
  %caps = getelementptr inbounds %struct.ptp_dte, ptr %call.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %caps, ptr @ptp_dte_caps, i32 108)
  %call13 = tail call ptr @ptp_clock_register(ptr noundef %caps, ptr noundef %dev1) #7
  %ptp_clk = getelementptr inbounds %struct.ptp_dte, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ptp_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %ptp_clk, align 4
  %cmp.i44 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %do.end19, label %if.end22

do.end19:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #10
  %5 = ptrtoint ptr %ptp_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %7, %do.end19 ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ptp_clk = getelementptr inbounds %struct.ptp_dte, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptp_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clk, align 4
  %call1 = tail call i32 @ptp_clock_unregister(ptr noundef %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.1 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.2 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.3 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #7, !srcloc !51
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_adjfreq(ptr noundef %ptp, i32 noundef %ppb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %sub = sub i32 0, %ppb
  %cond = select i1 %cmp, i32 %sub, i32 %ppb
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %max_adj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_adj, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %1)
  %cmp2 = icmp sgt i32 %cond, %1
  br i1 %cmp2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %ptp, i32 108
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %cond.end11, label %cond.end22

cond.end11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 28
  %add = or i64 %mul, 62500000
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef 125000000) #7
  %conv13 = trunc i64 %call to i32
  %sub14 = sub i32 -2147483648, %conv13
  br label %do.body32

cond.end22:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv2462 = zext i32 %ppb to i64
  %mul25 = shl nuw nsw i64 %conv2462, 28
  %add26 = or i64 %mul25, 62500000
  %call27 = tail call i64 @div64_u64(i64 noundef %add26, i64 noundef 125000000) #7
  %conv28 = trunc i64 %call27 to i32
  %add29 = xor i32 %conv28, -2147483648
  br label %do.body32

do.body32:                                        ; preds = %cond.end22, %cond.end11
  %nco_incr.0 = phi i32 [ %sub14, %cond.end11 ], [ %add29, %cond.end22 ]
  %lock = getelementptr i8, ptr %ptp, i32 120
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %nco_incr.0)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr45 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %4) #7, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_adjtime(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -8
  %lock = getelementptr i8, ptr %ptp, i32 120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !53
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 36
  %conv8.i.i = zext i32 %5 to i64
  %shl9.i.i = shl nuw nsw i64 %conv8.i.i, 4
  %or.i.i = or i64 %shl9.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp.i = icmp slt i64 %delta, 0
  %sub.i = sub i64 0, %delta
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %sub.i)
  %cmp2.i = icmp slt i64 %or.i.i, %sub.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %entry
  %ts_wrap_cnt.i = getelementptr i8, ptr %ptp, i32 116
  %6 = ptrtoint ptr %ts_wrap_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_wrap_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i.dte_write_nco_delta.exit_crit_edge, label %if.then3.i

if.then.i.dte_write_nco_delta.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dte_write_nco_delta.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i64 %delta, 17592186044415
  %add4.i = add i64 %add.i, %or.i.i
  %dec.i = add i32 %7, -1
  %8 = ptrtoint ptr %ts_wrap_cnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %ts_wrap_cnt.i, align 4
  %extract.i = lshr i64 %add4.i, 4
  %extract.t.i = trunc i64 %extract.i to i32
  %extract36.i = lshr i64 %add4.i, 20
  %extract.t37.i = trunc i64 %extract36.i to i32
  %extract42.i = lshr i64 %add4.i, 32
  %extract.t43.i = trunc i64 %extract42.i to i32
  br label %if.end13.i

if.else6.i:                                       ; preds = %entry
  %add7.i = add i64 %or.i.i, %delta
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044415, i64 %add7.i)
  %cmp8.i = icmp sgt i64 %add7.i, 17592186044415
  %extract34.i = lshr i64 %add7.i, 4
  %extract.t35.i = trunc i64 %extract34.i to i32
  %extract40.i = lshr i64 %add7.i, 20
  %extract.t41.i = trunc i64 %extract40.i to i32
  %extract46.i = lshr i64 %add7.i, 32
  %extract.t47.i = trunc i64 %extract46.i to i32
  br i1 %cmp8.i, label %if.then9.i, label %if.else6.i.if.end13.i_crit_edge

if.else6.i.if.end13.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #9
  %ts_wrap_cnt10.i = getelementptr i8, ptr %ptp, i32 116
  %9 = ptrtoint ptr %ts_wrap_cnt10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ts_wrap_cnt10.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %ts_wrap_cnt10.i, align 4
  %sub11.i = add nsw i64 %add7.i, -17592186044415
  %extract32.i = lshr i64 %sub11.i, 4
  %extract.t33.i = trunc i64 %extract32.i to i32
  %extract38.i = lshr i64 %sub11.i, 20
  %extract.t39.i = trunc i64 %extract38.i to i32
  %extract44.i = lshr i64 %sub11.i, 32
  %extract.t45.i = trunc i64 %extract44.i to i32
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.else6.i.if.end13.i_crit_edge, %if.then3.i
  %ns.0.off4.i = phi i32 [ %extract.t.i, %if.then3.i ], [ %extract.t33.i, %if.then9.i ], [ %extract.t35.i, %if.else6.i.if.end13.i_crit_edge ]
  %ns.0.off20.i = phi i32 [ %extract.t37.i, %if.then3.i ], [ %extract.t39.i, %if.then9.i ], [ %extract.t41.i, %if.else6.i.if.end13.i_crit_edge ]
  %ns.0.off32.i = phi i32 [ %extract.t43.i, %if.then3.i ], [ %extract.t45.i, %if.then9.i ], [ %extract.t47.i, %if.else6.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ns.0.off4.i)
  %cmp.not.i.i = icmp eq i32 %ns.0.off4.i, -1
  %inc.i.i = add i32 %ns.0.off4.i, 1
  %spec.select.i = select i1 %cmp.not.i.i, i32 -1, i32 %inc.i.i
  br label %dte_write_nco_delta.exit

dte_write_nco_delta.exit:                         ; preds = %if.end13.i, %if.then.i.dte_write_nco_delta.exit_crit_edge
  %ns.0.off3254.i = phi i32 [ %ns.0.off32.i, %if.end13.i ], [ 0, %if.then.i.dte_write_nco_delta.exit_crit_edge ]
  %ns.0.off2053.i = phi i32 [ %ns.0.off20.i, %if.end13.i ], [ 0, %if.then.i.dte_write_nco_delta.exit_crit_edge ]
  %11 = phi i32 [ %spec.select.i, %if.end13.i ], [ 1, %if.then.i.dte_write_nco_delta.exit_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %add.ptr8.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %14) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %15 = and i32 %ns.0.off2053.i, 16711680
  %add.ptr12.i.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %15) #7, !srcloc !51
  %conv.i = and i32 %ns.0.off3254.i, 4095
  %ts_ovf_last.i = getelementptr i8, ptr %ptp, i32 112
  %16 = ptrtoint ptr %ts_ovf_last.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %ts_ovf_last.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #2 align 64 {
entry:
  %tmp6 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -8
  %lock = getelementptr i8, ptr %ptp, i32 120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp6) #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !53
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  %conv.i.i = zext i32 %3 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 36
  %conv8.i.i = zext i32 %5 to i64
  %shl9.i.i = shl nuw nsw i64 %conv8.i.i, 4
  %or.i.i = or i64 %shl9.i.i, %shl.i.i
  %6 = lshr i64 %or.i.i, 32
  %7 = trunc i64 %6 to i32
  %conv.i = and i32 %7, 4095
  %ts_ovf_last.i = getelementptr i8, ptr %ptp, i32 112
  %8 = ptrtoint ptr %ts_ovf_last.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_ovf_last.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %9)
  %cmp.i = icmp ult i32 %conv.i, %9
  br i1 %cmp.i, label %if.then.i, label %entry.dte_read_nco_with_ovf.exit_crit_edge

entry.dte_read_nco_with_ovf.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dte_read_nco_with_ovf.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ts_wrap_cnt.i = getelementptr i8, ptr %ptp, i32 116
  %10 = ptrtoint ptr %ts_wrap_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ts_wrap_cnt.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %ts_wrap_cnt.i, align 4
  br label %dte_read_nco_with_ovf.exit

dte_read_nco_with_ovf.exit:                       ; preds = %if.then.i, %entry.dte_read_nco_with_ovf.exit_crit_edge
  %12 = ptrtoint ptr %ts_ovf_last.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %ts_ovf_last.i, align 4
  %ts_wrap_cnt3.i = getelementptr i8, ptr %ptp, i32 116
  %13 = ptrtoint ptr %ts_wrap_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts_wrap_cnt3.i, align 4
  %conv4.i = zext i32 %14 to i64
  %mul.i = shl i64 %conv4.i, 44
  %add.i = or i64 %mul.i, %or.i.i
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp6, i64 noundef %add.i) #7
  %15 = call ptr @memcpy(ptr %ts, ptr %tmp6, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp6) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -8
  %lock = getelementptr i8, ptr %ptp, i32 120
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr9 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !51
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %5)
  %cmp.i = icmp sgt i64 %5, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit.thread_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %5)
  %cmp2.i = icmp slt i64 %5, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit.thread33_crit_edge, label %timespec64_to_ns.exit

if.end.i.timespec64_to_ns.exit.thread33_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread33

timespec64_to_ns.exit:                            ; preds = %if.end.i
  %mul.i = mul nsw i64 %5, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %7 to i64
  %add.i = add i64 %mul.i, %conv.i
  %extract = lshr i64 %add.i, 4
  %extract.t = trunc i64 %extract to i32
  %extract25 = lshr i64 %add.i, 20
  %extract.t26 = trunc i64 %extract25 to i32
  %phi.bo = and i32 %extract.t26, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %extract.t)
  %cmp.not.i = icmp eq i32 %extract.t, -1
  %inc.i = add i32 %extract.t, 1
  br i1 %cmp.not.i, label %timespec64_to_ns.exit.timespec64_to_ns.exit.thread_crit_edge, label %timespec64_to_ns.exit.timespec64_to_ns.exit.thread33_crit_edge

timespec64_to_ns.exit.timespec64_to_ns.exit.thread33_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread33

timespec64_to_ns.exit.timespec64_to_ns.exit.thread_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread

timespec64_to_ns.exit.thread:                     ; preds = %timespec64_to_ns.exit.timespec64_to_ns.exit.thread_crit_edge, %entry.timespec64_to_ns.exit.thread_crit_edge
  %retval.0.i.off2032 = phi i32 [ %phi.bo, %timespec64_to_ns.exit.timespec64_to_ns.exit.thread_crit_edge ], [ 16711680, %entry.timespec64_to_ns.exit.thread_crit_edge ]
  br label %timespec64_to_ns.exit.thread33

timespec64_to_ns.exit.thread33:                   ; preds = %timespec64_to_ns.exit.thread, %timespec64_to_ns.exit.timespec64_to_ns.exit.thread33_crit_edge, %if.end.i.timespec64_to_ns.exit.thread33_crit_edge
  %retval.0.i.off2031 = phi i32 [ %retval.0.i.off2032, %timespec64_to_ns.exit.thread ], [ %phi.bo, %timespec64_to_ns.exit.timespec64_to_ns.exit.thread33_crit_edge ], [ 0, %if.end.i.timespec64_to_ns.exit.thread33_crit_edge ]
  %8 = phi i32 [ -1, %timespec64_to_ns.exit.thread ], [ %inc.i, %timespec64_to_ns.exit.timespec64_to_ns.exit.thread33_crit_edge ], [ 1, %if.end.i.timespec64_to_ns.exit.thread33_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %add.ptr8.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %9) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr12.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %retval.0.i.off2031) #7, !srcloc !51
  %ts_ovf_last = getelementptr i8, ptr %ptp, i32 112
  %10 = ptrtoint ptr %ts_ovf_last to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ts_ovf_last, align 4
  %ts_wrap_cnt = getelementptr i8, ptr %ptp, i32 116
  %11 = ptrtoint ptr %ts_wrap_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ts_wrap_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 128) #7, !srcloc !51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_dte_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %rq, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !53
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %arrayidx = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.1 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !53
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %arrayidx.1 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.1, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.2 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #7, !srcloc !53
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %arrayidx.2 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.2, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.3 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #7, !srcloc !53
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %arrayidx.3 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dte_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
for.inc.3:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %arrayidx.1 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.1 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %9) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %arrayidx12.2 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12.2, align 4
  %and.2 = shl i32 %13, 16
  %shl.2 = and i32 %and.2, 16711680
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr16.2 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.2, i32 %shl.2) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %arrayidx.3 = getelementptr %struct.ptp_dte, ptr %1, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.3 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 %18) #7, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_ptp_dte__271_343_ptp_dte_driver_init6, !1, !"__initcall__kmod_ptp_dte__271_343_ptp_dte_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_dte.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_ptp_dte_driver_exit, !1, !"__exitcall_ptp_dte_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author272, !4, !"__UNIQUE_ID_author272", i1 false, i1 false}
!4 = !{!"../drivers/ptp/ptp_dte.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_description273, !6, !"__UNIQUE_ID_description273", i1 false, i1 false}
!6 = !{!"../drivers/ptp/ptp_dte.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file274, !8, !"__UNIQUE_ID_file274", i1 false, i1 false}
!8 = !{!"../drivers/ptp/ptp_dte.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license275, !8, !"__UNIQUE_ID_license275", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ptp/ptp_dte.c", i32 336, i32 11}
!12 = !{ptr @ptp_dte_driver, !13, !"ptp_dte_driver", i1 false, i1 false}
!13 = !{!"../drivers/ptp/ptp_dte.c", i32 334, i32 31}
!14 = !{ptr @ptp_dte_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/ptp/ptp_dte.c", i32 252, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ptp/ptp_dte.c", i32 258, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ptp_dte_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ptp_dte_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ptp/ptp_dte.c", i32 265, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ptp_dte_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ptp_dte_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ptp_dte_caps, !31, !"ptp_dte_caps", i1 false, i1 false}
!31 = !{!"../drivers/ptp/ptp_dte.c", i32 225, i32 36}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ptp/ptp_dte.c", i32 154, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ptp_dte_adjfreq._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ptp_dte_adjfreq._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ptp_dte_of_match, !38, !"ptp_dte_of_match", i1 false, i1 false}
!38 = !{!"../drivers/ptp/ptp_dte.c", i32 328, i32 34}
!39 = !{ptr @ptp_dte_pm_ops, !40, !"ptp_dte_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/ptp/ptp_dte.c", i32 318, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2154742391}
!51 = !{i64 691438}
!52 = !{i64 2154733067}
!53 = !{i64 691856}
!54 = !{i64 2154710746}
!55 = !{i64 2154711218}
!56 = !{i64 2154709329}
!57 = !{i64 2154709712}
!58 = !{i64 2154710104}
!59 = !{i64 2154737917}
!60 = !{i64 2154738329}
!61 = !{i64 2154743128}
!62 = !{i64 2154743348}
!63 = !{i64 2154743775}
!64 = !{i64 2154744289}
