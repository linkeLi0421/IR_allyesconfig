; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.inv_icm42600_fifo_2sensors_packet = type <{ i8, %struct.inv_icm42600_fifo_sensor_data, %struct.inv_icm42600_fifo_sensor_data, i8, i16 }>
%struct.inv_icm42600_fifo_sensor_data = type { i16, i16, i16 }
%struct.inv_icm42600_fifo_1sensor_packet = type <{ i8, %struct.inv_icm42600_fifo_sensor_data, i8 }>
%struct.inv_icm42600_state = type { %struct.mutex, i32, ptr, ptr, ptr, ptr, %struct.iio_mount_matrix, %struct.inv_icm42600_conf, %struct.inv_icm42600_suspended, ptr, ptr, [52 x i8], [2 x i8], [126 x i8], %struct.inv_icm42600_fifo, %struct.anon.81, [112 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.inv_icm42600_conf = type { %struct.inv_icm42600_sensor_conf, %struct.inv_icm42600_sensor_conf, i8 }
%struct.inv_icm42600_sensor_conf = type { i32, i32, i32, i32 }
%struct.inv_icm42600_suspended = type { i32, i32, i8 }
%struct.inv_icm42600_fifo = type { i32, i32, i32, %struct.anon.79, i32, %struct.anon.80, [92 x i8], [2080 x i8], [96 x i8] }
%struct.anon.79 = type { i32, i32 }
%struct.anon.80 = type { i32, i32, i32 }
%struct.anon.81 = type { i64, i64 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@inv_icm42600_buffer_ops = dso_local constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @inv_icm42600_buffer_preenable, ptr @inv_icm42600_buffer_postenable, ptr @inv_icm42600_buffer_predisable, ptr @inv_icm42600_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"inv_icm42600_buffer_ops\00", align 1
@___asan_gen_.2 = private constant [54 x i8] c"../drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 439, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @inv_icm42600_buffer_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm42600_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @inv_icm42600_fifo_decode_packet(ptr noundef %packet, ptr nocapture noundef writeonly %accel, ptr nocapture noundef writeonly %gyro, ptr nocapture noundef writeonly %temp, ptr nocapture noundef writeonly %timestamp, ptr nocapture noundef %odr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %packet, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %accel, align 4
  %3 = ptrtoint ptr %gyro to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %gyro, align 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %temp, align 4
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %timestamp, align 4
  %6 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %odr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = and i32 %conv, 3
  %8 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %odr, align 4
  %and16 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %9 = and i32 %conv, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %9)
  %.not = icmp eq i32 %9, 96
  br i1 %.not, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %accel19 = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %packet, i32 0, i32 1
  %10 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %accel19, ptr %accel, align 4
  %gyro20 = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %packet, i32 0, i32 2
  %11 = ptrtoint ptr %gyro to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %gyro20, ptr %gyro, align 4
  %temp21 = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %packet, i32 0, i32 3
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %temp21, ptr %temp, align 4
  %timestamp22 = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %packet, i32 0, i32 4
  %13 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %timestamp22, ptr %timestamp, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %and13 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %packet, i32 0, i32 1
  %14 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %accel, align 4
  %15 = ptrtoint ptr %gyro to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %gyro, align 4
  %temp28 = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %packet, i32 0, i32 2
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %temp28, ptr %temp, align 4
  %17 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %timestamp, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  br i1 %tobool17.not, label %if.end29.cleanup_crit_edge, label %if.then33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %accel, align 4
  %data34 = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %packet, i32 0, i32 1
  %19 = ptrtoint ptr %gyro to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data34, ptr %gyro, align 4
  %temp35 = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %packet, i32 0, i32 2
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %temp35, ptr %temp, align 4
  %21 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %timestamp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29.cleanup_crit_edge, %if.then27, %if.then18, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 16, %if.then18 ], [ 8, %if.then27 ], [ 8, %if.then33 ], [ -22, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inv_icm42600_buffer_update_fifo_period(ptr nocapture noundef %st) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %en, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %odr = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %odr, align 4
  %call = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %period_gyro.0 = phi i32 [ %call, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en, align 4
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %odr7 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %6 = ptrtoint ptr %odr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %odr7, align 4
  %call8 = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %7) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %period_accel.0 = phi i32 [ %call8, %if.then5 ], [ -1, %if.end.if.end10_crit_edge ]
  %8 = tail call i32 @llvm.umin.i32(i32 %period_gyro.0, i32 %period_accel.0)
  %period15 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %period15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %period15, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_odr_to_period(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_set_fifo_en(ptr nocapture noundef %st, i32 noundef %fifo_en) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %fifo_en to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %0 = zext i2 %rev to i32
  %and6 = and i32 %fifo_en, 4
  %1 = or i32 %and6, %0
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 95, i32 noundef 15, i32 noundef %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and = and i32 %fifo_en, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %fifo_en, ptr %en, align 4
  br i1 %tobool.not, label %if.end13.if.end.i_crit_edge, label %if.then.i

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %odr.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %odr.i, align 4
  %call.i25 = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %6) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end13.if.end.i_crit_edge
  %period_gyro.0.i = phi i32 [ %call.i25, %if.then.i ], [ -1, %if.end13.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %en, align 4
  %and3.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.inv_icm42600_buffer_update_fifo_period.exit_crit_edge, label %if.then5.i

if.end.i.inv_icm42600_buffer_update_fifo_period.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %inv_icm42600_buffer_update_fifo_period.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr7.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %9 = ptrtoint ptr %odr7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %odr7.i, align 4
  %call8.i = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %10) #5
  br label %inv_icm42600_buffer_update_fifo_period.exit

inv_icm42600_buffer_update_fifo_period.exit:      ; preds = %if.then5.i, %if.end.i.inv_icm42600_buffer_update_fifo_period.exit_crit_edge
  %period_accel.0.i = phi i32 [ %call8.i, %if.then5.i ], [ -1, %if.end.i.inv_icm42600_buffer_update_fifo_period.exit_crit_edge ]
  %11 = tail call i32 @llvm.umin.i32(i32 %period_gyro.0.i, i32 %period_accel.0.i) #5
  %period15.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %period15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %period15.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %inv_icm42600_buffer_update_fifo_period.exit, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_update_watermark(ptr noundef %st) local_unnamed_addr #2 align 64 {
entry:
  %restore = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %restore) #5
  %0 = ptrtoint ptr %restore to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %restore, align 1, !annotation !11
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %en, align 4
  %3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %.not.i = icmp eq i32 %3, 3
  %packet_size.0.i = select i1 %.not.i, i32 16, i32 8
  %watermark2 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 3
  %4 = ptrtoint ptr %watermark2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %watermark2, align 4
  %mul.i = mul i32 %packet_size.0.i, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 1856) #5
  %div.i.lhs.trunc = trunc i32 %6 to i16
  %div.i.rhs.trunc = trunc i32 %packet_size.0.i to i16
  %div.i99 = udiv i16 %div.i.lhs.trunc, %div.i.rhs.trunc
  %div.i.zext = zext i16 %div.i99 to i32
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 3, i32 1
  %7 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %accel, align 4
  %mul.i96 = mul i32 %packet_size.0.i, %8
  %9 = tail call i32 @llvm.umin.i32(i32 %mul.i96, i32 1856) #5
  %div.i97.lhs.trunc = trunc i32 %9 to i16
  %div.i97100 = udiv i16 %div.i97.lhs.trunc, %div.i.rhs.trunc
  %div.i97.zext = zext i16 %div.i97100 to i32
  %odr = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 0, i32 2
  %10 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr, align 4
  %call8 = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %11) #5
  %div = udiv i32 %call8, 1000
  %odr11 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 7, i32 1, i32 2
  %12 = ptrtoint ptr %odr11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %odr11, align 4
  %call12 = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %13) #5
  %div13 = udiv i32 %call12, 1000
  %mul = mul nuw nsw i32 %div, %div.i.zext
  %mul14 = mul nuw nsw i32 %div13, %div.i97.zext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  br i1 %cmp, label %entry.if.end32_crit_edge, label %if.else

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul14)
  %cmp15 = icmp eq i32 %mul14, 0
  br i1 %cmp15, label %if.else.if.end32_crit_edge, label %if.else17

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul14)
  %cmp18.not = icmp ugt i32 %mul, %mul14
  br i1 %cmp18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %rem = urem i32 %mul14, %mul
  %sub = sub nsw i32 %mul, %rem
  br label %if.end

