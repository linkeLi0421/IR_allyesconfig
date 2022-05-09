; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c"
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
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, i8, i8 }

@ref_dbm_1000 = internal constant { [3 x [5 x i32]], [36 x i8] } { [3 x [5 x i32]] [[5 x i32] [i32 -93000, i32 -91000, i32 -90000, i32 -89000, i32 -88000], [5 x i32] [i32 -87000, i32 -85000, i32 -84000, i32 -83000, i32 -82000], [5 x i32] [i32 -82000, i32 -80000, i32 -78000, i32 -77000, i32 -76000]], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"ref_dbm_1000\00", align 1
@___asan_gen_.4 = private constant [65 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 16, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ref_dbm_1000], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_dbm_1000 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef readonly %tnr_dmd, ptr noundef %sync_stat, ptr noundef writeonly %ts_lock_stat, ptr noundef writeonly %unlock_detected) local_unnamed_addr #0 align 64 {
entry:
  %rdata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata) #4
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rdata, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %sync_stat, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %ts_lock_stat, null
  %or.cond52 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %unlock_detected, null
  %or.cond53 = or i1 %or.cond52, %tobool5.not
  br i1 %or.cond53, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %3 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8.not = icmp eq i32 %4, 1
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call17 = call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rdata, align 1
  %15 = lshr i8 %14, 4
  %.lobit = and i8 %15, 1
  %16 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.lobit, ptr %unlock_detected, align 1
  %17 = and i8 %14, 7
  %18 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sync_stat, align 1
  %19 = lshr i8 %14, 5
  %.lobit51 = and i8 %19, 1
  %20 = ptrtoint ptr %ts_lock_stat to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit51, ptr %ts_lock_stat, align 1
  %21 = load i8, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp32 = icmp eq i8 %21, 7
  %. = select i1 %cmp32, i32 -11, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %., %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef readonly %tnr_dmd, ptr noundef %sync_stat, ptr noundef writeonly %unlock_detected) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %sync_stat, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %unlock_detected, null
  %or.cond10 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond10, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %0 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i) #4
  %4 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rdata.i, align 1
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end5.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge, label %if.end.i

if.end5.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

if.end.i:                                         ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge

if.end.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

if.end7.i:                                        ; preds = %if.end.i
  %sys.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 25
  %7 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8.not.i = icmp eq i32 %8, 1
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge

if.end7.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge

if.end10.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

if.end14.i:                                       ; preds = %if.end10.i
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call17.i = call i32 %16(ptr noundef %14, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge

if.end14.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rdata.i, align 1
  %19 = lshr i8 %18, 4
  %.lobit.i = and i8 %19, 1
  %20 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit.i, ptr %unlock_detected, align 1
  %21 = and i8 %18, 7
  %22 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp32.i = icmp eq i8 %21, 7
  %..i = select i1 %cmp32.i, i32 -11, i32 0
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit:           ; preds = %if.end20.i, %if.end14.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge, %if.end10.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge, %if.end7.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge, %if.end.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge, %if.end5.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end5.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge ], [ -22, %if.end.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge ], [ -22, %if.end7.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge ], [ %call.i, %if.end10.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge ], [ %call17.i, %if.end14.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit_crit_edge ], [ %..i, %if.end20.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %tnr_dmd, ptr noundef %mode, ptr noundef %guard) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %rdata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata) #4
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rdata, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %mode, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %guard, null
  %or.cond80 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond80, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %3 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp6.not = icmp eq i32 %4, 1
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end.i.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %5 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rdata.i.i, align 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8.not.i.i = icmp eq i32 %9, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %10 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %14 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call17.i.i = call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %18 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rdata.i.i, align 1
  %20 = and i8 %19, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp32.i.i = icmp eq i8 %20, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then14

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 6
  br i1 %cmp.not.i, label %if.end21, label %if.end3.i.if.then14_crit_edge

if.end3.i.if.then14_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.then14:                                        ; preds = %if.end3.i.if.then14_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then14_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg, align 4
  %call16 = call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %25 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp17 = icmp eq i32 %26, 1
  br i1 %cmp17, label %if.then18, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tnr_dmd, align 4
  %call19 = call i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %28, ptr noundef nonnull %mode, ptr noundef nonnull %guard)
  br label %cleanup

