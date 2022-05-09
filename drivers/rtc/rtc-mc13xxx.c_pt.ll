; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mc13xxx.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mc13xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.mc13xxx_rtc = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_mc13xxx__229_361_mc13xxx_rtc_driver_init6 = internal global ptr @mc13xxx_rtc_driver_init, section ".initcall6.init", align 4
@mc13xxx_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @mc13xxx_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mc13xxx_rtc_idtable, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13xxx_rtc_driver_exit = internal global ptr @mc13xxx_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [57 x i8] c"rtc_mc13xxx.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [62 x i8] c"rtc_mc13xxx.description=RTC driver for Freescale MC13XXX PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [41 x i8] c"rtc_mc13xxx.file=drivers/rtc/rtc-mc13xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [27 x i8] c"rtc_mc13xxx.license=GPL v2\00", section ".modinfo", align 1
@mc13xxx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @mc13xxx_rtc_read_time, ptr @mc13xxx_rtc_set_time, ptr @mc13xxx_rtc_read_alarm, ptr @mc13xxx_rtc_set_alarm, ptr null, ptr @mc13xxx_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc13xxx-rtc\00", [20 x i8] zeroinitializer }, align 32
@mc13xxx_rtc_read_alarm.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_mc13xxx\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc13xxx_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-mc13xxx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@mc13xxx_rtc_set_alarm.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mc13xxx_rtc_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %s %lld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@mc13xxx_rtc_idtable = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mc13783-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"mc13892-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"mc34708-rtc\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"mc13xxx_rtc_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 353, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"mc13xxx_rtc_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 251, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 299, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 192, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 217, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"mc13xxx_rtc_idtable\00", align 1
@___asan_gen_.43 = private constant [29 x i8] c"../drivers/rtc/rtc-mc13xxx.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 341, i32 40 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_mc13xxx_rtc_driver_exit, ptr @__initcall__kmod_rtc_mc13xxx__229_361_mc13xxx_rtc_driver_init6, ptr @mc13xxx_rtc_driver_exit, ptr @mc13xxx_rtc_driver, ptr @mc13xxx_rtc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mc13xxx_rtc_idtable], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_rtc_idtable to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mc13xxx_rtc_driver, ptr noundef nonnull @mc13xxx_rtc_probe, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13xxx_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13xxx_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mc13xxx3 = getelementptr inbounds %struct.mc13xxx_rtc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %mc13xxx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mc13xxx3, align 4
  %valid = getelementptr inbounds %struct.mc13xxx_rtc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %valid, align 4
  %call5 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call5, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mc13xxx_rtc_ops, ptr %ops, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 2831155199, ptr %range_max, align 8
  tail call void @mc13xxx_lock(ptr noundef %3) #4
  %call15 = tail call i32 @mc13xxx_irq_request(ptr noundef %3, i32 noundef 31, ptr noundef nonnull @mc13xxx_rtc_reset_handler, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.err_irq_request_crit_edge

if.end11.err_irq_request_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_irq_request

if.end18:                                         ; preds = %if.end11
  %call.i60 = tail call i32 @mc13xxx_irq_request(ptr noundef %3, i32 noundef 25, ptr noundef nonnull @mc13xxx_rtc_alarm_handler, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool20.not = icmp eq i32 %call.i60, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_irq_request_crit_edge

if.end18.err_irq_request_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_irq_request

if.end22:                                         ; preds = %if.end18
  tail call void @mc13xxx_unlock(ptr noundef %3) #4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call24 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.then26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mc13xxx_lock(ptr noundef %3) #4
  br label %err_irq_request

err_irq_request:                                  ; preds = %if.then26, %if.end18.err_irq_request_crit_edge, %if.end11.err_irq_request_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end11.err_irq_request_crit_edge ], [ %call.i60, %if.end18.err_irq_request_crit_edge ], [ %call24, %if.then26 ]
  %call28 = tail call i32 @mc13xxx_irq_free(ptr noundef %3, i32 noundef 25, ptr noundef nonnull %call.i) #4
  %call29 = tail call i32 @mc13xxx_irq_free(ptr noundef %3, i32 noundef 31, ptr noundef nonnull %call.i) #4
  tail call void @mc13xxx_unlock(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %err_irq_request, %if.end22.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %ret.0, %err_irq_request ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_reset_handler(i32 noundef %irq, ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mc13xxx1 = getelementptr inbounds %struct.mc13xxx_rtc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mc13xxx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx1, align 4
  %valid = getelementptr inbounds %struct.mc13xxx_rtc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %valid, align 4
  %call = tail call i32 @mc13xxx_irq_mask(ptr noundef %1, i32 noundef %irq) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_alarm_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mc13xxx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  %seconds = alloca i32, align 4
  %days1 = alloca i32, align 4
  %days2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seconds) #4
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %seconds, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %days1) #4
  %3 = ptrtoint ptr %days1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %days1, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %days2) #4
  %4 = ptrtoint ptr %days2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %days2, align 4, !annotation !39
  %valid = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %do.body.preheader

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

