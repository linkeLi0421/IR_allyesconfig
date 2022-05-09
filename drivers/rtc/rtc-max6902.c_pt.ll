; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-max6902.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max6902.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_max6902__234_149_max6902_driver_init6 = internal global ptr @max6902_driver_init, section ".initcall6.init", align 4
@max6902_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @max6902_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_max6902_driver_exit = internal global ptr @max6902_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [47 x i8] c"rtc_max6902.description=max6902 spi RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [35 x i8] c"rtc_max6902.author=Raphael Assenat\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"rtc_max6902.file=drivers/rtc/rtc-max6902\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"rtc_max6902.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [34 x i8] c"rtc_max6902.alias=spi:rtc-max6902\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-max6902\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6902\00", [24 x i8] zeroinitializer }, align 32
@max6902_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @max6902_read_time, ptr @max6902_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"max6902_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 142, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 144, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 133, i32 44 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"max6902_rtc_ops\00", align 1
@___asan_gen_.12 = private constant [29 x i8] c"../drivers/rtc/rtc-max6902.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 114, i32 35 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_max6902_driver_exit, ptr @__initcall__kmod_rtc_max6902__234_149_max6902_driver_init6, ptr @max6902_driver_exit, ptr @max6902_driver, ptr @.str, ptr @.str.1, ptr @max6902_rtc_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6902_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6902_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6902_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @max6902_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6902_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @max6902_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6902_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #5
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %tmp, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %tmp, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6902_rtc_ops, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ 0, %if.end7 ], [ %call2.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6902_read_time(ptr noundef %dev, ptr nocapture noundef %dt) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #5
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 7)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %buf, align 1
  %call2 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end:                                         ; preds = %entry
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %call8 = call i32 @_bcd2bin(i8 noundef zeroext %10) #8
  %11 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call8, ptr %dt, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %call21 = call i32 @_bcd2bin(i8 noundef zeroext %13) #8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call21, ptr %tm_min, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %7, align 1
  %call36 = call i32 @_bcd2bin(i8 noundef zeroext %16) #8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call36, ptr %tm_hour, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %6, align 1
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %19) #8
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call51, ptr %tm_mday, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  %call66 = call i32 @_bcd2bin(i8 noundef zeroext %22) #8
  %sub = add i32 %call66, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %tm_mon, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  %call81 = call i32 @_bcd2bin(i8 noundef zeroext %25) #8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call81, ptr %tm_wday, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  %call96 = call i32 @_bcd2bin(i8 noundef zeroext %28) #8
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call96, ptr %tm_year, align 4
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -109, ptr %buf, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp101.not = icmp eq i32 %call2.i, 0
  br i1 %cmp101.not, label %cond.end118, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end118:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %call117 = call i32 @_bcd2bin(i8 noundef zeroext %32) #8
  %mul120 = mul i32 %call117, 100
  %33 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year, align 4
  %add122 = add i32 %mul120, -1900
  %sub124 = add i32 %add122, %34
  store i32 %sub124, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end118, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end118 ], [ %call2, %entry.cleanup_crit_edge ], [ %call2.i, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6902_set_time(ptr noundef %dev, ptr nocapture noundef %dt) #2 align 64 {
entry:
  %buf.i195 = alloca [2 x i8], align 1
  %buf.i193 = alloca [2 x i8], align 1
  %buf.i191 = alloca [2 x i8], align 1
  %buf.i189 = alloca [2 x i8], align 1
  %buf.i187 = alloca [2 x i8], align 1
  %buf.i185 = alloca [2 x i8], align 1
  %buf.i183 = alloca [2 x i8], align 1
  %buf.i181 = alloca [2 x i8], align 1
  %buf.i179 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %add = add i32 %1, 1900
  store i32 %add, ptr %tm_year, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 15, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 1
  %call3.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %5 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dt, align 4
  %call6 = call zeroext i8 @_bin2bcd(i32 noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i179) #5
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i179, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i179 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %buf.i179, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call6, ptr %7, align 1
  %call3.i180 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i179, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i179) #5
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %call20 = call zeroext i8 @_bin2bcd(i32 noundef %11) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i181) #5
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i181, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i181 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %buf.i181, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call20, ptr %12, align 1
  %call3.i182 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i181, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i181) #5
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call36 = call zeroext i8 @_bin2bcd(i32 noundef %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i183) #5
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i183, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i183 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %buf.i183, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call36, ptr %17, align 1
  %call3.i184 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i183, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i183) #5
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  %call52 = call zeroext i8 @_bin2bcd(i32 noundef %21) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i185) #5
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i185, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i185 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %buf.i185, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call52, ptr %22, align 1
  %call3.i186 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i185, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i185) #5
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  %add58 = add i32 %26, 1
  %call72 = call zeroext i8 @_bin2bcd(i32 noundef %add58) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i187) #5
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i187, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i187 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 9, ptr %buf.i187, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call72, ptr %27, align 1
  %call3.i188 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i187, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i187) #5
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %30 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_wday, align 4
  %call88 = call zeroext i8 @_bin2bcd(i32 noundef %31) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i189) #5
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i189, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i189 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 11, ptr %buf.i189, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call88, ptr %32, align 1
  %call3.i190 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i189, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i189) #5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_year, align 4
  %rem95 = srem i32 %36, 100
  %call109 = call zeroext i8 @_bin2bcd(i32 noundef %rem95) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i191) #5
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i191, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i191 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 13, ptr %buf.i191, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call109, ptr %37, align 1
  %call3.i192 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i191, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i191) #5
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_year, align 4
  %div116 = sdiv i32 %41, 100
  %call130 = call zeroext i8 @_bin2bcd(i32 noundef %div116) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i193) #5
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i193, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i193 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 19, ptr %buf.i193, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call130, ptr %42, align 1
  %call3.i194 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i193, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i193) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i195) #5
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i195, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i195 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 15, ptr %buf.i195, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -128, ptr %45, align 1
  %call3.i196 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i195, i32 noundef 2, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i195) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_rtc_max6902__234_149_max6902_driver_init6, !1, !"__initcall__kmod_rtc_max6902__234_149_max6902_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-max6902.c", i32 149, i32 1}
!2 = !{ptr @__exitcall_max6902_driver_exit, !1, !"__exitcall_max6902_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-max6902.c", i32 151, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-max6902.c", i32 152, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-max6902.c", i32 153, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-max6902.c", i32 154, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-max6902.c", i32 144, i32 11}
!14 = !{ptr @max6902_driver, !15, !"max6902_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-max6902.c", i32 142, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-max6902.c", i32 133, i32 44}
!18 = !{ptr @max6902_rtc_ops, !19, !"max6902_rtc_ops", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-max6902.c", i32 114, i32 35}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