if.else20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %rem21 = urem i32 %mul, %mul14
  %sub22 = sub nsw i32 %mul14, %rem21
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then19
  %latency.0 = phi i32 [ %sub, %if.then19 ], [ %sub22, %if.else20 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %div, i32 %div13)
  %div27 = udiv i32 %latency.0, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %latency.0)
  %cmp28 = icmp ugt i32 %14, %latency.0
  %spec.store.select = select i1 %cmp28, i32 1, i32 %div27
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.else.if.end32_crit_edge, %entry.if.end32_crit_edge
  %watermark.0 = phi i32 [ %spec.store.select, %if.end ], [ %div.i97.zext, %entry.if.end32_crit_edge ], [ %div.i.zext, %if.else.if.end32_crit_edge ]
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 101, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %restore, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %mul33 = mul i32 %watermark.0, %packet_size.0.i
  %17 = trunc i32 %mul33 to i16
  %conv = and i16 %17, 4088
  %18 = call i16 @llvm.bswap.i16(i16 %conv)
  %buffer = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 12
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %buffer, align 128
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %call40 = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 96, ptr noundef %buffer, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %22 = ptrtoint ptr %restore to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %restore, align 1, !range !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool44.not = icmp eq i8 %23, 0
  br i1 %tobool44.not, label %if.end43.if.end51_crit_edge, label %if.then45

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then45:                                        ; preds = %if.end43
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 4
  %call.i98 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 101, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool48.not = icmp eq i32 %call.i98, 0
  br i1 %tobool48.not, label %if.then45.if.end51_crit_edge, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.end51:                                         ; preds = %if.then45.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %call.i, %if.end32.cleanup_crit_edge ], [ %call40, %if.end36.cleanup_crit_edge ], [ %call.i98, %if.then45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %restore) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #5
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %fifo = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_on_crit_edge

