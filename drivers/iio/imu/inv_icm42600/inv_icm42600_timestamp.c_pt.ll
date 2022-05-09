; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_icm42600/inv_icm42600_timestamp.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_icm42600/inv_icm42600_timestamp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inv_icm42600_timestamp = type { %struct.inv_icm42600_timestamp_interval, i64, i32, i32, i32, %struct.inv_icm42600_timestamp_acc }
%struct.inv_icm42600_timestamp_interval = type { i64, i64 }
%struct.inv_icm42600_timestamp_acc = type { i32, i32, [32 x i32] }
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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inv_icm42600_timestamp_init(ptr nocapture noundef %ts, i32 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 2
  %0 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %mult, align 8
  %period1 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 4
  %1 = ptrtoint ptr %period1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1000000, ptr %period1, align 8
  %div = udiv i32 %period, 31250
  %new_mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 3
  %2 = ptrtoint ptr %new_mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %new_mult, align 4
  %idx.i = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %idx.i, align 4
  %arrayidx.i = getelementptr %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 2, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31250, ptr %arrayidx.i, align 4
  %6 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp.i = icmp ugt i32 %6, 31
  br i1 %cmp.i, label %if.then.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idx.i, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.029.i = phi i32 [ %inc11.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %sum.028.i = phi i64 [ %add.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx5.i = getelementptr %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 2, i32 %i.029.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i = icmp eq i32 %9, 0
  br i1 %cmp6.i, label %for.body.i.if.else162.i.i.i_crit_edge, label %if.end8.i

for.body.i.if.else162.i.i.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i.i

if.end8.i:                                        ; preds = %for.body.i
  %conv.i = zext i32 %9 to i64
  %add.i = add i64 %sum.028.i, %conv.i
  %inc11.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, 32
  br i1 %exitcond.not.i, label %if.end8.i.if.else162.i.i.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end8.i.if.else162.i.i.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i.i

if.else162.i.i.i:                                 ; preds = %if.end8.i.if.else162.i.i.i_crit_edge, %for.body.i.if.else162.i.i.i_crit_edge
  %sum.0.lcssa.i = phi i64 [ %sum.028.i, %for.body.i.if.else162.i.i.i_crit_edge ], [ %add.i, %if.end8.i.if.else162.i.i.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ %i.029.i, %for.body.i.if.else162.i.i.i_crit_edge ], [ 32, %if.end8.i.if.else162.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sum.0.lcssa.i)
  %cmp164.i.i.i = icmp ult i64 %sum.0.lcssa.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !9

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i = trunc i64 %sum.0.lcssa.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %i.0.lcssa.i
  br label %inv_update_acc.exit

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %i.0.lcssa.i, i64 %sum.0.lcssa.i) #9, !srcloc !10
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t26.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %inv_update_acc.exit

inv_update_acc.exit:                              ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t26.i, %if.else174.i.i.i ]
  %chip_period = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5
  %11 = ptrtoint ptr %chip_period to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %chip_period, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_icm42600_timestamp_setup(ptr nocapture noundef readonly %st) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.inv_icm42600_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 84, i32 noundef 31, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @inv_icm42600_timestamp_update_odr(ptr nocapture noundef %ts, i32 noundef %period, i1 noundef zeroext %fifo) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %fifo, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %new_mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_mult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %div = udiv i32 %period, 31250
  %new_mult1 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 3
  %2 = ptrtoint ptr %new_mult1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %new_mult1, align 4
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inv_icm42600_timestamp_interrupt(ptr nocapture noundef %ts, i32 noundef %fifo_period, i32 noundef %fifo_nb, i32 noundef %sensor_nb, i64 noundef %timestamp) local_unnamed_addr #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %fifo_period, 31250
  %period1 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo_nb)
  %cmp = icmp eq i32 %fifo_nb, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %up = getelementptr inbounds %struct.inv_icm42600_timestamp_interval, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %up, align 8
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ts, align 8
  store i64 %timestamp, ptr %up, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp7.not = icmp eq i64 %1, 0
  br i1 %cmp7.not, label %if.end13.thread, label %if.then8

