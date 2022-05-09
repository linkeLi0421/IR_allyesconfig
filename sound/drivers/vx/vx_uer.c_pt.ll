; ModuleID = '/llk/IR_all_yes/sound/drivers/vx/vx_uer.c_pt.bc'
source_filename = "../sound/drivers/vx/vx_uer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/drivers/vx/vx_uer.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017set internal clock to 0x%x from freq %d\0A\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 12]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 32000, i64 44100, i64 48000]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [29 x i8] c"../sound/drivers/vx/vx_uer.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 199, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_set_internal_clock(ptr noundef %chip, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %freq)
  %cmp.i = icmp slt i32 %freq, 1
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !12

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #3
  br label %vx_calc_clock_from_freq.exit

if.end21.i:                                       ; preds = %entry
  %div1.i = udiv i32 282240000, %freq
  %add.i = add nuw nsw i32 %div1.i, 5
  %div222.i = udiv i32 %add.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 55071, i32 %freq)
  %cmp24.i = icmp ugt i32 %freq, 55071
  br i1 %cmp24.i, label %do.end40.i, label %if.end56.i, !prof !12

do.end40.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #3
  br label %vx_calc_clock_from_freq.exit

if.end56.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27575, i32 %freq)
  %cmp57.i = icmp ugt i32 %freq, 27575
  br i1 %cmp57.i, label %if.then58.i, label %if.end59.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add nsw i32 %div222.i, -513
  br label %vx_calc_clock_from_freq.exit

if.end59.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13784, i32 %freq)
  %cmp60.i = icmp ugt i32 %freq, 13784
  br i1 %cmp60.i, label %if.then61.i, label %if.end64.i

if.then61.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #5
  %div623.lhs.trunc.i = trunc i32 %add.i to i16
  %div6234.i = udiv i16 %div623.lhs.trunc.i, 20
  %div623.zext.i = zext i16 %div6234.i to i32
  %sub63.i = add nsw i32 %div623.zext.i, -1
  br label %vx_calc_clock_from_freq.exit

if.end64.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6891, i32 %freq)
  %cmp65.i = icmp ugt i32 %freq, 6891
  br i1 %cmp65.i, label %if.then66.i, label %if.end64.i.vx_calc_clock_from_freq.exit_crit_edge

if.end64.i.vx_calc_clock_from_freq.exit_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vx_calc_clock_from_freq.exit

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  %div675.lhs.trunc.i = trunc i32 %add.i to i16
  %div6756.i = udiv i16 %div675.lhs.trunc.i, 40
  %narrow.i = add nuw nsw i16 %div6756.i, 511
  %add68.i = zext i16 %narrow.i to i32
  br label %vx_calc_clock_from_freq.exit

vx_calc_clock_from_freq.exit:                     ; preds = %if.then66.i, %if.end64.i.vx_calc_clock_from_freq.exit_crit_edge, %if.then61.i, %if.then58.i, %do.end40.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %do.end40.i ], [ %sub.i, %if.then58.i ], [ %sub63.i, %if.then61.i ], [ %add68.i, %if.then66.i ], [ 1534, %if.end64.i.vx_calc_clock_from_freq.exit_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i, i32 noundef %freq) #3
  %lock = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %type = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  %2 = lshr i32 %retval.0.i, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vx_calc_clock_from_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 15
  %ops.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %out8.i = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %out8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out8.i, align 4
  tail call void %7(ptr noundef %chip, i32 noundef 24, i8 noundef zeroext %conv) #3
  %conv2 = trunc i32 %retval.0.i to i8
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %out8.i20 = getelementptr inbounds %struct.snd_vx_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %out8.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out8.i20, align 4
  tail call void %11(ptr noundef %chip, i32 noundef 23, i8 noundef zeroext %conv2) #3
  br label %if.end

