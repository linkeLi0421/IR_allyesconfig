; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-r9701.c_pt.bc'
source_filename = "../drivers/rtc/rtc-r9701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_rtc_r9701__234_140_r9701_driver_init6 = internal global ptr @r9701_driver_init, section ".initcall6.init", align 4
@r9701_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @r9701_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_r9701_driver_exit = internal global ptr @r9701_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [43 x i8] c"rtc_r9701.description=r9701 spi RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [50 x i8] c"rtc_r9701.author=Magnus Damm <damm@opensource.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [37 x i8] c"rtc_r9701.file=drivers/rtc/rtc-r9701\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"rtc_r9701.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [30 x i8] c"rtc_r9701.alias=spi:rtc-r9701\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-r9701\00", [22 x i8] zeroinitializer }, align 32
@r9701_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot read RTC register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r9701_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-r9701.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r9701_probe._entry_ptr = internal global ptr @r9701_probe._entry, section ".printk_index", align 4
@r9701_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @r9701_get_datetime, ptr @r9701_set_datetime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__const.r9701_get_datetime.buf = private unnamed_addr constant [6 x i8] c"\00\01\02\04\05\06", align 1
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"r9701_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 133, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 135, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 117, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"r9701_rtc_ops\00", align 1
@___asan_gen_.31 = private constant [27 x i8] c"../drivers/rtc/rtc-r9701.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 103, i32 35 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_r9701_driver_exit, ptr @__initcall__kmod_rtc_r9701__234_140_r9701_driver_init6, ptr @r9701_driver_exit, ptr @r9701_probe._entry, ptr @r9701_probe._entry_ptr, ptr @r9701_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @r9701_rtc_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9701_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9701_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9701_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r9701_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @r9701_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r9701_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @r9701_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9701_probe(ptr noundef %spi) #2 align 64 {
entry:
  %txbuf.i = alloca [1 x i8], align 1
  %rxbuf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %txbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i) #6
  %0 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rxbuf.i, align 1, !annotation !35
  %1 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -121, ptr %txbuf.i, align 1
  %call5.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %2 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxbuf.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %txbuf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp.not = icmp eq i8 %3, 32
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call ptr @devm_rtc_allocate_device(ptr noundef %spi) #6
  %cmp.i21 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call4, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @r9701_rtc_ops, ptr %ops, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call4, i32 0, i32 22
  %7 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 946684800, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call4, i32 0, i32 23
  %8 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4102444799, ptr %range_max, align 8
  %call9 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %4, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9701_get_datetime(ptr noundef %dev, ptr nocapture noundef writeonly %dt) #2 align 64 {
entry:
  %txbuf.i = alloca [1 x i8], align 1
  %rxbuf.i = alloca [1 x i8], align 1
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #6
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.r9701_get_datetime.buf, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %txbuf.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rxbuf.i) #6
  %1 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %rxbuf.i, align 1, !annotation !35
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = or i8 %3, -128
  %5 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %txbuf.i, align 1
  %call5.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %6 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxbuf.i, align 1
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %for.body.i.1, label %entry.read_regs.exit_crit_edge

entry.read_regs.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit

for.body.i.1:                                     ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %buf, i32 1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.1, align 1
  %11 = or i8 %10, -128
  %12 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %txbuf.i, align 1
  %call5.i.1 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %13 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxbuf.i, align 1
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.1)
  %cmp.i.1 = icmp eq i32 %call5.i.1, 0
  br i1 %cmp.i.1, label %for.body.i.2, label %for.body.i.1.read_regs.exit_crit_edge

for.body.i.1.read_regs.exit_crit_edge:            ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %buf, i32 2
  %16 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.2, align 1
  %18 = or i8 %17, -128
  %19 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %txbuf.i, align 1
  %call5.i.2 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %20 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rxbuf.i, align 1
  %22 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2)
  %cmp.i.2 = icmp eq i32 %call5.i.2, 0
  br i1 %cmp.i.2, label %for.body.i.3, label %for.body.i.2.read_regs.exit_crit_edge