do.body.preheader:                                ; preds = %entry
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %7 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc13xxx, align 4
  %call1 = call i32 @mc13xxx_reg_read(ptr noundef %8, i32 noundef 22, ptr noundef nonnull %days1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.body.cleanup16_crit_edge

do.body.cleanup16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

if.end4:                                          ; preds = %do.body
  %9 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc13xxx, align 4
  %call6 = call i32 @mc13xxx_reg_read(ptr noundef %10, i32 noundef 20, ptr noundef nonnull %seconds) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end4.cleanup16_crit_edge

if.end4.cleanup16_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

cleanup:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc13xxx, align 4
  %call11 = call i32 @mc13xxx_reg_read(ptr noundef %12, i32 noundef 22, ptr noundef nonnull %days2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.cond, label %cleanup.cleanup16_crit_edge

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

do.cond:                                          ; preds = %cleanup
  %13 = ptrtoint ptr %days1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %days1, align 4
  %15 = ptrtoint ptr %days2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %days2, align 4
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i32 %14 to i64
  %mul = mul nuw nsw i64 %conv, 86400
  %17 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seconds, align 4
  %conv15 = zext i32 %18 to i64
  %add = add nuw nsw i64 %mul, %conv15
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %tm) #4
  br label %cleanup16

cleanup16:                                        ; preds = %do.end, %cleanup.cleanup16_crit_edge, %if.end4.cleanup16_crit_edge, %do.body.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %do.end ], [ -61, %entry.cleanup16_crit_edge ], [ %call1, %do.body.cleanup16_crit_edge ], [ %call6, %if.end4.cleanup16_crit_edge ], [ %call11, %cleanup.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %days2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %days1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seconds) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #3 align 64 {
entry:
  %seconds = alloca i32, align 4
  %alarmseconds = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seconds) #4
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %seconds, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alarmseconds) #4
  %3 = ptrtoint ptr %alarmseconds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %alarmseconds, align 4, !annotation !39
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #4
  %call2 = call i64 @div_s64_rem(i64 noundef %call1, i32 noundef 86400, ptr noundef nonnull %seconds) #4
  %conv = trunc i64 %call2 to i32
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc13xxx, align 4
  call void @mc13xxx_lock(ptr noundef %5) #4
  %6 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc13xxx, align 4
  %call4 = call i32 @mc13xxx_reg_read(ptr noundef %7, i32 noundef 21, ptr noundef nonnull %alarmseconds) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !40

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %alarmseconds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alarmseconds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %9)
  %cmp = icmp ult i32 %9, 86400
  br i1 %cmp, label %if.then8, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc13xxx, align 4
  %call10 = call i32 @mc13xxx_reg_write(ptr noundef %11, i32 noundef 21, i32 noundef 131071) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end20_crit_edge, label %if.then8.out_crit_edge, !prof !40

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end20:                                         ; preds = %if.then8.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %12 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc13xxx, align 4
  %call22 = call i32 @mc13xxx_reg_write(ptr noundef %13, i32 noundef 20, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %if.end20.out_crit_edge, !prof !40

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end31:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc13xxx, align 4
  %call33 = call i32 @mc13xxx_reg_write(ptr noundef %15, i32 noundef 22, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end42, label %if.end31.out_crit_edge, !prof !40

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end42:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc13xxx, align 4
  %18 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seconds, align 4
  %call44 = call i32 @mc13xxx_reg_write(ptr noundef %17, i32 noundef 20, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end53, label %if.end42.out_crit_edge, !prof !40

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end53:                                         ; preds = %if.end42
  %20 = ptrtoint ptr %alarmseconds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alarmseconds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %21)
  %cmp54 = icmp ult i32 %21, 86400
  br i1 %cmp54, label %if.then56, label %if.end53.if.end68_crit_edge

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then56:                                        ; preds = %if.end53
  %22 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc13xxx, align 4
  %call58 = call i32 @mc13xxx_reg_write(ptr noundef %23, i32 noundef 21, i32 noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then56.if.end68_crit_edge, label %if.then56.out_crit_edge, !prof !40

if.then56.out_crit_edge:                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then56.if.end68_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.end68:                                         ; preds = %if.then56.if.end68_crit_edge, %if.end53.if.end68_crit_edge
  %valid = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool69.not = icmp eq i32 %25, 0
  br i1 %tobool69.not, label %if.then70, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc13xxx, align 4
  %call83 = call i32 @mc13xxx_irq_unmask(ptr noundef %27, i32 noundef 31) #4
  br label %out

out:                                              ; preds = %if.then70, %if.end68.out_crit_edge, %if.then56.out_crit_edge, %if.end42.out_crit_edge, %if.end31.out_crit_edge, %if.end20.out_crit_edge, %if.then8.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call4, %entry.out_crit_edge ], [ %call10, %if.then8.out_crit_edge ], [ %call22, %if.end20.out_crit_edge ], [ %call33, %if.end31.out_crit_edge ], [ %call44, %if.end42.out_crit_edge ], [ %call58, %if.then56.out_crit_edge ], [ 0, %if.end68.out_crit_edge ], [ %call83, %if.then70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool85.not = icmp eq i32 %ret.1, 0
  %lnot.ext87 = zext i1 %tobool85.not to i32
  %valid88 = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %valid88 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %lnot.ext87, ptr %valid88, align 4
  %29 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc13xxx, align 4
  call void @mc13xxx_unlock(ptr noundef %30) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alarmseconds) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seconds) #4
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_read_alarm(ptr noundef %dev, ptr noundef %alarm) #3 align 64 {
entry:
  %seconds = alloca i32, align 4
  %days = alloca i32, align 4
  %enabled = alloca i32, align 4
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seconds) #4
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %seconds, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %days) #4
  %3 = ptrtoint ptr %days to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %days, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %enabled, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #4
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pending, align 4, !annotation !39
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %7) #4
  %8 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13xxx, align 4
  %call2 = call i32 @mc13xxx_reg_read(ptr noundef %9, i32 noundef 21, ptr noundef nonnull %seconds) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge, !prof !40

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seconds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 86399, i32 %11)
  %cmp = icmp ugt i32 %11, 86399
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %if.end6

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc13xxx, align 4
  %call8 = call i32 @mc13xxx_reg_read(ptr noundef %13, i32 noundef 22, ptr noundef nonnull %days) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %out, label %if.end6.out.thread_crit_edge, !prof !40