if.else:                                          ; preds = %vx_calc_clock_from_freq.exit
  call void @__sanitizer_cov_trace_pc() #5
  %and4 = and i32 %2, 15
  %ops.i21 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %12 = ptrtoint ptr %ops.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i21, align 4
  %out32.i = getelementptr inbounds %struct.snd_vx_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %out32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out32.i, align 4
  tail call void %15(ptr noundef %chip, i32 noundef 24, i32 noundef %and4) #3
  %and5 = and i32 %retval.0.i, 255
  %16 = ptrtoint ptr %ops.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i21, align 4
  %out32.i23 = getelementptr inbounds %struct.snd_vx_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %out32.i23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out32.i23, align 4
  tail call void %19(ptr noundef %chip, i32 noundef 23, i32 noundef %and5) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_set_iec958_status(ptr noundef %chip, i32 noundef %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %lock.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  %type.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 2
  %ops.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %vx_write_one_cbit.exit.for.body_crit_edge, %for.cond.preheader
  %i.06 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %vx_write_one_cbit.exit.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.06
  %and1 = and i32 %shl, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not.i = icmp eq i32 %and1, 0
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #3
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp sgt i32 %3, 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %out8.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %out8.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out8.i.i, align 4
  tail call void %7(ptr noundef %chip, i32 noundef 25, i8 noundef zeroext 0) #3
  %shl.i = select i1 %tobool.not.i, i32 0, i32 128
  %or.i = or i32 %shl.i, %i.06
  %conv.i = trunc i32 %or.i to i8
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %out8.i16.i = getelementptr inbounds %struct.snd_vx_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %out8.i16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out8.i16.i, align 4
  tail call void %11(ptr noundef %chip, i32 noundef 26, i8 noundef zeroext %conv.i) #3
  br label %vx_write_one_cbit.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %out32.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %out32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out32.i.i, align 4
  tail call void %13(ptr noundef %chip, i32 noundef 25, i32 noundef 0) #3
  %shl2.i = select i1 %tobool.not.i, i32 0, i32 128
  %or4.i = or i32 %shl2.i, %i.06
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %out32.i19.i = getelementptr inbounds %struct.snd_vx_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %out32.i19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out32.i19.i, align 4
  tail call void %17(ptr noundef %chip, i32 noundef 26, i32 noundef %or4.i) #3
  br label %vx_write_one_cbit.exit

vx_write_one_cbit.exit:                           ; preds = %if.else.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #3
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %vx_write_one_cbit.exit.cleanup_crit_edge, label %vx_write_one_cbit.exit.for.body_crit_edge

vx_write_one_cbit.exit.for.body_crit_edge:        ; preds = %vx_write_one_cbit.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

vx_write_one_cbit.exit.cleanup_crit_edge:         ; preds = %vx_write_one_cbit.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %vx_write_one_cbit.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vx_set_clock(ptr noundef %chip, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  %rmh.i63 = alloca %struct.vx_rmh, align 4
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @vx_sync_audio_source(ptr noundef %chip) #3
  %clock_mode = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.if.end31_crit_edge [
    i32 2, label %if.end.if.then4_crit_edge
    i32 0, label %land.lhs.true
    i32 1, label %if.end.if.then17_crit_edge
  ]

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %audio_source = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 17
  %5 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %audio_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %land.lhs.true.if.then4_crit_edge, label %land.lhs.true14

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %clock_source = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 20
  %7 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clock_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5.not = icmp eq i32 %8, 1
  br i1 %cmp5.not, label %if.then4.if.end31_crit_edge, label %if.then6

if.then4.if.end31_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vx_toggle_dac_mute(ptr noundef %chip, i32 noundef 1) #3
  %lock.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #3
  %ops.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %set_clock_source.i = getelementptr inbounds %struct.snd_vx_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %set_clock_source.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_clock_source.i, align 4
  tail call void %12(ptr noundef %chip, i32 noundef 1) #3
  %13 = ptrtoint ptr %clock_source to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %clock_source, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #3
  tail call void @vx_toggle_dac_mute(ptr noundef %chip, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #3
  br label %if.end31

land.lhs.true14:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %audio_source to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %audio_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp16.not = icmp eq i32 %21, 0
  br i1 %cmp16.not, label %land.lhs.true14.if.end31_crit_edge, label %land.lhs.true14.if.then17_crit_edge

land.lhs.true14.if.then17_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

land.lhs.true14.if.end31_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then17:                                        ; preds = %land.lhs.true14.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %clock_source18 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 20
  %22 = ptrtoint ptr %clock_source18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_source18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19.not = icmp eq i32 %23, 0
  br i1 %cmp19.not, label %if.end21, label %if.end21.thread

if.end21:                                         ; preds = %if.then17
  %freq22 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 21
  %24 = ptrtoint ptr %freq22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %freq22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %freq)
  %cmp23 = icmp eq i32 %25, %freq
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21.thread:                                  ; preds = %if.then17
  tail call void @vx_toggle_dac_mute(ptr noundef %chip, i32 noundef 1) #3
  %lock.i59 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i59, i32 noundef 0) #3
  %ops.i60 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %26 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i60, align 4
  %set_clock_source.i61 = getelementptr inbounds %struct.snd_vx_ops, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %set_clock_source.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_clock_source.i61, align 4
  tail call void %29(ptr noundef %chip, i32 noundef 0) #3
  %30 = ptrtoint ptr %clock_source18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %clock_source18, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i59) #3
  tail call void @vx_toggle_dac_mute(ptr noundef %chip, i32 noundef 0) #3
  %freq2267 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 21
  %31 = ptrtoint ptr %freq2267 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %freq2267, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %freq)
  %cmp2368 = icmp eq i32 %32, %freq
  br i1 %cmp2368, label %if.end21.thread.cleanup_crit_edge, label %if.then27

if.end21.thread.cleanup_crit_edge:                ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vx_set_internal_clock(ptr noundef %chip, i32 noundef %freq)
  br label %if.end31

