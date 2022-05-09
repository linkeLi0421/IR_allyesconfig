; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_aux_init(ptr nocapture noundef readonly %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 36, i32 noundef 77) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 52, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 103, i32 noundef 143) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_aux_read(ptr nocapture noundef readonly %st, i8 noundef zeroext %addr, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp = icmp ugt i32 %size, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %3 = or i8 %addr, -128
  %or = zext i8 %3 to i32
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 37, i32 noundef %or) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %conv4 = zext i8 %reg to i32
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 38, i32 noundef %conv4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %or10 = or i32 %size, 128
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 39, i32 noundef %or10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call fastcc i32 @inv_mpu_i2c_master_xfer(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.error_disable_i2c_crit_edge

if.end14.error_disable_i2c_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_disable_i2c

if.end18:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 39, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.error_disable_i2c_crit_edge

if.end18.error_disable_i2c_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_disable_i2c

if.end23:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %call25 = call i32 @regmap_read(ptr noundef %11, i32 noundef 54, ptr noundef nonnull %status) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 4
  %call33 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 73, ptr noundef %val, i32 noundef %size) #3
  br label %cleanup

error_disable_i2c:                                ; preds = %if.end18.error_disable_i2c_crit_edge, %if.end14.error_disable_i2c_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.error_disable_i2c_crit_edge ], [ %call20, %if.end18.error_disable_i2c_crit_edge ]
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 39, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %error_disable_i2c, %if.end31, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_disable_i2c ], [ %call33, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end2.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ -5, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu_i2c_master_xfer(ptr nocapture noundef readonly %st) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef 19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %user_ctrl2 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %user_ctrl2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %user_ctrl2, align 4
  %8 = or i8 %7, 32
  %or = zext i8 %8 to i32
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 8
  %user_ctrl6 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %user_ctrl6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %user_ctrl6, align 1
  %conv7 = zext i8 %14 to i32
  %call8 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %conv7, i32 noundef %or) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.error_restore_rate_crit_edge

if.end.error_restore_rate_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_restore_rate

if.end11:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 30) #3
  %15 = ptrtoint ptr %user_ctrl2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %user_ctrl2, align 4
  %conv14 = zext i8 %16 to i32
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 8
  %user_ctrl17 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %user_ctrl17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %user_ctrl17, align 1
  %conv18 = zext i8 %22 to i32
  %call19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %conv18, i32 noundef %conv14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %error_stop_i2c

if.end22:                                         ; preds = %if.end11
  %divider = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %divider to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %divider, align 1
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv27 = zext i8 %30 to i32
  %conv28 = zext i8 %24 to i32
  %call29 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %conv27, i32 noundef %conv28) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end22.cleanup_crit_edge, label %if.end22.error_restore_rate_crit_edge

if.end22.error_restore_rate_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_restore_rate

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

error_stop_i2c:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg, align 8
  %user_ctrl35 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %user_ctrl35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %user_ctrl35, align 1
  %conv36 = zext i8 %36 to i32
  %37 = ptrtoint ptr %user_ctrl2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %user_ctrl2, align 4
  %conv39 = zext i8 %38 to i32
  %call40 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %conv36, i32 noundef %conv39) #3
  br label %error_restore_rate

error_restore_rate:                               ; preds = %error_stop_i2c, %if.end22.error_restore_rate_crit_edge, %if.end.error_restore_rate_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end.error_restore_rate_crit_edge ], [ %call19, %error_stop_i2c ], [ %call29, %if.end22.error_restore_rate_crit_edge ]
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv44 = zext i8 %44 to i32
  %divider46 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %divider46 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %divider46, align 1
  %conv47 = zext i8 %46 to i32
  %call48 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef %conv44, i32 noundef %conv47) #3
  br label %cleanup

cleanup:                                          ; preds = %error_restore_rate, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_restore_rate ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_aux_write(ptr nocapture noundef readonly %st, i8 noundef zeroext %addr, i8 noundef zeroext %reg, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #3
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !9
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %conv = zext i8 %addr to i32
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 37, i32 noundef %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %conv2 = zext i8 %reg to i32
  %call3 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 38, i32 noundef %conv2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %conv8 = zext i8 %val to i32
  %call9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 99, i32 noundef %conv8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 39, i32 noundef 129) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call fastcc i32 @inv_mpu_i2c_master_xfer(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.error_disable_i2c_crit_edge

if.end17.error_disable_i2c_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_disable_i2c

if.end21:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 39, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.error_disable_i2c_crit_edge

if.end21.error_disable_i2c_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %error_disable_i2c

if.end26:                                         ; preds = %if.end21
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call28 = call i32 @regmap_read(ptr noundef %12, i32 noundef 54, ptr noundef nonnull %status) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %. = select i1 %tobool32.not, i32 0, i32 -5
  br label %cleanup

error_disable_i2c:                                ; preds = %if.end21.error_disable_i2c_crit_edge, %if.end17.error_disable_i2c_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.error_disable_i2c_crit_edge ], [ %call23, %if.end21.error_disable_i2c_crit_edge ]
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 39, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %error_disable_i2c, %if.end31, %if.end26.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_disable_i2c ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %., %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