entry.out_on_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_on

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 101, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 75, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.out_unlock_crit_edge

if.end4.out_unlock_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end9:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 22, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end9.out_unlock_crit_edge

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end26:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %buffer = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 12
  %call28 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 46, ptr noundef %buffer, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.out_on_crit_edge, label %if.end26.out_unlock_crit_edge

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end26.out_on_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_on

out_on:                                           ; preds = %if.end26.out_on_crit_edge, %entry.out_on_crit_edge
  %12 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo, align 128
  %inc = add i32 %13, 1
  store i32 %inc, ptr %fifo, align 128
  br label %out_unlock

out_unlock:                                       ; preds = %out_on, %if.end26.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge, %if.end4.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %out_on ], [ %call.i, %if.end.out_unlock_crit_edge ], [ %call6, %if.end4.out_unlock_crit_edge ], [ %call23, %if.end9.out_unlock_crit_edge ], [ %call28, %if.end26.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %fifo = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.out_off_crit_edge, label %if.end

entry.out_off_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_off

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 22, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end15:                                         ; preds = %if.end
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 75, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_unlock_crit_edge

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end20:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 101, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end20.out_off_crit_edge, label %if.end20.out_unlock_crit_edge

if.end20.out_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end20.out_off_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_off

out_off:                                          ; preds = %if.end20.out_off_crit_edge, %entry.out_off_crit_edge
  %10 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo, align 128
  %dec = add i32 %11, -1
  store i32 %dec, ptr %fifo, align 128
  br label %out_unlock

out_unlock:                                       ; preds = %out_off, %if.end20.out_unlock_crit_edge, %if.end15.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %out_off ], [ %call13, %if.end.out_unlock_crit_edge ], [ %call17, %if.end15.out_unlock_crit_edge ], [ %call.i, %if.end20.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_icm42600_buffer_postdisable(ptr noundef readonly %indio_dev) #2 align 64 {
entry:
  %conf = alloca %struct.inv_icm42600_sensor_conf, align 4
  %sleep_temp = alloca i32, align 4
  %sleep_sensor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conf) #5
  %4 = call ptr @memset(ptr %conf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sleep_temp) #5
  %5 = ptrtoint ptr %sleep_temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sleep_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sleep_sensor) #5
  %6 = ptrtoint ptr %sleep_sensor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sleep_sensor, align 4
  %indio_gyro = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %indio_gyro, align 4
  %cmp = icmp eq ptr %8, %indio_dev
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %watermark2 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 3
  br label %if.end12

