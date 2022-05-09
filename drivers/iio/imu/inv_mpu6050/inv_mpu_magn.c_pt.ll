; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c"
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

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%s\00", [28 x i8] zeroinitializer }, align 32
@switch.table.inv_mpu_magn_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3000, i32 1500, i32 1500], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 296, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [46 x i8] c"../drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 299, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [32 x i8] c"switch.table.inv_mpu_magn_probe\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @switch.table.inv_mpu_magn_probe], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_mpu_magn_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_magn_probe(ptr noundef %st) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %asa.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_type.i, align 16
  %.off.i = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inv_mpu_aux_init(ptr noundef %st) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %asa.i) #4
  %3 = ptrtoint ptr %asa.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %asa.i, align 1, !annotation !13
  %4 = getelementptr inbounds [3 x i8], ptr %asa.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !13
  %6 = getelementptr inbounds [3 x i8], ptr %asa.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !13
  %call.i = call i32 @inv_mpu_aux_read(ptr noundef %st, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull %val.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.inv_magn_init.exit.thread_crit_edge

if.end3.inv_magn_init.exit.thread_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

if.end.i:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 72
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.inv_magn_init.exit.thread_crit_edge

if.end.i.inv_magn_init.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_type.i, align 16
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %switch.i69 = icmp eq i32 %12, 6
  br i1 %switch.i69, label %sw.bb.i, label %if.end3.i.sw.epilog.i_crit_edge

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end3.i
  %call4.i = call i32 @inv_mpu_aux_write(ptr noundef %st, i8 noundef zeroext 12, i8 noundef zeroext 11, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.inv_magn_init.exit.thread_crit_edge

sw.bb.i.inv_magn_init.exit.thread_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %if.end3.i.sw.epilog.i_crit_edge
  %call8.i = call i32 @inv_mpu_aux_write(ptr noundef %st, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %sw.epilog.i.inv_magn_init.exit.thread_crit_edge

sw.epilog.i.inv_magn_init.exit.thread_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

if.end11.i:                                       ; preds = %sw.epilog.i
  %call12.i = call i32 @inv_mpu_aux_read(ptr noundef %st, i8 noundef zeroext 12, i8 noundef zeroext 16, ptr noundef nonnull %asa.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.inv_magn_init.exit.thread_crit_edge

if.end11.i.inv_magn_init.exit.thread_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = call i32 @inv_mpu_aux_write(ptr noundef %st, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.inv_magn_init.exit.thread_crit_edge

if.end15.i.inv_magn_init.exit.thread_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %13 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_type.i, align 16
  %switch.tableidx = add i32 %14, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %if.end19.i.inv_magn_init.exit.thread_crit_edge

if.end19.i.inv_magn_init.exit.thread_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %inv_magn_init.exit.thread

inv_magn_init.exit.thread:                        ; preds = %if.end19.i.inv_magn_init.exit.thread_crit_edge, %if.end15.i.inv_magn_init.exit.thread_crit_edge, %if.end11.i.inv_magn_init.exit.thread_crit_edge, %sw.epilog.i.inv_magn_init.exit.thread_crit_edge, %sw.bb.i.inv_magn_init.exit.thread_crit_edge, %if.end.i.inv_magn_init.exit.thread_crit_edge, %if.end3.inv_magn_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end19.i.inv_magn_init.exit.thread_crit_edge ], [ %call16.i, %if.end15.i.inv_magn_init.exit.thread_crit_edge ], [ %call12.i, %if.end11.i.inv_magn_init.exit.thread_crit_edge ], [ %call8.i, %sw.epilog.i.inv_magn_init.exit.thread_crit_edge ], [ %call4.i, %sw.bb.i.inv_magn_init.exit.thread_crit_edge ], [ -19, %if.end.i.inv_magn_init.exit.thread_crit_edge ], [ %call.i, %if.end3.inv_magn_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %asa.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  br label %cleanup

switch.lookup:                                    ; preds = %if.end19.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.inv_mpu_magn_probe, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = ptrtoint ptr %asa.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %asa.i, align 1
  %conv25.i = zext i8 %18 to i32
  %add.i = add nuw nsw i32 %conv25.i, 128
  %mul.i = mul nuw nsw i32 %add.i, %switch.load
  %div64.i = lshr i32 %mul.i, 8
  %magn_raw_to_gauss.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 20
  %19 = ptrtoint ptr %magn_raw_to_gauss.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div64.i, ptr %magn_raw_to_gauss.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %conv28.i = zext i8 %21 to i32
  %add29.i = add nuw nsw i32 %conv28.i, 128
  %mul30.i = mul nuw nsw i32 %add29.i, %switch.load
  %div3165.i = lshr i32 %mul30.i, 8
  %arrayidx33.i = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div3165.i, ptr %arrayidx33.i, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %6, align 1
  %conv35.i = zext i8 %24 to i32
  %add36.i = add nuw nsw i32 %conv35.i, 128
  %mul37.i = mul nuw nsw i32 %add36.i, %switch.load
  %div3866.i = lshr i32 %mul37.i, 8
  %arrayidx40.i = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 20, i32 2
  %25 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div3866.i, ptr %arrayidx40.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %asa.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call8 = call i32 @regmap_write(ptr noundef %27, i32 noundef 37, i32 noundef 140) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %switch.lookup
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 4
  %call13 = call i32 @regmap_write(ptr noundef %29, i32 noundef 38, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %call18 = call i32 @regmap_write(ptr noundef %31, i32 noundef 39, i32 noundef 215) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 4
  %call23 = call i32 @regmap_write(ptr noundef %33, i32 noundef 40, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %call28 = call i32 @regmap_write(ptr noundef %35, i32 noundef 41, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %36 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_type.i, align 16
  %38 = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %switch = icmp eq i32 %38, 6
  %spec.select = select i1 %switch, i32 17, i32 1
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %call35 = call i32 @regmap_write(ptr noundef %40, i32 noundef 100, i32 noundef %spec.select) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %call40 = call i32 @regmap_write(ptr noundef %42, i32 noundef 42, i32 noundef 129) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %inv_magn_init.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call8, %switch.lookup.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ %retval.0.i.ph, %inv_magn_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_aux_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_magn_set_rate(ptr nocapture noundef readonly %st, i32 noundef %fifo_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %0 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_type.i, align 16
  %.off.i = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %fifo_rate)
  %cmp = icmp sgt i32 %fifo_rate, 50
  %div = sdiv i32 %fifo_rate, 50
  %sub = add nsw i32 %div, 255
  %phi.cast = and i32 %sub, 255
  %d.0 = select i1 %cmp, i32 %phi.cast, i32 0
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 52, i32 noundef %d.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_magn_set_orient(ptr nocapture noundef %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #4
  %chip_type = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %2 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_type, align 16
  %.off = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %orientation = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9
  %arrayidx = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %magn_orient = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21
  %6 = ptrtoint ptr %magn_orient to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %magn_orient, align 16
  %arrayidx5 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 8
  %arrayidx8 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx8, align 4
  %arrayidx11 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx14, align 8
  %13 = ptrtoint ptr %orientation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %orientation, align 8
  %arrayidx20 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx26, align 16
  %arrayidx29 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 8
  %arrayidx32 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx32, align 4
  %arrayidx35 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx35, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %25)
  %cmp37 = icmp eq i8 %25, 45
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %23, i32 1
  %call39 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %add.ptr, i32 noundef 3264) #4
  br label %if.end45

if.else:                                          ; preds = %sw.bb
  %call40 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(2) @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %23, i32 noundef 3264) #4
  br label %if.end45

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %call, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %23) #4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then41, %if.then
  %str.0 = phi ptr [ %call39, %if.then ], [ %call44, %if.else43 ], [ %call42, %if.then41 ]
  %tobool46.not = icmp eq ptr %str.0, null
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %arrayidx51 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %str.0, ptr %arrayidx51, align 4
  %arrayidx35.1 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx35.1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %30)
  %cmp37.1 = icmp eq i8 %30, 45
  br i1 %cmp37.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %if.end48
  %call40.1 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(2) @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %tobool.not.1 = icmp eq i32 %call40.1, 0
  br i1 %tobool.not.1, label %if.then41.1, label %if.else43.1

if.else43.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  %call44.1 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %call, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %28) #4
  br label %if.end45.1

if.then41.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #6
  %call42.1 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %28, i32 noundef 3264) #4
  br label %if.end45.1

if.then.1:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.1 = getelementptr i8, ptr %28, i32 1
  %call39.1 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %add.ptr.1, i32 noundef 3264) #4
  br label %if.end45.1

if.end45.1:                                       ; preds = %if.then.1, %if.then41.1, %if.else43.1
  %str.0.1 = phi ptr [ %call39.1, %if.then.1 ], [ %call44.1, %if.else43.1 ], [ %call42.1, %if.then41.1 ]
  %tobool46.not.1 = icmp eq ptr %str.0.1, null
  br i1 %tobool46.not.1, label %if.end45.1.cleanup_crit_edge, label %if.end48.1

if.end45.1.cleanup_crit_edge:                     ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48.1:                                       ; preds = %if.end45.1
  %arrayidx51.1 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %str.0.1, ptr %arrayidx51.1, align 4
  %arrayidx35.2 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx35.2, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %35)
  %cmp37.2 = icmp eq i8 %35, 45
  br i1 %cmp37.2, label %if.then.2, label %if.else.2