if.end21:                                         ; preds = %if.end3.i
  %29 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io.i.i, align 4
  %write_reg23 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg23, align 4
  %call25 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %33 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg29 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg29, align 4
  %call31 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %call35 = call i32 %38(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %rdata, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %39 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io.i.i, align 4
  %write_reg44 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg44, align 4
  %call46 = call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool36.not, label %if.end42, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rdata, align 1
  %45 = lshr i8 %44, 2
  %46 = and i8 %45, 3
  %and = zext i8 %46 to i32
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and, ptr %mode, align 4
  %48 = and i8 %44, 3
  %and48 = zext i8 %48 to i32
  %49 = ptrtoint ptr %guard to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and48, ptr %guard, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end32.cleanup_crit_edge, %if.then27, %if.then18, %if.then14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.then27 ], [ 0, %if.end42 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %call19, %if.then18 ], [ %retval.0.i.ph, %if.then14.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset(ptr noundef %tnr_dmd, ptr noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %rdata = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdata) #4
  %0 = getelementptr inbounds [4 x i8], ptr %rdata, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %rdata, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %rdata, i32 0, i32 3
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %3 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rdata, align 4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %6 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.not = icmp eq i32 %7, 1
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %8 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rdata.i.i, align 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %11 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8.not.i.i = icmp eq i32 %12, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %13 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %14, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %17 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call17.i.i = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %21 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rdata.i.i, align 1
  %23 = and i8 %22, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp32.i.i = icmp eq i8 %23, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then12

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 6
  br i1 %cmp.not.i, label %if.end15, label %if.end3.i.if.then12_crit_edge

if.end3.i.if.then12_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end3.i.if.then12_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then12_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %27(ptr noundef %25, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end3.i
  %28 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i.i, align 4
  %write_reg17 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_reg17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg17, align 4
  %call19 = call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %32 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg23 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg23, align 4
  %call25 = call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call29 = call i32 %37(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %rdata, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %38 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i.i, align 4
  %write_reg38 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg38, align 4
  %call40 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool30.not, label %if.end36, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rdata, align 4
  %44 = and i8 %43, 31
  %and = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %and, 24
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %0, align 1
  %conv42 = zext i8 %46 to i32
  %shl43 = shl nuw nsw i32 %conv42, 16
  %or = or i32 %shl, %shl43
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %1, align 2
  %conv45 = zext i8 %48 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %or, %shl46
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  %conv49 = zext i8 %50 to i32
  %or50 = or i32 %or47, %conv49
  %call51 = call i32 @cxd2880_convert2s_complement(i32 noundef %or50, i32 noundef 29) #4
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call51, ptr %offset, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %52 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bandwidth, align 4
  %mul = mul i32 %53, %call51
  %div = udiv i32 %mul, 235
  %mul52 = sub nsw i32 0, %div
  store i32 %mul52, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end26.cleanup_crit_edge, %if.then21, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ %call19, %if.then21 ], [ 0, %if.end36 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset_sub(ptr noundef readonly %tnr_dmd, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %call = tail call i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset(ptr noundef %3, ptr noundef nonnull %offset)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %tnr_dmd, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %rdata = alloca [7 x i8], align 1
  %cell_id_ok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rdata) #4
  %0 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %rdata, i32 0, i32 6
  %6 = call ptr @memset(ptr %rdata, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cell_id_ok) #4
  %7 = ptrtoint ptr %cell_id_ok to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cell_id_ok, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %info, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %10 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp4.not = icmp eq i32 %11, 1
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %12 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rdata.i.i, align 1
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %15 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp8.not.i.i = icmp eq i32 %16, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %17 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %21 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call17.i.i = call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %25 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rdata.i.i, align 1
  %27 = and i8 %26, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp32.i.i = icmp eq i8 %27, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then12

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 6
  br i1 %cmp.not.i, label %if.end19, label %if.end3.i.if.then12_crit_edge

if.end3.i.if.then12_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end3.i.if.then12_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then12_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %32 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp15 = icmp eq i32 %33, 1
  br i1 %cmp15, label %if.then16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tnr_dmd, align 4
  %call17 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %35, ptr noundef nonnull %info)
  br label %cleanup

if.end19:                                         ; preds = %if.end3.i
  %36 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io.i.i, align 4
  %write_reg21 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg21, align 4
  %call23 = call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %40 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg27 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write_reg27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg27, align 4
  %call29 = call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %call33 = call i32 %45(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 41, ptr noundef nonnull %rdata, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %46 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i.i, align 4
  %write_reg42 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_reg42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg42, align 4
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call44 = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %50 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool45.not, label %if.end51, label %if.then46

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg48 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %write_reg48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg48, align 4
  %call50 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %call55 = call i32 %55(ptr noundef %51, i32 noundef 1, i8 noundef zeroext -43, ptr noundef nonnull %cell_id_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  %56 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %io.i.i, align 4
  %write_reg64 = getelementptr inbounds %struct.cxd2880_io, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %write_reg64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_reg64, align 4
  %call66 = call i32 %59(ptr noundef %57, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool56.not, label %if.end62, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rdata, align 1
  %62 = lshr i8 %61, 6
  %63 = zext i8 %62 to i32
  %64 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %info, align 4
  %65 = lshr i8 %61, 3
  %66 = and i8 %65, 7
  %and70 = zext i8 %66 to i32
  %hierarchy = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 1
  %67 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and70, ptr %hierarchy, align 4
  %68 = and i8 %61, 7
  %and73 = zext i8 %68 to i32
  %rate_hp = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 2
  %69 = ptrtoint ptr %rate_hp to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and73, ptr %rate_hp, align 4
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %0, align 1
  %72 = lshr i8 %71, 5
  %73 = zext i8 %72 to i32
  %rate_lp = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 3
  %74 = ptrtoint ptr %rate_lp to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rate_lp, align 4
  %75 = lshr i8 %71, 3
  %76 = and i8 %75, 3
  %and81 = zext i8 %76 to i32
  %guard = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 4
  %77 = ptrtoint ptr %guard to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and81, ptr %guard, align 4
  %78 = lshr i8 %71, 1
  %79 = and i8 %78, 3
  %and85 = zext i8 %79 to i32
  %mode = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 5
  %80 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and85, ptr %mode, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %1, align 1
  %83 = lshr i8 %82, 6
  %fnum = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 6
  %84 = ptrtoint ptr %fnum to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %fnum, align 4
  %85 = and i8 %82, 63
  %length_indicator = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 7
  %86 = ptrtoint ptr %length_indicator to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %length_indicator, align 1
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %2, align 1
  %conv96 = zext i8 %88 to i16
  %shl = shl nuw i16 %conv96, 8
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %3, align 1
  %conv98 = zext i8 %90 to i16
  %or = or i16 %shl, %conv98
  %cell_id = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 8
  %91 = ptrtoint ptr %cell_id to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %or, ptr %cell_id, align 2
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %4, align 1
  %94 = and i8 %93, 63
  %reserved_even = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 10
  %95 = ptrtoint ptr %reserved_even to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %reserved_even, align 1
  %96 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %5, align 1
  %98 = and i8 %97, 63
  %reserved_odd = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 11
  %99 = ptrtoint ptr %reserved_odd to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %reserved_odd, align 2
  %100 = ptrtoint ptr %cell_id_ok to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cell_id_ok, align 1
  %102 = and i8 %101, 1
  %cell_id_ok111 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info, i32 0, i32 9
  %103 = ptrtoint ptr %cell_id_ok111 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %cell_id_ok111, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end51.cleanup_crit_edge, %if.then46, %if.then35, %if.then25, %if.then16, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ %call33, %if.then35 ], [ %call44, %if.then46 ], [ 0, %if.end62 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call17, %if.then16 ], [ %retval.0.i.ph, %if.then12.cleanup_crit_edge ], [ %call55, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cell_id_ok) #4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %pen) local_unnamed_addr #0 align 64 {
entry:
  %rdata = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rdata) #4
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rdata, align 1, !annotation !11
  %1 = getelementptr inbounds [3 x i8], ptr %rdata, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !11
  %3 = getelementptr inbounds [3 x i8], ptr %rdata, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %pen, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %5 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4.not = icmp eq i32 %8, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %9 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7.not = icmp eq i32 %10, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call16 = call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 38, ptr noundef nonnull %rdata, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rdata, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv24 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv24, 8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %conv26 = zext i8 %25 to i32
  %or = or i32 %shl, %conv26
  %26 = ptrtoint ptr %pen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %pen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ -11, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %tnr_dmd, ptr noundef %sense) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %sense, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %3 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp4.not = icmp eq i32 %4, 1
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %5 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rdata.i.i, align 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8.not.i.i = icmp eq i32 %9, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %10 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %14 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call17.i.i = call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %18 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rdata.i.i, align 1
  %20 = and i8 %19, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp32.i.i = icmp eq i8 %20, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then12

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 6
  br i1 %cmp.not.i, label %if.end19, label %if.end3.i.if.then12_crit_edge

if.end3.i.if.then12_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end3.i.if.then12_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then12_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %25 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp15 = icmp eq i32 %26, 1
  br i1 %cmp15, label %if.then16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tnr_dmd, align 4
  %call17 = call i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %28, ptr noundef nonnull %sense)
  br label %cleanup

if.end19:                                         ; preds = %if.end3.i
  %29 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io.i.i, align 4
  %write_reg21 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %write_reg21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg21, align 4
  %call23 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %33 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg27 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg27, align 4
  %call29 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %call33 = call i32 %38(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 28, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %39 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io.i.i, align 4
  %write_reg42 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %write_reg42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg42, align 4
  %call44 = call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool34.not, label %if.end40, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  %45 = and i8 %44, 1
  %46 = zext i8 %45 to i32
  %47 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sense, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end30.cleanup_crit_edge, %if.then25, %if.then16, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ 0, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call17, %if.then16 ], [ %retval.0.i.ph, %if.then12.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef %tnr_dmd, ptr noundef %snr) local_unnamed_addr #0 align 64 {
entry:
  %reg_value = alloca i16, align 2
  %snr_main = alloca i32, align 4
  %snr_sub = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_value) #4
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg_value, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %snr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %snr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1000000, ptr %snr, align 4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %2 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp4.not = icmp eq i32 %5, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %6 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7.not = icmp eq i32 %7, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call = call fastcc i32 @dvbt_read_snr_reg(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %reg_value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_value, align 2
  %conv = zext i16 %9 to i32
  %call16 = call fastcc i32 @dvbt_calc_snr(ptr noundef nonnull %tnr_dmd, i32 noundef %conv, ptr noundef nonnull %snr)
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snr_main) #4
  %10 = ptrtoint ptr %snr_main to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %snr_main, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snr_sub) #4
  %11 = ptrtoint ptr %snr_sub to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %snr_sub, align 4
  %call17 = call i32 @cxd2880_tnrdmd_dvbt_mon_snr_diver(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %snr, ptr noundef nonnull %snr_main, ptr noundef nonnull %snr_sub)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snr_sub) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snr_main) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.then12.cleanup_crit_edge ], [ %call16, %if.end15 ], [ %call17, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_read_snr_reg(ptr noundef %tnr_dmd, ptr noundef writeonly %reg_value) unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %rdata = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdata) #4
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rdata, align 1, !annotation !11
  %1 = getelementptr inbounds [2 x i8], ptr %rdata, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %reg_value, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %3 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rdata.i.i, align 1
  %state.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %sys.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %6 = ptrtoint ptr %sys.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp8.not.i.i = icmp eq i32 %7, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %8 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %12 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call17.i.i = call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %16 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rdata.i.i, align 1
  %18 = and i8 %17, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp32.i.i = icmp eq i8 %18, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then7

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 6
  br i1 %cmp.not.i, label %if.end10, label %if.end3.i.if.then7_crit_edge