if.end6.out.thread_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

out.thread:                                       ; preds = %if.end6.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -61, %if.end.out.thread_crit_edge ], [ %call8, %if.end6.out.thread_crit_edge ], [ %call2, %entry.out.thread_crit_edge ]
  %14 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc13xxx, align 4
  call void @mc13xxx_unlock(ptr noundef %15) #4
  br label %cleanup

out:                                              ; preds = %if.end6
  %16 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc13xxx, align 4
  %call19 = call i32 @mc13xxx_irq_status(ptr noundef %17, i32 noundef 25, ptr noundef nonnull %enabled, ptr noundef nonnull %pending) #4
  %18 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc13xxx, align 4
  call void @mc13xxx_unlock(ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end23, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enabled, align 4
  %conv = trunc i32 %21 to i8
  %22 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %alarm, align 4
  %23 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pending, align 4
  %conv25 = trunc i32 %24 to i8
  %pending26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %25 = ptrtoint ptr %pending26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv25, ptr %pending26, align 1
  %26 = ptrtoint ptr %days to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %days, align 4
  %conv27 = zext i32 %27 to i64
  %mul = mul nuw nsw i64 %conv27, 86400
  %28 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seconds, align 4
  %conv28 = zext i32 %29 to i64
  %add = add nuw nsw i64 %mul, %conv28
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_rtc_read_alarm.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_rtc_read_alarm, %cleanup)) #4
          to label %if.then39 [label %cleanup], !srcloc !41

if.then39:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_rtc_read_alarm.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i64 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end23, %out.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ %call19, %out.cleanup_crit_edge ], [ 0, %if.then39 ], [ %ret.0.ph, %out.thread ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %days) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seconds) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_set_alarm(ptr noundef %dev, ptr noundef %alarm) #3 align 64 {
entry:
  %seconds = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seconds) #4
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %seconds, align 4, !annotation !39
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %4) #4
  %5 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc13xxx, align 4
  %call2 = tail call i32 @mc13xxx_reg_write(ptr noundef %6, i32 noundef 21, i32 noundef 131071) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !40

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call16 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_rtc_set_alarm.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_rtc_set_alarm, %do.end)) #4
          to label %if.then27 [label %do.end], !srcloc !41

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool28.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_rtc_set_alarm.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, i64 noundef %call16) #4
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.end
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %valid.i = getelementptr inbounds %struct.mc13xxx_rtc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %do.end.out_crit_edge, label %mc13xxx_rtc_irq_enable_unlocked.exit

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