if.else.2:                                        ; preds = %if.end48.1
  %call40.2 = tail call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(2) @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.2)
  %tobool.not.2 = icmp eq i32 %call40.2, 0
  br i1 %tobool.not.2, label %if.then41.2, label %if.else43.2

if.else43.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  %call44.2 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %call, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %33) #4
  br label %if.end45.2

if.then41.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #6
  %call42.2 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %33, i32 noundef 3264) #4
  br label %if.end45.2

if.then.2:                                        ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.2 = getelementptr i8, ptr %33, i32 1
  %call39.2 = tail call noalias ptr @devm_kstrdup(ptr noundef %call, ptr noundef %add.ptr.2, i32 noundef 3264) #4
  br label %if.end45.2

if.end45.2:                                       ; preds = %if.then.2, %if.then41.2, %if.else43.2
  %str.0.2 = phi ptr [ %call39.2, %if.then.2 ], [ %call44.2, %if.else43.2 ], [ %call42.2, %if.then41.2 ]
  %tobool46.not.2 = icmp eq ptr %str.0.2, null
  br i1 %tobool46.not.2, label %if.end45.2.cleanup_crit_edge, label %if.end48.2

if.end45.2.cleanup_crit_edge:                     ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48.2:                                       ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx51.2 = getelementptr %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21, i32 0, i32 8
  %36 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %str.0.2, ptr %arrayidx51.2, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %magn_orient52 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 21
  %orientation53 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 9
  %37 = call ptr @memcpy(ptr %magn_orient52, ptr %orientation53, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end48.2, %if.end45.2.cleanup_crit_edge, %if.end45.1.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ -12, %if.end45.cleanup_crit_edge ], [ -12, %if.end45.1.cleanup_crit_edge ], [ -12, %if.end45.2.cleanup_crit_edge ], [ 0, %if.end48.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_magn_read(ptr nocapture noundef readonly %st, i32 noundef %axis, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data, align 2, !annotation !13
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %2 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_type.i, align 16
  %.off.i = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %axis, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.idx.mult = shl i32 %switch.tableidx, 1
  %switch.offset = add i32 %switch.idx.mult, 73
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call4 = call i32 @regmap_read(ptr noundef %6, i32 noundef 54, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %switch.lookup
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call14 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %switch.offset, ptr noundef nonnull %data, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %conv18 = sext i16 %14 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv18, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end17 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %switch.lookup.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_aux_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_aux_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c", i32 296, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c", i32 299, i32 43}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