for.body.i.2.read_regs.exit_crit_edge:            ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %buf, i32 3
  %23 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.3, align 1
  %25 = or i8 %24, -128
  %26 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %txbuf.i, align 1
  %call5.i.3 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %27 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rxbuf.i, align 1
  %29 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.3)
  %cmp.i.3 = icmp eq i32 %call5.i.3, 0
  br i1 %cmp.i.3, label %for.body.i.4, label %for.body.i.3.read_regs.exit_crit_edge

for.body.i.3.read_regs.exit_crit_edge:            ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %buf, i32 4
  %30 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.4, align 1
  %32 = or i8 %31, -128
  %33 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %txbuf.i, align 1
  %call5.i.4 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %34 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rxbuf.i, align 1
  %36 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.4)
  %cmp.i.4 = icmp eq i32 %call5.i.4, 0
  br i1 %cmp.i.4, label %for.body.i.5, label %for.body.i.4.read_regs.exit_crit_edge

for.body.i.4.read_regs.exit_crit_edge:            ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %buf, i32 5
  %37 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.5, align 1
  %39 = or i8 %38, -128
  %40 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %txbuf.i, align 1
  %call5.i.5 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf.i, i32 noundef 1, ptr noundef nonnull %rxbuf.i, i32 noundef 1) #6
  %41 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rxbuf.i, align 1
  %43 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.5)
  %cmp.i.5 = icmp eq i32 %call5.i.5, 0
  br label %read_regs.exit

read_regs.exit:                                   ; preds = %for.body.i.5, %for.body.i.4.read_regs.exit_crit_edge, %for.body.i.3.read_regs.exit_crit_edge, %for.body.i.2.read_regs.exit_crit_edge, %for.body.i.1.read_regs.exit_crit_edge, %entry.read_regs.exit_crit_edge
  %call5.i.lcssa = phi i32 [ %call5.i, %entry.read_regs.exit_crit_edge ], [ %call5.i.1, %for.body.i.1.read_regs.exit_crit_edge ], [ %call5.i.2, %for.body.i.2.read_regs.exit_crit_edge ], [ %call5.i.3, %for.body.i.3.read_regs.exit_crit_edge ], [ %call5.i.4, %for.body.i.4.read_regs.exit_crit_edge ], [ %call5.i.5, %for.body.i.5 ]
  %cmp.i.lcssa = phi i1 [ %cmp.i, %entry.read_regs.exit_crit_edge ], [ %cmp.i.1, %for.body.i.1.read_regs.exit_crit_edge ], [ %cmp.i.2, %for.body.i.2.read_regs.exit_crit_edge ], [ %cmp.i.3, %for.body.i.3.read_regs.exit_crit_edge ], [ %cmp.i.4, %for.body.i.4.read_regs.exit_crit_edge ], [ %cmp.i.5, %for.body.i.5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rxbuf.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %txbuf.i) #6
  br i1 %cmp.i.lcssa, label %cond.end, label %read_regs.exit.cleanup_crit_edge

