; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.inv_mpu6050_state = type { %struct.mutex, ptr, %struct.inv_mpu6050_chip_config, ptr, ptr, i32, ptr, ptr, %struct.inv_mpu6050_platform_data, %struct.iio_mount_matrix, ptr, i32, i8, i32, i64, i64, i64, ptr, ptr, i8, [3 x i32], %struct.iio_mount_matrix, i32, [104 x i8], [32 x i8], [96 x i8] }
%struct.inv_mpu6050_chip_config = type { [3 x i8], i8, i8, [3 x i8] }
%struct.inv_mpu6050_platform_data = type { [9 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.inv_mpu6050_reg_map = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.inv_mpu6050_hw = type { i8, ptr, ptr, ptr, i32, %struct.anon.85, %struct.anon.86 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.86 = type { i32, i32 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@inv_mpu6050_read_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to ack interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inv_mpu6050_read_fifo\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inv_mpu6050_read_fifo._entry_ptr = internal global ptr @inv_mpu6050_read_fifo._entry, section ".printk_index", align 4
@inv_mpu6050_read_fifo._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 174, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fifo overflow reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@inv_mpu6050_read_fifo._entry_ptr.8 = internal global ptr @inv_mpu6050_read_fifo._entry.5, section ".printk_index", align 4
@inv_reset_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset fifo failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inv_reset_fifo\00", [17 x i8] zeroinitializer }, align 32
@inv_reset_fifo._entry_ptr = internal global ptr @inv_reset_fifo._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 133, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 174, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [46 x i8] c"../drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 106, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @inv_mpu6050_read_fifo._entry, ptr @inv_mpu6050_read_fifo._entry.5, ptr @inv_mpu6050_read_fifo._entry_ptr, ptr @inv_mpu6050_read_fifo._entry_ptr.8, ptr @inv_reset_fifo._entry, ptr @inv_reset_fifo._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu6050_read_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu6050_read_fifo._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_reset_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu6050_read_fifo(i32 noundef %irq, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #5
  %4 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %int_status, align 4, !annotation !27
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 8
  %int_status2 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %int_status2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %int_status2, align 1
  %conv = zext i8 %10 to i32
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %int_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call5 = call ptr @regmap_get_device(ptr noundef %12) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call5, ptr noundef nonnull @.str) #8
  br label %flush_fifo

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_status, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %15, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.lshr = lshr i24 %bf.load, 9
  %bf.clear = and i24 %bf.lshr, 1
  %bf.lshr11 = lshr i24 %bf.load, 8
  %bf.clear12 = and i24 %bf.lshr11, 1
  %or153 = or i24 %bf.clear, %bf.clear12
  %bf.lshr16 = lshr i24 %bf.load, 6
  %bf.clear17 = and i24 %bf.lshr16, 1
  %or19154 = or i24 %or153, %bf.clear17
  %tobool20.not = icmp eq i24 %or19154, 0
  br i1 %tobool20.not, label %if.end8.cleanup_crit_edge, label %if.end22

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %tobool28.not = icmp eq i24 %bf.clear, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 6
  %16 = and i24 %bf.load, 256
  %tobool36.not = icmp eq i24 %16, 0
  %add38 = add nuw nsw i32 %spec.select, 6
  %bytes_per_datum.1 = select i1 %tobool36.not, i32 %spec.select, i32 %add38
  %17 = and i24 %bf.load, 128
  %tobool45.not = icmp eq i24 %17, 0
  %add47 = add nuw nsw i32 %bytes_per_datum.1, 2
  %bytes_per_datum.2 = select i1 %tobool45.not, i32 %bytes_per_datum.1, i32 %add47
  %18 = and i24 %bf.load, 64
  %tobool54.not = icmp eq i24 %18, 0
  %add56 = add nuw nsw i32 %bytes_per_datum.2, 7
  %bytes_per_datum.3 = select i1 %tobool54.not, i32 %bytes_per_datum.2, i32 %add56
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 8
  %fifo_count_h = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %fifo_count_h to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fifo_count_h, align 1
  %conv60 = zext i8 %24 to i32
  %data = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 24
  %call61 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef %conv60, ptr noundef %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data, align 2
  %mul.neg = mul nsw i32 %bytes_per_datum.3, -3
  %conv67 = zext i16 %26 to i32
  %hw = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %fifo_size = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifo_size, align 4
  %sub = add i32 %30, %mul.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv67)
  %cmp.not = icmp ugt i32 %sub, %conv67
  br i1 %cmp.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call74 = call ptr @regmap_get_device(ptr noundef %32) #5
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call74, ptr noundef nonnull @.str.6) #8
  br label %flush_fifo

if.end75:                                         ; preds = %if.end64
  %div.rhs.trunc = trunc i32 %bytes_per_datum.3 to i16
  %div163 = udiv i16 %26, %div.rhs.trunc
  %div.zext = zext i16 %div163 to i32
  %timestamp77 = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %33 = ptrtoint ptr %timestamp77 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %timestamp77, align 8
  %divider1.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %divider1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %divider1.i, align 1
  %conv.i = zext i8 %36 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %it_timestamp.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 15
  %37 = ptrtoint ptr %it_timestamp.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %it_timestamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp.i = icmp eq i64 %38, 0
  br i1 %cmp.i, label %if.end75.if.then16.i_crit_edge, label %if.else.i

if.end75.if.then16.i_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

if.else.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %div163)
  %cmp3.i = icmp eq i16 %div163, 1
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i.inv_mpu6050_update_period.exit_crit_edge

if.else.i.inv_mpu6050_update_period.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %inv_mpu6050_update_period.exit

