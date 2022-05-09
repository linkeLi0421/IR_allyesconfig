; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.inv_mpu6050_state = type { %struct.mutex, ptr, %struct.inv_mpu6050_chip_config, ptr, ptr, i32, ptr, ptr, %struct.inv_mpu6050_platform_data, %struct.iio_mount_matrix, ptr, i32, i8, i32, i64, i64, i64, ptr, ptr, i8, [3 x i32], %struct.iio_mount_matrix, i32, [104 x i8], [32 x i8], [96 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inv_mpu6050_chip_config = type { [3 x i8], i8, i8, [3 x i8] }
%struct.inv_mpu6050_platform_data = type { [9 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.inv_mpu6050_reg_map = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inv_mpu\00", [24 x i8] zeroinitializer }, align 32
@inv_mpu_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @inv_mpu_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 226, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 235, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"inv_mpu_trigger_ops\00", align 1
@___asan_gen_.9 = private constant [49 x i8] c"../drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 216, i32 37 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @inv_mpu_trigger_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu6050_prepare_fifo(ptr nocapture noundef %st, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %it_timestamp = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 15
  %0 = ptrtoint ptr %it_timestamp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %it_timestamp, align 8
  %user_ctrl = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %user_ctrl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %user_ctrl, align 4
  %3 = or i8 %2, 4
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 8
  %user_ctrl2 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %user_ctrl2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %user_ctrl2, align 1
  %conv3 = zext i8 %9 to i32
  %conv4 = zext i8 %3 to i32
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %conv3, i32 noundef %conv4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %10 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %11 = and i24 %bf.load, 256
  %tobool8.not = icmp eq i24 %11, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 112
  %12 = lshr i24 %bf.load, 6
  %13 = and i24 %12, 8
  %14 = and i24 %bf.load, 128
  %15 = zext i24 %bf.load to i32
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = or i24 %13, %14
  %19 = zext i24 %18 to i32
  %20 = or i32 %spec.select, %19
  %21 = or i32 %20, %17
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 8
  %fifo_en = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %fifo_en to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fifo_en, align 1
  %conv49 = zext i8 %27 to i32
  %call51 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %conv49, i32 noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end54:                                         ; preds = %if.end
  %28 = ptrtoint ptr %user_ctrl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %user_ctrl, align 4
  %30 = or i8 %29, 64
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 8
  %user_ctrl62 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %user_ctrl62 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %user_ctrl62, align 1
  %conv63 = zext i8 %36 to i32
  %conv64 = zext i8 %30 to i32
  %call65 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %conv63, i32 noundef %conv64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map, align 4
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 8
  %int_enable = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %int_enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %int_enable, align 1
  %conv71 = zext i8 %42 to i32
  %call72 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %conv71, i32 noundef 1) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  %map73 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %43 = ptrtoint ptr %map73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map73, align 4
  %reg74 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %45 = ptrtoint ptr %reg74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg74, align 8
  %int_enable75 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %int_enable75 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %int_enable75, align 1
  %conv76 = zext i8 %48 to i32
  %call77 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %conv76, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end80:                                         ; preds = %if.else
  %49 = ptrtoint ptr %map73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map73, align 4
  %51 = ptrtoint ptr %reg74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg74, align 8
  %fifo_en83 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %fifo_en83 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fifo_en83, align 1
  %conv84 = zext i8 %54 to i32
  %call85 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef %conv84, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %map73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map73, align 4
  %57 = ptrtoint ptr %reg74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg74, align 8
  %user_ctrl91 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %user_ctrl91 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %user_ctrl91, align 1
  %conv92 = zext i8 %60 to i32
  %user_ctrl94 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %user_ctrl94 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %user_ctrl94, align 4
  %conv95 = zext i8 %62 to i32
  %call96 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef %conv92, i32 noundef %conv95) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end80.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end68, %if.end54.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call51, %if.end.cleanup_crit_edge ], [ %call65, %if.end54.cleanup_crit_edge ], [ %call77, %if.else.cleanup_crit_edge ], [ %call85, %if.end80.cleanup_crit_edge ], [ %call72, %if.end68 ], [ %call96, %if.end88 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu6050_probe_trigger(ptr noundef %indio_dev, i32 noundef %irq_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #3
  %call2 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %call1) #3
  %trig = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %trig, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 16
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef %irq_type, ptr noundef nonnull @.str.1, ptr noundef nonnull %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call10 = tail call ptr @regmap_get_device(ptr noundef %8) #3
  %9 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trig, align 4
  %parent = getelementptr inbounds %struct.iio_trigger, ptr %10, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %parent, align 8
  %12 = load ptr, ptr %trig, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @inv_mpu_trigger_ops, ptr %12, align 8
  %14 = load ptr, ptr %trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %14, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %16 = load ptr, ptr %trig, align 4
  %call17 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %16, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %18, i32 0, i32 4
  %call.i44 = tail call ptr @get_device(ptr noundef %dev.i) #3
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %20) #3
  %trig23 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %21 = ptrtoint ptr %trig23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %trig23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call17, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #3
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %7) #3
  br i1 %state, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %chip_type.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_type.i.i, align 16
  %.off.i.i = add i32 %11, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_scan_mask.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i7, label %if.end.i8