if.then27:                                        ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vx_set_internal_clock(ptr noundef %chip, i32 noundef %freq)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #3
  %33 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 44) #3
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %34 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %Cmd.i, align 4
  %or.i = or i32 %35, 1
  store i32 %or.i, ptr %Cmd.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i) #3
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end25, %land.lhs.true14.if.end31_crit_edge, %if.then6, %if.then4.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %freq32 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 21
  %36 = ptrtoint ptr %freq32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %freq32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %freq)
  %cmp33 = icmp eq i32 %37, %freq
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %freq32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %freq, ptr %freq32, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i63) #3
  %39 = call ptr @memset(ptr %rmh.i63, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i63, i32 noundef 38) #3
  %Cmd.i64 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i63, i32 0, i32 2
  %40 = ptrtoint ptr %Cmd.i64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %Cmd.i64, align 4
  %or.i65 = or i32 %41, 4
  store i32 %or.i65, ptr %Cmd.i64, align 4
  %call.i66 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i63) #3
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i63) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end31.cleanup_crit_edge, %if.end21.thread.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_sync_audio_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vx_change_frequency(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock_source = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %uer_detected = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 23
  %type.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp sgt i32 %5, 2
  %ops.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i.i = tail call zeroext i8 %9(ptr noundef %chip, i32 noundef 25) #3
  %conv.i = zext i8 %call.i.i to i32
  br label %if.end5.i

if.end.i:                                         ; preds = %if.end2
  %in32.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %in32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in32.i.i, align 4
  %call.i28.i = tail call i32 %11(ptr noundef %chip, i32 noundef 25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp2.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i.if.end5.i_crit_edge, %if.end.thread.i
  %val.031.i = phi i32 [ %conv.i, %if.end.thread.i ], [ %call.i28.i, %if.end.i.if.end5.i_crit_edge ]
  %and.i = and i32 %val.031.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then6.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end5.i
  %and7.i = and i32 %val.031.i, 12
  %12 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and7.i, label %if.then6.i.if.end10.i_crit_edge [
    i32 12, label %sw.bb.i
    i32 0, label %sw.bb8.i
    i32 4, label %sw.bb9.i
  ]

if.then6.i.if.end10.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

sw.bb.i:                                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

sw.bb8.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

sw.bb9.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.i

if.end10.i:                                       ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb.i, %if.then6.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %freq.0.i = phi i32 [ 0, %if.then6.i.if.end10.i_crit_edge ], [ 48000, %sw.bb9.i ], [ 44100, %sw.bb8.i ], [ 32000, %sw.bb.i ], [ 0, %if.end5.i.if.end10.i_crit_edge ]
  %and11.i = and i32 %val.031.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end5_crit_edge, label %if.then13.i

if.end10.i.if.end5_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then13.i:                                      ; preds = %if.end10.i
  %lock.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #3
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 2
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %out8.i.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %out8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out8.i.i.i, align 4
  tail call void %18(ptr noundef %chip, i32 noundef 25, i8 noundef zeroext 1) #3
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %out8.i2.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %out8.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out8.i2.i.i, align 4
  tail call void %22(ptr noundef %chip, i32 noundef 26, i8 noundef zeroext 0) #3
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i.i.i = tail call zeroext i8 %26(ptr noundef %chip, i32 noundef 26) #3
  %27 = lshr i8 %call.i.i.i, 7
  %28 = zext i8 %27 to i32
  br label %vx_read_one_cbit.exit.i

if.else.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %out32.i.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %16, i32 0, i32 3
  %29 = ptrtoint ptr %out32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out32.i.i.i, align 4
  tail call void %30(ptr noundef %chip, i32 noundef 25, i32 noundef 1) #3
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  %out32.i6.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %out32.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out32.i6.i.i, align 4
  tail call void %34(ptr noundef %chip, i32 noundef 26, i32 noundef 0) #3
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %in32.i.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %in32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %in32.i.i.i, align 4
  %call.i8.i.i = tail call i32 %38(ptr noundef %chip, i32 noundef 26) #3
  %shr5.i.i = lshr i32 %call.i8.i.i, 7
  br label %vx_read_one_cbit.exit.i

vx_read_one_cbit.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.in.i.i = phi i32 [ %28, %if.then.i.i ], [ %shr5.i.i, %if.else.i.i ]
  %val.0.i.i = and i32 %val.0.in.i.i, 1
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #3
  br label %if.end5

if.end5:                                          ; preds = %vx_read_one_cbit.exit.i, %if.end10.i.if.end5_crit_edge
  %storemerge.i = phi i32 [ %val.0.i.i, %vx_read_one_cbit.exit.i ], [ 2, %if.end10.i.if.end5_crit_edge ]
  %39 = ptrtoint ptr %uer_detected to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %uer_detected, align 4
  %trunc = trunc i32 %freq.0.i to i16
  %40 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %trunc, label %if.end5.cleanup_crit_edge [
    i16 -17536, label %if.end5.if.then10_crit_edge
    i16 -21436, label %if.end5.if.then10_crit_edge23
    i16 32000, label %if.end5.if.then10_crit_edge24
  ]

if.end5.if.then10_crit_edge24:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then10

if.end5.if.then10_crit_edge23:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then10

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then10:                                        ; preds = %if.end5.if.then10_crit_edge, %if.end5.if.then10_crit_edge23, %if.end5.if.then10_crit_edge24
  %freq_detected = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 22
  %41 = ptrtoint ptr %freq_detected to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %freq.0.i, ptr %freq_detected, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call.i28.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vx_toggle_dac_mute(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vx_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/drivers/vx/vx_uer.c", i32 199, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