if.else:                                          ; preds = %entry
  %indio_accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %indio_accel, align 8
  %cmp5 = icmp eq ptr %10, %indio_dev
  br i1 %cmp5, label %if.then6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 3, i32 1
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.then
  %sensor.0 = phi i32 [ -2, %if.then ], [ -3, %if.then6 ]
  %watermark.0 = phi ptr [ %watermark2, %if.then ], [ %accel, %if.then6 ]
  %ts.0.in = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %11 = ptrtoint ptr %ts.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %ts.0 = load ptr, ptr %ts.0.in, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %fifo13 = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en, align 4
  %and = and i32 %13, %sensor.0
  %trunc.i = trunc i32 %and to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #5
  %14 = zext i2 %rev.i to i32
  %and6.i = and i32 %13, 4
  %15 = or i32 %and6.i, %14
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 95, i32 noundef 15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end12.out_unlock_crit_edge

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end13.i:                                       ; preds = %if.end12
  %and.i = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %18 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %en, align 4
  br i1 %tobool.not.i, label %if.end13.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end13.i.if.end.i.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.i.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 0, i32 2
  %19 = ptrtoint ptr %odr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %odr.i.i, align 4
  %call.i25.i = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %20) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end13.i.if.end.i.i_crit_edge
  %period_gyro.0.i.i = phi i32 [ %call.i25.i, %if.then.i.i ], [ -1, %if.end13.i.if.end.i.i_crit_edge ]
  %21 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %en, align 4
  %and3.i.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end16_crit_edge, label %if.then5.i.i

