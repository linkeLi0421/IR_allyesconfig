; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c"
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
%struct.cxd2880_dvbt2_l1pre = type { i32, i8, i32, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i16, i8, i16, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.cxd2880_dvbt2_ofdm = type { i8, i8, i32, i32, i32, i8, i32, i16 }
%struct.cxd2880_dvbt2_plp = type { i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i32, i16, i8, i8, i8, i8, i8, i16, i32, i8, i8 }
%struct.cxd2880_dvbt2_l1post = type { i16, i8, i8, i8, i8, i32, i8, i32, i8 }
%struct.cxd2880_dvbt2_bbheader = type { i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i32 }

@ref_dbm_1000 = internal constant { [4 x [8 x i32]], [32 x i8] } { [4 x [8 x i32]] [[8 x i32] [i32 -96000, i32 -95000, i32 -94000, i32 -93000, i32 -92000, i32 -92000, i32 -98000, i32 -97000], [8 x i32] [i32 -91000, i32 -89000, i32 -88000, i32 -87000, i32 -86000, i32 -86000, i32 -93000, i32 -92000], [8 x i32] [i32 -86000, i32 -85000, i32 -83000, i32 -82000, i32 -81000, i32 -80000, i32 -89000, i32 -88000], [8 x i32] [i32 -82000, i32 -80000, i32 -78000, i32 -76000, i32 -75000, i32 -74000, i32 -86000, i32 -84000]], [32 x i8] zeroinitializer }, align 32
@switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 4, i32 0, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"ref_dbm_1000\00", align 1
@___asan_gen_.7 = private constant [66 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 16, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [45 x i8] c"switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [47 x i8] c"switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @ref_dbm_1000, ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre, ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_dbm_1000 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef readonly %tnr_dmd, ptr noundef %sync_stat, ptr noundef writeonly %ts_lock_stat, ptr noundef writeonly %unlock_detected) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %sync_stat, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %ts_lock_stat, null
  %or.cond51 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %unlock_detected, null
  %or.cond52 = or i1 %or.cond51, %tobool5.not
  br i1 %or.cond52, label %entry.cleanup_crit_edge, label %if.end

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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp8.not = icmp eq i32 %4, 2
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
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
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
  %call17 = call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = and i8 %14, 7
  %16 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %sync_stat, align 1
  %17 = lshr i8 %14, 5
  %.lobit = and i8 %17, 1
  %18 = ptrtoint ptr %ts_lock_stat to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.lobit, ptr %ts_lock_stat, align 1
  %19 = lshr i8 %14, 4
  %.lobit50 = and i8 %19, 1
  %20 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit50, ptr %unlock_detected, align 1
  %21 = load i8, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp32 = icmp eq i8 %21, 7
  %. = select i1 %cmp32, i32 -11, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %., %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef readonly %tnr_dmd, ptr noundef %sync_stat, ptr noundef writeonly %unlock_detected) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end5.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge, label %if.end.i

if.end5.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

if.end.i:                                         ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge

if.end.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

if.end7.i:                                        ; preds = %if.end.i
  %sys.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 25
  %7 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp8.not.i = icmp eq i32 %8, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge

if.end7.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge

if.end10.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