read_regs.exit.cleanup_crit_edge:                 ; preds = %read_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %read_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buf, align 1
  %call5 = call i32 @_bcd2bin(i8 noundef zeroext %45) #10
  %46 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call5, ptr %dt, align 4
  %arrayidx6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx6, align 1
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %48) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %49 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call18, ptr %tm_min, align 4
  %arrayidx21 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx21, align 1
  %call33 = call i32 @_bcd2bin(i8 noundef zeroext %51) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %52 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call33, ptr %tm_hour, align 4
  %arrayidx36 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx36, align 1
  %call48 = call i32 @_bcd2bin(i8 noundef zeroext %54) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %55 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call48, ptr %tm_mday, align 4
  %arrayidx51 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %56 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx51, align 1
  %call63 = call i32 @_bcd2bin(i8 noundef zeroext %57) #10
  %sub = add i32 %call63, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %58 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %tm_mon, align 4
  %arrayidx66 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx66, align 1
  %call78 = call i32 @_bcd2bin(i8 noundef zeroext %60) #10
  %add81 = add i32 %call78, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %61 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add81, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %read_regs.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #6
  ret i32 %call5.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9701_set_datetime(ptr noundef %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  %msg.i.i.i208 = alloca %struct.spi_message, align 4
  %t.i.i209 = alloca %struct.spi_transfer, align 4
  %buf.i210 = alloca [2 x i8], align 1
  %msg.i.i.i195 = alloca %struct.spi_message, align 4
  %t.i.i196 = alloca %struct.spi_transfer, align 4
  %buf.i197 = alloca [2 x i8], align 1
  %msg.i.i.i182 = alloca %struct.spi_message, align 4
  %t.i.i183 = alloca %struct.spi_transfer, align 4
  %buf.i184 = alloca [2 x i8], align 1
  %msg.i.i.i169 = alloca %struct.spi_message, align 4
  %t.i.i170 = alloca %struct.spi_transfer, align 4
  %buf.i171 = alloca [2 x i8], align 1
  %msg.i.i.i156 = alloca %struct.spi_message, align 4
  %t.i.i157 = alloca %struct.spi_transfer, align 4
  %buf.i158 = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %0 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_hour, align 4
  %call = tail call zeroext i8 @_bin2bcd(i32 noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %call, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.write_reg.exit_crit_edge

entry.write_reg.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %if.end.i.i.i.i.i.i.i, %entry.write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %cond.end21, label %write_reg.exit.cond.end116_crit_edge

write_reg.exit.cond.end116_crit_edge:             ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end116

cond.end21:                                       ; preds = %write_reg.exit
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min, align 4
  %call19 = call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i158) #6
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i158, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i158 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %buf.i158, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call19, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i157) #6
  %24 = getelementptr inbounds i8, ptr %t.i.i157, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = ptrtoint ptr %t.i.i157 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i158, ptr %t.i.i157, align 4
  %len1.i.i159 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i157, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i.i159 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len1.i.i159, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i156) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i.i156, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i.i156, ptr %msg.i.i.i156, align 4
  %prev.i.i.i.i.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i156, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i156, ptr %prev.i.i.i.i.i.i.i160, align 4
  %resources.i.i.i.i.i.i161 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i156, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i.i161, ptr %resources.i.i.i.i.i.i161, align 4
  %prev.i2.i.i.i.i.i.i162 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i156, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i.i161, ptr %prev.i2.i.i.i.i.i.i162, align 4
  %transfer_list.i.i.i.i.i163 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i157, i32 0, i32 18
  %call.i.i.i.i.i.i.i164 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i163, ptr noundef nonnull %msg.i.i.i156, ptr noundef nonnull %msg.i.i.i156) #6
  br i1 %call.i.i.i.i.i.i.i164, label %if.end.i.i.i.i.i.i.i166, label %cond.end21.cond.end25_crit_edge

cond.end21.cond.end25_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end25

if.end.i.i.i.i.i.i.i166:                          ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i.i163, ptr %prev.i.i.i.i.i.i.i160, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i156, ptr %transfer_list.i.i.i.i.i163, align 4
  %prev3.i.i.i.i.i.i.i165 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i157, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i156, ptr %prev3.i.i.i.i.i.i.i165, align 4
  %37 = ptrtoint ptr %msg.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i.i163, ptr %msg.i.i.i156, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %if.end.i.i.i.i.i.i.i166, %cond.end21.cond.end25_crit_edge
  %call.i.i.i167 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i156) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i157) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i158) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i167)
  %tobool27.not = icmp eq i32 %call.i.i.i167, 0
  br i1 %tobool27.not, label %cond.end42, label %cond.end25.cond.end116_crit_edge

cond.end25.cond.end116_crit_edge:                 ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end116

cond.end42:                                       ; preds = %cond.end25
  %38 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dt, align 4
  %call40 = call zeroext i8 @_bin2bcd(i32 noundef %39) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i171) #6
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i171, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i171 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %buf.i171, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call40, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i170) #6
  %43 = getelementptr inbounds i8, ptr %t.i.i170, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i.i170 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i171, ptr %t.i.i170, align 4
  %len1.i.i172 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i170, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i172 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i.i172, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i169) #6
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i169, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i.i169, ptr %msg.i.i.i169, align 4
  %prev.i.i.i.i.i.i.i173 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i169, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i169, ptr %prev.i.i.i.i.i.i.i173, align 4
  %resources.i.i.i.i.i.i174 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i169, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i.i174, ptr %resources.i.i.i.i.i.i174, align 4
  %prev.i2.i.i.i.i.i.i175 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i169, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i.i174, ptr %prev.i2.i.i.i.i.i.i175, align 4
  %transfer_list.i.i.i.i.i176 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i170, i32 0, i32 18
  %call.i.i.i.i.i.i.i177 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i176, ptr noundef nonnull %msg.i.i.i169, ptr noundef nonnull %msg.i.i.i169) #6
  br i1 %call.i.i.i.i.i.i.i177, label %if.end.i.i.i.i.i.i.i179, label %cond.end42.cond.end46_crit_edge