if.end3.i.if.then7_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %if.end3.i.if.then7_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then7_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %call9 = call i32 %22(ptr noundef %20, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end3.i
  %23 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i.i, align 4
  %write_reg12 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write_reg12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg12, align 4
  %call14 = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %27 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg18, align 4
  %call20 = call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %call24 = call i32 %32(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 19, ptr noundef nonnull %rdata, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %33 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i.i, align 4
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg33, align 4
  %call35 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool25.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rdata, align 1
  %conv = zext i8 %38 to i16
  %shl = shl nuw i16 %conv, 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %conv37 = zext i8 %40 to i16
  %or = or i16 %shl, %conv37
  %41 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %or, ptr %reg_value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end21.cleanup_crit_edge, %if.then16, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then7 ], [ %call14, %if.then16 ], [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdata) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_calc_snr(ptr noundef readnone %tnr_dmd, i32 noundef %reg_value, ptr noundef writeonly %snr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %snr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_value)
  %cmp = icmp eq i32 %reg_value, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.umin.i32(i32 %reg_value, i32 4996)
  %call = tail call i32 @intlog10(i32 noundef %0) #4
  %sub = sub nuw nsw i32 5350, %0
  %call7 = tail call i32 @intlog10(i32 noundef %sub) #4
  %sub8 = add i32 %call, 839
  %add = sub i32 %sub8, %call7
  %div = sdiv i32 %add, 1678
  %add9 = add nsw i32 %div, 28500
  %1 = ptrtoint ptr %snr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add9, ptr %snr, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -11, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr_diver(ptr noundef %tnr_dmd, ptr noundef writeonly %snr, ptr noundef writeonly %snr_main, ptr noundef %snr_sub) local_unnamed_addr #0 align 64 {
entry:
  %reg_value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_value) #4
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg_value, align 2
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %snr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %snr_main, null
  %or.cond71 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %snr_sub, null
  %or.cond72 = or i1 %or.cond71, %tobool5.not
  br i1 %or.cond72, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %snr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1000000, ptr %snr, align 4
  %2 = ptrtoint ptr %snr_main to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1000000, ptr %snr_main, align 4
  %3 = ptrtoint ptr %snr_sub to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1000000, ptr %snr_sub, align 4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %4 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8.not = icmp eq i32 %7, 2
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp11.not = icmp eq i32 %9, 1
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call = call fastcc i32 @dvbt_read_snr_reg(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %reg_value)
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end13.cleanup_crit_edge [
    i32 0, label %if.end.i
    i32 -11, label %if.then22
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  br i1 %cmp.i, label %if.then18, label %dvbt_calc_snr.exit.thread

dvbt_calc_snr.exit.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = call i16 @llvm.umin.i16(i16 %12, i16 4996)
  %14 = zext i16 %13 to i32
  %call.i = call i32 @intlog10(i32 noundef %14) #4
  %sub.i = sub nuw nsw i32 5350, %14
  %call7.i = call i32 @intlog10(i32 noundef %sub.i) #4
  %sub8.i = add i32 %call.i, 839
  %add.i = sub i32 %sub8.i, %call7.i
  %div.i = sdiv i32 %add.i, 1678
  %add9.i = add nsw i32 %div.i, 28500
  %15 = ptrtoint ptr %snr_main to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add9.i, ptr %snr_main, align 4
  br label %if.end25

if.then18:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %reg_value, align 2
  br label %if.end25

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %reg_value, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then18, %dvbt_calc_snr.exit.thread
  %18 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg_value, align 2
  %conv26 = zext i16 %19 to i32
  %20 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tnr_dmd, align 4
  %call27 = call fastcc i32 @dvbt_read_snr_reg(ptr noundef %21, ptr noundef nonnull %reg_value)
  %22 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call27, label %if.end25.cleanup_crit_edge [
    i32 0, label %if.then29
    i32 -11, label %if.then39
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  %23 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tnr_dmd, align 4
  %25 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %reg_value, align 2
  %conv31 = zext i16 %26 to i32
  %call32 = call fastcc i32 @dvbt_calc_snr(ptr noundef %24, i32 noundef %conv31, ptr noundef nonnull %snr_sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then29.if.end.i77_crit_edge, label %if.then34

if.then29.if.end.i77_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i77

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %reg_value, align 2
  br label %if.end.i77

if.then39:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %reg_value, align 2
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.then39, %if.then34, %if.then29.if.end.i77_crit_edge
  %29 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %reg_value, align 2
  %conv43 = zext i16 %30 to i32
  %add44 = add nuw nsw i32 %conv43, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add44)
  %cmp.i76 = icmp eq i32 %add44, 0
  br i1 %cmp.i76, label %if.end.i77.cleanup_crit_edge, label %if.end3.i85

if.end.i77.cleanup_crit_edge:                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i85:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  %31 = call i32 @llvm.umin.i32(i32 %add44, i32 4996) #4
  %call.i78 = call i32 @intlog10(i32 noundef %31) #4
  %sub.i79 = sub nuw nsw i32 5350, %31
  %call7.i80 = call i32 @intlog10(i32 noundef %sub.i79) #4
  %sub8.i81 = add i32 %call.i78, 839
  %add.i82 = sub i32 %sub8.i81, %call7.i80
  %div.i83 = sdiv i32 %add.i82, 1678
  %add9.i84 = add nsw i32 %div.i83, 28500
  %32 = ptrtoint ptr %snr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add9.i84, ptr %snr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i85, %if.end.i77.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call, %if.end13.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ 0, %if.end3.i85 ], [ -11, %if.end.i77.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset(ptr noundef %tnr_dmd, ptr noundef writeonly %ppm) local_unnamed_addr #0 align 64 {
entry:
  %rdata.i.i = alloca i8, align 1
  %ctl_val_reg = alloca [5 x i8], align 1
  %nominal_rate_reg = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %ctl_val_reg) #4
  %0 = getelementptr inbounds [5 x i8], ptr %ctl_val_reg, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %ctl_val_reg, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %ctl_val_reg, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %ctl_val_reg, i32 0, i32 4
  %4 = call ptr @memset(ptr %ctl_val_reg, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %nominal_rate_reg) #4
  %5 = getelementptr inbounds [5 x i8], ptr %nominal_rate_reg, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %nominal_rate_reg, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %nominal_rate_reg, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i8], ptr %nominal_rate_reg, i32 0, i32 4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ppm, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %9 = call ptr @memset(ptr %nominal_rate_reg, i32 255, i32 5)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not = icmp eq i32 %11, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %12 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4.not = icmp eq i32 %13, 1
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i.i) #4
  %14 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rdata.i.i, align 1
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i.i = icmp eq i32 %16, 2
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %17 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp8.not.i.i = icmp eq i32 %18, 1
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %io.i.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %19 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %20, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %23 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call17.i.i = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %rdata.i.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge

if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %27 = ptrtoint ptr %rdata.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rdata.i.i, align 1
  %29 = and i8 %28, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp32.i.i = icmp eq i8 %29, 7
  br i1 %cmp32.i.i, label %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, label %if.end3.i

if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i

cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i:  ; preds = %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call17.i.i, %if.end14.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ %call.i.i, %if.end10.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end7.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ], [ -11, %if.end20.i.i.cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  br label %if.then12

if.end3.i:                                        ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 6
  br i1 %cmp.not.i, label %if.end15, label %if.end3.i.if.then12_crit_edge

if.end3.i.if.then12_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end3.i.if.then12_crit_edge, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %cxd2880_tnrdmd_dvbt_mon_sync_stat.exit.thread.i ], [ -11, %if.end3.i.if.then12_crit_edge ]
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %33(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end3.i
  %34 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io.i.i, align 4
  %write_reg17 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write_reg17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg17, align 4
  %call19 = call i32 %37(ptr noundef %35, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %38 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg23 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg23, align 4
  %call25 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %call29 = call i32 %43(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 33, ptr noundef nonnull %ctl_val_reg, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %44 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io.i.i, align 4
  %write_reg38 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write_reg38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg38, align 4
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %call40 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %48 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io.i.i, align 4
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg44 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg44, align 4
  %call46 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %call52 = call i32 %53(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %nominal_rate_reg, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %54 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io.i.i, align 4
  %write_reg61 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write_reg61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg61, align 4
  %call63 = call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool53.not, label %if.end59, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end59:                                         ; preds = %if.end47
  %58 = ptrtoint ptr %ctl_val_reg to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ctl_val_reg, align 1
  %60 = and i8 %59, 127
  %61 = ptrtoint ptr %nominal_rate_reg to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nominal_rate_reg, align 1
  %63 = and i8 %62, 127
  %sub = sub nsw i8 %60, %63
  %64 = add i8 %sub, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %64)
  %65 = icmp ult i8 %64, -3
  br i1 %65, label %if.end59.cleanup_crit_edge, label %if.end76

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end76:                                         ; preds = %if.end59
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %0, align 1
  %conv78 = zext i8 %67 to i32
  %shl = shl nuw i32 %conv78, 24
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 1
  %conv80 = zext i8 %69 to i32
  %shl81 = shl nuw nsw i32 %conv80, 16
  %or = or i32 %shl81, %shl
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %2, align 1
  %conv83 = zext i8 %71 to i32
  %shl84 = shl nuw nsw i32 %conv83, 8
  %or85 = or i32 %or, %shl84
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %3, align 1
  %conv87 = zext i8 %73 to i32
  %or88 = or i32 %or85, %conv87
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %5, align 1
  %conv90 = zext i8 %75 to i32
  %shl91 = shl nuw i32 %conv90, 24
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 1
  %conv93 = zext i8 %77 to i32
  %shl94 = shl nuw nsw i32 %conv93, 16
  %or95 = or i32 %shl94, %shl91
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %7, align 1
  %conv97 = zext i8 %79 to i32
  %shl98 = shl nuw nsw i32 %conv97, 8
  %or99 = or i32 %or95, %shl98
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %8, align 1
  %conv101 = zext i8 %81 to i32
  %or102 = or i32 %or99, %conv101
  %shr = lshr i32 %or88, 1
  %shr103 = lshr i32 %or102, 1
  %82 = zext i8 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %sub, label %if.end76.if.end119_crit_edge [
    i8 1, label %if.then107
    i8 -1, label %if.then112
  ]

if.end76.if.end119_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then107:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %add219 = or i32 %shr, -2147483648
  br label %if.end119

if.then112:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %add113218.neg227 = or i32 %shr, -2147483648
  br label %if.end119

if.end119:                                        ; preds = %if.then112, %if.then107, %if.end76.if.end119_crit_edge
  %add219.pn = phi i32 [ %add219, %if.then107 ], [ %add113218.neg227, %if.then112 ], [ %shr, %if.end76.if.end119_crit_edge ]
  %num.0 = sub i32 %add219.pn, %shr103
  %and122 = zext i8 %63 to i32
  %shl123 = shl nuw nsw i32 %and122, 24
  %shl126 = shl nuw nsw i32 %conv90, 16
  %shl130 = shl nuw nsw i32 %conv93, 8
  %or127 = or i32 %shl123, 195312
  %or131 = add nuw i32 %or127, %shl126
  %or134 = add nuw nsw i32 %or131, %conv97
  %add135 = add i32 %or134, %shl130
  %div = sdiv i32 %add135, 390625
  %shr136 = ashr i32 %div, 1
  %div144.neg.lhs.trunc = trunc i32 %shr136 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %cmp137226 = icmp slt i32 %num.0, 0
  %sub145.pn.v.v.v = select i1 %cmp137226, i16 -2, i16 2
  %sub145.pn.v.v = sdiv i16 %div144.neg.lhs.trunc, %sub145.pn.v.v.v
  %sub145.pn.v = sext i16 %sub145.pn.v.v to i32
  %sub145.pn = add i32 %num.0, %sub145.pn.v
  %storemerge = sdiv i32 %sub145.pn, %shr136
  %83 = ptrtoint ptr %ppm to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge, ptr %ppm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end59.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then42, %if.then31, %if.then21, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ %call19, %if.then21 ], [ %call29, %if.then31 ], [ %call40, %if.then42 ], [ 0, %if.end119 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ -11, %if.end59.cleanup_crit_edge ], [ %call52, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nominal_rate_reg) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %ctl_val_reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset_sub(ptr noundef readonly %tnr_dmd, ptr noundef %ppm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ppm, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnr_dmd, align 4
  %call = tail call i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset(ptr noundef %3, ptr noundef nonnull %ppm)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_ssi(ptr noundef %tnr_dmd, ptr noundef writeonly %ssi) local_unnamed_addr #0 align 64 {
entry:
  %tps.i = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %rf_lvl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rf_lvl) #4
  %0 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rf_lvl, align 4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ssi, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %1 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.not = icmp eq i32 %4, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %5 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7.not = icmp eq i32 %6, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %rf_lvl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %7 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rf_lvl, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tps.i) #4
  %9 = call ptr @memset(ptr %tps.i, i32 255, i32 32)
  %call.i = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %tps.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.dvbt_calc_ssi.exit_crit_edge

if.end.i.dvbt_calc_ssi.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %tps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp ugt i32 %11, 2
  br i1 %cmp.i, label %if.end4.i.dvbt_calc_ssi.exit_crit_edge, label %lor.lhs.false5.i

if.end4.i.dvbt_calc_ssi.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

lor.lhs.false5.i:                                 ; preds = %if.end4.i
  %rate_hp.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %tps.i, i32 0, i32 2
  %12 = ptrtoint ptr %rate_hp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_hp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp6.i = icmp ugt i32 %13, 4
  br i1 %cmp6.i, label %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge, label %if.end8.i

lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge:    ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  %arrayidx11.i = getelementptr [3 x [5 x i32]], ptr @ref_dbm_1000, i32 0, i32 %11, i32 %13
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11.i, align 4
  %sub.i = sub i32 %8, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15000, i32 %sub.i)
  %cmp12.i = icmp slt i32 %sub.i, -15000
  br i1 %cmp12.i, label %if.end8.i.cond.end.i_crit_edge, label %if.else.i