if.end14.i:                                       ; preds = %if.end10.i
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call17.i = call i32 %16(ptr noundef %14, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge

if.end14.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.i, align 1
  %19 = and i8 %18, 7
  %20 = ptrtoint ptr %sync_stat to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %sync_stat, align 1
  %21 = lshr i8 %18, 4
  %.lobit50.i = and i8 %21, 1
  %22 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.lobit50.i, ptr %unlock_detected, align 1
  %23 = load i8, ptr %sync_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp32.i = icmp eq i8 %23, 7
  %..i = select i1 %cmp32.i, i32 -11, i32 0
  br label %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit

cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit:          ; preds = %if.end20.i, %if.end14.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge, %if.end10.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge, %if.end7.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge, %if.end.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge, %if.end5.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end5.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge ], [ -22, %if.end.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge ], [ -22, %if.end7.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge ], [ %call.i, %if.end10.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge ], [ %call17.i, %if.end14.i.cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit_crit_edge ], [ %..i, %if.end20.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cxd2880_tnrdmd_dvbt2_mon_sync_stat.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset(ptr noundef %tnr_dmd, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.not = icmp eq i32 %7, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp8.not.i = icmp eq i32 %12, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then12_crit_edge

if.end7.i.if.then12_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %16(ptr noundef %14, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then12_crit_edge

if.end10.i.if.then12_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end14.i:                                       ; preds = %if.end10.i
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call17.i = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then12_crit_edge

if.end14.i.if.then12_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end20.i:                                       ; preds = %if.end14.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %23 = and i8 %22, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp32.i = icmp eq i8 %23, 7
  br i1 %cmp32.i, label %if.end20.i.if.then12_crit_edge, label %if.end15

if.end20.i.if.then12_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end20.i.if.then12_crit_edge, %if.end14.i.if.then12_crit_edge, %if.end10.i.if.then12_crit_edge, %if.end7.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then12_crit_edge ], [ %call.i, %if.end10.i.if.then12_crit_edge ], [ -22, %if.end7.i.if.then12_crit_edge ], [ -22, %if.end.i.if.then12_crit_edge ], [ -11, %if.end20.i.if.then12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
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

if.end15:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp16.not = icmp eq i8 %23, 6
  %28 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i, align 4
  %write_reg25 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_reg25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg25, align 4
  br i1 %cmp16.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call27 = call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %32 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io.i, align 4
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg31 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg31, align 4
  %call33 = call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call37 = call i32 %37(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 48, ptr noundef nonnull %data, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %38 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i, align 4
  %write_reg46 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg46, align 4
  %call48 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool38.not, label %if.end44, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data, align 4
  %44 = and i8 %43, 15
  %and = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %and, 24
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %0, align 1
  %conv51 = zext i8 %46 to i32
  %shl52 = shl nuw nsw i32 %conv51, 16
  %or = or i32 %shl, %shl52
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %1, align 2
  %conv54 = zext i8 %48 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %or, %shl55
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  %conv58 = zext i8 %50 to i32
  %or59 = or i32 %or56, %conv58
  %call60 = call i32 @cxd2880_convert2s_complement(i32 noundef %or59, i32 noundef 28) #4
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call60, ptr %offset, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 26
  %52 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bandwidth, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %if.end44.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %if.end44.sw.bb61_crit_edge
    i32 6, label %if.end44.sw.bb61_crit_edge108
    i32 7, label %if.end44.sw.bb61_crit_edge109
    i32 8, label %if.end44.sw.bb61_crit_edge110
  ]

if.end44.sw.bb61_crit_edge110:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

if.end44.sw.bb61_crit_edge109:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

if.end44.sw.bb61_crit_edge108:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

if.end44.sw.bb61_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %div.neg = sdiv i32 %call60, -582
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end44.sw.bb61_crit_edge, %if.end44.sw.bb61_crit_edge108, %if.end44.sw.bb61_crit_edge109, %if.end44.sw.bb61_crit_edge110
  %mul63 = mul i32 %53, %call60
  %div64 = udiv i32 %mul63, 940
  %mul65 = sub nsw i32 0, %div64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb61, %sw.bb
  %storemerge = phi i32 [ %mul65, %sw.bb61 ], [ %div.neg, %sw.bb ]
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end44.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then29, %if.then18, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ -11, %if.then18 ], [ %call27, %if.then29 ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ -22, %if.end44.cleanup_crit_edge ], [ %call37, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset_sub(ptr noundef readonly %tnr_dmd, ptr noundef %offset) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset(ptr noundef %3, ptr noundef nonnull %offset)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %tnr_dmd, ptr noundef %l1_pre) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [37 x i8], align 1
  %sync_state = alloca i8, align 1
  %unlock_detected = alloca i8, align 1
  %profile = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %data) #4
  %0 = call ptr @memset(ptr %data, i32 255, i32 37)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %profile) #4
  %1 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %profile, align 4, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %l1_pre, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not = icmp eq i32 %7, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp8.not.i = icmp eq i32 %12, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then15_crit_edge

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %16(ptr noundef %14, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then15_crit_edge

if.end10.i.if.then15_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end14.i:                                       ; preds = %if.end10.i
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call17.i = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then15_crit_edge

if.end14.i.if.then15_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i:                                       ; preds = %if.end14.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %23 = and i8 %22, 7
  %24 = ptrtoint ptr %sync_state to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sync_state, align 1
  %25 = lshr i8 %22, 4
  %.lobit50.i = and i8 %25, 1
  %26 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.lobit50.i, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp32.i = icmp eq i8 %23, 7
  br i1 %cmp32.i, label %if.end20.i.if.then15_crit_edge, label %if.end18

if.end20.i.if.then15_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end20.i.if.then15_crit_edge, %if.end14.i.if.then15_crit_edge, %if.end10.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then15_crit_edge ], [ %call.i, %if.end10.i.if.then15_crit_edge ], [ -22, %if.end7.i.if.then15_crit_edge ], [ -22, %if.end.i.if.then15_crit_edge ], [ -11, %if.end20.i.if.then15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %31 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp19 = icmp ult i8 %32, 5
  br i1 %cmp19, label %if.then21, label %if.end18.if.end48_crit_edge

if.end18.if.end48_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then21:                                        ; preds = %if.end18
  %33 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp23 = icmp eq i32 %34, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  %call26 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_state, ptr noundef nonnull %unlock_detected)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io.i, align 4
  %write_reg30 = getelementptr inbounds %struct.cxd2880_io, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_reg30, align 4
  %call32 = call i32 %38(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end33:                                         ; preds = %if.then25
  %39 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp35 = icmp ult i8 %40, 5
  br i1 %cmp35, label %if.then37, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io.i, align 4
  %write_reg39 = getelementptr inbounds %struct.cxd2880_io, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %write_reg39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg39, align 4
  %call41 = call i32 %44(ptr noundef %42, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io.i, align 4
  %write_reg44 = getelementptr inbounds %struct.cxd2880_io, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg44, align 4
  %call46 = call i32 %48(ptr noundef %46, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end33.if.end48_crit_edge, %if.end18.if.end48_crit_edge
  %call49 = call i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %profile)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  %49 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io.i, align 4
  %write_reg58 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_reg58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg58, align 4
  br i1 %tobool50.not, label %if.end56, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %call55 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %call60 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %53 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io.i, align 4
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg64 = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_reg64 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg64, align 4
  %call66 = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end67:                                         ; preds = %if.end56
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %call70 = call i32 %58(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 97, ptr noundef nonnull %data, i32 noundef 37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  %59 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io.i, align 4
  %write_reg79 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %write_reg79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg79, align 4
  %call81 = call i32 %62(ptr noundef %60, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool71.not, label %if.end77, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end67
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %data, align 1
  %conv82 = zext i8 %64 to i32
  %65 = ptrtoint ptr %l1_pre to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv82, ptr %l1_pre, align 4
  %arrayidx83 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx83, align 1
  %68 = and i8 %67, 1
  %bw_ext = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 1
  %69 = ptrtoint ptr %bw_ext to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %bw_ext, align 4
  %arrayidx86 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx86, align 1
  %72 = and i8 %71, 7
  %and88 = zext i8 %72 to i32
  %s1 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 2
  %73 = ptrtoint ptr %s1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and88, ptr %s1, align 4
  %arrayidx89 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx89, align 1
  %76 = and i8 %75, 15
  %s2 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 3
  %77 = ptrtoint ptr %s2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %s2, align 4
  %arrayidx93 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx93, align 1
  %80 = and i8 %79, 1
  %l1_rep = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 6
  %81 = ptrtoint ptr %l1_rep to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %l1_rep, align 4
  %arrayidx97 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 5
  %82 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx97, align 1
  %84 = and i8 %83, 7
  %and99 = zext i8 %84 to i32
  %gi = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 7
  %85 = ptrtoint ptr %gi to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and99, ptr %gi, align 4
  %arrayidx100 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 6
  %86 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx100, align 1
  %88 = and i8 %87, 15
  %and102 = zext i8 %88 to i32
  %papr = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 8
  %89 = ptrtoint ptr %papr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and102, ptr %papr, align 4
  %arrayidx103 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx103, align 1
  %92 = and i8 %91, 15
  %and105 = zext i8 %92 to i32
  %mod = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 9
  %93 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and105, ptr %mod, align 4
  %arrayidx106 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 8
  %94 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx106, align 1
  %96 = and i8 %95, 3
  %and108 = zext i8 %96 to i32
  %cr = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 10
  %97 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and108, ptr %cr, align 4
  %arrayidx109 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 9
  %98 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx109, align 1
  %100 = and i8 %99, 3
  %and111 = zext i8 %100 to i32
  %fec = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 11
  %101 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and111, ptr %fec, align 4
  %arrayidx112 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 10
  %102 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx112, align 1
  %104 = and i8 %103, 3
  %and114 = zext i8 %104 to i32
  %shl = shl nuw nsw i32 %and114, 16
  %l1_post_size = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 12
  %arrayidx115 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 11
  %105 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %106 to i32
  %shl117 = shl nuw nsw i32 %conv116, 8
  %or = or i32 %shl117, %shl
  %arrayidx119 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 12
  %107 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %108 to i32
  %or122 = or i32 %or, %conv120
  %109 = ptrtoint ptr %l1_post_size to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or122, ptr %l1_post_size, align 4
  %arrayidx123 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 13
  %110 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx123, align 1
  %112 = and i8 %111, 3
  %and125 = zext i8 %112 to i32
  %shl126 = shl nuw nsw i32 %and125, 16
  %l1_post_info_size = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 13
  %arrayidx127 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 14
  %113 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %114 to i32
  %shl129 = shl nuw nsw i32 %conv128, 8
  %or131 = or i32 %shl129, %shl126
  %arrayidx132 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 15
  %115 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %116 to i32
  %or135 = or i32 %or131, %conv133
  %117 = ptrtoint ptr %l1_post_info_size to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or135, ptr %l1_post_info_size, align 4
  %arrayidx136 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 16
  %118 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx136, align 1
  %120 = and i8 %119, 15
  %and138 = zext i8 %120 to i32
  %pp = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 14
  %121 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and138, ptr %pp, align 4
  %arrayidx139 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 17
  %122 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx139, align 1
  %tx_id_availability = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 15
  %124 = ptrtoint ptr %tx_id_availability to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %tx_id_availability, align 4
  %arrayidx140 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 18
  %125 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %126 to i16
  %shl142 = shl nuw i16 %conv141, 8
  %cell_id = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 16
  %arrayidx144 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 19
  %127 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %128 to i16
  %or148 = or i16 %shl142, %conv145
  %129 = ptrtoint ptr %cell_id to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %or148, ptr %cell_id, align 2
  %arrayidx150 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 20
  %130 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %131 to i16
  %shl152 = shl nuw i16 %conv151, 8
  %network_id = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 17
  %arrayidx154 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 21
  %132 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %133 to i16
  %or158 = or i16 %shl152, %conv155
  %134 = ptrtoint ptr %network_id to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %or158, ptr %network_id, align 4
  %arrayidx160 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 22
  %135 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %136 to i16
  %shl162 = shl nuw i16 %conv161, 8
  %sys_id = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 18
  %arrayidx164 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 23
  %137 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %138 to i16
  %or168 = or i16 %shl162, %conv165
  %139 = ptrtoint ptr %sys_id to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %or168, ptr %sys_id, align 2
  %arrayidx170 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 24
  %140 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx170, align 1
  %num_frames = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 19
  %142 = ptrtoint ptr %num_frames to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %num_frames, align 4
  %arrayidx171 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 25
  %143 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx171, align 1
  %145 = and i8 %144, 15
  %and173 = zext i8 %145 to i16
  %shl174 = shl nuw nsw i16 %and173, 8
  %num_symbols = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 20
  %arrayidx176 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 26
  %146 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %147 to i16
  %or180 = or i16 %shl174, %conv177
  %148 = ptrtoint ptr %num_symbols to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %or180, ptr %num_symbols, align 2
  %arrayidx182 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 27
  %149 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx182, align 1
  %151 = and i8 %150, 7
  %regen = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 21
  %152 = ptrtoint ptr %regen to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %regen, align 4
  %arrayidx186 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 28
  %153 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx186, align 1
  %155 = and i8 %154, 1
  %post_ext = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 22
  %156 = ptrtoint ptr %post_ext to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %post_ext, align 1
  %arrayidx190 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 29
  %157 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx190, align 1
  %159 = and i8 %158, 7
  %num_rf_freqs = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 23
  %160 = ptrtoint ptr %num_rf_freqs to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %num_rf_freqs, align 2
  %arrayidx194 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 30
  %161 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx194, align 1
  %163 = and i8 %162, 7
  %rf_idx = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 24
  %164 = ptrtoint ptr %rf_idx to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %rf_idx, align 1
  %arrayidx198 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 31
  %165 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx198, align 1
  %167 = shl i8 %166, 2
  %168 = and i8 %167, 12
  %arrayidx203 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 32
  %169 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx203, align 1
  %171 = lshr i8 %170, 6
  %or207376 = or i8 %168, %171
  %conv209 = zext i8 %or207376 to i32
  %t2_version = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 25
  %172 = ptrtoint ptr %t2_version to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv209, ptr %t2_version, align 4
  %173 = lshr i8 %170, 5
  %174 = and i8 %173, 1
  %l1_post_scrambled = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 26
  %175 = ptrtoint ptr %l1_post_scrambled to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %l1_post_scrambled, align 4
  %176 = lshr i8 %170, 4
  %177 = and i8 %176, 1
  %t2_base_lite = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 27
  %178 = ptrtoint ptr %t2_base_lite to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %t2_base_lite, align 1
  %arrayidx220 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 33
  %179 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx220, align 1
  %conv221 = zext i8 %180 to i32
  %shl222 = shl nuw i32 %conv221, 24
  %crc32 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 28
  %arrayidx223 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 34
  %181 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx223, align 1
  %conv224 = zext i8 %182 to i32
  %shl225 = shl nuw nsw i32 %conv224, 16
  %or227 = or i32 %shl225, %shl222
  %arrayidx228 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 35
  %183 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %184 to i32
  %shl230 = shl nuw nsw i32 %conv229, 8
  %or232 = or i32 %shl230, %or227
  %arrayidx233 = getelementptr inbounds [37 x i8], ptr %data, i32 0, i32 36
  %185 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %186 to i32
  %or236 = or i32 %or232, %conv234
  %187 = ptrtoint ptr %crc32 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or236, ptr %crc32, align 4
  %188 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %profile, align 4
  %190 = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %189, label %if.end77.cleanup_crit_edge [
    i32 0, label %if.then239
    i32 1, label %if.then256
  ]

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then239:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %191 = lshr i8 %76, 1
  %192 = zext i8 %191 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre, i32 0, i32 %192
  br label %if.end272

if.then256:                                       ; preds = %if.end77
  %193 = lshr i8 %76, 1
  %194 = zext i8 %193 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %193)
  %.not = icmp eq i8 %193, 7
  br i1 %.not, label %if.then256.cleanup_crit_edge, label %switch.hole_check

if.then256.cleanup_crit_edge:                     ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.then256
  %switch.shifted = lshr i8 95, %193
  %195 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %switch.lobit.not = icmp eq i8 %195, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup381

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup381:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep382 = getelementptr inbounds [7 x i32], ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1, i32 0, i32 %194
  br label %if.end272

if.end272:                                        ; preds = %switch.lookup381, %if.then239
  %switch.gep382.sink = phi ptr [ %switch.gep382, %switch.lookup381 ], [ %switch.gep, %if.then239 ]
  %196 = ptrtoint ptr %switch.gep382.sink to i32
  call void @__asan_load4_noabort(i32 %196)
  %switch.load383 = load i32, ptr %switch.gep382.sink, align 4
  %fft_mode267 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 5
  %197 = ptrtoint ptr %fft_mode267 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %switch.load383, ptr %fft_mode267, align 4
  %198 = ptrtoint ptr %s2 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %s2, align 4
  %200 = and i8 %199, 1
  %mixed = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1_pre, i32 0, i32 4
  %201 = ptrtoint ptr %mixed to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %mixed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end272, %switch.hole_check.cleanup_crit_edge, %if.then256.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then62, %if.then51, %if.else, %if.then37, %if.then28, %if.then15, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then15 ], [ %call26, %if.then28 ], [ -11, %if.then37 ], [ %call49, %if.then51 ], [ %call60, %if.then62 ], [ 0, %if.end272 ], [ -11, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ -11, %if.then256.cleanup_crit_edge ], [ -11, %if.end77.cleanup_crit_edge ], [ %call70, %if.end67.cleanup_crit_edge ], [ -11, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %profile) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef readonly %tnr_dmd, ptr noundef %profile) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %profile, null
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.not = icmp eq i32 %4, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %8(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call13 = call i32 %12(ptr noundef %10, i32 noundef 1, i8 noundef zeroext 34, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.else24, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %and20 = and i32 %conv, 1
  %15 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and20, ptr %profile, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.end16
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %16 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp25 = icmp eq i32 %17, 1
  br i1 %cmp25, label %if.then27, label %if.else24.cleanup_crit_edge

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tnr_dmd, align 4
  %call28 = call i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef %19, ptr noundef nonnull %profile)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.else24.cleanup_crit_edge, %if.then18, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call28, %if.then27 ], [ -11, %if.else24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_version(ptr noundef %tnr_dmd, ptr noundef writeonly %ver) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  %sync_state = alloca i8, align 1
  %unlock_detected = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected) #4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ver, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %3 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp4.not = icmp eq i32 %6, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %7 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp7.not = icmp eq i32 %8, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp8.not.i = icmp eq i32 %13, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then15_crit_edge

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then15_crit_edge

if.end10.i.if.then15_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end14.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call17.i = call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then15_crit_edge

if.end14.i.if.then15_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i:                                       ; preds = %if.end14.i
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i, align 1
  %24 = and i8 %23, 7
  %25 = ptrtoint ptr %sync_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sync_state, align 1
  %26 = lshr i8 %23, 4
  %.lobit50.i = and i8 %26, 1
  %27 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.lobit50.i, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %24)
  %cmp32.i = icmp eq i8 %24, 7
  br i1 %cmp32.i, label %if.end20.i.if.then15_crit_edge, label %if.end18

