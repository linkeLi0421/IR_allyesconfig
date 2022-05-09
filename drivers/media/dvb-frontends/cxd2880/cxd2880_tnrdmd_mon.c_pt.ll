; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }

@rf_lvl_seq = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\80\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"rf_lvl_seq\00", align 1
@___asan_gen_.2 = private constant [60 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 13, i32 17 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rf_lvl_seq], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf_lvl_seq to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %tnr_dmd, ptr noundef %rf_lvl_db) local_unnamed_addr #0 align 64 {
entry:
  %rdata = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdata) #3
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rdata, align 1, !annotation !11
  %1 = getelementptr inbounds [2 x i8], ptr %rdata, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %rf_lvl_db, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %write_reg9 = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_reg9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg9, align 4
  %call11 = tail call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 4
  %write_reg16 = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_reg16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg16, align 4
  %call18 = tail call i32 %16(ptr noundef %14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %write_regs = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_regs, align 4
  %call24 = tail call i32 %20(ptr noundef %18, i32 noundef 0, i8 noundef zeroext 91, ptr noundef nonnull @rf_lvl_seq, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #3
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg29 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg29, align 4
  %call31 = tail call i32 %24(ptr noundef %22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call37 = call i32 %28(ptr noundef %26, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %rdata, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rdata, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool41.not = icmp eq i8 %30, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false42:                                  ; preds = %if.end40
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool45.not = icmp eq i8 %32, 0
  br i1 %tobool45.not, label %if.end47, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false42
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call52 = call i32 %36(ptr noundef %34, i32 noundef 0, i8 noundef zeroext 17, ptr noundef nonnull %rdata, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %37 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rdata, align 1
  %conv57 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv57, 3
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %41 = lshr i8 %40, 5
  %42 = zext i8 %41 to i32
  %or = or i32 %shl, %42
  %call60 = call i32 @cxd2880_convert2s_complement(i32 noundef %or, i32 noundef 11) #3
  %mul = mul i32 %call60, 125
  %43 = ptrtoint ptr %rf_lvl_db to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %rf_lvl_db, align 4
  %44 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io, align 4
  %write_reg62 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write_reg62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg62, align 4
  %call64 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end67:                                         ; preds = %if.end55
  %48 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io, align 4
  %write_reg69 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %write_reg69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg69, align 4
  %call71 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  %rf_lvl_cmpstn = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 9
  %52 = ptrtoint ptr %rf_lvl_cmpstn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rf_lvl_cmpstn, align 4
  %tobool75.not = icmp eq ptr %53, null
  br i1 %tobool75.not, label %if.end74.cleanup_crit_edge, label %if.then76

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %call78 = call i32 %53(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %rf_lvl_db) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end74.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ %call31, %if.end27.cleanup_crit_edge ], [ %call37, %if.end34.cleanup_crit_edge ], [ -22, %lor.lhs.false42.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ %call52, %if.end47.cleanup_crit_edge ], [ %call64, %if.end55.cleanup_crit_edge ], [ %call71, %if.end67.cleanup_crit_edge ], [ %call78, %if.then76 ], [ 0, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdata) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl_sub(ptr noundef readonly %tnr_dmd, ptr noundef %rf_lvl_db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %rf_lvl_db, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %call = tail call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %3, ptr noundef nonnull %rf_lvl_db)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %4(ptr noundef %2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call8 = call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %data, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 2
  %conv = zext i8 %10 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx12 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i16
  %or = or i16 %shl, %conv13
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or, ptr %status, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %data.i, align 2
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end3.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge, label %if.end.i

if.end3.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cxd2880_tnrdmd_mon_internal_cpu_status.exit

if.end.i:                                         ; preds = %if.end3
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %8(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 26) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge

if.end.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cxd2880_tnrdmd_mon_internal_cpu_status.exit

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call8.i = call i32 %12(ptr noundef %10, i32 noundef 0, i8 noundef zeroext 21, ptr noundef nonnull %data.i, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge

if.end5.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cxd2880_tnrdmd_mon_internal_cpu_status.exit

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %14 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx12.i = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %16 to i16
  %or.i = or i16 %shl.i, %conv13.i
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or.i, ptr %status, align 2
  br label %cxd2880_tnrdmd_mon_internal_cpu_status.exit

cxd2880_tnrdmd_mon_internal_cpu_status.exit:      ; preds = %if.end11.i, %if.end5.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge, %if.end.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge, %if.end3.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end11.i ], [ -22, %if.end3.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge ], [ %call.i, %if.end.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge ], [ %call8.i, %if.end5.i.cxd2880_tnrdmd_mon_internal_cpu_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #3
  br label %return

return:                                           ; preds = %cxd2880_tnrdmd_mon_internal_cpu_status.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cxd2880_tnrdmd_mon_internal_cpu_status.exit ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @rf_lvl_seq, !1, !"rf_lvl_seq", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_mon.c", i32 13, i32 17}
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