if.end8.i.cond.end.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr60.i = trunc i32 %sub.i to i16
  %16 = shl nsw i16 %sub.tr60.i, 1
  %div55.lhs.trunc.i = add nsw i16 %16, 31500
  %div5556.i = udiv i16 %div55.lhs.trunc.i, 3000
  %div55.zext.i = zext i16 %div5556.i to i32
  br label %cond.end.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i)
  %cmp18.i = icmp ult i32 %sub.i, 20000
  br i1 %cmp18.i, label %if.then19.i, label %if.else24.i

if.then19.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul20.i = shl nuw nsw i32 %sub.i, 2
  %add21.i = add nuw nsw i32 %mul20.i, 500
  %div2257.i = udiv i32 %add21.i, 1000
  %add23.i = add nuw nsw i32 %div2257.i, 10
  br label %cond.end.i

if.else24.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35000, i32 %sub.i)
  %cmp25.i = icmp ult i32 %sub.i, 35000
  br i1 %cmp25.i, label %if.then26.i, label %if.else24.i.cond.end.i_crit_edge

if.else24.i.cond.end.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

if.then26.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr.i = trunc i32 %sub.i to i16
  %17 = shl i16 %sub.tr.i, 1
  %div3058.lhs.trunc.i = add i16 %17, 27036
  %div305859.i = udiv i16 %div3058.lhs.trunc.i, 3000
  %narrow.i = add nuw nsw i16 %div305859.i, 90
  %add31.i = zext i16 %narrow.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then26.i, %if.else24.i.cond.end.i_crit_edge, %if.then19.i, %if.then15.i, %if.end8.i.cond.end.i_crit_edge
  %temp_ssi.0.i = phi i32 [ %div55.zext.i, %if.then15.i ], [ %add23.i, %if.then19.i ], [ %add31.i, %if.then26.i ], [ 0, %if.end8.i.cond.end.i_crit_edge ], [ 100, %if.else24.i.cond.end.i_crit_edge ]
  %conv.i = trunc i32 %temp_ssi.0.i to i8
  %18 = ptrtoint ptr %ssi to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %ssi, align 1
  br label %dvbt_calc_ssi.exit