mc13xxx_rtc_irq_enable_unlocked.exit:             ; preds = %do.end
  %13 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  %cond.i = select i1 %tobool1.not.i, ptr @mc13xxx_irq_mask, ptr @mc13xxx_irq_unmask
  %mc13xxx.i = getelementptr inbounds %struct.mc13xxx_rtc, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %mc13xxx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc13xxx.i, align 4
  %call2.i = tail call i32 %cond.i(ptr noundef %16, i32 noundef 25) #4, !callees !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool33.not = icmp eq i32 %call2.i, 0
  br i1 %tobool33.not, label %if.end41, label %mc13xxx_rtc_irq_enable_unlocked.exit.out_crit_edge, !prof !40

mc13xxx_rtc_irq_enable_unlocked.exit.out_crit_edge: ; preds = %mc13xxx_rtc_irq_enable_unlocked.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end41:                                         ; preds = %mc13xxx_rtc_irq_enable_unlocked.exit
  %call42 = call i64 @div_s64_rem(i64 noundef %call16, i32 noundef 86400, ptr noundef nonnull %seconds) #4
  %conv43 = trunc i64 %call42 to i32
  %17 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc13xxx, align 4
  %call45 = call i32 @mc13xxx_reg_write(ptr noundef %18, i32 noundef 23, i32 noundef %conv43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end54, label %if.end41.out_crit_edge, !prof !40

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end54:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc13xxx, align 4
  %21 = ptrtoint ptr %seconds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seconds, align 4
  %call56 = call i32 @mc13xxx_reg_write(ptr noundef %20, i32 noundef 21, i32 noundef %22) #4
  br label %out

out:                                              ; preds = %if.end54, %if.end41.out_crit_edge, %mc13xxx_rtc_irq_enable_unlocked.exit.out_crit_edge, %do.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call2.i, %mc13xxx_rtc_irq_enable_unlocked.exit.out_crit_edge ], [ %call45, %if.end41.out_crit_edge ], [ %call56, %if.end54 ], [ -61, %do.end.out_crit_edge ]
  %23 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc13xxx, align 4
  call void @mc13xxx_unlock(ptr noundef %24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seconds) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #4
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %valid.i = getelementptr inbounds %struct.mc13xxx_rtc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.mc13xxx_rtc_irq_enable_unlocked.exit_crit_edge, label %if.end.i

entry.mc13xxx_rtc_irq_enable_unlocked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mc13xxx_rtc_irq_enable_unlocked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool1.not.i = icmp eq i32 %enabled, 0
  %cond.i = select i1 %tobool1.not.i, ptr @mc13xxx_irq_mask, ptr @mc13xxx_irq_unmask
  %mc13xxx.i = getelementptr inbounds %struct.mc13xxx_rtc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mc13xxx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13xxx.i, align 4
  %call2.i = tail call i32 %cond.i(ptr noundef %9, i32 noundef 25) #4, !callees !42
  br label %mc13xxx_rtc_irq_enable_unlocked.exit

mc13xxx_rtc_irq_enable_unlocked.exit:             ; preds = %if.end.i, %entry.mc13xxx_rtc_irq_enable_unlocked.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -61, %entry.mc13xxx_rtc_irq_enable_unlocked.exit_crit_edge ]
  %10 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_unlock(ptr noundef %11) #4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_unmask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_status(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_irq_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_rtc_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mc13xxx = getelementptr inbounds %struct.mc13xxx_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_lock(ptr noundef %3) #4
  %4 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc13xxx, align 4
  %call2 = tail call i32 @mc13xxx_irq_free(ptr noundef %5, i32 noundef 25, ptr noundef %1) #4
  %6 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc13xxx, align 4
  %call4 = tail call i32 @mc13xxx_irq_free(ptr noundef %7, i32 noundef 31, ptr noundef %1) #4
  %8 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc13xxx, align 4
  tail call void @mc13xxx_unlock(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_rtc_mc13xxx__229_361_mc13xxx_rtc_driver_init6, !1, !"__initcall__kmod_rtc_mc13xxx__229_361_mc13xxx_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 361, i32 1}
!2 = !{ptr @__exitcall_mc13xxx_rtc_driver_exit, !1, !"__exitcall_mc13xxx_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 363, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 364, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 365, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 299, i32 31}
!12 = !{ptr @mc13xxx_rtc_ops, !13, !"mc13xxx_rtc_ops", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 251, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 192, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mc13xxx_rtc_read_alarm.__UNIQUE_ID_ddebug227, !15, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 217, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mc13xxx_rtc_set_alarm.__UNIQUE_ID_ddebug228, !21, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mc13xxx_rtc_driver, !27, !"mc13xxx_rtc_driver", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 353, i32 31}
!28 = !{ptr @mc13xxx_rtc_idtable, !29, !"mc13xxx_rtc_idtable", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-mc13xxx.c", i32 341, i32 40}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148731213, i64 2148731218, i64 2148731231, i64 2148731275, i64 2148731309, i64 2148731330}
!42 = !{ptr @mc13xxx_irq_mask, ptr @mc13xxx_irq_unmask}