if.end20.i.if.then15_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end20.i.if.then15_crit_edge, %if.end14.i.if.then15_crit_edge, %if.end10.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then15_crit_edge ], [ %call.i, %if.end10.i.if.then15_crit_edge ], [ -22, %if.end7.i.if.then15_crit_edge ], [ -22, %if.end.i.if.then15_crit_edge ], [ -11, %if.end20.i.if.then15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %31(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %32 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp19 = icmp ult i8 %33, 5
  br i1 %cmp19, label %if.then21, label %if.end18.if.end48_crit_edge

if.end18.if.end48_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then21:                                        ; preds = %if.end18
  %34 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp23 = icmp eq i32 %35, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  %call26 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_state, ptr noundef nonnull %unlock_detected)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io.i, align 4
  %write_reg30 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg30, align 4
  %call32 = call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end33:                                         ; preds = %if.then25
  %40 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %cmp35 = icmp ult i8 %41, 5
  br i1 %cmp35, label %if.then37, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io.i, align 4
  %write_reg39 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_reg39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg39, align 4
  %call41 = call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i, align 4
  %write_reg44 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg44, align 4
  %call46 = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end33.if.end48_crit_edge, %if.end18.if.end48_crit_edge
  %50 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i, align 4
  %write_reg50 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %write_reg50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg50, align 4
  %call52 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %54 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io.i, align 4
  br i1 %tobool53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg56 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write_reg56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg56, align 4
  %call58 = call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %call62 = call i32 %59(ptr noundef %55, i32 noundef 1, i8 noundef zeroext -128, ptr noundef nonnull %data, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  %60 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io.i, align 4
  %write_reg71 = getelementptr inbounds %struct.cxd2880_io, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %write_reg71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_reg71, align 4
  %call73 = call i32 %63(ptr noundef %61, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool63.not, label %if.end69, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %data, align 1
  %66 = shl i8 %65, 2
  %67 = and i8 %66, 12
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 1
  %70 = lshr i8 %69, 6
  %or124 = or i8 %67, %70
  %conv81 = zext i8 %or124 to i32
  %71 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv81, ptr %ver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end59.cleanup_crit_edge, %if.then54, %if.else, %if.then37, %if.then28, %if.then15, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then15 ], [ %call26, %if.then28 ], [ -11, %if.then37 ], [ %call52, %if.then54 ], [ 0, %if.end69 ], [ -11, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef %tnr_dmd, ptr noundef %ofdm) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #4
  %0 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ofdm, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %4 = call ptr @memset(ptr %data, i32 255, i32 5)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %7 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4.not = icmp eq i32 %8, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp8.not.i = icmp eq i32 %13, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then12_crit_edge

if.end7.i.if.then12_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then12_crit_edge

if.end10.i.if.then12_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end14.i:                                       ; preds = %if.end10.i
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call17.i = call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then12_crit_edge

if.end14.i.if.then12_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end20.i:                                       ; preds = %if.end14.i
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i, align 1
  %24 = and i8 %23, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %24)
  %cmp32.i = icmp eq i8 %24, 7
  br i1 %cmp32.i, label %if.end20.i.if.then12_crit_edge, label %if.end15

if.end20.i.if.then12_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end20.i.if.then12_crit_edge, %if.end14.i.if.then12_crit_edge, %if.end10.i.if.then12_crit_edge, %if.end7.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then12_crit_edge ], [ %call.i, %if.end10.i.if.then12_crit_edge ], [ -22, %if.end7.i.if.then12_crit_edge ], [ -22, %if.end.i.if.then12_crit_edge ], [ -11, %if.end20.i.if.then12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp16.not = icmp eq i8 %24, 6
  %29 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io.i, align 4
  %write_reg30 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_reg30, align 4
  br i1 %cmp16.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call22 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %33 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp23 = icmp eq i32 %34, 1
  br i1 %cmp23, label %if.then25, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tnr_dmd, align 4
  %call26 = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef %36, ptr noundef nonnull %ofdm)
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %call32 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %37 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io.i, align 4
  br i1 %tobool33.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg36 = getelementptr inbounds %struct.cxd2880_io, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %write_reg36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg36, align 4
  %call38 = call i32 %40(ptr noundef %38, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %call42 = call i32 %42(ptr noundef %38, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %data, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %43 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io.i, align 4
  %write_reg51 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %write_reg51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_reg51, align 4
  %call53 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool43.not, label %if.end49, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data, align 1
  %49 = lshr i8 %48, 5
  %.lobit = and i8 %49, 1
  %50 = ptrtoint ptr %ofdm to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.lobit, ptr %ofdm, align 4
  %51 = lshr i8 %48, 4
  %52 = and i8 %51, 1
  %is_miso = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 1
  %53 = ptrtoint ptr %is_miso to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %is_miso, align 1
  %54 = and i8 %48, 7
  %and63 = zext i8 %54 to i32
  %mode = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 2
  %55 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and63, ptr %mode, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %0, align 1
  %58 = lshr i8 %57, 4
  %59 = and i8 %58, 7
  %60 = zext i8 %59 to i32
  %gi = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 3
  %61 = ptrtoint ptr %gi to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %gi, align 4
  %62 = and i8 %57, 7
  %and70 = zext i8 %62 to i32
  %pp = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 4
  %63 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and70, ptr %pp, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %1, align 1
  %66 = lshr i8 %65, 4
  %67 = and i8 %66, 1
  %bw_ext = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 5
  %68 = ptrtoint ptr %bw_ext to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %bw_ext, align 4
  %69 = and i8 %65, 15
  %and78 = zext i8 %69 to i32
  %papr = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 6
  %70 = ptrtoint ptr %papr to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and78, ptr %papr, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %2, align 1
  %conv80 = zext i8 %72 to i16
  %shl = shl nuw i16 %conv80, 8
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %3, align 1
  %conv82 = zext i8 %74 to i16
  %or = or i16 %shl, %conv82
  %num_symbols = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %ofdm, i32 0, i32 7
  %75 = ptrtoint ptr %num_symbols to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %or, ptr %num_symbols, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end39.cleanup_crit_edge, %if.then34, %if.then25, %if.then18.cleanup_crit_edge, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ %call32, %if.then34 ], [ 0, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call26, %if.then25 ], [ -11, %if.then18.cleanup_crit_edge ], [ %call42, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plps(ptr noundef %tnr_dmd, ptr noundef %plp_ids, ptr noundef %num_plps) local_unnamed_addr #0 align 64 {
entry:
  %l1_post_ok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %0 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %l1_post_ok, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %num_plps, null
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %10(ptr noundef %8, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call20 = call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %if.end17.cleanup.sink.split.sink.split_crit_edge

if.end17.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end27:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %l1_post_ok, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  br i1 %tobool28.not, label %if.end27.cleanup.sink.split_crit_edge, label %if.end34

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end27
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call38 = call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext -63, ptr noundef nonnull %num_plps, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %if.end34.cleanup.sink.split.sink.split_crit_edge

if.end34.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end45:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %num_plps to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_plps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp47 = icmp eq i8 %23, 0
  br i1 %cmp47, label %if.end45.cleanup.sink.split.sink.split_crit_edge, label %if.end54

if.end45.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end54:                                         ; preds = %if.end45
  %tobool55.not = icmp eq ptr %plp_ids, null
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 4
  br i1 %tobool55.not, label %if.end54.cleanup.sink.split_crit_edge, label %if.end61

if.end54.cleanup.sink.split_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end61:                                         ; preds = %if.end54
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = call i8 @llvm.umin.i8(i8 %23, i8 62)
  %spec.select = zext i8 %28 to i32
  %call69 = call i32 %27(ptr noundef %25, i32 noundef 1, i8 noundef zeroext -62, ptr noundef nonnull %plp_ids, i32 noundef %spec.select) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %if.end61.cleanup.sink.split.sink.split_crit_edge

if.end61.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end76:                                         ; preds = %if.end61
  %29 = ptrtoint ptr %num_plps to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_plps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %30)
  %cmp78 = icmp ugt i8 %30, 62
  br i1 %cmp78, label %if.then80, label %if.end76.if.end104_crit_edge

if.end76.if.end104_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.then80:                                        ; preds = %if.end76
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 4
  %write_reg82 = getelementptr inbounds %struct.cxd2880_io, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %write_reg82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg82, align 4
  %call84 = call i32 %34(ptr noundef %32, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %35 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io, align 4
  br i1 %tobool85.not, label %if.end91, label %if.then80.cleanup.sink.split_crit_edge

if.then80.cleanup.sink.split_crit_edge:           ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end91:                                         ; preds = %if.then80
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add.ptr = getelementptr i8, ptr %plp_ids, i32 62
  %39 = ptrtoint ptr %num_plps to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_plps, align 1
  %conv95 = zext i8 %40 to i32
  %sub = add nsw i32 %conv95, -62
  %call96 = call i32 %38(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 16, ptr noundef %add.ptr, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end91.if.end104_crit_edge, label %if.end91.cleanup.sink.split.sink.split_crit_edge

if.end91.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end91.if.end104_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104

if.end104:                                        ; preds = %if.end91.if.end104_crit_edge, %if.end76.if.end104_crit_edge
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end104, %if.end91.cleanup.sink.split.sink.split_crit_edge, %if.end61.cleanup.sink.split.sink.split_crit_edge, %if.end45.cleanup.sink.split.sink.split_crit_edge, %if.end34.cleanup.sink.split.sink.split_crit_edge, %if.end17.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ 0, %if.end104 ], [ %call20, %if.end17.cleanup.sink.split.sink.split_crit_edge ], [ %call38, %if.end34.cleanup.sink.split.sink.split_crit_edge ], [ -22, %if.end45.cleanup.sink.split.sink.split_crit_edge ], [ %call69, %if.end61.cleanup.sink.split.sink.split_crit_edge ], [ %call96, %if.end91.cleanup.sink.split.sink.split_crit_edge ]
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then80.cleanup.sink.split_crit_edge, %if.end54.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge
  %.sink166 = phi ptr [ %19, %if.end27.cleanup.sink.split_crit_edge ], [ %25, %if.end54.cleanup.sink.split_crit_edge ], [ %36, %if.then80.cleanup.sink.split_crit_edge ], [ %42, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -11, %if.end27.cleanup.sink.split_crit_edge ], [ 0, %if.end54.cleanup.sink.split_crit_edge ], [ %call84, %if.then80.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %write_reg106 = getelementptr inbounds %struct.cxd2880_io, ptr %.sink166, i32 0, i32 2
  %43 = ptrtoint ptr %write_reg106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_reg106, align 4
  %call108 = call i32 %44(ptr noundef %.sink166, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef %tnr_dmd, i32 noundef %type, ptr noundef writeonly %plp_info) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [20 x i8], align 1
  %l1_post_ok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #4
  %0 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 11
  %11 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 12
  %12 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 13
  %13 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 14
  %14 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 15
  %15 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 16
  %16 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 17
  %17 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 18
  %18 = call ptr @memset(ptr %data, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %19 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %l1_post_ok, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %plp_info, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %20 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp4.not = icmp eq i32 %23, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %24 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp7.not = icmp eq i32 %25, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %call14 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg18, align 4
  %call20 = tail call i32 %33(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %call24 = call i32 %35(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg28, align 4
  %call30 = call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %40 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %l1_post_ok, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool32.not = icmp eq i8 %41, 0
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io, align 4
  %write_reg35 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg35, align 4
  %call37 = call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp39 = icmp eq i32 %type, 0
  %. = select i1 %cmp39, i8 -87, i8 -106
  %46 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call45 = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext %., ptr noundef nonnull %data, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  %50 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io, align 4
  %write_reg54 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %write_reg54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_reg54, align 4
  %call56 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool46.not, label %if.end52, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  br i1 %cmp39, label %land.lhs.true, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end52
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool58.not = icmp eq i8 %55, 0
  br i1 %tobool58.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %if.end52.if.end60_crit_edge
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data, align 1
  %58 = ptrtoint ptr %plp_info to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %plp_info, align 4
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %0, align 1
  %61 = and i8 %60, 7
  %and = zext i8 %61 to i32
  %type65 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 1
  %62 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %and, ptr %type65, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %1, align 1
  %65 = and i8 %64, 31
  %and70 = zext i8 %65 to i32
  %payload = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 2
  %66 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and70, ptr %payload, align 4
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %2, align 1
  %69 = and i8 %68, 1
  %ff = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 3
  %70 = ptrtoint ptr %ff to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %ff, align 4
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %3, align 1
  %73 = and i8 %72, 7
  %first_rf_idx = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 4
  %74 = ptrtoint ptr %first_rf_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %first_rf_idx, align 1
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %4, align 1
  %first_frm_idx = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 5
  %77 = ptrtoint ptr %first_frm_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %first_frm_idx, align 2
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %5, align 1
  %group_id = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 6
  %80 = ptrtoint ptr %group_id to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %group_id, align 1
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %6, align 1
  %83 = and i8 %82, 7
  %and93 = zext i8 %83 to i32
  %plp_cr = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 8
  %84 = ptrtoint ptr %plp_cr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and93, ptr %plp_cr, align 4
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %7, align 1
  %87 = and i8 %86, 7
  %and98 = zext i8 %87 to i32
  %constell = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 7
  %88 = ptrtoint ptr %constell to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and98, ptr %constell, align 4
  %89 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %8, align 1
  %91 = and i8 %90, 1
  %rot = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 9
  %92 = ptrtoint ptr %rot to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %rot, align 4
  %93 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %9, align 1
  %95 = and i8 %94, 3
  %and109 = zext i8 %95 to i32
  %fec = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 10
  %96 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and109, ptr %fec, align 4
  %97 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %10, align 1
  %99 = and i8 %98, 3
  %and114 = zext i8 %99 to i16
  %shl = shl nuw nsw i16 %and114, 8
  %num_blocks_max = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 11
  %100 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %11, align 1
  %conv119 = zext i8 %101 to i16
  %or = or i16 %shl, %conv119
  %102 = ptrtoint ptr %num_blocks_max to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %or, ptr %num_blocks_max, align 4
  %103 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %12, align 1
  %frm_int = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 12
  %105 = ptrtoint ptr %frm_int to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %frm_int, align 2
  %106 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %13, align 1
  %til_len = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 13
  %108 = ptrtoint ptr %til_len to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %til_len, align 1
  %109 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %14, align 1
  %111 = and i8 %110, 1
  %til_type = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 14
  %112 = ptrtoint ptr %til_type to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %til_type, align 4
  %113 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %15, align 1
  %115 = and i8 %114, 1
  %in_band_a_flag = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 15
  %116 = ptrtoint ptr %in_band_a_flag to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %in_band_a_flag, align 1
  %117 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %16, align 1
  %conv144 = zext i8 %118 to i16
  %shl145 = shl nuw i16 %conv144, 8
  %rsvd = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 17
  %119 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %17, align 1
  %conv150 = zext i8 %120 to i16
  %or153 = or i16 %shl145, %conv150
  %121 = lshr i8 %118, 7
  %in_band_b_flag = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 16
  %122 = ptrtoint ptr %in_band_b_flag to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %in_band_b_flag, align 2
  %123 = lshr i8 %120, 2
  %124 = and i8 %123, 3
  %125 = zext i8 %124 to i32
  %plp_mode = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 18
  %126 = ptrtoint ptr %plp_mode to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %plp_mode, align 4
  %127 = lshr i8 %120, 1
  %conv167 = and i8 %127, 1
  %static_flag = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 19
  %128 = ptrtoint ptr %static_flag to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv167, ptr %static_flag, align 4
  %conv171 = and i8 %120, 1
  %static_padding_flag = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp_info, i32 0, i32 20
  %129 = ptrtoint ptr %static_padding_flag to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv171, ptr %static_padding_flag, align 1
  %130 = lshr i16 %or153, 4
  %131 = and i16 %130, 2047
  %132 = ptrtoint ptr %rsvd to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %rsvd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %land.lhs.true.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33, %if.then26, %if.then16, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call24, %if.then26 ], [ 0, %if.end60 ], [ -11, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ -11, %land.lhs.true.cleanup_crit_edge ], [ %call45, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef %tnr_dmd, ptr noundef writeonly %plp_error) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %plp_error, null
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %call14 = tail call i32 %10(ptr noundef %8, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg18, align 4
  %call20 = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %call24 = call i32 %16(ptr noundef %12, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_reg28, align 4
  %call30 = call i32 %20(ptr noundef %18, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp32 = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 4
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg36 = getelementptr inbounds %struct.cxd2880_io, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %write_reg36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg36, align 4
  %call38 = call i32 %27(ptr noundef %25, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %call43 = call i32 %29(ptr noundef %25, i32 noundef 1, i8 noundef zeroext -64, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 4
  %write_reg52 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write_reg52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_reg52, align 4
  %call54 = call i32 %33(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool44.not, label %if.end50, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data, align 1
  %36 = and i8 %35, 1
  %37 = ptrtoint ptr %plp_error to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %plp_error, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end39.cleanup_crit_edge, %if.then34, %if.then26, %if.then16, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call24, %if.then26 ], [ -11, %if.then34 ], [ 0, %if.end50 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ %call43, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_change(ptr noundef %tnr_dmd, ptr noundef writeonly %l1_change) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca i8, align 1
  %sync_state = alloca i8, align 1
  %unlock_detected = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock_detected) #4
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %l1_change, null
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp8.not.i = icmp eq i32 %11, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then15_crit_edge

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then15_crit_edge

if.end10.i.if.then15_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end14.i:                                       ; preds = %if.end10.i
  %16 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call17.i = call i32 %19(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then15_crit_edge

if.end14.i.if.then15_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i:                                       ; preds = %if.end14.i
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.i, align 1
  %22 = and i8 %21, 7
  %23 = ptrtoint ptr %sync_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %sync_state, align 1
  %24 = lshr i8 %21, 4
  %.lobit50.i = and i8 %24, 1
  %25 = ptrtoint ptr %unlock_detected to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.lobit50.i, ptr %unlock_detected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp32.i = icmp eq i8 %22, 7
  br i1 %cmp32.i, label %if.end20.i.if.then15_crit_edge, label %if.end18

if.end20.i.if.then15_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end20.i.if.then15_crit_edge, %if.end14.i.if.then15_crit_edge, %if.end10.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then15_crit_edge ], [ %call.i, %if.end10.i.if.then15_crit_edge ], [ -22, %if.end7.i.if.then15_crit_edge ], [ -22, %if.end.i.if.then15_crit_edge ], [ -11, %if.end20.i.if.then15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %30 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp19 = icmp ult i8 %31, 5
  br i1 %cmp19, label %if.then21, label %if.end18.if.end48_crit_edge

if.end18.if.end48_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then21:                                        ; preds = %if.end18
  %32 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp23 = icmp eq i32 %33, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  %call26 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %sync_state, ptr noundef nonnull %unlock_detected)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io.i, align 4
  %write_reg30 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg30, align 4
  %call32 = call i32 %37(ptr noundef %35, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end33:                                         ; preds = %if.then25
  %38 = ptrtoint ptr %sync_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sync_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %39)
  %cmp35 = icmp ult i8 %39, 5
  br i1 %cmp35, label %if.then37, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io.i, align 4
  %write_reg39 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write_reg39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg39, align 4
  %call41 = call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io.i, align 4
  %write_reg44 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write_reg44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg44, align 4
  %call46 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end48:                                         ; preds = %if.end33.if.end48_crit_edge, %if.end18.if.end48_crit_edge
  %48 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io.i, align 4
  %write_reg50 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %write_reg50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg50, align 4
  %call52 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %52 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io.i, align 4
  br i1 %tobool53.not, label %if.end59, label %if.then54

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg56 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %write_reg56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg56, align 4
  %call58 = call i32 %55(ptr noundef %53, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %call62 = call i32 %57(ptr noundef %53, i32 noundef 1, i8 noundef zeroext 95, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io.i, align 4
  %write_reg66 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %write_reg66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg66, align 4
  %call68 = call i32 %61(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data, align 1
  %64 = and i8 %63, 1
  %65 = ptrtoint ptr %l1_change to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %l1_change, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool72.not = icmp eq i8 %64, 0
  br i1 %tobool72.not, label %if.end69.if.end96_crit_edge, label %if.then73

if.end69.if.end96_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then73:                                        ; preds = %if.end69
  %66 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io.i, align 4
  %write_reg75 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %write_reg75 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg75, align 4
  %call77 = call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  %70 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %io.i, align 4
  %write_reg86 = getelementptr inbounds %struct.cxd2880_io, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %write_reg86 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg86, align 4
  br i1 %tobool78.not, label %if.end84, label %if.then79

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  %call83 = call i32 %73(ptr noundef %71, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end84:                                         ; preds = %if.then73
  %call88 = call i32 %73(ptr noundef %71, i32 noundef 1, i8 noundef zeroext 22, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end84.if.end96_crit_edge, label %if.then90

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %io.i, align 4
  %write_reg92 = getelementptr inbounds %struct.cxd2880_io, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %write_reg92 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_reg92, align 4
  %call94 = call i32 %77(ptr noundef %75, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end96:                                         ; preds = %if.end84.if.end96_crit_edge, %if.end69.if.end96_crit_edge
  %78 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io.i, align 4
  %write_reg98 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %write_reg98 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_reg98, align 4
  %call100 = call i32 %81(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then90, %if.then79, %if.then64, %if.then54, %if.else, %if.then37, %if.then28, %if.then15, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then15 ], [ %call26, %if.then28 ], [ -11, %if.then37 ], [ %call52, %if.then54 ], [ %call62, %if.then64 ], [ %call77, %if.then79 ], [ %call88, %if.then90 ], [ 0, %if.end96 ], [ -11, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock_detected) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync_state) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %l1_post) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #4
  %0 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 15
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %l1_post, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %15 = call ptr @memset(ptr %data, i32 255, i32 16)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %16 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp4.not = icmp eq i32 %19, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %20 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp7.not = icmp eq i32 %21, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg, align 4
  %call = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call16 = call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %data, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not = icmp eq i8 %32, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  %35 = and i8 %34, 127
  %and25 = zext i8 %35 to i16
  %shl = shl nuw nsw i16 %and25, 8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 1
  %conv28 = zext i8 %37 to i16
  %or = or i16 %shl, %conv28
  %38 = ptrtoint ptr %l1_post to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or, ptr %l1_post, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %num_plps = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 1
  %41 = ptrtoint ptr %num_plps to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %num_plps, align 2
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %3, align 1
  %44 = and i8 %43, 15
  %num_aux = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 2
  %45 = ptrtoint ptr %num_aux to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %num_aux, align 1
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %4, align 1
  %aux_cfg_rfu = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 3
  %48 = ptrtoint ptr %aux_cfg_rfu to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %aux_cfg_rfu, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %5, align 1
  %51 = and i8 %50, 7
  %rf_idx = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 4
  %52 = ptrtoint ptr %rf_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %rf_idx, align 1
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 1
  %conv43 = zext i8 %54 to i32
  %shl44 = shl nuw i32 %conv43, 24
  %freq = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 5
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %7, align 1
  %conv46 = zext i8 %56 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or49 = or i32 %shl47, %shl44
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %8, align 1
  %conv51 = zext i8 %58 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %or54 = or i32 %shl52, %or49
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %9, align 1
  %conv56 = zext i8 %60 to i32
  %or58 = or i32 %or54, %conv56
  %61 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or58, ptr %freq, align 4
  %62 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %10, align 1
  %64 = and i8 %63, 15
  %fef_type = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 6
  %65 = ptrtoint ptr %fef_type to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %fef_type, align 4
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %11, align 1
  %conv64 = zext i8 %67 to i32
  %shl65 = shl nuw nsw i32 %conv64, 16
  %fef_length = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 7
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %12, align 1
  %conv67 = zext i8 %69 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or70 = or i32 %shl68, %shl65
  %70 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %13, align 1
  %conv72 = zext i8 %71 to i32
  %or74 = or i32 %or70, %conv72
  %72 = ptrtoint ptr %fef_length to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or74, ptr %fef_length, align 4
  %73 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %14, align 1
  %fef_intvl = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1_post, i32 0, i32 8
  %75 = ptrtoint ptr %fef_intvl to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %fef_intvl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ -11, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef %tnr_dmd, i32 noundef %type, ptr noundef %bbheader) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [14 x i8], align 1
  %l1_post_ok = alloca i8, align 1
  %data39 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #4
  %0 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 3
  %2 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 4
  %3 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 6
  %5 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 7
  %6 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 8
  %7 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 11
  %8 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 12
  %9 = getelementptr inbounds [14 x i8], ptr %data, i32 0, i32 13
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %bbheader, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %10 = call ptr @memset(ptr %data, i32 255, i32 14)
  br i1 %or.cond, label %entry.cleanup161_crit_edge, label %if.end

entry.cleanup161_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end:                                           ; preds = %entry
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %11 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.end.cleanup161_crit_edge, label %if.end3

if.end.cleanup161_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp4.not = icmp eq i32 %14, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup161_crit_edge

if.end3.cleanup161_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end6:                                          ; preds = %if.end3
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %15 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp7.not = icmp eq i32 %16, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup161_crit_edge

if.end6.cleanup161_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup161_crit_edge

if.end9.cleanup161_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp8.not.i = icmp eq i32 %21, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then15_crit_edge

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %22 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then15_crit_edge

if.end10.i.if.then15_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end14.i:                                       ; preds = %if.end10.i
  %26 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call17.i = call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then15_crit_edge

if.end14.i.if.then15_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i:                                       ; preds = %if.end14.i
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data.i, align 1
  %32 = and i8 %31, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %cmp32.i = icmp eq i8 %32, 7
  br i1 %cmp32.i, label %if.end20.i.if.then15_crit_edge, label %if.end18

if.end20.i.if.then15_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end20.i.if.then15_crit_edge, %if.end14.i.if.then15_crit_edge, %if.end10.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then15_crit_edge ], [ %call.i, %if.end10.i.if.then15_crit_edge ], [ -22, %if.end7.i.if.then15_crit_edge ], [ -22, %if.end.i.if.then15_crit_edge ], [ -11, %if.end20.i.if.then15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup161

if.end18:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %37 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool19.not = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i, align 4
  %write_reg22 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg22, align 4
  br i1 %tobool19.not, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup161

if.end25:                                         ; preds = %if.end18
  %call29 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io.i, align 4
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg33, align 4
  %call35 = call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup161

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp37 = icmp eq i32 %type, 0
  br i1 %cmp37, label %if.then38, label %if.end36.if.end78_crit_edge

if.end36.if.end78_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then38:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %46 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %l1_post_ok, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data39) #4
  %47 = ptrtoint ptr %data39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %data39, align 1, !annotation !11
  %48 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call42 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %if.then38.cleanup.thread.sink.split_crit_edge

if.then38.cleanup.thread.sink.split_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.sink.split

if.end49:                                         ; preds = %if.then38
  %52 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %l1_post_ok, align 1
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool50.not = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io.i, align 4
  br i1 %tobool50.not, label %if.end49.cleanup.thread_crit_edge, label %if.end56

if.end49.cleanup.thread_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end56:                                         ; preds = %if.end49
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call60 = call i32 %58(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %data39, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %if.end56.cleanup.thread.sink.split_crit_edge

if.end56.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.sink.split

if.end67:                                         ; preds = %if.end56
  %59 = ptrtoint ptr %data39 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %data39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp69 = icmp eq i8 %60, 0
  br i1 %cmp69, label %if.end67.cleanup.thread.sink.split_crit_edge, label %cleanup

if.end67.cleanup.thread.sink.split_crit_edge:     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.sink.split

cleanup.thread.sink.split:                        ; preds = %if.end67.cleanup.thread.sink.split_crit_edge, %if.end56.cleanup.thread.sink.split_crit_edge, %if.then38.cleanup.thread.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %call42, %if.then38.cleanup.thread.sink.split_crit_edge ], [ %call60, %if.end56.cleanup.thread.sink.split_crit_edge ], [ -11, %if.end67.cleanup.thread.sink.split_crit_edge ]
  %61 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end49.cleanup.thread_crit_edge
  %.sink234 = phi ptr [ %56, %if.end49.cleanup.thread_crit_edge ], [ %62, %cleanup.thread.sink.split ]
  %retval.0.ph = phi i32 [ -11, %if.end49.cleanup.thread_crit_edge ], [ %retval.0.ph.ph, %cleanup.thread.sink.split ]
  %write_reg46 = getelementptr inbounds %struct.cxd2880_io, ptr %.sink234, i32 0, i32 2
  %63 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg46, align 4
  %call48 = call i32 %64(ptr noundef %.sink234, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data39) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  br label %cleanup161

cleanup:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data39) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  br label %if.end78

if.end78:                                         ; preds = %cleanup, %if.end36.if.end78_crit_edge
  %. = phi i8 [ 81, %cleanup ], [ 66, %if.end36.if.end78_crit_edge ]
  %65 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call86 = call i32 %68(ptr noundef %66, i32 noundef 1, i8 noundef zeroext %., ptr noundef nonnull %data, i32 noundef 14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  %69 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io.i, align 4
  %write_reg95 = getelementptr inbounds %struct.cxd2880_io, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %write_reg95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_reg95, align 4
  %call97 = call i32 %72(ptr noundef %70, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool87.not, label %if.end93, label %if.end78.cleanup161_crit_edge

if.end78.cleanup161_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup161

if.end93:                                         ; preds = %if.end78
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data, align 1
  %75 = lshr i8 %74, 6
  %76 = zext i8 %75 to i32
  %77 = ptrtoint ptr %bbheader to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %bbheader, align 4
  %78 = lshr i8 %74, 5
  %79 = and i8 %78, 1
  %is_single_input_stream = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 1
  %80 = ptrtoint ptr %is_single_input_stream to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %is_single_input_stream, align 4
  %81 = lshr i8 %74, 4
  %82 = and i8 %81, 1
  %is_constant_coding_modulation = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 2
  %83 = ptrtoint ptr %is_constant_coding_modulation to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %is_constant_coding_modulation, align 1
  %84 = lshr i8 %74, 3
  %85 = and i8 %84, 1
  %issy_indicator = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 3
  %86 = ptrtoint ptr %issy_indicator to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %issy_indicator, align 2
  %87 = lshr i8 %74, 2
  %88 = and i8 %87, 1
  %null_packet_deletion = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 4
  %89 = ptrtoint ptr %null_packet_deletion to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %null_packet_deletion, align 1
  %90 = and i8 %74, 3
  %ext = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 5
  %91 = ptrtoint ptr %ext to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %ext, align 4
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %0, align 1
  %input_stream_identifier = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 6
  %94 = ptrtoint ptr %input_stream_identifier to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %input_stream_identifier, align 1
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %1, align 1
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool128.not = icmp eq i8 %97, 0
  %cond = select i1 %tobool128.not, i32 1, i32 2
  %plp_mode = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 11
  %98 = ptrtoint ptr %plp_mode to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %cond, ptr %plp_mode, align 4
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %2, align 1
  %conv130 = zext i8 %100 to i16
  %shl = shl nuw i16 %conv130, 8
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %3, align 1
  %conv132 = zext i8 %102 to i16
  %or = or i16 %shl, %conv132
  %data_field_length = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 8
  %103 = ptrtoint ptr %data_field_length to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %or, ptr %data_field_length, align 4
  br i1 %tobool128.not, label %if.then137, label %if.else146

if.then137:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %4, align 1
  %conv139 = zext i8 %105 to i16
  %shl140 = shl nuw i16 %conv139, 8
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %5, align 1
  %conv142 = zext i8 %107 to i16
  %or143 = or i16 %shl140, %conv142
  %user_packet_length = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 7
  %108 = ptrtoint ptr %user_packet_length to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %or143, ptr %user_packet_length, align 2
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %6, align 1
  %sync_byte = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 9
  %111 = ptrtoint ptr %sync_byte to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %sync_byte, align 2
  %issy = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 10
  %112 = ptrtoint ptr %issy to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %issy, align 4
  br label %cleanup161

if.else146:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  %user_packet_length147 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 7
  %113 = ptrtoint ptr %user_packet_length147 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %user_packet_length147, align 2
  %sync_byte148 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 9
  %114 = ptrtoint ptr %sync_byte148 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %sync_byte148, align 2
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %7, align 1
  %conv150 = zext i8 %116 to i32
  %shl151 = shl nuw nsw i32 %conv150, 16
  %117 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %8, align 1
  %conv153 = zext i8 %118 to i32
  %shl154 = shl nuw nsw i32 %conv153, 8
  %or155 = or i32 %shl154, %shl151
  %119 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %9, align 1
  %conv157 = zext i8 %120 to i32
  %or158 = or i32 %or155, %conv157
  %issy159 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader, i32 0, i32 10
  %121 = ptrtoint ptr %issy159 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or158, ptr %issy159, align 4
  br label %cleanup161

cleanup161:                                       ; preds = %if.else146, %if.then137, %if.end78.cleanup161_crit_edge, %cleanup.thread, %if.then31, %if.then20, %if.then15, %if.end9.cleanup161_crit_edge, %if.end6.cleanup161_crit_edge, %if.end3.cleanup161_crit_edge, %if.end.cleanup161_crit_edge, %entry.cleanup161_crit_edge
  %retval.1 = phi i32 [ %retval.0.i.ph, %if.then15 ], [ %call29, %if.then31 ], [ -11, %if.then20 ], [ -22, %entry.cleanup161_crit_edge ], [ -22, %if.end.cleanup161_crit_edge ], [ -22, %if.end3.cleanup161_crit_edge ], [ -22, %if.end6.cleanup161_crit_edge ], [ %call, %if.end9.cleanup161_crit_edge ], [ 0, %if.else146 ], [ 0, %if.then137 ], [ %retval.0.ph, %cleanup.thread ], [ %call86, %if.end78.cleanup161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_in_bandb_ts_rate(ptr noundef %tnr_dmd, i32 noundef %type, ptr noundef writeonly %ts_rate_bps) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %l1_post_ok = alloca i8, align 1
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %0 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %l1_post_ok, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #4
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ts_rate_bps, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp7.not = icmp eq i32 %10, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then15_crit_edge

if.end.i.if.then15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end7.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8.not.i = icmp eq i32 %15, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then15_crit_edge

if.end7.i.if.then15_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %16 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %19(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then15_crit_edge

if.end10.i.if.then15_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end14.i:                                       ; preds = %if.end10.i
  %20 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call17.i = call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then15_crit_edge

if.end14.i.if.then15_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.end20.i:                                       ; preds = %if.end14.i
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  %26 = and i8 %25, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp32.i = icmp eq i8 %26, 7
  br i1 %cmp32.i, label %if.end20.i.if.then15_crit_edge, label %if.end18

if.end20.i.if.then15_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %if.end20.i.if.then15_crit_edge, %if.end14.i.if.then15_crit_edge, %if.end10.i.if.then15_crit_edge, %if.end7.i.if.then15_crit_edge, %if.end.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then15_crit_edge ], [ %call.i, %if.end10.i.if.then15_crit_edge ], [ -22, %if.end7.i.if.then15_crit_edge ], [ -22, %if.end.i.if.then15_crit_edge ], [ -11, %if.end20.i.if.then15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg, align 4
  %call17 = call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end18:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %31 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool19.not = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io.i, align 4
  %write_reg22 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %write_reg22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_reg22, align 4
  br i1 %tobool19.not, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call29 = call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %36 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io.i, align 4
  br i1 %tobool30.not, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg33 = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg33, align 4
  %call35 = call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %call39 = call i32 %41(ptr noundef %37, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io.i, align 4
  %write_reg43 = getelementptr inbounds %struct.cxd2880_io, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %write_reg43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_reg43, align 4
  %call45 = call i32 %45(ptr noundef %43, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %46 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %l1_post_ok, align 1
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool47.not = icmp eq i8 %48, 0
  br i1 %tobool47.not, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io.i, align 4
  %write_reg50 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_reg50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg50, align 4
  %call52 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp54 = icmp eq i32 %type, 0
  %. = select i1 %cmp54, i8 -70, i8 -89
  %53 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call61 = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext %., ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %if.then63

if.then63:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %io.i, align 4
  %write_reg65 = getelementptr inbounds %struct.cxd2880_io, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %write_reg65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_reg65, align 4
  %call67 = call i32 %60(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end68:                                         ; preds = %if.end53
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %cmp72 = icmp sgt i8 %62, -1
  %63 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io.i, align 4
  %write_reg76 = getelementptr inbounds %struct.cxd2880_io, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %write_reg76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_reg76, align 4
  br i1 %cmp72, label %if.then74, label %if.end79

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %call78 = call i32 %66(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end79:                                         ; preds = %if.end68
  %call83 = call i32 %66(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %if.then85

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io.i, align 4
  %write_reg87 = getelementptr inbounds %struct.cxd2880_io, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %write_reg87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_reg87, align 4
  %call89 = call i32 %70(ptr noundef %68, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end90:                                         ; preds = %if.end79
  %.176 = select i1 %cmp54, i8 -90, i8 -86
  %71 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call100 = call i32 %74(ptr noundef %72, i32 noundef 1, i8 noundef zeroext %.176, ptr noundef nonnull %data, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %if.then102

if.then102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io.i, align 4
  %write_reg104 = getelementptr inbounds %struct.cxd2880_io, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %write_reg104 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_reg104, align 4
  %call106 = call i32 %78(ptr noundef %76, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end107:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %data, align 4
  %81 = and i8 %80, 7
  %and110 = zext i8 %81 to i32
  %shl = shl nuw nsw i32 %and110, 24
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %1, align 1
  %conv112 = zext i8 %83 to i32
  %shl113 = shl nuw nsw i32 %conv112, 16
  %or = or i32 %shl, %shl113
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %2, align 2
  %conv115 = zext i8 %85 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %or117 = or i32 %or, %shl116
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %3, align 1
  %conv119 = zext i8 %87 to i32
  %or120 = or i32 %or117, %conv119
  %88 = ptrtoint ptr %ts_rate_bps to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or120, ptr %ts_rate_bps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.then102, %if.then85, %if.then74, %if.then63, %if.then48, %if.then41, %if.then31, %if.then20, %if.then15, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then15 ], [ %call29, %if.then31 ], [ %call39, %if.then41 ], [ %call61, %if.then63 ], [ -11, %if.then74 ], [ %call83, %if.then85 ], [ %call100, %if.then102 ], [ 0, %if.end107 ], [ -11, %if.then48 ], [ -11, %if.then20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %tnr_dmd, ptr noundef %sense) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp4.not = icmp eq i32 %4, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8.not.i = icmp eq i32 %9, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then12_crit_edge

if.end7.i.if.then12_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %13(ptr noundef %11, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then12_crit_edge

if.end10.i.if.then12_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end14.i:                                       ; preds = %if.end10.i
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call17.i = call i32 %17(ptr noundef %15, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then12_crit_edge

if.end14.i.if.then12_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end20.i:                                       ; preds = %if.end14.i
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 1
  %20 = and i8 %19, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp32.i = icmp eq i8 %20, 7
  br i1 %cmp32.i, label %if.end20.i.if.then12_crit_edge, label %if.end15

if.end20.i.if.then12_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end20.i.if.then12_crit_edge, %if.end14.i.if.then12_crit_edge, %if.end10.i.if.then12_crit_edge, %if.end7.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then12_crit_edge ], [ %call.i, %if.end10.i.if.then12_crit_edge ], [ -22, %if.end7.i.if.then12_crit_edge ], [ -22, %if.end.i.if.then12_crit_edge ], [ -11, %if.end20.i.if.then12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_reg, align 4
  %call14 = call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp16.not = icmp eq i8 %20, 6
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io.i, align 4
  %write_reg30 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_reg30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg30, align 4
  br i1 %cmp16.not, label %if.end28, label %if.then18

if.then18:                                        ; preds = %if.end15
  %call22 = call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %diver_mode = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 3
  %29 = ptrtoint ptr %diver_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %diver_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp23 = icmp eq i32 %30, 1
  br i1 %cmp23, label %if.then25, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tnr_dmd, align 4
  %call26 = call i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %32, ptr noundef nonnull %sense)
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %call32 = call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  br i1 %tobool33.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg36 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg36, align 4
  %call38 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %call42 = call i32 %38(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 47, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %39 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io.i, align 4
  %write_reg51 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %write_reg51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg51, align 4
  %call53 = call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool43.not, label %if.end49, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end39
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

cleanup:                                          ; preds = %if.end49, %if.end39.cleanup_crit_edge, %if.then34, %if.then25, %if.then18.cleanup_crit_edge, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ %call32, %if.then34 ], [ 0, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ %call26, %if.then25 ], [ -11, %if.then18.cleanup_crit_edge ], [ %call42, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef %tnr_dmd, ptr noundef %snr) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not = icmp eq i32 %7, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %call = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %reg_value)
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
  %call16 = call fastcc i32 @dvbt2_calc_snr(ptr noundef nonnull %tnr_dmd, i32 noundef %conv, ptr noundef nonnull %snr)
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
  %call17 = call i32 @cxd2880_tnrdmd_dvbt2_mon_snr_diver(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %snr, ptr noundef nonnull %snr_main, ptr noundef nonnull %snr_sub)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snr_sub) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snr_main) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15, %if.then12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.then12.cleanup_crit_edge ], [ %call16, %if.end15 ], [ %call17, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_value) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_read_snr_reg(ptr noundef %tnr_dmd, ptr noundef writeonly %reg_value) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
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
  br i1 %tobool2.not, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 22
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then7_crit_edge

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end7.i:                                        ; preds = %if.end.i
  %sys.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 25
  %6 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8.not.i = icmp eq i32 %7, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then7_crit_edge

if.end7.i.if.then7_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then7_crit_edge

if.end10.i.if.then7_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end14.i:                                       ; preds = %if.end10.i
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call17.i = call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then7_crit_edge

if.end14.i.if.then7_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.end20.i:                                       ; preds = %if.end14.i
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data.i, align 1
  %18 = and i8 %17, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp32.i = icmp eq i8 %18, 7
  br i1 %cmp32.i, label %if.end20.i.if.then7_crit_edge, label %if.end10

if.end20.i.if.then7_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %if.end20.i.if.then7_crit_edge, %if.end14.i.if.then7_crit_edge, %if.end10.i.if.then7_crit_edge, %if.end7.i.if.then7_crit_edge, %if.end.i.if.then7_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then7_crit_edge ], [ %call.i, %if.end10.i.if.then7_crit_edge ], [ -22, %if.end7.i.if.then7_crit_edge ], [ -22, %if.end.i.if.then7_crit_edge ], [ -11, %if.end20.i.if.then7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
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

if.end10:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp.not = icmp eq i8 %18, 6
  %23 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i, align 4
  %write_reg19 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write_reg19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_reg19, align 4
  br i1 %cmp.not, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call21 = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %27 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io.i, align 4
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg25 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write_reg25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_reg25, align 4
  %call27 = call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %call31 = call i32 %32(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 19, ptr noundef nonnull %data, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  %write_reg40 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg40, align 4
  %call42 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool32.not, label %if.end38, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data, align 1
  %conv43 = zext i8 %38 to i16
  %shl = shl nuw i16 %conv43, 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %conv45 = zext i8 %40 to i16
  %or = or i16 %shl, %conv45
  %41 = ptrtoint ptr %reg_value to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %or, ptr %reg_value, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end28.cleanup_crit_edge, %if.then23, %if.then12, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then7 ], [ -11, %if.then12 ], [ %call21, %if.then23 ], [ 0, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_calc_snr(ptr noundef readnone %tnr_dmd, i32 noundef %reg_value, ptr noundef writeonly %snr) unnamed_addr #0 align 64 {
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
  %0 = tail call i32 @llvm.umin.i32(i32 %reg_value, i32 10876)
  %call = tail call i32 @intlog10(i32 noundef %0) #4
  %sub = sub nuw nsw i32 12600, %0
  %call7 = tail call i32 @intlog10(i32 noundef %sub) #4
  %sub8 = add i32 %call, 839
  %add = sub i32 %sub8, %call7
  %div = sdiv i32 %add, 1678
  %add9 = add nsw i32 %div, 32000
  %1 = ptrtoint ptr %snr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add9, ptr %snr, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -11, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr_diver(ptr noundef %tnr_dmd, ptr noundef writeonly %snr, ptr noundef writeonly %snr_main, ptr noundef %snr_sub) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp11.not = icmp eq i32 %9, 2
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %reg_value)
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
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
  br i1 %cmp.i, label %if.then18, label %dvbt2_calc_snr.exit.thread

dvbt2_calc_snr.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = call i16 @llvm.umin.i16(i16 %12, i16 10876)
  %14 = zext i16 %13 to i32
  %call.i = call i32 @intlog10(i32 noundef %14) #4
  %sub.i = sub nuw nsw i32 12600, %14
  %call7.i = call i32 @intlog10(i32 noundef %sub.i) #4
  %sub8.i = add i32 %call.i, 839
  %add.i = sub i32 %sub8.i, %call7.i
  %div.i = sdiv i32 %add.i, 1678
  %add9.i = add nsw i32 %div.i, 32000
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

if.end25:                                         ; preds = %if.then22, %if.then18, %dvbt2_calc_snr.exit.thread
  %18 = ptrtoint ptr %reg_value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg_value, align 2
  %conv26 = zext i16 %19 to i32
  %20 = ptrtoint ptr %tnr_dmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tnr_dmd, align 4
  %call27 = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef %21, ptr noundef nonnull %reg_value)
  %22 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.4)
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
  %call32 = call fastcc i32 @dvbt2_calc_snr(ptr noundef %24, i32 noundef %conv31, ptr noundef nonnull %snr_sub)
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
  %31 = call i32 @llvm.umin.i32(i32 %add44, i32 10876) #4
  %call.i78 = call i32 @intlog10(i32 noundef %31) #4
  %sub.i79 = sub nuw nsw i32 12600, %31
  %call7.i80 = call i32 @intlog10(i32 noundef %sub.i79) #4
  %sub8.i81 = add i32 %call.i78, 839
  %add.i82 = sub i32 %sub8.i81, %call7.i80
  %div.i83 = sdiv i32 %add.i82, 1678
  %add9.i84 = add nsw i32 %div.i83, 32000
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
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef readonly %tnr_dmd, ptr noundef writeonly %pen) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !11
  %3 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp7.not = icmp eq i32 %10, 2
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
  %call = tail call i32 %14(ptr noundef %12, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
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
  %call16 = call i32 %18(ptr noundef %16, i32 noundef 1, i8 noundef zeroext 57, ptr noundef nonnull %data, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
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
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset(ptr noundef %tnr_dmd, ptr noundef writeonly %ppm) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.not = icmp eq i32 %13, 2
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %data.i, align 1, !annotation !11
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 2
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.if.then12_crit_edge

if.end.i.if.then12_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end7.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8.not.i = icmp eq i32 %18, 2
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.then12_crit_edge

if.end7.i.if.then12_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end10.i:                                       ; preds = %if.end7.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %19 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %22(ptr noundef %20, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.if.then12_crit_edge

if.end10.i.if.then12_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end14.i:                                       ; preds = %if.end10.i
  %23 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call17.i = call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %data.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then12_crit_edge

if.end14.i.if.then12_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end20.i:                                       ; preds = %if.end14.i
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.i, align 1
  %29 = and i8 %28, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp32.i = icmp eq i8 %29, 7
  br i1 %cmp32.i, label %if.end20.i.if.then12_crit_edge, label %if.end15

if.end20.i.if.then12_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.end20.i.if.then12_crit_edge, %if.end14.i.if.then12_crit_edge, %if.end10.i.if.then12_crit_edge, %if.end7.i.if.then12_crit_edge, %if.end.i.if.then12_crit_edge
  %retval.0.i.ph = phi i32 [ %call17.i, %if.end14.i.if.then12_crit_edge ], [ %call.i, %if.end10.i.if.then12_crit_edge ], [ -22, %if.end7.i.if.then12_crit_edge ], [ -22, %if.end.i.if.then12_crit_edge ], [ -11, %if.end20.i.if.then12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
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

if.end15:                                         ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp16.not = icmp eq i8 %29, 6
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io.i, align 4
  %write_reg25 = getelementptr inbounds %struct.cxd2880_io, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write_reg25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg25, align 4
  br i1 %cmp16.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call i32 %37(ptr noundef %35, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call27 = call i32 %37(ptr noundef %35, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %38 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i, align 4
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg31 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write_reg31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_reg31, align 4
  %call33 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %call37 = call i32 %43(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 52, ptr noundef nonnull %ctl_val_reg, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %44 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io.i, align 4
  %write_reg46 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %write_reg46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg46, align 4
  br i1 %tobool38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call48 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %48 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io.i, align 4
  br i1 %tobool49.not, label %if.end55, label %if.then50

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg52 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %write_reg52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_reg52, align 4
  %call54 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end55:                                         ; preds = %if.end44
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %call60 = call i32 %53(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %nominal_rate_reg, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %54 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io.i, align 4
  %write_reg69 = getelementptr inbounds %struct.cxd2880_io, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write_reg69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_reg69, align 4
  %call71 = call i32 %57(ptr noundef %55, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br i1 %tobool61.not, label %if.end67, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end55
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
  br i1 %65, label %if.end67.cleanup_crit_edge, label %if.end85

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end85:                                         ; preds = %if.end67
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %0, align 1
  %conv87 = zext i8 %67 to i32
  %shl = shl nuw i32 %conv87, 24
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 1
  %conv89 = zext i8 %69 to i32
  %shl90 = shl nuw nsw i32 %conv89, 16
  %or = or i32 %shl90, %shl
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %2, align 1
  %conv92 = zext i8 %71 to i32
  %shl93 = shl nuw nsw i32 %conv92, 8
  %or94 = or i32 %or, %shl93
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %3, align 1
  %conv96 = zext i8 %73 to i32
  %or97 = or i32 %or94, %conv96
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %5, align 1
  %conv99 = zext i8 %75 to i32
  %shl100 = shl nuw i32 %conv99, 24
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 1
  %conv102 = zext i8 %77 to i32
  %shl103 = shl nuw nsw i32 %conv102, 16
  %or104 = or i32 %shl103, %shl100
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %7, align 1
  %conv106 = zext i8 %79 to i32
  %shl107 = shl nuw nsw i32 %conv106, 8
  %or108 = or i32 %or104, %shl107
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %8, align 1
  %conv110 = zext i8 %81 to i32
  %or111 = or i32 %or108, %conv110
  %shr = lshr i32 %or97, 1
  %shr112 = lshr i32 %or111, 1
  %82 = zext i8 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %sub, label %if.end85.if.end128_crit_edge [
    i8 1, label %if.then116
    i8 -1, label %if.then121
  ]

if.end85.if.end128_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end128

if.then116:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %add232 = or i32 %shr, -2147483648
  br label %if.end128

if.then121:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %add122231.neg242 = or i32 %shr, -2147483648
  br label %if.end128

if.end128:                                        ; preds = %if.then121, %if.then116, %if.end85.if.end128_crit_edge
  %add232.pn = phi i32 [ %add232, %if.then116 ], [ %add122231.neg242, %if.then121 ], [ %shr, %if.end85.if.end128_crit_edge ]
  %num.0 = sub i32 %add232.pn, %shr112
  %and131 = zext i8 %63 to i32
  %shl132 = shl nuw nsw i32 %and131, 24
  %shl135 = shl nuw nsw i32 %conv99, 16
  %shl139 = shl nuw nsw i32 %conv102, 8
  %or136 = or i32 %shl132, 195312
  %or140 = add nuw i32 %or136, %shl135
  %or143 = add nuw nsw i32 %or140, %conv106
  %add144 = add i32 %or143, %shl139
  %div = sdiv i32 %add144, 390625
  %shr145 = ashr i32 %div, 1
  %div153.neg.lhs.trunc = trunc i32 %shr145 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0)
  %cmp146241 = icmp slt i32 %num.0, 0
  %sub154.pn.v.v.v = select i1 %cmp146241, i16 -2, i16 2
  %sub154.pn.v.v = sdiv i16 %div153.neg.lhs.trunc, %sub154.pn.v.v.v
  %sub154.pn.v = sext i16 %sub154.pn.v.v to i32
  %sub154.pn = add i32 %num.0, %sub154.pn.v
  %storemerge = sdiv i32 %sub154.pn, %shr145
  %83 = ptrtoint ptr %ppm to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge, ptr %ppm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %if.end67.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then50, %if.then39, %if.then29, %if.then18, %if.then12, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then12 ], [ -11, %if.then18 ], [ %call27, %if.then29 ], [ %call37, %if.then39 ], [ %call48, %if.then50 ], [ 0, %if.end128 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ], [ -11, %if.end67.cleanup_crit_edge ], [ %call60, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %nominal_rate_reg) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %ctl_val_reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset_sub(ptr noundef readonly %tnr_dmd, ptr noundef %ppm) local_unnamed_addr #0 align 64 {
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
  %call = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset(ptr noundef %3, ptr noundef nonnull %ppm)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef %tnr_dmd, i32 noundef %type, ptr noundef writeonly %qam) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %l1_post_ok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %1 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %l1_post_ok, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %qam, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not = icmp eq i32 %7, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call14 = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg18, align 4
  %call20 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %call24 = call i32 %17(ptr noundef %13, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg28, align 4
  %call30 = call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %l1_post_ok, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool32.not = icmp eq i8 %24, 0
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %write_reg35 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg35, align 4
  %call37 = call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp39 = icmp eq i32 %type, 0
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  %call45 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io, align 4
  %write_reg49 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg49, align 4
  %call51 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end52:                                         ; preds = %if.then41
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp54 = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io, align 4
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg58 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %write_reg58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg58, align 4
  %call60 = call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %call65 = call i32 %44(ptr noundef %40, i32 noundef 1, i8 noundef zeroext -79, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end61.if.end84_crit_edge, label %if.then67

if.end61.if.end84_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io, align 4
  %write_reg69 = getelementptr inbounds %struct.cxd2880_io, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %write_reg69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg69, align 4
  %call71 = call i32 %48(ptr noundef %46, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %call76 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -98, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.if.end84_crit_edge, label %if.then78

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io, align 4
  %write_reg80 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_reg80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg80, align 4
  %call82 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end84:                                         ; preds = %if.else.if.end84_crit_edge, %if.end61.if.end84_crit_edge
  %53 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io, align 4
  %write_reg86 = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_reg86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg86, align 4
  %call88 = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %data, align 1
  %59 = and i8 %58, 7
  %and90 = zext i8 %59 to i32
  %60 = ptrtoint ptr %qam to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and90, ptr %qam, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then78, %if.then67, %if.then56, %if.then47, %if.then33, %if.then26, %if.then16, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call24, %if.then26 ], [ %call45, %if.then47 ], [ -11, %if.then56 ], [ %call65, %if.then67 ], [ 0, %if.end84 ], [ %call76, %if.then78 ], [ -11, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef %tnr_dmd, i32 noundef %type, ptr noundef writeonly %code_rate) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %l1_post_ok = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %l1_post_ok) #4
  %1 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %l1_post_ok, align 1
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %code_rate, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not = icmp eq i32 %7, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %tnr_dmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %tnr_dmd, i32 0, i32 1
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 4
  %write_reg = getelementptr inbounds %struct.cxd2880_io, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_reg, align 4
  %call14 = tail call i32 %11(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg18 = getelementptr inbounds %struct.cxd2880_io, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %write_reg18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_reg18, align 4
  %call20 = tail call i32 %15(ptr noundef %13, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %call24 = call i32 %17(ptr noundef %13, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %l1_post_ok, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 4
  %write_reg28 = getelementptr inbounds %struct.cxd2880_io, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %write_reg28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg28, align 4
  %call30 = call i32 %21(ptr noundef %19, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %l1_post_ok to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %l1_post_ok, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool32.not = icmp eq i8 %24, 0
  br i1 %tobool32.not, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 4
  %write_reg35 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write_reg35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_reg35, align 4
  %call37 = call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp39 = icmp eq i32 %type, 0
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  %call45 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io, align 4
  %write_reg49 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write_reg49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_reg49, align 4
  %call51 = call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end52:                                         ; preds = %if.then41
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp54 = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io, align 4
  br i1 %cmp54, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %write_reg58 = getelementptr inbounds %struct.cxd2880_io, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %write_reg58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg58, align 4
  %call60 = call i32 %42(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %call65 = call i32 %44(ptr noundef %40, i32 noundef 1, i8 noundef zeroext -80, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end61.if.end84_crit_edge, label %if.then67

if.end61.if.end84_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io, align 4
  %write_reg69 = getelementptr inbounds %struct.cxd2880_io, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %write_reg69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_reg69, align 4
  %call71 = call i32 %48(ptr noundef %46, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %call76 = call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext -99, ptr noundef nonnull %data, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.if.end84_crit_edge, label %if.then78

if.else.if.end84_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io, align 4
  %write_reg80 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write_reg80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_reg80, align 4
  %call82 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %cleanup

if.end84:                                         ; preds = %if.else.if.end84_crit_edge, %if.end61.if.end84_crit_edge
  %53 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io, align 4
  %write_reg86 = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_reg86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg86, align 4
  %call88 = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %data, align 1
  %59 = and i8 %58, 7
  %and90 = zext i8 %59 to i32
  %60 = ptrtoint ptr %code_rate to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and90, ptr %code_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then78, %if.then67, %if.then56, %if.then47, %if.then33, %if.then26, %if.then16, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call24, %if.then26 ], [ %call45, %if.then47 ], [ -11, %if.then56 ], [ %call65, %if.then67 ], [ 0, %if.end84 ], [ %call76, %if.then78 ], [ -11, %if.then33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %l1_post_ok) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ssi(ptr noundef %tnr_dmd, ptr noundef %ssi) local_unnamed_addr #0 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef nonnull %tnr_dmd, ptr noundef nonnull %rf_lvl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rf_lvl, align 4
  %call13 = call fastcc i32 @dvbt2_calc_ssi(ptr noundef nonnull %tnr_dmd, i32 noundef %8, ptr noundef nonnull %ssi)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rf_lvl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_calc_ssi(ptr noundef %tnr_dmd, i32 noundef %rf_lvl, ptr noundef writeonly %ssi) unnamed_addr #0 align 64 {
entry:
  %qam = alloca i32, align 4
  %code_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qam) #4
  %0 = ptrtoint ptr %qam to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qam, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code_rate) #4
  %1 = ptrtoint ptr %code_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %code_rate, align 4, !annotation !11
  %tobool.not = icmp eq ptr %tnr_dmd, null
  %tobool1.not = icmp eq ptr %ssi, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef nonnull %tnr_dmd, i32 noundef 1, ptr noundef nonnull %qam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef nonnull %tnr_dmd, i32 noundef 1, ptr noundef nonnull %code_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %code_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end8
  %4 = ptrtoint ptr %qam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp10 = icmp ugt i32 %5, 3
  br i1 %cmp10, label %lor.lhs.false9.cleanup_crit_edge, label %if.end12

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  %arrayidx13 = getelementptr [4 x [8 x i32]], ptr @ref_dbm_1000, i32 0, i32 %5, i32 %3
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %sub = sub i32 %rf_lvl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15000, i32 %sub)
  %cmp14 = icmp slt i32 %sub, -15000
  br i1 %cmp14, label %if.end12.cond.end_crit_edge, label %if.else

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr66 = trunc i32 %sub to i16
  %8 = shl nsw i16 %sub.tr66, 1
  %div61.lhs.trunc = add nsw i16 %8, 31500
  %div6162 = udiv i16 %div61.lhs.trunc, 3000
  %div61.zext = zext i16 %div6162 to i32
  br label %cond.end

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub)
  %cmp20 = icmp ult i32 %sub, 20000
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  %mul22 = shl nuw nsw i32 %sub, 2
  %add23 = add nuw nsw i32 %mul22, 500
  %div2463 = udiv i32 %add23, 1000
  %add25 = add nuw nsw i32 %div2463, 10
  br label %cond.end

if.else26:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 35000, i32 %sub)
  %cmp27 = icmp ult i32 %sub, 35000
  br i1 %cmp27, label %if.then28, label %if.else26.cond.end_crit_edge

if.else26.cond.end_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then28:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #6
  %sub.tr = trunc i32 %sub to i16
  %9 = shl i16 %sub.tr, 1
  %div3264.lhs.trunc = add i16 %9, 27036
  %div326465 = udiv i16 %div3264.lhs.trunc, 3000
  %narrow = add nuw nsw i16 %div326465, 90
  %add33 = zext i16 %narrow to i32
  br label %cond.end

cond.end:                                         ; preds = %if.then28, %if.else26.cond.end_crit_edge, %if.then21, %if.then17, %if.end12.cond.end_crit_edge
  %temp_ssi.0 = phi i32 [ %div61.zext, %if.then17 ], [ %add25, %if.then21 ], [ %add33, %if.then28 ], [ 0, %if.end12.cond.end_crit_edge ], [ 100, %if.else26.cond.end_crit_edge ]
  %conv = trunc i32 %temp_ssi.0 to i8
  %10 = ptrtoint ptr %ssi to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ssi, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false9.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code_rate) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qam) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ssi_sub(ptr noundef %tnr_dmd, ptr noundef %ssi) local_unnamed_addr #0 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7.not = icmp eq i32 %6, 2
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
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %rf_lvl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf_lvl, align 4
  %call13 = call fastcc i32 @dvbt2_calc_ssi(ptr noundef nonnull %tnr_dmd, i32 noundef %10, ptr noundef nonnull %ssi)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rf_lvl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ref_dbm_1000, !1, !"ref_dbm_1000", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c", i32 16, i32 18}
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
