; ModuleID = '/llk/IR_all_yes/sound/core/pcm_drm_eld.c_pt.bc'
source_filename = "../sound/core/pcm_drm_eld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_pcm_hw_constraint_eld\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_hw_constraint_eld\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_hw_constraint_eld\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_hw_constraint_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_hw_constraint_eld\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_hw_constraint_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__kstrtab_snd_pcm_hw_constraint_eld = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_hw_constraint_eld = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_hw_constraint_eld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_hw_constraint_eld to i32), ptr @__kstrtab_snd_pcm_hw_constraint_eld, ptr @__kstrtabns_snd_pcm_hw_constraint_eld }, section "___ksymtab_gpl+snd_pcm_hw_constraint_eld", align 4
@eld_rates = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@__const.eld_limit_channels.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 1, i32 2, i8 32, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 31]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 5, i64 2, i64 31]
@___asan_gen_.2 = private unnamed_addr constant [10 x i8] c"eld_rates\00", align 1
@___asan_gen_.3 = private constant [28 x i8] c"../sound/core/pcm_drm_eld.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 10, i32 27 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_snd_pcm_hw_constraint_eld, ptr @eld_rates], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eld_rates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef %runtime, ptr noundef %eld) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %runtime, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @eld_limit_rates, ptr noundef %eld, i32 noundef 10, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %runtime, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @eld_limit_channels, ptr noundef %eld, i32 noundef 11, i32 noundef -1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eld_limit_rates(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = lshr i8 %5, 3
  %trunc.i = trunc i8 %6 to i5
  %7 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc.i, label %entry.if.end7_crit_edge [
    i5 2, label %entry.if.end.i_crit_edge
    i5 -1, label %entry.if.end.i_crit_edge27
  ]

entry.if.end.i_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge27
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %10 = and i8 %9, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %cmp4.i = icmp ugt i8 %10, 16
  br i1 %cmp4.i, label %if.end.i.if.end7_crit_edge, label %drm_eld_sad.exit

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

drm_eld_sad.exit:                                 ; preds = %if.end.i
  %narrow.i = add nuw nsw i8 %10, 20
  %add.i = zext i8 %narrow.i to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %drm_eld_sad.exit.if.end7_crit_edge, label %if.then

drm_eld_sad.exit.if.end7_crit_edge:               ; preds = %drm_eld_sad.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %drm_eld_sad.exit
  %arrayidx.i18 = getelementptr i8, ptr %3, i32 5
  %11 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp.not23 = icmp ult i8 %12, 16
  br i1 %cmp.not23, label %if.then.if.end7_crit_edge, label %for.body.lr.ph

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

for.body.lr.ph:                                   ; preds = %if.then
  %13 = lshr i8 %12, 4
  %14 = zext i8 %13 to i32
  %arrayidx.i17 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i17, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %sad.026 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %i.025 = phi i32 [ %14, %for.body.lr.ph ], [ %dec, %if.end.for.body_crit_edge ]
  %rate_mask.024 = phi i32 [ 7, %for.body.lr.ph ], [ %rate_mask.1, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %sad.026 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sad.026, align 1
  %19 = and i8 %18, 7
  %narrow.i19 = add nuw nsw i8 %19, 1
  %add.i20 = zext i8 %narrow.i19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i20)
  %cmp5.not = icmp ugt i32 %16, %add.i20
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %if.then6

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i8, ptr %sad.026, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %or = or i32 %rate_mask.024, %conv
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body.if.end_crit_edge
  %rate_mask.1 = phi i32 [ %or, %if.then6 ], [ %rate_mask.024, %for.body.if.end_crit_edge ]
  %dec = add nsw i32 %i.025, -1
  %add.ptr = getelementptr i8, ptr %sad.026, i32 3
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.then.if.end7_crit_edge, %drm_eld_sad.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %entry.if.end7_crit_edge
  %rate_mask.2 = phi i32 [ 7, %drm_eld_sad.exit.if.end7_crit_edge ], [ 7, %entry.if.end7_crit_edge ], [ 7, %if.end.i.if.end7_crit_edge ], [ 7, %if.then.if.end7_crit_edge ], [ %rate_mask.1, %if.end.if.end7_crit_edge ]
  %sub.i = add i32 %1, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call8 = tail call i32 @snd_interval_list(ptr noundef %arrayidx.i, i32 noundef 7, ptr noundef nonnull @eld_rates, i32 noundef %rate_mask.2) #4
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eld_limit_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %var, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #4
  %2 = call ptr @memcpy(ptr %t, ptr @__const.eld_limit_channels.t, i32 12)
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = lshr i8 %6, 3
  %trunc.i = trunc i8 %7 to i5
  %8 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i5 %trunc.i, label %entry.if.end22_crit_edge [
    i5 2, label %entry.if.end.i_crit_edge
    i5 -1, label %entry.if.end.i_crit_edge94
  ]