if.then.i7:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %chip_config.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 3)
  %bf.load.i = load i24, ptr %chip_config.i, align 32
  %bf.set.i = or i24 %bf.load.i, 128
  store i24 %bf.set.i, ptr %chip_config.i, align 32
  br label %inv_scan_query_mpu6050.exit

if.end.i8:                                        ; preds = %if.then.i
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %13, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i8.lor.end.i_crit_edge

if.end.i8.lor.end.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %13, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %13, align 4
  %23 = and i32 %22, 64
  %24 = trunc i32 %23 to i24
  %25 = shl nuw nsw i24 %24, 2
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false.i.lor.end.i_crit_edge, %if.end.i8.lor.end.i_crit_edge
  %26 = phi i24 [ 256, %lor.lhs.false.i.lor.end.i_crit_edge ], [ 256, %if.end.i8.lor.end.i_crit_edge ], [ %25, %lor.rhs.i ]
  %chip_config10.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %9, i32 0, i32 2
  %27 = ptrtoint ptr %chip_config10.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 3)
  %bf.load11.i = load i24, ptr %chip_config10.i, align 32
  %bf.clear12.i = and i24 %bf.load11.i, -257
  %bf.set13.i = or i24 %bf.clear12.i, %26
  store i24 %bf.set13.i, ptr %chip_config10.i, align 32
  %28 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_scan_mask.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and1.i90.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i90.i)
  %tobool16.not.i9 = icmp eq i32 %and1.i90.i, 0
  br i1 %tobool16.not.i9, label %lor.lhs.false17.i, label %lor.end.i.lor.end25.i_crit_edge

lor.end.i.lor.end25.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end25.i

lor.lhs.false17.i:                                ; preds = %lor.end.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %34 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i10 = icmp eq i32 %34, 0
  br i1 %tobool20.not.i10, label %lor.rhs21.i, label %lor.lhs.false17.i.lor.end25.i_crit_edge

lor.lhs.false17.i.lor.end25.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end25.i

lor.rhs21.i:                                      ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %29, align 4
  %37 = and i32 %36, 4
  %38 = trunc i32 %37 to i24
  %39 = shl nuw nsw i24 %38, 7
  br label %lor.end25.i

lor.end25.i:                                      ; preds = %lor.rhs21.i, %lor.lhs.false17.i.lor.end25.i_crit_edge, %lor.end.i.lor.end25.i_crit_edge
  %40 = phi i24 [ 512, %lor.lhs.false17.i.lor.end25.i_crit_edge ], [ 512, %lor.end.i.lor.end25.i_crit_edge ], [ %39, %lor.rhs21.i ]
  %bf.clear31.i = and i24 %bf.set13.i, -513
  %bf.set32.i = or i24 %40, %bf.clear31.i
  %41 = ptrtoint ptr %chip_config10.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 3)
  store i24 %bf.set32.i, ptr %chip_config10.i, align 32
  %42 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %active_scan_mask.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %shr.i95.i = lshr i32 %45, 3
  %and1.i96.i = and i32 %shr.i95.i, 1
  %46 = trunc i32 %and1.i96.i to i24
  %bf.value38.i = shl nuw nsw i24 %46, 7
  %bf.clear40.i = and i24 %bf.set32.i, -129
  %bf.set41.i = or i24 %bf.value38.i, %bf.clear40.i
  store i24 %bf.set41.i, ptr %chip_config10.i, align 32
  %tobool46.not.i = icmp eq i24 %26, 0
  %spec.select.i11 = select i1 %tobool46.not.i, i32 0, i32 2
  %.lobit.i = lshr exact i24 %40, 9
  %47 = zext i24 %.lobit.i to i32
  %mask.1.i = or i32 %spec.select.i11, %47
  %tobool63.not.i = icmp eq i24 %46, 0
  %or65.i = or i32 %mask.1.i, 4
  %mask.2.i = select i1 %tobool63.not.i, i32 %mask.1.i, i32 %or65.i
  br label %inv_scan_query_mpu6050.exit