dvbt_calc_ssi.exit:                               ; preds = %cond.end.i, %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge, %if.end4.i.dvbt_calc_ssi.exit_crit_edge, %if.end.i.dvbt_calc_ssi.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.i ], [ %call.i, %if.end.i.dvbt_calc_ssi.exit_crit_edge ], [ -22, %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge ], [ -22, %if.end4.i.dvbt_calc_ssi.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tps.i) #4
  br label %cleanup

cleanup:                                          ; preds = %dvbt_calc_ssi.exit, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %dvbt_calc_ssi.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rf_lvl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_ssi_sub(ptr noundef %tnr_dmd, ptr noundef writeonly %ssi) local_unnamed_addr #0 align 64 {
entry:
  %tps.i = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %rf_lvl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rf_lvl) #4
  %0 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rf_lvl, align 4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ssi, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %1 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.not = icmp eq i32 %4, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %5 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp7.not = icmp eq i32 %6, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %7 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tnr_dmd, align 4
  %call = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %8, ptr noundef nonnull %rf_lvl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf_lvl, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tps.i) #4
  %11 = call ptr @memset(ptr %tps.i, i32 255, i32 32)
  %call.i = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %tps.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.dvbt_calc_ssi.exit_crit_edge

if.end.i.dvbt_calc_ssi.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %tps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp ugt i32 %13, 2
  br i1 %cmp.i, label %if.end4.i.dvbt_calc_ssi.exit_crit_edge, label %lor.lhs.false5.i