cond.end42.cond.end46_crit_edge:                  ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end46

if.end.i.i.i.i.i.i.i179:                          ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i.i176, ptr %prev.i.i.i.i.i.i.i173, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i169, ptr %transfer_list.i.i.i.i.i176, align 4
  %prev3.i.i.i.i.i.i.i178 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i170, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i169, ptr %prev3.i.i.i.i.i.i.i178, align 4
  %56 = ptrtoint ptr %msg.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i.i176, ptr %msg.i.i.i169, align 4
  br label %cond.end46

cond.end46:                                       ; preds = %if.end.i.i.i.i.i.i.i179, %cond.end42.cond.end46_crit_edge
  %call.i.i.i180 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i169) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i169) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i170) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i171) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i180)
  %tobool48.not = icmp eq i32 %call.i.i.i180, 0
  br i1 %tobool48.not, label %cond.end63, label %cond.end46.cond.end116_crit_edge

cond.end46.cond.end116_crit_edge:                 ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end116

cond.end63:                                       ; preds = %cond.end46
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %57 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_mday, align 4
  %call61 = call zeroext i8 @_bin2bcd(i32 noundef %58) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i184) #6
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i184, i32 0, i32 1
  %60 = ptrtoint ptr %buf.i184 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %buf.i184, align 1
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call61, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i183) #6
  %62 = getelementptr inbounds i8, ptr %t.i.i183, i32 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 92)
  %64 = ptrtoint ptr %t.i.i183 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i184, ptr %t.i.i183, align 4
  %len1.i.i185 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i183, i32 0, i32 2
  %65 = ptrtoint ptr %len1.i.i185 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %len1.i.i185, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i182) #6
  %66 = getelementptr inbounds i8, ptr %msg.i.i.i182, i32 8
  %67 = call ptr @memset(ptr %66, i32 0, i32 40)
  %68 = ptrtoint ptr %msg.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %msg.i.i.i182, ptr %msg.i.i.i182, align 4
  %prev.i.i.i.i.i.i.i186 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i182, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i.i.i.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i182, ptr %prev.i.i.i.i.i.i.i186, align 4
  %resources.i.i.i.i.i.i187 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i182, i32 0, i32 10
  %70 = ptrtoint ptr %resources.i.i.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %resources.i.i.i.i.i.i187, ptr %resources.i.i.i.i.i.i187, align 4
  %prev.i2.i.i.i.i.i.i188 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i182, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %prev.i2.i.i.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %resources.i.i.i.i.i.i187, ptr %prev.i2.i.i.i.i.i.i188, align 4
  %transfer_list.i.i.i.i.i189 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i183, i32 0, i32 18
  %call.i.i.i.i.i.i.i190 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i189, ptr noundef nonnull %msg.i.i.i182, ptr noundef nonnull %msg.i.i.i182) #6
  br i1 %call.i.i.i.i.i.i.i190, label %if.end.i.i.i.i.i.i.i192, label %cond.end63.cond.end67_crit_edge

cond.end63.cond.end67_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end67

if.end.i.i.i.i.i.i.i192:                          ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %prev.i.i.i.i.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %transfer_list.i.i.i.i.i189, ptr %prev.i.i.i.i.i.i.i186, align 4
  %73 = ptrtoint ptr %transfer_list.i.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i182, ptr %transfer_list.i.i.i.i.i189, align 4
  %prev3.i.i.i.i.i.i.i191 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i183, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i.i.i182, ptr %prev3.i.i.i.i.i.i.i191, align 4
  %75 = ptrtoint ptr %msg.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %transfer_list.i.i.i.i.i189, ptr %msg.i.i.i182, align 4
  br label %cond.end67