inv_scan_query_mpu6050.exit:                      ; preds = %lor.end25.i, %if.then.i7
  %retval.0.i12 = phi i32 [ %mask.2.i, %lor.end25.i ], [ 4, %if.then.i7 ]
  br i1 %switch.i.i, label %sw.bb.i.i, label %inv_scan_query_mpu6050.exit.inv_scan_query.exit.i_crit_edge

inv_scan_query_mpu6050.exit.inv_scan_query.exit.i_crit_edge: ; preds = %inv_scan_query_mpu6050.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %inv_scan_query.exit.i

sw.bb.i.i:                                        ; preds = %inv_scan_query_mpu6050.exit
  %magn_disabled.i.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %9, i32 0, i32 19
  %48 = ptrtoint ptr %magn_disabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %magn_disabled.i.i.i, align 32, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb.i.i.inv_scan_query.exit.i_crit_edge

sw.bb.i.i.inv_scan_query.exit.i_crit_edge:        ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inv_scan_query.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %50 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %active_scan_mask.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.i.lor.end.i.i.i_crit_edge

if.end.i.i.i.lor.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %51, align 4
  %57 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool6.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool6.not.i.i.i, label %lor.rhs.i.i.i, label %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end.i.i.i

lor.rhs.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %51, align 4
  %60 = lshr i32 %59, 3
  %61 = and i32 %60, 64
  %62 = trunc i32 %61 to i24
  br label %lor.end.i.i.i

lor.end.i.i.i:                                    ; preds = %lor.rhs.i.i.i, %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge, %if.end.i.i.i.lor.end.i.i.i_crit_edge
  %63 = phi i24 [ 64, %lor.lhs.false.i.i.i.lor.end.i.i.i_crit_edge ], [ 64, %if.end.i.i.i.lor.end.i.i.i_crit_edge ], [ %62, %lor.rhs.i.i.i ]
  %chip_config.i.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %9, i32 0, i32 2
  %64 = ptrtoint ptr %chip_config.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 3)
  %bf.load.i.i.i = load i24, ptr %chip_config.i.i.i, align 32
  %bf.clear.i.i.i = and i24 %bf.load.i.i.i, -65
  %bf.set.i.i.i = or i24 %bf.clear.i.i.i, %63
  store i24 %bf.set.i.i.i, ptr %chip_config.i.i.i, align 32
  %tobool13.not.i.i.i = icmp eq i24 %63, 0
  %or.i.i.i = or i32 %retval.0.i12, 8
  %spec.select = select i1 %tobool13.not.i.i.i, i32 %retval.0.i12, i32 %or.i.i.i
  br label %inv_scan_query.exit.i

inv_scan_query.exit.i:                            ; preds = %lor.end.i.i.i, %sw.bb.i.i.inv_scan_query.exit.i_crit_edge, %inv_scan_query_mpu6050.exit.inv_scan_query.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %retval.0.i12, %sw.bb.i.i.inv_scan_query.exit.i_crit_edge ], [ %retval.0.i12, %inv_scan_query_mpu6050.exit.inv_scan_query.exit.i_crit_edge ], [ %spec.select, %lor.end.i.i.i ]
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %inv_scan_query.exit.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #3
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #3, !srcloc !17
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.inv_mpu6050_set_enable.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.inv_mpu6050_set_enable.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inv_mpu6050_set_enable.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !18
  br label %inv_mpu6050_set_enable.exit

if.end.i:                                         ; preds = %inv_scan_query.exit.i
  %neg.i = xor i32 %retval.0.i.i, -1
  %call6.i = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %5, i1 noundef zeroext false, i32 noundef %neg.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.error_power_off.i_crit_edge

if.end.i.error_power_off.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %5, i1 noundef zeroext true, i32 noundef %retval.0.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.error_power_off.i_crit_edge

if.end9.i.error_power_off.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