entry.if.end.i_crit_edge94:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge94
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 4
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %11 = and i8 %10, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %11)
  %cmp4.i = icmp ugt i8 %11, 16
  br i1 %cmp4.i, label %if.end.i.if.end22_crit_edge, label %drm_eld_sad.exit

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

drm_eld_sad.exit:                                 ; preds = %if.end.i
  %narrow.i = add nuw nsw i8 %11, 20
  %add.i = zext i8 %narrow.i to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %drm_eld_sad.exit.if.end22_crit_edge, label %if.then

drm_eld_sad.exit.if.end22_crit_edge:              ; preds = %drm_eld_sad.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then:                                          ; preds = %drm_eld_sad.exit
  %arrayidx.i41 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i41, align 4
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %13)
  %cmp3.not = icmp ugt i32 %13, 32000
  br i1 %cmp3.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %15)
  %cmp5.not = icmp ult i32 %15, 32000
  br i1 %cmp5.not, label %land.lhs.true.for.inc.6_crit_edge, label %land.lhs.true.land.lhs.true.1_crit_edge

land.lhs.true.land.lhs.true.1_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.1

land.lhs.true.for.inc.6_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

for.inc:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %13)
  %cmp3.not.1 = icmp ugt i32 %13, 44100
  br i1 %cmp3.not.1, label %for.inc.1, label %land.lhs.true.1thread-pre-split

land.lhs.true.1thread-pre-split:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %max, align 4
  br label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true.1thread-pre-split, %land.lhs.true.land.lhs.true.1_crit_edge
  %17 = phi i32 [ %.pr, %land.lhs.true.1thread-pre-split ], [ %15, %land.lhs.true.land.lhs.true.1_crit_edge ]
  %rate_mask.156 = phi i32 [ 0, %land.lhs.true.1thread-pre-split ], [ 1, %land.lhs.true.land.lhs.true.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %17)
  %cmp5.not.1 = icmp ult i32 %17, 44100
  %or.1 = or i32 %rate_mask.156, 2
  %spec.select = select i1 %cmp5.not.1, i32 %rate_mask.156, i32 %or.1
  br label %land.lhs.true.2

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %13)
  %cmp3.not.2 = icmp ugt i32 %13, 48000
  br i1 %cmp3.not.2, label %for.inc.2, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1
  %rate_mask.1.159.ph = phi i32 [ 0, %for.inc.1.land.lhs.true.2_crit_edge ], [ %spec.select, %land.lhs.true.1 ]
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr74 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %.pr74)
  %cmp5.not.2 = icmp ult i32 %.pr74, 48000
  br i1 %cmp5.not.2, label %land.lhs.true.2.for.inc.6_crit_edge, label %if.then6.2

land.lhs.true.2.for.inc.6_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then6.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  %or.2 = or i32 %rate_mask.1.159.ph, 4
  br label %land.lhs.true.3

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %13)
  %cmp3.not.3 = icmp ugt i32 %13, 88200
  br i1 %cmp3.not.3, label %for.inc.3, label %land.lhs.true.3thread-pre-split

land.lhs.true.3thread-pre-split:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr77 = load i32, ptr %max, align 4
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true.3thread-pre-split, %if.then6.2
  %20 = phi i32 [ %.pr77, %land.lhs.true.3thread-pre-split ], [ %.pr74, %if.then6.2 ]
  %rate_mask.1.262 = phi i32 [ 0, %land.lhs.true.3thread-pre-split ], [ %or.2, %if.then6.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %20)
  %cmp5.not.3 = icmp ult i32 %20, 88200
  %or.3 = or i32 %rate_mask.1.262, 8
  %spec.select91 = select i1 %cmp5.not.3, i32 %rate_mask.1.262, i32 %or.3
  br label %land.lhs.true.4

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %13)
  %cmp3.not.4 = icmp ugt i32 %13, 96000
  br i1 %cmp3.not.4, label %for.inc.4, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %land.lhs.true.3
  %rate_mask.1.365.ph = phi i32 [ 0, %for.inc.3.land.lhs.true.4_crit_edge ], [ %spec.select91, %land.lhs.true.3 ]
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr86 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %.pr86)
  %cmp5.not.4 = icmp ult i32 %.pr86, 96000
  br i1 %cmp5.not.4, label %land.lhs.true.4.for.inc.6_crit_edge, label %if.then6.4

land.lhs.true.4.for.inc.6_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then6.4:                                       ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  %or.4 = or i32 %rate_mask.1.365.ph, 16
  br label %land.lhs.true.5

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %13)
  %cmp3.not.5 = icmp ugt i32 %13, 176400
  br i1 %cmp3.not.5, label %for.inc.5, label %land.lhs.true.5thread-pre-split