if.then5.i:                                       ; preds = %if.else.i
  %sub.i = sub i64 %34, %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #5
  %39 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !27
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %add.i, ptr noundef nonnull %remainder.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #5
  %40 = add i64 %call.i.i, -960001
  call void @__sanitizer_cov_trace_const_cmp8(i64 79999, i64 %40)
  %41 = icmp ult i64 %40, 79999
  br i1 %41, label %if.then11.i, label %if.then5.i.inv_mpu6050_update_period.exit_crit_edge

if.then5.i.inv_mpu6050_update_period.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %inv_mpu6050_update_period.exit

if.then11.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  %chip_period.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 14
  %42 = ptrtoint ptr %chip_period.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %chip_period.i, align 64
  %add12.i = add i64 %43, %call.i.i
  %div.i = sdiv i64 %add12.i, 2
  store i64 %div.i, ptr %chip_period.i, align 64
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.then11.i, %if.end75.if.then16.i_crit_edge
  %sub17.i = add nsw i32 %div.zext, -1
  %conv18.i = zext i32 %sub17.i to i64
  %chip_period19.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 14
  %44 = ptrtoint ptr %chip_period19.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %chip_period19.i, align 64
  %46 = zext i32 %add.i to i64
  %mul.i = mul nuw nsw i64 %46, %conv18.i
  %mul21.i = mul i64 %mul.i, %45
  %sub22.i = sub i64 %34, %mul21.i
  %data_timestamp.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 16
  %47 = ptrtoint ptr %data_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %sub22.i, ptr %data_timestamp.i, align 16
  br label %inv_mpu6050_update_period.exit

inv_mpu6050_update_period.exit:                   ; preds = %if.then16.i, %if.then5.i.inv_mpu6050_update_period.exit_crit_edge, %if.else.i.inv_mpu6050_update_period.exit_crit_edge
  %48 = ptrtoint ptr %it_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %34, ptr %it_timestamp.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %div.rhs.trunc)
  %cmp78164.not = icmp ult i16 %26, %div.rhs.trunc
  br i1 %cmp78164.not, label %inv_mpu6050_update_period.exit.cleanup_crit_edge, label %for.body.lr.ph

inv_mpu6050_update_period.exit.cleanup_crit_edge: ; preds = %inv_mpu6050_update_period.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %inv_mpu6050_update_period.exit
  %skip_samples = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 13
  %data_timestamp.i155 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 16
  %chip_period.i156 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 14
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %div.zext, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg, align 8
  %fifo_r_w = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %fifo_r_w to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fifo_r_w, align 1
  %conv82 = zext i8 %54 to i32
  %call85 = call i32 @regmap_noinc_read(ptr noundef %50, i32 noundef %conv82, ptr noundef %data, i32 noundef %bytes_per_datum.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %for.body.flush_fifo_crit_edge

for.body.flush_fifo_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %flush_fifo

if.end88:                                         ; preds = %for.body
  %55 = ptrtoint ptr %skip_samples to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %skip_samples, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool89.not = icmp eq i32 %56, 0
  br i1 %tobool89.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %56, -1
  %57 = ptrtoint ptr %skip_samples to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dec, ptr %skip_samples, align 8
  br label %for.inc

if.end92:                                         ; preds = %if.end88
  %58 = ptrtoint ptr %data_timestamp.i155 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data_timestamp.i155, align 16
  %60 = ptrtoint ptr %chip_period.i156 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %chip_period.i156, align 64
  %62 = ptrtoint ptr %divider1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %divider1.i, align 1
  %conv.i157 = zext i8 %63 to i32
  %add.i158 = add nuw nsw i32 %conv.i157, 1
  %64 = zext i32 %add.i158 to i64
  %mul.i159 = mul i64 %61, %64
  %add3.i = add i64 %mul.i159, %59
  store i64 %add3.i, ptr %data_timestamp.i155, align 16
  %65 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %scan_timestamp.i, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %if.end92.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end92.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %68, 3
  %sub.i160 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i160
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %59, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end92.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #5
  br label %for.inc

for.inc:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then90
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

flush_fifo:                                       ; preds = %for.body.flush_fifo_crit_edge, %do.end72, %do.end
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 8
  %call1.i = call i32 @inv_mpu6050_prepare_fifo(ptr noundef %71, i1 noundef zeroext false) #5
  %call2.i = call i32 @inv_mpu6050_prepare_fifo(ptr noundef %71, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i161 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i161, label %flush_fifo.cleanup_crit_edge, label %do.end.i

flush_fifo.cleanup_crit_edge:                     ; preds = %flush_fifo
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %flush_fifo
  call void @__sanitizer_cov_trace_pc() #7
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i, align 4
  %call3.i = call ptr @regmap_get_device(ptr noundef %73) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call3.i, ptr noundef nonnull @.str.9, i32 noundef %call2.i) #8
  %74 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %71, i32 0, i32 3
  %76 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg.i, align 8
  %int_enable.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %int_enable.i, align 1
  %conv.i162 = zext i8 %79 to i32
  %call5.i = call i32 @regmap_write(ptr noundef %75, i32 noundef %conv.i162, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %flush_fifo.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %inv_mpu6050_update_period.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %3) #5
  %trig100 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %80 = ptrtoint ptr %trig100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %trig100, align 4
  call void @iio_trigger_notify_done(ptr noundef %81) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #5
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_noinc_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu6050_prepare_fifo(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c", i32 133, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @inv_mpu6050_read_fifo._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @inv_mpu6050_read_fifo._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c", i32 174, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @inv_mpu6050_read_fifo._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @inv_mpu6050_read_fifo._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c", i32 106, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @inv_reset_fifo._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @inv_reset_fifo._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
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
!28 = !{i8 0, i8 2}