if.then8:                                         ; preds = %if.end
  %sub = sub i64 %timestamp, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %3 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %remainder.i, align 4, !annotation !11
  %call.i = call i64 @div_s64_rem(i64 noundef %sub, i32 noundef %fifo_nb, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %conv = trunc i64 %call.i to i32
  %mul.i.i = mul nuw i32 %div, 30625
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv)
  %cmp.i.i = icmp ult i32 %mul.i.i, %conv
  %mul1.i.i = mul i32 %div, 31875
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %conv)
  %cmp2.i.i = icmp ugt i32 %mul1.i.i, %conv
  %or.cond.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i, label %if.end13.thread110

if.end.i:                                         ; preds = %if.then8
  %div.i = udiv i32 %conv, %div
  %chip_period.i = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5
  %idx.i.i = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i.i, align 4
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %idx.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.i, ptr %arrayidx.i.i, align 4
  %7 = load i32, ptr %idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp.i3.i = icmp ugt i32 %7, 31
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.end.i.for.body.i.i.preheader_crit_edge

if.end.i.for.body.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx.i.i, align 4
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i.i, %if.end.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end8.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.029.i.i = phi i32 [ %inc11.i.i, %if.end8.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %sum.028.i.i = phi i64 [ %add.i.i, %if.end8.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx5.i.i = getelementptr %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5, i32 2, i32 %i.029.i.i
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.i.i = icmp eq i32 %10, 0
  br i1 %cmp6.i.i, label %for.body.i.i.if.else162.i.i.i.i_crit_edge, label %if.end8.i.i

for.body.i.i.if.else162.i.i.i.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i.i.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  %conv.i.i = zext i32 %10 to i64
  %add.i.i = add i64 %sum.028.i.i, %conv.i.i
  %inc11.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc11.i.i, 32
  br i1 %exitcond.not.i.i, label %if.end8.i.i.if.else162.i.i.i.i_crit_edge, label %if.end8.i.i.for.body.i.i_crit_edge

if.end8.i.i.for.body.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end8.i.i.if.else162.i.i.i.i_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else162.i.i.i.i

if.else162.i.i.i.i:                               ; preds = %if.end8.i.i.if.else162.i.i.i.i_crit_edge, %for.body.i.i.if.else162.i.i.i.i_crit_edge
  %sum.0.lcssa.i.i = phi i64 [ %sum.028.i.i, %for.body.i.i.if.else162.i.i.i.i_crit_edge ], [ %add.i.i, %if.end8.i.i.if.else162.i.i.i.i_crit_edge ]
  %i.0.lcssa.i.i = phi i32 [ %i.029.i.i, %for.body.i.i.if.else162.i.i.i.i_crit_edge ], [ 32, %if.end8.i.i.if.else162.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sum.0.lcssa.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %sum.0.lcssa.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !9

if.then168.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i.i.i = trunc i64 %sum.0.lcssa.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %i.0.lcssa.i.i
  br label %if.end13

if.else174.i.i.i.i:                               ; preds = %if.else162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %i.0.lcssa.i.i, i64 %sum.0.lcssa.i.i) #9, !srcloc !10
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %11, 1
  %extract.t26.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %if.end13

if.end13:                                         ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t26.i.i, %if.else174.i.i.i.i ]
  %12 = ptrtoint ptr %chip_period.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dividend.addr.0.i.i.off0.i.i, ptr %chip_period.i, align 4
  %mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 2
  %13 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mult, align 8
  %mul = mul i32 %dividend.addr.0.i.i.off0.i.i, %14
  %15 = ptrtoint ptr %period1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %period1, align 8
  %timestamp14 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 1
  %16 = ptrtoint ptr %timestamp14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp15 = icmp eq i64 %17, 0
  br i1 %cmp15, label %if.end13.if.then17_crit_edge, label %if.then27

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end13.thread110:                               ; preds = %if.then8
  %timestamp14112 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 1
  %18 = ptrtoint ptr %timestamp14112 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %timestamp14112, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp15113 = icmp eq i64 %19, 0
  br i1 %cmp15113, label %if.end13.thread110.if.then17_crit_edge, label %if.end13.thread110.cleanup_crit_edge

if.end13.thread110.cleanup_crit_edge:             ; preds = %if.end13.thread110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.thread110.if.then17_crit_edge:           ; preds = %if.end13.thread110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end13.thread:                                  ; preds = %if.end
  %timestamp14103 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 1
  %20 = ptrtoint ptr %timestamp14103 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp14103, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp15104 = icmp eq i64 %21, 0
  br i1 %cmp15104, label %if.end13.thread.if.then17_crit_edge, label %if.end13.thread.cleanup_crit_edge

if.end13.thread.cleanup_crit_edge:                ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.thread.if.then17_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %if.end13.thread.if.then17_crit_edge, %if.end13.thread110.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %timestamp14106 = phi ptr [ %timestamp14103, %if.end13.thread.if.then17_crit_edge ], [ %timestamp14, %if.end13.if.then17_crit_edge ], [ %timestamp14112, %if.end13.thread110.if.then17_crit_edge ]
  %22 = ptrtoint ptr %period1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period1, align 8
  %conv19 = zext i32 %23 to i64
  %conv20 = zext i32 %sensor_nb to i64
  %mul21 = mul nuw i64 %conv19, %conv20
  %24 = ptrtoint ptr %up to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %up, align 8
  %sub23 = sub i64 %25, %mul21
  %26 = ptrtoint ptr %timestamp14106 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub23, ptr %timestamp14106, align 8
  br label %cleanup

if.then27:                                        ; preds = %if.end13
  %chip_period28 = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5
  %27 = ptrtoint ptr %chip_period28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_period28, align 4
  %mul30 = mul i32 %28, %div
  %29 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ts, align 8
  %sub33 = sub i64 %30, %17
  %mul34 = mul i32 %mul30, 3
  %div35101 = lshr i32 %mul34, 1
  %conv36 = zext i32 %div35101 to i64
  %conv39 = zext i32 %mul30 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then27
  %delta.0 = phi i64 [ %sub33, %if.then27 ], [ %sub40, %while.cond.while.cond_crit_edge ]
  %cmp37.not = icmp slt i64 %delta.0, %conv36
  %sub40 = sub i64 %delta.0, %conv39
  br i1 %cmp37.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %period1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period1, align 8
  %mul42 = mul i32 %32, 102
  %div43 = udiv i32 %mul42, 100
  %sub45 = sub i32 %div43, %32
  %conv46 = sext i32 %sub45 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %delta.0, i64 %conv46)
  %cmp47 = icmp sgt i64 %delta.0, %conv46
  %sub51 = sub i32 0, %sub45
  %conv52 = sext i32 %sub51 to i64
  %33 = call i64 @llvm.smax.i64(i64 %delta.0, i64 %conv52)
  %delta.1 = select i1 %cmp47, i64 %conv46, i64 %33
  %add = add i64 %delta.1, %17
  %34 = ptrtoint ptr %timestamp14 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add, ptr %timestamp14, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then17, %if.end13.thread.cleanup_crit_edge, %if.end13.thread110.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @inv_icm42600_timestamp_apply_odr(ptr nocapture noundef %ts, i32 noundef %fifo_period, i32 noundef %fifo_nb, i32 noundef %fifo_no) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %new_mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_mult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mult = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mult, align 8
  %3 = ptrtoint ptr %new_mult to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %new_mult, align 4
  %chip_period = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 5
  %4 = ptrtoint ptr %chip_period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_period, align 4
  %mul = mul i32 %5, %1
  %period = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 4
  %6 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %period, align 8
  %timestamp = getelementptr inbounds %struct.inv_icm42600_timestamp, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp4.not = icmp eq i64 %8, 0
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %fifo_period, 31250
  %mul8 = mul i32 %5, %div
  %sub = sub i32 %fifo_nb, %fifo_no
  %conv = zext i32 %sub to i64
  %conv9 = zext i32 %mul8 to i64
  %mul10 = mul nuw i64 %conv9, %conv
  %up = getelementptr inbounds %struct.inv_icm42600_timestamp_interval, ptr %ts, i32 0, i32 1
  %9 = ptrtoint ptr %up to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %up, align 8
  %sub11 = sub i64 %10, %mul10
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub11, ptr %timestamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148604178, i64 2148604458, i64 2148604792, i64 2148605126}
!11 = !{!"auto-init"}