cond.end67:                                       ; preds = %if.end.i.i.i.i.i.i.i192, %cond.end63.cond.end67_crit_edge
  %call.i.i.i193 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i182) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i182) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i183) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i184) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i193)
  %tobool69.not = icmp eq i32 %call.i.i.i193, 0
  br i1 %tobool69.not, label %cond.end88, label %cond.end67.cond.end116_crit_edge

cond.end67.cond.end116_crit_edge:                 ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end116

cond.end88:                                       ; preds = %cond.end67
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %76 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tm_mon, align 4
  %add72 = add i32 %77, 1
  %call86 = call zeroext i8 @_bin2bcd(i32 noundef %add72) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i197) #6
  %78 = getelementptr inbounds [2 x i8], ptr %buf.i197, i32 0, i32 1
  %79 = ptrtoint ptr %buf.i197 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 5, ptr %buf.i197, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %call86, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i196) #6
  %81 = getelementptr inbounds i8, ptr %t.i.i196, i32 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 92)
  %83 = ptrtoint ptr %t.i.i196 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i197, ptr %t.i.i196, align 4
  %len1.i.i198 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i196, i32 0, i32 2
  %84 = ptrtoint ptr %len1.i.i198 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %len1.i.i198, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i195) #6
  %85 = getelementptr inbounds i8, ptr %msg.i.i.i195, i32 8
  %86 = call ptr @memset(ptr %85, i32 0, i32 40)
  %87 = ptrtoint ptr %msg.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %msg.i.i.i195, ptr %msg.i.i.i195, align 4
  %prev.i.i.i.i.i.i.i199 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i195, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i.i.i.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.i.i.i195, ptr %prev.i.i.i.i.i.i.i199, align 4
  %resources.i.i.i.i.i.i200 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i195, i32 0, i32 10
  %89 = ptrtoint ptr %resources.i.i.i.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %resources.i.i.i.i.i.i200, ptr %resources.i.i.i.i.i.i200, align 4
  %prev.i2.i.i.i.i.i.i201 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i195, i32 0, i32 10, i32 1
  %90 = ptrtoint ptr %prev.i2.i.i.i.i.i.i201 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %resources.i.i.i.i.i.i200, ptr %prev.i2.i.i.i.i.i.i201, align 4
  %transfer_list.i.i.i.i.i202 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i196, i32 0, i32 18
  %call.i.i.i.i.i.i.i203 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i202, ptr noundef nonnull %msg.i.i.i195, ptr noundef nonnull %msg.i.i.i195) #6
  br i1 %call.i.i.i.i.i.i.i203, label %if.end.i.i.i.i.i.i.i205, label %cond.end88.cond.end92_crit_edge

cond.end88.cond.end92_crit_edge:                  ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end92

if.end.i.i.i.i.i.i.i205:                          ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %prev.i.i.i.i.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %transfer_list.i.i.i.i.i202, ptr %prev.i.i.i.i.i.i.i199, align 4
  %92 = ptrtoint ptr %transfer_list.i.i.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i.i195, ptr %transfer_list.i.i.i.i.i202, align 4
  %prev3.i.i.i.i.i.i.i204 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i196, i32 0, i32 18, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i.i.i.i.i204 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i.i195, ptr %prev3.i.i.i.i.i.i.i204, align 4
  %94 = ptrtoint ptr %msg.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %transfer_list.i.i.i.i.i202, ptr %msg.i.i.i195, align 4
  br label %cond.end92

cond.end92:                                       ; preds = %if.end.i.i.i.i.i.i.i205, %cond.end88.cond.end92_crit_edge
  %call.i.i.i206 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i195) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i195) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i196) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i197) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i206)
  %tobool94.not = icmp eq i32 %call.i.i.i206, 0
  br i1 %tobool94.not, label %cond.end112, label %cond.end92.cond.end116_crit_edge

cond.end92.cond.end116_crit_edge:                 ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end116