if.end4.i.dvbt_calc_ssi.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

lor.lhs.false5.i:                                 ; preds = %if.end4.i
  %rate_hp.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %tps.i, i32 0, i32 2
  %14 = ptrtoint ptr %rate_hp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate_hp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp6.i = icmp ugt i32 %15, 4
  br i1 %cmp6.i, label %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge, label %if.end8.i

lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge:    ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvbt_calc_ssi.exit

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  %arrayidx11.i = getelementptr [3 x [5 x i32]], ptr @ref_dbm_1000, i32 0, i32 %13, i32 %15
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  %sub.i = sub i32 %10, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15000, i32 %sub.i)
  %cmp12.i = icmp slt i32 %sub.i, -15000
  br i1 %cmp12.i, label %if.end8.i.cond.end.i_crit_edge, label %if.else.i

if.end8.i.cond.end.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp14.i = icmp slt i32 %sub.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr60.i = trunc i32 %sub.i to i16
  %18 = shl nsw i16 %sub.tr60.i, 1
  %div55.lhs.trunc.i = add nsw i16 %18, 31500
  %div5556.i = udiv i16 %div55.lhs.trunc.i, 3000
  %div55.zext.i = zext i16 %div5556.i to i32
  br label %cond.end.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i)
  %cmp18.i = icmp ult i32 %sub.i, 20000
  br i1 %cmp18.i, label %if.then19.i, label %if.else24.i