if.end.i.i.if.end16_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr7.i.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 7, i32 1, i32 2
  %23 = ptrtoint ptr %odr7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %odr7.i.i, align 4
  %call8.i.i = tail call i32 @inv_icm42600_odr_to_period(i32 noundef %24) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then5.i.i, %if.end.i.i.if.end16_crit_edge
  %period_accel.0.i.i = phi i32 [ %call8.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.if.end16_crit_edge ]
  %25 = tail call i32 @llvm.umin.i32(i32 %period_gyro.0.i.i, i32 %period_accel.0.i.i) #5
  %period15.i.i = getelementptr inbounds %struct.inv_icm42600_state, ptr %1, i32 0, i32 14, i32 2
  %26 = ptrtoint ptr %period15.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %period15.i.i, align 8
  %27 = ptrtoint ptr %watermark.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %watermark.0, align 4
  %call17 = tail call i32 @inv_icm42600_buffer_update_watermark(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_unlock_crit_edge

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end20:                                         ; preds = %if.end16
  %28 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %conf, align 4
  br i1 %cmp, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = call i32 @inv_icm42600_set_gyro_conf(ptr noundef %1, ptr noundef nonnull %conf, ptr noundef nonnull %sleep_sensor) #5
  br label %if.end26

if.else24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call i32 @inv_icm42600_set_accel_conf(ptr noundef %1, ptr noundef nonnull %conf, ptr noundef nonnull %sleep_sensor) #5
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call25, %if.else24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool27.not = icmp eq i32 %ret.0, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.out_unlock_crit_edge

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end29:                                         ; preds = %if.end26
  %29 = ptrtoint ptr %fifo13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifo13, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not = icmp eq i32 %30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 @inv_icm42600_set_temp_conf(ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull %sleep_temp) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %ret.1 = phi i32 [ 0, %if.end29.if.end34_crit_edge ], [ %call33, %if.then32 ]
  %31 = call ptr @memset(ptr %ts.0, i32 0, i32 24)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end34, %if.end26.out_unlock_crit_edge, %if.end16.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge
  %ret.2 = phi i32 [ %call17, %if.end16.out_unlock_crit_edge ], [ %ret.0, %if.end26.out_unlock_crit_edge ], [ %ret.1, %if.end34 ], [ %call.i.i, %if.end12.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #5
  %32 = ptrtoint ptr %sleep_sensor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sleep_sensor, align 4
  %34 = ptrtoint ptr %sleep_temp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sleep_temp, align 4
  %36 = call i32 @llvm.umax.i32(i32 %33, i32 %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool40.not = icmp eq i32 %36, 0
  br i1 %tobool40.not, label %out_unlock.if.end42_crit_edge, label %if.then41

out_unlock.if.end42_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef %36) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %out_unlock.if.end42_crit_edge
  %call.i = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 22
  %37 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i80 = call i32 @__pm_runtime_suspend(ptr noundef %call1, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end42 ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sleep_sensor) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sleep_temp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_fifo_read(ptr noundef %st, i32 noundef %max) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 4
  %nb = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5
  %accel5 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 1
  %total = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp = icmp eq i32 %max, 0
  %0 = call ptr @memset(ptr %count, i32 0, i32 16)
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %en = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %en, align 4
  %3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %.not.i = icmp eq i32 %3, 3
  %packet_size.0.i = select i1 %.not.i, i32 16, i32 8
  %mul = mul i32 %packet_size.0.i, %max
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %max_count.0 = phi i32 [ %mul, %if.else ], [ 2080, %entry.if.end_crit_edge ]
  %buffer = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 12
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call9 = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 46, ptr noundef %buffer, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp17 = icmp eq i16 %7, 0
  br i1 %cmp17, label %if.end11.cleanup_crit_edge, label %if.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %max_count.0, i32 %conv)
  %cmp23 = icmp ult i32 %max_count.0, %conv
  br i1 %cmp23, label %if.then25, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %max_count.0, ptr %count, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end20.if.end28_crit_edge
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %data = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 7
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %call34 = tail call i32 @regmap_noinc_read(ptr noundef %11, i32 noundef 48, ptr noundef %data, i32 noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond.preheader, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end28
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp40133.not = icmp eq i32 %15, 0
  br i1 %cmp40133.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %if.end68.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0134 = phi i32 [ %add, %if.end68.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 7, i32 %i.0134
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %and16.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %18 = and i32 %conv.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %18)
  %.not.i110 = icmp eq i32 %18, 96
  br i1 %.not.i110, label %if.then18.i, label %if.end23.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %accel19.i = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %arrayidx, i32 0, i32 1
  %gyro20.i = getelementptr inbounds %struct.inv_icm42600_fifo_2sensors_packet, ptr %arrayidx, i32 0, i32 2
  br label %if.end48

if.end23.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end29.i, label %if.end48.thread

if.end48.thread:                                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %arrayidx, i32 0, i32 1
  br label %if.end57

if.end29.i:                                       ; preds = %if.end23.i
  br i1 %tobool17.not.i, label %if.end29.i.cleanup_crit_edge, label %if.then33.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %data34.i = getelementptr inbounds %struct.inv_icm42600_fifo_1sensor_packet, ptr %arrayidx, i32 0, i32 1
  br label %if.end48

if.end48:                                         ; preds = %if.then33.i, %if.then18.i
  %accel.1.ph = phi ptr [ null, %if.then33.i ], [ %accel19.i, %if.then18.i ]
  %gyro.1.ph = phi ptr [ %data34.i, %if.then33.i ], [ %gyro20.i, %if.then18.i ]
  %retval.0.i.ph = phi i32 [ 8, %if.then33.i ], [ 16, %if.then18.i ]
  %cmp49.not = icmp eq ptr %gyro.1.ph, null
  br i1 %cmp49.not, label %if.end48.if.end57_crit_edge, label %land.lhs.true

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end48
  %19 = ptrtoint ptr %gyro.1.ph to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %gyro.1.ph, align 1
  %y2.i = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %gyro.1.ph, i32 0, i32 1
  %21 = ptrtoint ptr %y2.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %y2.i, align 1
  %z4.i = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %gyro.1.ph, i32 0, i32 2
  %23 = ptrtoint ptr %z4.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %z4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %20)
  %cmp.i = icmp ne i16 %20, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %22)
  %cmp8.i = icmp ne i16 %22, -32768
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %24)
  %cmp12.i = icmp ne i16 %24, -32768
  %or.cond18.i = select i1 %or.cond.i, i1 true, i1 %cmp12.i
  br i1 %or.cond18.i, label %if.then53, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nb, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %nb, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true.if.end57_crit_edge, %if.end48.if.end57_crit_edge, %if.end48.thread
  %retval.0.i.ph132 = phi i32 [ %retval.0.i.ph, %if.then53 ], [ %retval.0.i.ph, %land.lhs.true.if.end57_crit_edge ], [ %retval.0.i.ph, %if.end48.if.end57_crit_edge ], [ 8, %if.end48.thread ]
  %accel.1.ph131 = phi ptr [ %accel.1.ph, %if.then53 ], [ %accel.1.ph, %land.lhs.true.if.end57_crit_edge ], [ %accel.1.ph, %if.end48.if.end57_crit_edge ], [ %data.i, %if.end48.thread ]
  %cmp58.not = icmp eq ptr %accel.1.ph131, null
  br i1 %cmp58.not, label %if.end57.if.end68_crit_edge, label %land.lhs.true60

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

