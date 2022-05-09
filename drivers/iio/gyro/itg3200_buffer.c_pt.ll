; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/itg3200_buffer.c_pt.bc'
source_filename = "../drivers/iio/gyro/itg3200_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.anon.85 = type { [4 x i16], i64 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.itg3200 = type { ptr, ptr, %struct.iio_mount_matrix }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"itg3200_data_rdy\00", [47 x i8] zeroinitializer }, align 32
@itg3200_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @itg3200_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 116, i32 46 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 124, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"itg3200_trigger_ops\00", align 1
@___asan_gen_.9 = private constant [37 x i8] c"../drivers/iio/gyro/itg3200_buffer.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 107, i32 37 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @itg3200_trigger_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itg3200_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @itg3200_buffer_configure(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @itg3200_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itg3200_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %buf.addr.i = alloca ptr, align 4
  %tx.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %scan = alloca %struct.anon.85, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #3
  %4 = call ptr @memset(ptr %scan, i32 255, i32 16)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.addr.i)
  %7 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %scan, ptr %buf.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i) #3
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -101, ptr %tx.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #3
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr1.i, align 2
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %6, align 8
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags.i, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %12, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = or i16 %15, 1
  %21 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags6.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %22 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8, ptr %len9.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.addr.i, ptr %buf10.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.error_ret_crit_edge, label %if.end

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_ret

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %scan_timestamp.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %28 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %31, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %29, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i7 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #3
  br label %error_ret

error_ret:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.error_ret_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %34) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @itg3200_buffer_unconfigure(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @itg3200_probe_trigger(ptr noundef %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #3
  %call2 = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %call1) #3
  %trig = getelementptr inbounds %struct.itg3200, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %trig, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.error_free_trig_crit_edge

if.end.error_free_trig_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_free_trig

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @itg3200_trigger_ops, ptr %12, align 8
  %14 = load ptr, ptr %trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %14, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %16 = load ptr, ptr %trig, align 4
  %call13 = tail call i32 @__iio_trigger_register(ptr noundef %16, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %error_free_irq

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %18, i32 0, i32 4
  %call.i43 = tail call ptr @get_device(ptr noundef %dev.i) #3
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %20) #3
  %trig19 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %21 = ptrtoint ptr %trig19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %trig19, align 4
  br label %cleanup

error_free_irq:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %irq21 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq21, align 4
  %26 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trig, align 4
  %call23 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %27) #3
  br label %error_free_trig

error_free_trig:                                  ; preds = %error_free_irq, %if.end.error_free_trig_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.error_free_trig_crit_edge ], [ %call13, %error_free_irq ]
  %28 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_free(ptr noundef %29) #3
  br label %cleanup

cleanup:                                          ; preds = %error_free_trig, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_free_trig ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @itg3200_remove_trigger(ptr nocapture noundef readonly %indio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trig = getelementptr inbounds %struct.itg3200, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %3) #3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %8 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trig, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %9) #3
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_free(ptr noundef %11) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itg3200_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  %msc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msc) #3
  %2 = ptrtoint ptr %msc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %msc, align 1, !annotation !16
  %call1 = call i32 @itg3200_read_reg_8(ptr noundef %1, i8 noundef zeroext 23, ptr noundef nonnull %msc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.error_ret_crit_edge

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_ret

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %msc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msc, align 1
  %5 = and i8 %4, -2
  %masksel = zext i1 %state to i8
  %storemerge = or i8 %5, %masksel
  store i8 %storemerge, ptr %msc, align 1
  %call8 = call i32 @itg3200_write_reg_8(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext %storemerge) #3
  br label %error_ret

error_ret:                                        ; preds = %if.end, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.error_ret_crit_edge ], [ %call8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msc) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @itg3200_read_reg_8(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @itg3200_write_reg_8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/itg3200_buffer.c", i32 116, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/gyro/itg3200_buffer.c", i32 124, i32 6}
!4 = !{ptr @itg3200_trigger_ops, !5, !"itg3200_trigger_ops", i1 false, i1 false}
!5 = !{!"../drivers/iio/gyro/itg3200_buffer.c", i32 107, i32 37}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