land.lhs.true.5thread-pre-split:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr80 = load i32, ptr %max, align 4
  br label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true.5thread-pre-split, %if.then6.4
  %23 = phi i32 [ %.pr80, %land.lhs.true.5thread-pre-split ], [ %.pr86, %if.then6.4 ]
  %rate_mask.1.468 = phi i32 [ 0, %land.lhs.true.5thread-pre-split ], [ %or.4, %if.then6.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %23)
  %cmp5.not.5 = icmp ult i32 %23, 176400
  %or.5 = or i32 %rate_mask.1.468, 32
  %spec.select92 = select i1 %cmp5.not.5, i32 %rate_mask.1.468, i32 %or.5
  br label %land.lhs.true.6

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %13)
  %cmp3.not.6 = icmp ugt i32 %13, 192000
  br i1 %cmp3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %for.inc.5.land.lhs.true.6_crit_edge

for.inc.5.land.lhs.true.6_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5.land.lhs.true.6_crit_edge, %land.lhs.true.5
  %rate_mask.1.571.ph = phi i32 [ 0, %for.inc.5.land.lhs.true.6_crit_edge ], [ %spec.select92, %land.lhs.true.5 ]
  %24 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr83 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %.pr83)
  %cmp5.not.6 = icmp ult i32 %.pr83, 192000
  %or.6 = or i32 %rate_mask.1.571.ph, 64
  %spec.select93 = select i1 %cmp5.not.6, i32 %rate_mask.1.571.ph, i32 %or.6
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6, %for.inc.5.for.inc.6_crit_edge, %land.lhs.true.4.for.inc.6_crit_edge, %land.lhs.true.2.for.inc.6_crit_edge, %land.lhs.true.for.inc.6_crit_edge
  %rate_mask.1.6 = phi i32 [ 0, %for.inc.5.for.inc.6_crit_edge ], [ %rate_mask.1.365.ph, %land.lhs.true.4.for.inc.6_crit_edge ], [ 0, %land.lhs.true.for.inc.6_crit_edge ], [ %rate_mask.1.159.ph, %land.lhs.true.2.for.inc.6_crit_edge ], [ %spec.select93, %land.lhs.true.6 ]
  %arrayidx.i42 = getelementptr i8, ptr %4, i32 5
  %25 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %26)
  %cmp9.not50 = icmp ult i8 %26, 16
  br i1 %cmp9.not50, label %for.inc.6.if.end22_crit_edge, label %for.body10.lr.ph

for.inc.6.if.end22_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

for.body10.lr.ph:                                 ; preds = %for.inc.6
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i32
  %max14 = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  br label %for.body10

for.body10:                                       ; preds = %for.inc20.for.body10_crit_edge, %for.body10.lr.ph
  %sad.052 = phi ptr [ %add.ptr.i, %for.body10.lr.ph ], [ %add.ptr, %for.inc20.for.body10_crit_edge ]
  %i.151 = phi i32 [ %28, %for.body10.lr.ph ], [ %dec, %for.inc20.for.body10_crit_edge ]
  %arrayidx11 = getelementptr i8, ptr %sad.052, i32 1
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %30 to i32
  %and = and i32 %rate_mask.1.6, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.body10.for.inc20_crit_edge, label %if.then13

for.body10.for.inc20_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc20

if.then13:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %max14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max14, align 4
  %33 = ptrtoint ptr %sad.052 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sad.052, align 1
  %35 = and i8 %34, 7
  %narrow.i43 = add nuw nsw i8 %35, 1
  %add.i44 = zext i8 %narrow.i43 to i32
  %36 = tail call i32 @llvm.umax.i32(i32 %32, i32 %add.i44)
  %37 = ptrtoint ptr %max14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max14, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %if.then13, %for.body10.for.inc20_crit_edge
  %dec = add nsw i32 %i.151, -1
  %add.ptr = getelementptr i8, ptr %sad.052, i32 3
  %cmp9.not = icmp eq i32 %dec, 0
  br i1 %cmp9.not, label %for.inc20.if.end22_crit_edge, label %for.inc20.for.body10_crit_edge

for.inc20.for.body10_crit_edge:                   ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.inc20.if.end22_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %for.inc20.if.end22_crit_edge, %for.inc.6.if.end22_crit_edge, %drm_eld_sad.exit.if.end22_crit_edge, %if.end.i.if.end22_crit_edge, %entry.if.end22_crit_edge
  %sub.i = add i32 %1, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 %sub.i
  %call23 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #4
  ret i32 %call23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_snd_pcm_hw_constraint_eld, !1, !"__ksymtab_snd_pcm_hw_constraint_eld", i1 false, i1 false}
!1 = !{!"../sound/core/pcm_drm_eld.c", i32 96, i32 1}
!2 = !{ptr @eld_rates, !3, !"eld_rates", i1 false, i1 false}
!3 = !{!"../sound/core/pcm_drm_eld.c", i32 10, i32 27}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