if.then19.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul20.i = shl nuw nsw i32 %sub.i, 2
  %add21.i = add nuw nsw i32 %mul20.i, 500
  %div2257.i = udiv i32 %add21.i, 1000
  %add23.i = add nuw nsw i32 %div2257.i, 10
  br label %cond.end.i

if.else24.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35000, i32 %sub.i)
  %cmp25.i = icmp ult i32 %sub.i, 35000
  br i1 %cmp25.i, label %if.then26.i, label %if.else24.i.cond.end.i_crit_edge

if.else24.i.cond.end.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

if.then26.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr.i = trunc i32 %sub.i to i16
  %19 = shl i16 %sub.tr.i, 1
  %div3058.lhs.trunc.i = add i16 %19, 27036
  %div305859.i = udiv i16 %div3058.lhs.trunc.i, 3000
  %narrow.i = add nuw nsw i16 %div305859.i, 90
  %add31.i = zext i16 %narrow.i to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then26.i, %if.else24.i.cond.end.i_crit_edge, %if.then19.i, %if.then15.i, %if.end8.i.cond.end.i_crit_edge
  %temp_ssi.0.i = phi i32 [ %div55.zext.i, %if.then15.i ], [ %add23.i, %if.then19.i ], [ %add31.i, %if.then26.i ], [ 0, %if.end8.i.cond.end.i_crit_edge ], [ 100, %if.else24.i.cond.end.i_crit_edge ]
  %conv.i = trunc i32 %temp_ssi.0.i to i8
  %20 = ptrtoint ptr %ssi to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %ssi, align 1
  br label %dvbt_calc_ssi.exit

dvbt_calc_ssi.exit:                               ; preds = %cond.end.i, %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge, %if.end4.i.dvbt_calc_ssi.exit_crit_edge, %if.end.i.dvbt_calc_ssi.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.i ], [ %call.i, %if.end.i.dvbt_calc_ssi.exit_crit_edge ], [ -22, %lor.lhs.false5.i.dvbt_calc_ssi.exit_crit_edge ], [ -22, %if.end4.i.dvbt_calc_ssi.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tps.i) #4
  br label %cleanup

cleanup:                                          ; preds = %dvbt_calc_ssi.exit, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %dvbt_calc_ssi.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rf_lvl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ref_dbm_1000, !1, !"ref_dbm_1000", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c", i32 16, i32 18}
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