land.lhs.true60:                                  ; preds = %if.end57
  %27 = ptrtoint ptr %accel.1.ph131 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %accel.1.ph131, align 1
  %y2.i111 = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %accel.1.ph131, i32 0, i32 1
  %29 = ptrtoint ptr %y2.i111 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %y2.i111, align 1
  %z4.i112 = getelementptr inbounds %struct.inv_icm42600_fifo_sensor_data, ptr %accel.1.ph131, i32 0, i32 2
  %31 = ptrtoint ptr %z4.i112 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %z4.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %28)
  %cmp.i113 = icmp ne i16 %28, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %30)
  %cmp8.i114 = icmp ne i16 %30, -32768
  %or.cond.i115 = select i1 %cmp.i113, i1 true, i1 %cmp8.i114
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %32)
  %cmp12.i116 = icmp ne i16 %32, -32768
  %or.cond18.i117 = select i1 %or.cond.i115, i1 true, i1 %cmp12.i116
  br i1 %or.cond18.i117, label %if.then63, label %land.lhs.true60.if.end68_crit_edge

land.lhs.true60.if.end68_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %accel5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %accel5, align 4
  %inc67 = add i32 %34, 1
  store i32 %inc67, ptr %accel5, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %land.lhs.true60.if.end68_crit_edge, %if.end57.if.end68_crit_edge
  %35 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total, align 8
  %inc72 = add i32 %36, 1
  store i32 %inc72, ptr %total, align 8
  %add = add i32 %retval.0.i.ph132, %i.0134
  %cmp40 = icmp ult i32 %add, %15
  br i1 %cmp40, label %if.end68.for.body_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end68.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call34, %if.end28.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end29.i.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_noinc_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_fifo_parse(ptr nocapture noundef readonly %st) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 2
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %nb = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5
  %indio_gyro = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 9
  %2 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indio_gyro, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %period = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period, align 8
  %8 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nb, align 8
  %timestamp = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 15
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %timestamp, align 128
  tail call void @inv_icm42600_timestamp_interrupt(ptr noundef %5, i32 noundef %7, i32 noundef %1, i32 noundef %9, i64 noundef %11) #5
  %12 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11.not = icmp eq i32 %13, 0
  br i1 %cmp11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.end
  %14 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %indio_gyro, align 4
  %call14 = tail call i32 @inv_icm42600_gyro_parse_fifo(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %indio_accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 10
  %16 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %indio_accel, align 8
  %priv.i58 = getelementptr inbounds %struct.iio_dev, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %priv.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i58, align 8
  %20 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period, align 8
  %22 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total, align 8
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 1
  %24 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %accel, align 4
  %accel27 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %accel27 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %accel27, align 8
  tail call void @inv_icm42600_timestamp_interrupt(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i64 noundef %27) #5
  %28 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp31.not = icmp eq i32 %29, 0
  br i1 %cmp31.not, label %if.end17.if.end38_crit_edge, label %if.then32

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then32:                                        ; preds = %if.end17
  %30 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %indio_accel, align 8
  %call34 = tail call i32 @inv_icm42600_accel_parse_fifo(ptr noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end38_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end17.if.end38_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then32.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 0, %entry.cleanup_crit_edge ], [ %call14, %if.then12.cleanup_crit_edge ], [ %call34, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inv_icm42600_timestamp_interrupt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_gyro_parse_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_accel_parse_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_hwfifo_flush(ptr noundef %st, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_gyro = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 9
  %0 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_gyro, align 4
  %call = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %indio_accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 10
  %2 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indio_accel, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %3) #5
  %call2 = tail call i32 @inv_icm42600_buffer_fifo_read(ptr noundef %st, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %total = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 2
  %4 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %nb = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5
  %6 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not = icmp eq i32 %7, 0
  br i1 %cmp7.not, label %if.end4.if.end23_crit_edge, label %if.then8

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then8:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %indio_gyro, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %period = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period, align 8
  tail call void @inv_icm42600_timestamp_interrupt(ptr noundef %11, i32 noundef %13, i32 noundef %5, i32 noundef %7, i64 noundef %call) #5
  %14 = ptrtoint ptr %indio_gyro to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %indio_gyro, align 4
  %call19 = tail call i32 @inv_icm42600_gyro_parse_fifo(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then8.if.end23_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %if.then8.if.end23_crit_edge, %if.end4.if.end23_crit_edge
  %accel = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 5, i32 1
  %16 = ptrtoint ptr %accel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %accel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp26.not = icmp eq i32 %17, 0
  br i1 %cmp26.not, label %if.end23.if.end43_crit_edge, label %if.then27

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then27:                                        ; preds = %if.end23
  %18 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %indio_accel, align 8
  %priv.i68 = getelementptr inbounds %struct.iio_dev, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %priv.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i68, align 8
  %period31 = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 14, i32 2
  %22 = ptrtoint ptr %period31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period31, align 8
  %24 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total, align 8
  tail call void @inv_icm42600_timestamp_interrupt(ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %17, i64 noundef %call1) #5
  %26 = ptrtoint ptr %indio_accel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %indio_accel, align 8
  %call39 = tail call i32 @inv_icm42600_accel_parse_fifo(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then27.if.end43_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.if.end43_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.then27.if.end43_crit_edge, %if.end23.if.end43_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then27.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call19, %if.then8.cleanup_crit_edge ], [ %call39, %if.then27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_buffer_init(ptr nocapture noundef readonly %st) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 76, i32 noundef 224, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 95, i32 noundef 111, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_set_gyro_conf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_set_accel_conf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_icm42600_set_temp_conf(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @inv_icm42600_buffer_ops, !1, !"inv_icm42600_buffer_ops", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c", i32 439, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