cond.end112:                                      ; preds = %cond.end92
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %95 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tm_year, align 4
  %sub = add i32 %96, -100
  %call110 = call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i210) #6
  %97 = getelementptr inbounds [2 x i8], ptr %buf.i210, i32 0, i32 1
  %98 = ptrtoint ptr %buf.i210 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %buf.i210, align 1
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %call110, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i209) #6
  %100 = getelementptr inbounds i8, ptr %t.i.i209, i32 4
  %101 = call ptr @memset(ptr %100, i32 0, i32 92)
  %102 = ptrtoint ptr %t.i.i209 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buf.i210, ptr %t.i.i209, align 4
  %len1.i.i211 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i209, i32 0, i32 2
  %103 = ptrtoint ptr %len1.i.i211 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %len1.i.i211, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i208) #6
  %104 = getelementptr inbounds i8, ptr %msg.i.i.i208, i32 8
  %105 = call ptr @memset(ptr %104, i32 0, i32 40)
  %106 = ptrtoint ptr %msg.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %msg.i.i.i208, ptr %msg.i.i.i208, align 4
  %prev.i.i.i.i.i.i.i212 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i208, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i.i.i.i.i.i212 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %msg.i.i.i208, ptr %prev.i.i.i.i.i.i.i212, align 4
  %resources.i.i.i.i.i.i213 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i208, i32 0, i32 10
  %108 = ptrtoint ptr %resources.i.i.i.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %resources.i.i.i.i.i.i213, ptr %resources.i.i.i.i.i.i213, align 4
  %prev.i2.i.i.i.i.i.i214 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i208, i32 0, i32 10, i32 1
  %109 = ptrtoint ptr %prev.i2.i.i.i.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %resources.i.i.i.i.i.i213, ptr %prev.i2.i.i.i.i.i.i214, align 4
  %transfer_list.i.i.i.i.i215 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i209, i32 0, i32 18
  %call.i.i.i.i.i.i.i216 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i215, ptr noundef nonnull %msg.i.i.i208, ptr noundef nonnull %msg.i.i.i208) #6
  br i1 %call.i.i.i.i.i.i.i216, label %if.end.i.i.i.i.i.i.i218, label %cond.end112.write_reg.exit220_crit_edge

cond.end112.write_reg.exit220_crit_edge:          ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit220

if.end.i.i.i.i.i.i.i218:                          ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %prev.i.i.i.i.i.i.i212 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %transfer_list.i.i.i.i.i215, ptr %prev.i.i.i.i.i.i.i212, align 4
  %111 = ptrtoint ptr %transfer_list.i.i.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %msg.i.i.i208, ptr %transfer_list.i.i.i.i.i215, align 4
  %prev3.i.i.i.i.i.i.i217 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i209, i32 0, i32 18, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i.i.i.i217 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %msg.i.i.i208, ptr %prev3.i.i.i.i.i.i.i217, align 4
  %113 = ptrtoint ptr %msg.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %transfer_list.i.i.i.i.i215, ptr %msg.i.i.i208, align 4
  br label %write_reg.exit220

write_reg.exit220:                                ; preds = %if.end.i.i.i.i.i.i.i218, %cond.end112.write_reg.exit220_crit_edge
  %call.i.i.i219 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i208) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i208) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i209) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i210) #6
  br label %cond.end116

cond.end116:                                      ; preds = %write_reg.exit220, %cond.end92.cond.end116_crit_edge, %cond.end67.cond.end116_crit_edge, %cond.end46.cond.end116_crit_edge, %cond.end25.cond.end116_crit_edge, %write_reg.exit.cond.end116_crit_edge
  %cond117 = phi i32 [ %call.i.i.i219, %write_reg.exit220 ], [ %call.i.i.i206, %cond.end92.cond.end116_crit_edge ], [ %call.i.i.i193, %cond.end67.cond.end116_crit_edge ], [ %call.i.i.i180, %cond.end46.cond.end116_crit_edge ], [ %call.i.i.i167, %cond.end25.cond.end116_crit_edge ], [ %call.i.i.i, %write_reg.exit.cond.end116_crit_edge ]
  ret i32 %cond117
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_rtc_r9701__234_140_r9701_driver_init6, !1, !"__initcall__kmod_rtc_r9701__234_140_r9701_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-r9701.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_r9701_driver_exit, !1, !"__exitcall_r9701_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-r9701.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-r9701.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-r9701.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-r9701.c", i32 145, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-r9701.c", i32 135, i32 11}
!14 = !{ptr @r9701_driver, !15, !"r9701_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-r9701.c", i32 133, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-r9701.c", i32 117, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @r9701_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @r9701_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @r9701_rtc_ops, !25, !"r9701_rtc_ops", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-r9701.c", i32 103, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
