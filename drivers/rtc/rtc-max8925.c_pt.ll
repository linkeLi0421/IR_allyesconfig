; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max8925.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8925.c"
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
%struct.max8925_rtc_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.max8925_chip = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_max8925__288_317_max8925_rtc_driver_init6 = internal global ptr @max8925_rtc_driver_init, section ".initcall6.init", align 4
@max8925_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8925_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8925_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8925_rtc_driver_exit = internal global ptr @max8925_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [49 x i8] c"rtc_max8925.description=Maxim MAX8925 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [63 x i8] c"rtc_max8925.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"rtc_max8925.file=drivers/rtc/rtc-max8925\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"rtc_max8925.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8925-rtc\00", [20 x i8] zeroinitializer }, align 32
@max8925_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max8925_rtc_suspend, ptr @max8925_rtc_resume, ptr @max8925_rtc_suspend, ptr @max8925_rtc_resume, ptr @max8925_rtc_suspend, ptr @max8925_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-alarm0\00", [21 x i8] zeroinitializer }, align 32
@max8925_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request IRQ: #%d: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max8925_rtc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-max8925.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8925_rtc_probe._entry_ptr = internal global ptr @max8925_rtc_probe._entry, section ".printk_index", align 4
@max8925_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max8925_rtc_read_time, ptr @max8925_rtc_set_time, ptr @max8925_rtc_read_alarm, ptr @max8925_rtc_set_alarm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max8925_rtc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register RTC device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@max8925_rtc_probe._entry_ptr.9 = internal global ptr @max8925_rtc_probe._entry.7, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"max8925_rtc_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 309, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 311, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"max8925_rtc_pm_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 307, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 262, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 264, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"max8925_rtc_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 238, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [29 x i8] c"../drivers/rtc/rtc-max8925.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 279, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max8925_rtc_driver_exit, ptr @__initcall__kmod_rtc_max8925__288_317_max8925_rtc_driver_init6, ptr @max8925_rtc_driver_exit, ptr @max8925_rtc_probe._entry, ptr @max8925_rtc_probe._entry.7, ptr @max8925_rtc_probe._entry_ptr, ptr @max8925_rtc_probe._entry_ptr.9, ptr @max8925_rtc_driver, ptr @.str, ptr @max8925_rtc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @max8925_rtc_ops, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8925_rtc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8925_rtc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8925_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8925_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip3 = getelementptr inbounds %struct.max8925_rtc_info, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %chip3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %chip3, align 4
  %rtc = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc, align 4
  %rtc4 = getelementptr inbounds %struct.max8925_rtc_info, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %rtc4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rtc4, align 4
  %dev6 = getelementptr inbounds %struct.max8925_rtc_info, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev6, align 4
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.max8925_rtc_info, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7, ptr %irq, align 4
  %call10 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call7, ptr noundef null, ptr noundef nonnull @rtc_update_handler, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %13, i32 noundef %call10) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call17 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #7
  %call19 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @max8925_rtc_ops, ptr noundef null) #7
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %16, %do.end27 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_update_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.max8925_rtc_info, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %call = tail call i32 @max8925_set_bits(ptr noundef %1, i32 noundef 24, i8 noundef zeroext 127, i8 noundef zeroext 0) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %rtc = getelementptr inbounds %struct.max8925_rtc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8925_bulk_read(ptr noundef %4, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tm_calc(ptr noundef %tm, ptr noundef nonnull %buf)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %9 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_year.i, align 4
  %add.i = add i32 %10, 1900
  %div.i = sdiv i32 %add.i, 1000
  %div3.i = sdiv i32 %add.i, 100
  %reass.mul.i = mul nsw i32 %div.i, 6
  %add10.i = add nsw i32 %reass.mul.i, %div3.i
  %conv11.i = trunc i32 %add10.i to i8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %8, align 1
  %div14.i = sdiv i32 %add.i, 10
  %mul21.neg.i = mul i32 %div14.i, 246
  %sub22.i = add i32 %mul21.neg.i, %add.i
  %.lhs.trunc.i = trunc i32 %div14.i to i8
  %12 = urem i8 %.lhs.trunc.i, 10
  %13 = shl nuw i8 %12, 4
  %14 = trunc i32 %sub22.i to i8
  %conv34.i = add i8 %13, %14
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv34.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i, align 4
  %div36.i = sdiv i32 %17, 10
  %reass.mul2.i = mul nsw i32 %div36.i, 6
  %add48.i = add i32 %reass.mul2.i, %17
  %conv49.i = trunc i32 %add48.i to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv49.i, ptr %6, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday.i, align 4
  %div51.i = sdiv i32 %20, 10
  %reass.mul4.i = mul nsw i32 %div51.i, 6
  %add63.i = add i32 %reass.mul4.i, %20
  %conv64.i = trunc i32 %add63.i to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv64.i, ptr %5, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  %conv66.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv66.i, ptr %4, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %25 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_hour.i, align 4
  %div68.i = sdiv i32 %26, 10
  %reass.mul6.i = mul nsw i32 %div68.i, 6
  %add80.i = add i32 %reass.mul6.i, %26
  %conv81.i = trunc i32 %add80.i to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv81.i, ptr %3, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %28 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min.i, align 4
  %div83.i = sdiv i32 %29, 10
  %reass.mul8.i = mul nsw i32 %div83.i, 6
  %add95.i = add i32 %reass.mul8.i, %29
  %conv96.i = trunc i32 %add95.i to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv96.i, ptr %2, align 1
  %31 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm, align 4
  %div98.i = sdiv i32 %32, 10
  %reass.mul10.i = mul nsw i32 %div98.i, 6
  %add110.i = add i32 %reass.mul10.i, %32
  %conv111.i = trunc i32 %add110.i to i8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv111.i, ptr %buf, align 1
  %rtc = getelementptr inbounds %struct.max8925_rtc_info, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc, align 4
  %call3 = call i32 @max8925_bulk_write(ptr noundef %35, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %rtc = getelementptr inbounds %struct.max8925_rtc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtc, align 4
  %call1 = call i32 @max8925_bulk_read(ptr noundef %4, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  call fastcc void @tm_calc(ptr noundef %time, ptr noundef nonnull %buf)
  %5 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc, align 4
  %call8 = call i32 @max8925_reg_read(ptr noundef %6, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and = and i32 %call8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.end11
  %7 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtc, align 4
  %call14 = call i32 @max8925_reg_read(ptr noundef %8, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.else.cleanup_crit_edge, label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool18.not = icmp ne i32 %call14, 0
  %. = zext i1 %tobool18.not to i8
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.end11.if.end24_crit_edge
  %.sink = phi i8 [ 0, %if.end11.if.end24_crit_edge ], [ %., %if.end17 ]
  %9 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %alrm, align 4
  %10 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtc, align 4
  %call26 = call i32 @max8925_reg_read(ptr noundef %11, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %pending34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %12 = trunc i32 %call26 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %pending34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pending34, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ %call14, %if.else.cleanup_crit_edge ], [ 0, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8925_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_year.i, align 4
  %add.i = add i32 %10, 1900
  %div.i = sdiv i32 %add.i, 1000
  %div3.i = sdiv i32 %add.i, 100
  %reass.mul.i = mul nsw i32 %div.i, 6
  %add10.i = add nsw i32 %reass.mul.i, %div3.i
  %conv11.i = trunc i32 %add10.i to i8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %8, align 1
  %div14.i = sdiv i32 %add.i, 10
  %mul21.neg.i = mul i32 %div14.i, 246
  %sub22.i = add i32 %mul21.neg.i, %add.i
  %.lhs.trunc.i = trunc i32 %div14.i to i8
  %12 = urem i8 %.lhs.trunc.i, 10
  %13 = shl nuw i8 %12, 4
  %14 = trunc i32 %sub22.i to i8
  %conv34.i = add i8 %13, %14
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv34.i, ptr %7, align 1
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mon.i, align 4
  %div36.i = sdiv i32 %17, 10
  %reass.mul2.i = mul nsw i32 %div36.i, 6
  %add48.i = add i32 %reass.mul2.i, %17
  %conv49.i = trunc i32 %add48.i to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv49.i, ptr %6, align 1
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday.i, align 4
  %div51.i = sdiv i32 %20, 10
  %reass.mul4.i = mul nsw i32 %div51.i, 6
  %add63.i = add i32 %reass.mul4.i, %20
  %conv64.i = trunc i32 %add63.i to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv64.i, ptr %5, align 1
  %tm_wday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday.i, align 4
  %conv66.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv66.i, ptr %4, align 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_hour.i, align 4
  %div68.i = sdiv i32 %26, 10
  %reass.mul6.i = mul nsw i32 %div68.i, 6
  %add80.i = add i32 %reass.mul6.i, %26
  %conv81.i = trunc i32 %add80.i to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv81.i, ptr %3, align 1
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min.i, align 4
  %div83.i = sdiv i32 %29, 10
  %reass.mul8.i = mul nsw i32 %div83.i, 6
  %add95.i = add i32 %reass.mul8.i, %29
  %conv96.i = trunc i32 %add95.i to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv96.i, ptr %2, align 1
  %31 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %time, align 4
  %div98.i = sdiv i32 %32, 10
  %reass.mul10.i = mul nsw i32 %div98.i, 6
  %add110.i = add i32 %reass.mul10.i, %32
  %conv111.i = trunc i32 %add110.i to i8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv111.i, ptr %buf, align 1
  %rtc = getelementptr inbounds %struct.max8925_rtc_info, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtc, align 4
  %call3 = call i32 @max8925_bulk_write(ptr noundef %35, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %entry.out_crit_edge, label %if.end6

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtc, align 4
  %. = select i1 %tobool.not, i8 0, i8 119
  %call9 = call i32 @max8925_reg_write(ptr noundef %39, i32 noundef 24, i8 noundef zeroext %.) #7
  br label %out

out:                                              ; preds = %if.end6, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call9, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_bulk_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @tm_calc(ptr nocapture noundef writeonly %tm, ptr nocapture noundef readonly %buf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %buf, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 4
  %mul = mul nuw nsw i32 %2, 1000
  %and = and i32 %conv, 15
  %mul3 = mul nuw nsw i32 %and, 100
  %arrayidx4 = getelementptr i8, ptr %buf, i32 6
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %5 = lshr i32 %conv5, 4
  %mul7 = mul nuw nsw i32 %5, 10
  %and11 = and i32 %conv5, 15
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add = add nuw nsw i32 %mul3, -1900
  %add8 = add nsw i32 %add, %mul
  %add12 = add nsw i32 %add8, %and11
  %sub = add nsw i32 %add12, %mul7
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %tm_year, align 4
  %arrayidx14 = getelementptr i8, ptr %buf, i32 5
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %8 to i32
  %9 = lshr i32 %conv15, 4
  %and17 = and i32 %9, 1
  %mul18 = mul nuw nsw i32 %and17, 10
  %and21 = and i32 %conv15, 15
  %add22 = add nuw nsw i32 %mul18, %and21
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add22, ptr %tm_mon, align 4
  %arrayidx23 = getelementptr i8, ptr %buf, i32 4
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %13 = lshr i32 %conv24, 4
  %and26 = and i32 %13, 3
  %mul27 = mul nuw nsw i32 %and26, 10
  %and30 = and i32 %conv24, 15
  %add31 = add nuw nsw i32 %mul27, %and30
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add31, ptr %tm_mday, align 4
  %arrayidx32 = getelementptr i8, ptr %buf, i32 3
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx32, align 1
  %17 = and i8 %16, 7
  %and34 = zext i8 %17 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %18 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and34, ptr %tm_wday, align 4
  %arrayidx35 = getelementptr i8, ptr %buf, i32 2
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %20 to i32
  %and37 = and i32 %conv36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool.not = icmp eq i32 %and37, 0
  %21 = lshr i32 %conv36, 4
  br i1 %tobool.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %entry
  %and42 = and i32 %21, 1
  %mul43 = mul nuw nsw i32 %and42, 10
  %and46 = and i32 %conv36, 15
  %add47 = add nuw nsw i32 %mul43, %and46
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add47, ptr %tm_hour, align 4
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool51.not = icmp eq i8 %25, 0
  br i1 %tobool51.not, label %if.then38.if.end66_crit_edge, label %if.then52

if.then38.if.end66_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then52:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %add54 = add nuw nsw i32 %add47, 12
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add54, ptr %tm_hour, align 4
  br label %if.end66

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and59 = and i32 %21, 3
  %mul60 = mul nuw nsw i32 %and59, 10
  %and63 = and i32 %conv36, 15
  %add64 = add nuw nsw i32 %mul60, %and63
  %tm_hour65 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add64, ptr %tm_hour65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then52, %if.then38.if.end66_crit_edge
  %arrayidx67 = getelementptr i8, ptr %buf, i32 1
  %28 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %29 to i32
  %30 = lshr i32 %conv68, 4
  %and70 = and i32 %30, 7
  %mul71 = mul nuw nsw i32 %and70, 10
  %and74 = and i32 %conv68, 15
  %add75 = add nuw nsw i32 %mul71, %and74
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %31 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add75, ptr %tm_min, align 4
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %conv77 = zext i8 %33 to i32
  %34 = lshr i32 %conv77, 4
  %and79 = and i32 %34, 7
  %mul80 = mul nuw nsw i32 %and79, 10
  %and83 = and i32 %conv77, 15
  %add84 = add nuw nsw i32 %mul80, %and83
  %35 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add84, ptr %tm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_bulk_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8925_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max8925_rtc_suspend(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_flag = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %or = or i32 %8, 4194304
  store i32 %or, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max8925_rtc_resume(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_flag = getelementptr inbounds %struct.max8925_chip, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %wakeup_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wakeup_flag, align 4
  %and = and i32 %8, -4194305
  store i32 %and, ptr %wakeup_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_rtc_max8925__288_317_max8925_rtc_driver_init6, !1, !"__initcall__kmod_rtc_max8925__288_317_max8925_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max8925.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_max8925_rtc_driver_exit, !1, !"__exitcall_max8925_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max8925.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max8925.c", i32 320, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max8925.c", i32 321, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max8925.c", i32 311, i32 11}
!12 = !{ptr @max8925_rtc_driver, !13, !"max8925_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max8925.c", i32 309, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max8925.c", i32 262, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-max8925.c", i32 264, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @max8925_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @max8925_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-max8925.c", i32 279, i32 3}
!26 = !{ptr @max8925_rtc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @max8925_rtc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @max8925_rtc_ops, !29, !"max8925_rtc_ops", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-max8925.c", i32 238, i32 35}
!30 = !{ptr @max8925_rtc_pm_ops, !31, !"max8925_rtc_pm_ops", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-max8925.c", i32 307, i32 8}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