if.end13.i:                                       ; preds = %if.end9.i
  %chip_config.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %5, i32 0, i32 2
  %66 = ptrtoint ptr %chip_config.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 3)
  %bf.load.i.i = load i24, ptr %chip_config.i.i, align 32
  %67 = lshr i24 %bf.load.i.i, 6
  %.lobit.i.i = and i24 %67, 1
  %68 = zext i24 %.lobit.i.i to i32
  %skip_samples.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %5, i32 0, i32 13
  %69 = ptrtoint ptr %skip_samples.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %skip_samples.i, align 8
  %call15.i = tail call i32 @inv_mpu6050_prepare_fifo(ptr noundef %5, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.inv_mpu6050_set_enable.exit_crit_edge, label %if.end13.i.error_power_off.i_crit_edge

if.end13.i.error_power_off.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

if.end13.i.inv_mpu6050_set_enable.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inv_mpu6050_set_enable.exit

if.else.i:                                        ; preds = %entry
  %70 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i, align 4
  %reg74.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %5, i32 0, i32 3
  %72 = ptrtoint ptr %reg74.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg74.i.i, align 8
  %int_enable75.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %int_enable75.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %int_enable75.i.i, align 1
  %conv76.i.i = zext i8 %75 to i32
  %call77.i.i = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %conv76.i.i, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end80.i.i, label %if.else.i.error_power_off.i_crit_edge

if.else.i.error_power_off.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

if.end80.i.i:                                     ; preds = %if.else.i
  %76 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map.i, align 4
  %78 = ptrtoint ptr %reg74.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg74.i.i, align 8
  %fifo_en83.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %fifo_en83.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %fifo_en83.i.i, align 1
  %conv84.i.i = zext i8 %81 to i32
  %call85.i.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %conv84.i.i, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i.i)
  %tobool86.not.i.i = icmp eq i32 %call85.i.i, 0
  br i1 %tobool86.not.i.i, label %inv_mpu6050_prepare_fifo.exit.i, label %if.end80.i.i.error_power_off.i_crit_edge

if.end80.i.i.error_power_off.i_crit_edge:         ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

inv_mpu6050_prepare_fifo.exit.i:                  ; preds = %if.end80.i.i
  %82 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i, align 4
  %84 = ptrtoint ptr %reg74.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg74.i.i, align 8
  %user_ctrl91.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %user_ctrl91.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %user_ctrl91.i.i, align 1
  %conv92.i.i = zext i8 %87 to i32
  %user_ctrl94.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %5, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %user_ctrl94.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %user_ctrl94.i.i, align 4
  %conv95.i.i = zext i8 %89 to i32
  %call96.i.i = tail call i32 @regmap_write(ptr noundef %83, i32 noundef %conv92.i.i, i32 noundef %conv95.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i.i)
  %tobool20.not.i = icmp eq i32 %call96.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %inv_mpu6050_prepare_fifo.exit.i.error_power_off.i_crit_edge

inv_mpu6050_prepare_fifo.exit.i.error_power_off.i_crit_edge: ; preds = %inv_mpu6050_prepare_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_power_off.i

if.end22.i:                                       ; preds = %inv_mpu6050_prepare_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i48.i = tail call i64 @ktime_get_mono_fast_ns() #3
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 12, i32 22
  %90 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store volatile i64 %call.i48.i, ptr %last_busy.i.i, align 8
  %call.i49.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call1.i, i32 noundef 13) #3
  br label %inv_mpu6050_set_enable.exit

error_power_off.i:                                ; preds = %inv_mpu6050_prepare_fifo.exit.i.error_power_off.i_crit_edge, %if.end80.i.i.error_power_off.i_crit_edge, %if.else.i.error_power_off.i_crit_edge, %if.end13.i.error_power_off.i_crit_edge, %if.end9.i.error_power_off.i_crit_edge, %if.end.i.error_power_off.i_crit_edge
  %result.0.i = phi i32 [ %call6.i, %if.end.i.error_power_off.i_crit_edge ], [ %call10.i, %if.end9.i.error_power_off.i_crit_edge ], [ %call15.i, %if.end13.i.error_power_off.i_crit_edge ], [ %call96.i.i, %inv_mpu6050_prepare_fifo.exit.i.error_power_off.i_crit_edge ], [ %call85.i.i, %if.end80.i.i.error_power_off.i_crit_edge ], [ %call77.i.i, %if.else.i.error_power_off.i_crit_edge ]
  %call.i50.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call1.i, i32 noundef 13) #3
  br label %inv_mpu6050_set_enable.exit

inv_mpu6050_set_enable.exit:                      ; preds = %error_power_off.i, %if.end22.i, %if.end13.i.inv_mpu6050_set_enable.exit_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.inv_mpu6050_set_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %result.0.i, %error_power_off.i ], [ 0, %if.end13.i.inv_mpu6050_set_enable.exit_crit_edge ], [ 0, %if.end22.i ], [ %call.i.i, %if.then.i.i.inv_mpu6050_set_enable.exit_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %3) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu6050_switch_engine(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c", i32 226, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c", i32 235, i32 11}
!4 = !{ptr @inv_mpu_trigger_ops, !5, !"inv_mpu_trigger_ops", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c", i32 216, i32 37}
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
!16 = !{i64 2148488138}
!17 = !{i64 974738, i64 974763, i64 974785, i64 974801, i64 974813, i64 974833, i64 974857, i64 974873, i64 974885}
!18 = !{i64 2148488326}
