; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ntxec.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ntxec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ntxec_rtc = type { ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.ntxec = type { ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@__initcall__kmod_rtc_ntxec__227_140_ntxec_rtc_driver_init6 = internal global ptr @ntxec_rtc_driver_init, section ".initcall6.init", align 4
@ntxec_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ntxec_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ntxec_rtc_driver_exit = internal global ptr @ntxec_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [62 x i8] c"rtc_ntxec.author=Jonathan Neusch\C3\A4fer <j.neuschaefer@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [49 x i8] c"rtc_ntxec.description=RTC driver for Netronix EC\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [37 x i8] c"rtc_ntxec.file=drivers/rtc/rtc-ntxec\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"rtc_ntxec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"rtc_ntxec.alias=platform:ntxec-rtc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ntxec-rtc\00", [22 x i8] zeroinitializer }, align 32
@ntxec_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ntxec_read_time, ptr @ntxec_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"ntxec_rtc_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 134, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 136, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ntxec_rtc_ops\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../drivers/rtc/rtc-ntxec.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 103, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ntxec_rtc_driver_exit, ptr @__initcall__kmod_rtc_ntxec__227_140_ntxec_rtc_driver_init6, ptr @ntxec_rtc_driver_exit, ptr @ntxec_rtc_driver, ptr @.str, ptr @ntxec_rtc_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntxec_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntxec_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ntxec_rtc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntxec_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ntxec_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node3, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %ec = getelementptr inbounds %struct.ntxec_rtc, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ec, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 3
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ntxec_rtc_ops, ptr %ops, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 22
  %14 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 946684800, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call11, i32 0, i32 23
  %15 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 9025257599, ptr %range_max, align 8
  %call16 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then13 ], [ %call16, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !27
  %ec = getelementptr inbounds %struct.ntxec_rtc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ec, align 4
  %regmap51 = getelementptr inbounds %struct.ntxec, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap51, align 4
  %call152 = call i32 @regmap_read(ptr noundef %6, i32 noundef 35, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp53 = icmp slt i32 %call152, 0
  br i1 %cmp53, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.then30.if.end_crit_edge, %if.end.lr.ph
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %shr = lshr i32 %8, 8
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %tm_min, align 4
  %and = and i32 %8, 255
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %tm, align 4
  %11 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ec, align 4
  %regmap3 = getelementptr inbounds %struct.ntxec, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap3, align 4
  %call4 = call i32 @regmap_read(ptr noundef %14, i32 noundef 33, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %shr8 = lshr i32 %16, 8
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr8, ptr %tm_mday, align 4
  %and9 = and i32 %16, 255
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and9, ptr %tm_hour, align 4
  %19 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec, align 4
  %regmap11 = getelementptr inbounds %struct.ntxec, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap11, align 4
  %call12 = call i32 @regmap_read(ptr noundef %22, i32 noundef 32, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  %shr16 = lshr i32 %24, 8
  %add = add nuw nsw i32 %shr16, 100
  %25 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %tm_year, align 4
  %and17 = and i32 %24, 255
  %sub = add nsw i32 %and17, -1
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %27 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ec, align 4
  %regmap19 = getelementptr inbounds %struct.ntxec, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap19, align 4
  %call20 = call i32 @regmap_read(ptr noundef %30, i32 noundef 35, ptr noundef nonnull %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end15.cleanup_crit_edge, label %if.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %31 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_min, align 4
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value, align 4
  %shr25 = lshr i32 %34, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %shr25)
  %cmp26.not = icmp eq i32 %32, %shr25
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end23.if.then30_crit_edge

if.end23.if.then30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end23
  %35 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm, align 4
  %and28 = and i32 %34, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %and28)
  %cmp29.not = icmp eq i32 %36, %and28
  br i1 %cmp29.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end23.if.then30_crit_edge
  %37 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ec, align 4
  %regmap = getelementptr inbounds %struct.ntxec, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %40, i32 noundef 35, ptr noundef nonnull %value) #4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then30.cleanup_crit_edge, label %if.then30.if.end_crit_edge

if.then30.if.end_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call152, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call1, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs = alloca [7 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %regs) #4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 21, ptr %regs, align 4
  %def = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 0, i32 1
  %3 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %def, align 4
  %delay_us = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 0, i32 2
  %4 = ptrtoint ptr %delay_us to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %delay_us, align 4
  %arrayinit.element = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %arrayinit.element, align 4
  %def3 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 1, i32 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %6 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_year, align 4
  %conv4 = shl i32 %7, 8
  %conv.i = add i32 %conv4, 39936
  %shl.i = and i32 %conv.i, 65280
  %8 = ptrtoint ptr %def3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %def3, align 4
  %delay_us7 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 1, i32 2
  %9 = ptrtoint ptr %delay_us7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %delay_us7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 2
  %10 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17, ptr %arrayinit.element8, align 4
  %def10 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 2, i32 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %11 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mon, align 4
  %conv11 = shl i32 %12, 8
  %conv.i49 = add i32 %conv11, 256
  %shl.i50 = and i32 %conv.i49, 65280
  %13 = ptrtoint ptr %def10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl.i50, ptr %def10, align 4
  %delay_us14 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 2, i32 2
  %14 = ptrtoint ptr %delay_us14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %delay_us14, align 4
  %arrayinit.element15 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 3
  %15 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 18, ptr %arrayinit.element15, align 4
  %def17 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 3, i32 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %conv.i51 = shl i32 %17, 8
  %conv20 = and i32 %conv.i51, 65280
  %18 = ptrtoint ptr %def17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv20, ptr %def17, align 4
  %delay_us21 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 3, i32 2
  %19 = ptrtoint ptr %delay_us21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %delay_us21, align 4
  %arrayinit.element22 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 4
  %20 = ptrtoint ptr %arrayinit.element22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 19, ptr %arrayinit.element22, align 4
  %def24 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 4, i32 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_hour, align 4
  %conv.i53 = shl i32 %22, 8
  %conv27 = and i32 %conv.i53, 65280
  %23 = ptrtoint ptr %def24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv27, ptr %def24, align 4
  %delay_us28 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 4, i32 2
  %24 = ptrtoint ptr %delay_us28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %delay_us28, align 4
  %arrayinit.element29 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 5
  %25 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 20, ptr %arrayinit.element29, align 4
  %def31 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 5, i32 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %26 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_min, align 4
  %conv.i55 = shl i32 %27, 8
  %conv34 = and i32 %conv.i55, 65280
  %28 = ptrtoint ptr %def31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv34, ptr %def31, align 4
  %delay_us35 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 5, i32 2
  %29 = ptrtoint ptr %delay_us35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %delay_us35, align 4
  %arrayinit.element36 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 6
  %30 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 21, ptr %arrayinit.element36, align 4
  %def38 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 6, i32 1
  %31 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm, align 4
  %conv.i57 = shl i32 %32, 8
  %conv41 = and i32 %conv.i57, 65280
  %33 = ptrtoint ptr %def38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv41, ptr %def38, align 4
  %delay_us42 = getelementptr inbounds %struct.reg_sequence, ptr %regs, i32 6, i32 2
  %34 = ptrtoint ptr %delay_us42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %delay_us42, align 4
  %ec = getelementptr inbounds %struct.ntxec_rtc, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ec, align 4
  %regmap = getelementptr inbounds %struct.ntxec, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_multi_reg_write(ptr noundef %38, ptr noundef nonnull %regs, i32 noundef 7) #4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %regs) #4
  ret i32 %call43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_rtc_ntxec__227_140_ntxec_rtc_driver_init6, !1, !"__initcall__kmod_rtc_ntxec__227_140_ntxec_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ntxec.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_ntxec_rtc_driver_exit, !1, !"__exitcall_ntxec_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ntxec.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ntxec.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ntxec.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ntxec.c", i32 145, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ntxec.c", i32 136, i32 11}
!14 = !{ptr @ntxec_rtc_driver, !15, !"ntxec_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ntxec.c", i32 134, i32 31}
!16 = !{ptr @ntxec_rtc_ops, !17, !"ntxec_rtc_ops", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ntxec.c", i32 103, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
