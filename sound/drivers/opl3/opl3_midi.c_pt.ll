; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_midi.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.best = type { i32, i32 }
%struct.fm_patch = type { i8, i8, i8, %struct.fm_instrument, [24 x i8], ptr }
%struct.fm_instrument = type { [4 x %struct.fm_operator], [2 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.fm_operator = type { i8, i8, i8, i8, i8 }

@opl3_volume_table = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\C1\D0\D8\DD\E0\E3\E5\E6\E8\E9\EB\EC\ED\EE\EE\EF\F0\F1\F1\F2\F3\F3\F4\F4\F5\F5\F6\F6\F6\F7\F7\F8\F8\F8\F9\F9\F9\FA\FA\FA\FB\FB\FB\FB\FC\FC\FC\FC\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\00\00\00\00\00\00\01\01\01\01\01\01\02\02\02\02\02\02\02\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@use_internal_drums = external dso_local local_unnamed_addr global i8, align 1
@snd_opl3_oss_map = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1, i32 2, i32 9, i32 10, i32 11, i32 6, i32 7, i32 8, i32 15, i32 16, i32 17, i32 3, i32 4, i32 5, i32 12, i32 13, i32 14], [56 x i8] zeroinitializer }, align 32
@snd_opl3_regmap = external dso_local local_unnamed_addr global [9 x [4 x i8]], align 1
@opl3_note_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 305, i16 323, i16 343, i16 363, i16 385, i16 408, i16 432, i16 458, i16 485, i16 514, i16 544, i16 577, i16 611, i16 647, i16 686, i16 726], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/drivers/opl3/opl3_midi.c\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 92, i64 128]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"opl3_volume_table\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 26, i32 19 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"snd_opl3_oss_map\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 268, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"opl3_note_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 72, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [34 x i8] c"../sound/drivers/opl3/opl3_midi.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 612, i32 6 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @opl3_volume_table, ptr @snd_opl3_oss_map, ptr @opl3_note_table, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opl3_volume_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_oss_map to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opl3_note_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_calc_volume(ptr nocapture noundef %volbyte, i32 noundef %vel, ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul i32 %conv, %vel
  %arrayidx2 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 11
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %mul4 = mul i32 %mul, %conv3
  %div = sdiv i32 %mul4, 16129
  %4 = tail call i32 @llvm.smin.i32(i32 %div, i32 127)
  %5 = ptrtoint ptr %volbyte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %volbyte, align 1
  %7 = and i8 %6, 63
  %8 = xor i8 %7, 63
  %sub = zext i8 %8 to i32
  %arrayidx7 = getelementptr [128 x i8], ptr @opl3_volume_table, i32 0, i32 %4
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %add = add nuw nsw i32 %sub, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp9 = icmp ugt i32 %add, 63
  %11 = trunc i32 %add to i8
  %12 = and i8 %11, 63
  %phi.cast = xor i8 %12, 63
  %newvol.0 = select i1 %cmp9, i8 0, i8 %phi.cast
  %13 = and i8 %6, -64
  %conv22 = or i8 %newvol.0, %13
  %14 = ptrtoint ptr %volbyte to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv22, ptr %volbyte, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_timer_func(ptr noundef %t) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -856
  %voice_lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr i8, ptr %t, i32 -710
  %0 = ptrtoint ptr %max_voices to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_voices, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp754.not = icmp eq i8 %1, 0
  br i1 %cmp754.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %voices = getelementptr i8, ptr %t, i32 -556
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %if.end15.for.body_crit_edge ]
  %again.055 = phi i32 [ 0, %for.body.lr.ph ], [ %again.1, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.snd_opl3_voice], ptr %voices, i32 0, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9 = icmp sgt i32 %3, 0
  br i1 %cmp9, label %land.lhs.true, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %note_off_check = getelementptr inbounds %struct.snd_opl3_voice, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %note_off_check to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %note_off_check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %note_off = getelementptr inbounds %struct.snd_opl3_voice, ptr %arrayidx, i32 0, i32 3
  %6 = ptrtoint ptr %note_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %note_off, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp11 = icmp eq i32 %7, %8
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %note = getelementptr inbounds %struct.snd_opl3_voice, ptr %arrayidx, i32 0, i32 2
  %9 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %note, align 4
  %conv14 = zext i8 %10 to i32
  %chan = getelementptr inbounds %struct.snd_opl3_voice, ptr %arrayidx, i32 0, i32 6
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  tail call fastcc void @snd_opl3_note_off_unsafe(ptr noundef %add.ptr, i32 noundef %conv14, i32 noundef 0, ptr noundef %12)
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %again.055, 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13, %land.lhs.true.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %again.1 = phi i32 [ %again.055, %if.then13 ], [ %inc, %if.else ], [ %again.055, %land.lhs.true.if.end15_crit_edge ], [ %again.055, %for.body.if.end15_crit_edge ]
  %inc16 = add nuw nsw i32 %i.056, 1
  %13 = ptrtoint ptr %max_voices to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_voices, align 2
  %conv6 = zext i8 %14 to i32
  %cmp7 = icmp ult i32 %inc16, %conv6
  br i1 %cmp7, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %entry.for.end_crit_edge
  %again.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %again.1, %if.end15.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call3) #6
  %sys_timer_lock = getelementptr i8, ptr %t, i32 52
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sys_timer_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %again.0.lcssa)
  %tobool31.not = icmp eq i32 %again.0.lcssa, 0
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 1
  %call33 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %if.end35

if.else34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %sys_timer_status = getelementptr i8, ptr %t, i32 48
  %16 = ptrtoint ptr %sys_timer_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sys_timer_status, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sys_timer_lock, i32 noundef %call26) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_opl3_note_off_unsafe(ptr noundef %p, i32 noundef %note, i32 noundef %vel, ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %synth_mode = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %synth_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %synth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %drum_channel = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %drum_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_internal_drums to i32))
  %3 = load i8, ptr @use_internal_drums, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_opl3_drum_switch(ptr noundef %p, i32 noundef %note, i32 noundef %vel, i32 noundef 0, ptr noundef %chan) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %max_voices = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 18
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_voices, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp369.not = icmp eq i8 %5, 0
  br i1 %cmp369.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %command.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 5
  %use_time.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %voice.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.070
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %land.lhs.true7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true7:                                   ; preds = %for.body
  %chan8 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.070, i32 6
  %8 = ptrtoint ptr %chan8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan8, align 4
  %cmp9 = icmp eq ptr %9, %chan
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %note12 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.070, i32 2
  %10 = ptrtoint ptr %note12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %note12, align 4
  %conv13 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %note)
  %cmp14 = icmp eq i32 %conv13, %note
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %voice.070)
  %cmp.i = icmp ugt i32 %voice.070, 17
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !18

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 612, i32 noundef 9, ptr noundef null) #6
  br label %for.inc

if.end21.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %voice.070)
  %cmp22.i = icmp ult i32 %voice.070, 9
  %conv24.i = add nuw nsw i32 %voice.070, 247
  %voice_offset.0.i = select i1 %cmp22.i, i32 %voice.070, i32 %conv24.i
  %reg_side.0.i = select i1 %cmp22.i, i32 0, i32 256
  %conv27.i = and i32 %voice_offset.0.i, 255
  %add.i = add nuw nsw i32 %conv27.i, 176
  %or.i = or i32 %add.i, %reg_side.0.i
  %conv28.i = trunc i32 %or.i to i16
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %command.i, align 4
  %keyon_reg.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.070, i32 5
  %14 = ptrtoint ptr %keyon_reg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keyon_reg.i, align 4
  tail call void %13(ptr noundef %p, i16 noundef zeroext %conv28.i, i8 noundef zeroext %15) #6
  %16 = ptrtoint ptr %use_time.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use_time.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %use_time.i, align 4
  %time.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.070, i32 1
  %18 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %time.i, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp29.i = icmp eq i32 %20, 2
  br i1 %cmp29.i, label %if.then31.i, label %if.end21.i.if.end39.i_crit_edge

if.end21.i.if.end39.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then31.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %add33.i = add nuw nsw i32 %voice.070, 3
  %arrayidx34.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add33.i
  %21 = ptrtoint ptr %use_time.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %use_time.i, align 4
  %inc36.i = add i32 %22, 1
  store i32 %inc36.i, ptr %use_time.i, align 4
  %time37.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add33.i, i32 1
  %23 = ptrtoint ptr %time37.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %time37.i, align 4
  %24 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx34.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then31.i, %if.end21.i.if.end39.i_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end39.i, %do.end.i, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %voice.070, 1
  %26 = ptrtoint ptr %max_voices to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_voices, align 2
  %conv = zext i8 %27 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else:                                          ; preds = %entry
  %number = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %29)
  %cmp18 = icmp slt i32 %29, 18
  br i1 %cmp18, label %if.then20, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.else
  %arrayidx22 = getelementptr [18 x i32], ptr @snd_opl3_oss_map, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %arrayidx.i45 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %31
  %32 = and i32 %29, 1073741823
  %33 = lshr i32 29127, %32
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp22.i46.not = icmp eq i32 %34, 0
  %conv24.i47 = add nsw i32 %31, 247
  %voice_offset.0.i48 = select i1 %cmp22.i46.not, i32 %conv24.i47, i32 %31
  %35 = shl nuw nsw i32 %34, 8
  %36 = xor i32 %35, 256
  %conv27.i50 = and i32 %voice_offset.0.i48, 255
  %add.i51 = add nuw nsw i32 %conv27.i50, 176
  %or.i52 = or i32 %add.i51, %36
  %conv28.i53 = trunc i32 %or.i52 to i16
  %command.i54 = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 5
  %37 = ptrtoint ptr %command.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %command.i54, align 4
  %keyon_reg.i55 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %31, i32 5
  %39 = ptrtoint ptr %keyon_reg.i55 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %keyon_reg.i55, align 4
  tail call void %38(ptr noundef %p, i16 noundef zeroext %conv28.i53, i8 noundef zeroext %40) #6
  %use_time.i56 = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 27
  %41 = ptrtoint ptr %use_time.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %use_time.i56, align 4
  %inc.i57 = add i32 %42, 1
  store i32 %inc.i57, ptr %use_time.i56, align 4
  %time.i58 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %31, i32 1
  %43 = ptrtoint ptr %time.i58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %time.i58, align 4
  %44 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp29.i59 = icmp eq i32 %45, 2
  br i1 %cmp29.i59, label %if.then31.i65, label %if.then20.if.end39.i66_crit_edge

if.then20.if.end39.i66_crit_edge:                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i66

if.then31.i65:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %add33.i61 = add nsw i32 %31, 3
  %arrayidx34.i62 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add33.i61
  %46 = ptrtoint ptr %use_time.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %use_time.i56, align 4
  %inc36.i63 = add i32 %47, 1
  store i32 %inc36.i63, ptr %use_time.i56, align 4
  %time37.i64 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add33.i61, i32 1
  %48 = ptrtoint ptr %time37.i64 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %time37.i64, align 4
  %49 = ptrtoint ptr %arrayidx34.i62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx34.i62, align 4
  br label %if.end39.i66

if.end39.i66:                                     ; preds = %if.then31.i65, %if.then20.if.end39.i66_crit_edge
  %50 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx.i45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i66, %if.else.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_note_on(ptr noundef %p, i32 noundef %note, i32 noundef %vel, ptr noundef %chan) local_unnamed_addr #2 align 64 {
entry:
  %best.i = alloca [3 x %struct.best], align 4
  %vol_op = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol_op) #6
  %0 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 3
  %synth_mode = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 19
  %3 = ptrtoint ptr %vol_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vol_op, align 4
  %4 = ptrtoint ptr %synth_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %synth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  %drum_channel = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %drum_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %note to i8
  br label %do.body9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %control = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 10
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %control, align 4
  %midi_program = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 8
  %9 = ptrtoint ptr %midi_program to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %midi_program, align 4
  %phi.cast = zext i8 %8 to i32
  br label %do.body9

if.else2:                                         ; preds = %entry
  %number = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp3 = icmp sgt i32 %12, 17
  br i1 %cmp3, label %if.else2.cleanup_crit_edge, label %if.end6

if.else2.cleanup_crit_edge:                       ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #8
  %midi_program7 = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 8
  %13 = ptrtoint ptr %midi_program7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %midi_program7, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.end6, %if.else, %if.then1
  %prg.0 = phi i8 [ %conv, %if.then1 ], [ %10, %if.else ], [ %14, %if.end6 ]
  %bank.0 = phi i32 [ 128, %if.then1 ], [ %phi.cast, %if.else ], [ 127, %if.end6 ]
  %voice_lock = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 30
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_internal_drums to i32))
  %15 = load i8, ptr @use_internal_drums, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %__extra_prg.preheader, label %if.then16

__extra_prg.preheader:                            ; preds = %do.body9
  %conv19712 = zext i8 %prg.0 to i32
  %call21714 = tail call ptr @snd_opl3_find_patch(ptr noundef %p, i32 noundef %conv19712, i32 noundef %bank.0, i32 noundef 0) #6
  %tobool22.not715 = icmp eq ptr %call21714, null
  br i1 %tobool22.not715, label %__extra_prg.preheader.cleanup.sink.split_crit_edge, label %if.end25.lr.ph

__extra_prg.preheader.cleanup.sink.split_crit_edge: ; preds = %__extra_prg.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end25.lr.ph:                                   ; preds = %__extra_prg.preheader
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 4
  %number40 = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 1
  %16 = getelementptr inbounds %struct.best, ptr %best.i, i32 0, i32 1
  %17 = getelementptr inbounds [3 x %struct.best], ptr %best.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x %struct.best], ptr %best.i, i32 0, i32 1, i32 1
  %19 = getelementptr inbounds [3 x %struct.best], ptr %best.i, i32 0, i32 2
  %20 = getelementptr inbounds [3 x %struct.best], ptr %best.i, i32 0, i32 2, i32 1
  %max_voices.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 18
  %command = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 5
  %connection_reg = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 28
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 7
  %arrayidx2.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 11
  %arrayidx224 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 10
  %midi_pitchbend.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 9
  %sys_timer_lock.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 33
  %sys_timer_status.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 32
  %tlist.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 31
  %use_time = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 27
  %conv335 = trunc i32 %note to i8
  %arrayidx135.1 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 1
  %arrayidx135.2 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 2
  %arrayidx135.3 = getelementptr inbounds [4 x i8], ptr %vol_op, i32 0, i32 3
  br label %if.end25

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_opl3_drum_switch(ptr noundef %p, i32 noundef %note, i32 noundef %vel, i32 noundef 1, ptr noundef %chan) #6
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.then367.if.end25_crit_edge, %if.end25.lr.ph
  %call21718 = phi ptr [ %call21714, %if.end25.lr.ph ], [ %call21, %if.then367.if.end25_crit_edge ]
  %note.addr.0717 = phi i32 [ %note, %if.end25.lr.ph ], [ %note.addr.2, %if.then367.if.end25_crit_edge ]
  %tobool331.not716 = phi i1 [ true, %if.end25.lr.ph ], [ false, %if.then367.if.end25_crit_edge ]
  %inst = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3
  %type = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %if.end25.cleanup.sink.split_crit_edge [
    i8 1, label %if.end25.sw.epilog_crit_edge
    i8 2, label %sw.bb27
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %if.end25
  %24 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %25)
  %cmp29 = icmp ugt i16 %25, 767
  br i1 %cmp29, label %sw.bb27.sw.epilog_crit_edge, label %sw.bb27.cleanup.sink.split_crit_edge

sw.bb27.cleanup.sink.split_crit_edge:             ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27.sw.epilog_crit_edge, %if.end25.sw.epilog_crit_edge
  %tobool72.not = phi i1 [ true, %if.end25.sw.epilog_crit_edge ], [ false, %sw.bb27.sw.epilog_crit_edge ]
  %26 = ptrtoint ptr %synth_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %synth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp35 = icmp eq i32 %27, 1
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %best.i) #6
  %28 = call ptr @memset(ptr %best.i, i32 255, i32 24)
  %29 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_voices.i, align 2
  %conv.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp39.not.i = icmp eq i8 %30, 0
  br i1 %cmp39.not.i, label %if.then37.for.cond75.preheader.i_crit_edge, label %if.then37.for.body5.i_crit_edge

if.then37.for.body5.i_crit_edge:                  ; preds = %if.then37
  br label %for.body5.i

if.then37.for.cond75.preheader.i_crit_edge:       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond75.preheader.i

for.cond75.preheader.i:                           ; preds = %for.inc72.i.for.cond75.preheader.i_crit_edge, %if.then37.for.cond75.preheader.i_crit_edge
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp81.i = icmp sgt i32 %32, -1
  br i1 %cmp81.i, label %for.cond75.preheader.i.opl3_get_voice.exit_crit_edge, label %for.cond75.i

for.cond75.preheader.i.opl3_get_voice.exit_crit_edge: ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opl3_get_voice.exit

for.body5.i:                                      ; preds = %for.inc72.i.for.body5.i_crit_edge, %if.then37.for.body5.i_crit_edge
  %i.110.i = phi i32 [ %inc73.i, %for.inc72.i.for.body5.i_crit_edge ], [ 0, %if.then37.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %i.110.i
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp7.i = icmp eq i32 %34, -1
  br i1 %cmp7.i, label %for.body5.i.for.inc72.i_crit_edge, label %if.end.i

for.body5.i.for.inc72.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72.i

if.end.i:                                         ; preds = %for.body5.i
  %time9.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %i.110.i, i32 1
  %35 = ptrtoint ptr %time9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %time9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.110.i)
  %cmp10.i = icmp ult i32 %i.110.i, 3
  br i1 %cmp10.i, label %if.end.i.lor.rhs20.i_crit_edge, label %lor.end.i

if.end.i.lor.rhs20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs20.i

lor.end.i:                                        ; preds = %if.end.i
  %37 = add nsw i32 %i.110.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %38 = icmp ult i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.110.i)
  %cmp18.i = icmp ult i32 %i.110.i, 6
  br i1 %cmp18.i, label %lor.end.i.lor.end27.i_crit_edge, label %lor.end.i.lor.rhs20.i_crit_edge

lor.end.i.lor.rhs20.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs20.i

lor.end.i.lor.end27.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end27.i

lor.rhs20.i:                                      ; preds = %lor.end.i.lor.rhs20.i_crit_edge, %if.end.i.lor.rhs20.i_crit_edge
  %39 = phi i1 [ %38, %lor.end.i.lor.rhs20.i_crit_edge ], [ true, %if.end.i.lor.rhs20.i_crit_edge ]
  %40 = add nsw i32 %i.110.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %41 = icmp ult i32 %40, 3
  br label %lor.end27.i

lor.end27.i:                                      ; preds = %lor.rhs20.i, %lor.end.i.lor.end27.i_crit_edge
  %42 = phi i1 [ %38, %lor.end.i.lor.end27.i_crit_edge ], [ %39, %lor.rhs20.i ]
  %43 = phi i1 [ true, %lor.end.i.lor.end27.i_crit_edge ], [ %41, %lor.rhs20.i ]
  br i1 %tobool72.not, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %lor.end27.i
  br i1 %42, label %if.end32.i, label %if.then29.i.for.inc72.i_crit_edge

if.then29.i.for.inc72.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72.i

if.end32.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool34.not.i = icmp eq i32 %34, 0
  %spec.select2.i = select i1 %tobool34.not.i, ptr %best.i, ptr %17
  %add.i = add nuw nsw i32 %i.110.i, 3
  %arrayidx38.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add.i
  %44 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp40.i = icmp eq i32 %45, 1
  br i1 %cmp40.i, label %if.then42.i, label %if.end32.i.if.end64.i_crit_edge

if.end32.i.if.end64.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then42.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select2.sroa.sel.i = select i1 %tobool34.not.i, ptr %17, ptr %19
  %time44.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add.i, i32 1
  %46 = ptrtoint ptr %time44.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %time44.i, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %36, i32 %47) #6
  br label %if.end64.i

if.else.i:                                        ; preds = %lor.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %brmerge.i = select i1 %42, i1 true, i1 %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool54.not.i = icmp ne i32 %34, 0
  %narrow.i = select i1 %brmerge.i, i1 true, i1 %tobool54.not.i
  %bp.1.v.i = zext i1 %narrow.i to i32
  %bp.1.i = getelementptr %struct.best, ptr %best.i, i32 %bp.1.v.i
  %spec.select4.idx.i = zext i1 %tobool54.not.i to i32
  %spec.select4.i = getelementptr %struct.best, ptr %bp.1.i, i32 %spec.select4.idx.i
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else.i, %if.then42.i, %if.end32.i.if.end64.i_crit_edge
  %voice_time.0.i = phi i32 [ %48, %if.then42.i ], [ %36, %if.end32.i.if.end64.i_crit_edge ], [ %36, %if.else.i ]
  %bp.2.i = phi ptr [ %spec.select2.sroa.sel.i, %if.then42.i ], [ %spec.select2.i, %if.end32.i.if.end64.i_crit_edge ], [ %spec.select4.i, %if.else.i ]
  %49 = ptrtoint ptr %bp.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bp.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %voice_time.0.i, i32 %50)
  %cmp66.i = icmp ult i32 %voice_time.0.i, %50
  br i1 %cmp66.i, label %if.then68.i, label %if.end64.i.for.inc72.i_crit_edge

if.end64.i.for.inc72.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc72.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %bp.2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %voice_time.0.i, ptr %bp.2.i, align 4
  %voice70.i = getelementptr inbounds %struct.best, ptr %bp.2.i, i32 0, i32 1
  %52 = ptrtoint ptr %voice70.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %i.110.i, ptr %voice70.i, align 4
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.then68.i, %if.end64.i.for.inc72.i_crit_edge, %if.then29.i.for.inc72.i_crit_edge, %for.body5.i.for.inc72.i_crit_edge
  %inc73.i = add nuw nsw i32 %i.110.i, 1
  %exitcond.not.i = icmp eq i32 %inc73.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc72.i.for.cond75.preheader.i_crit_edge, label %for.inc72.i.for.body5.i_crit_edge

for.inc72.i.for.body5.i_crit_edge:                ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.inc72.i.for.cond75.preheader.i_crit_edge:     ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond75.preheader.i

for.cond75.i:                                     ; preds = %for.cond75.preheader.i
  %53 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp81.1.i = icmp sgt i32 %54, -1
  br i1 %cmp81.1.i, label %for.cond75.i.opl3_get_voice.exit_crit_edge, label %for.cond75.1.i

for.cond75.i.opl3_get_voice.exit_crit_edge:       ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opl3_get_voice.exit

for.cond75.1.i:                                   ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %20, align 4
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 -1) #6
  br label %opl3_get_voice.exit

opl3_get_voice.exit:                              ; preds = %for.cond75.1.i, %for.cond75.i.opl3_get_voice.exit_crit_edge, %for.cond75.preheader.i.opl3_get_voice.exit_crit_edge
  %retval.0.i = phi i32 [ %32, %for.cond75.preheader.i.opl3_get_voice.exit_crit_edge ], [ %54, %for.cond75.i.opl3_get_voice.exit_crit_edge ], [ %57, %for.cond75.1.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %best.i) #6
  br label %if.end42

if.else39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %number40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %number40, align 4
  %arrayidx41 = getelementptr [18 x i32], ptr @snd_opl3_oss_map, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %opl3_get_voice.exit
  %voice.0 = phi i32 [ %retval.0.i, %opl3_get_voice.exit ], [ %61, %if.else39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voice.0)
  %cmp43 = icmp slt i32 %voice.0, 0
  br i1 %cmp43, label %if.end42.cleanup.sink.split_crit_edge, label %if.end47

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %voice.0)
  %cmp48 = icmp ult i32 %voice.0, 9
  %conv51 = trunc i32 %voice.0 to i8
  br i1 %cmp48, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 1, %voice.0
  br label %if.end60

if.else54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %conv55 = add i8 %conv51, -9
  %conv56 = zext i8 %conv55 to i32
  %shl57 = shl i32 8, %conv56
  br label %if.end60

if.end60:                                         ; preds = %if.else54, %if.then50
  %shl57.sink = phi i32 [ %shl57, %if.else54 ], [ %shl, %if.then50 ]
  %.sink722 = phi i16 [ 56, %if.else54 ], [ 7, %if.then50 ]
  %reg_side.0 = phi i32 [ 256, %if.else54 ], [ 0, %if.then50 ]
  %voice_offset.0 = phi i8 [ %conv55, %if.else54 ], [ %conv51, %if.then50 ]
  %62 = trunc i32 %shl57.sink to i16
  %conv59 = and i16 %.sink722, %62
  %arrayidx61 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0
  %63 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp62 = icmp sgt i32 %64, 0
  br i1 %cmp62, label %if.then64, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %conv66 = zext i8 %voice_offset.0 to i32
  %add = add nuw nsw i32 %conv66, 176
  %or = or i32 %add, %reg_side.0
  %conv67 = trunc i32 %or to i16
  %keyon_reg = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 5
  %65 = ptrtoint ptr %keyon_reg to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %keyon_reg, align 4
  %67 = and i8 %66, -33
  %68 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %command, align 4
  tail call void %69(ptr noundef %p, i16 noundef zeroext %conv67, i8 noundef zeroext %67) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %if.end60.if.end71_crit_edge
  br i1 %tobool72.not, label %if.else111, label %if.then73

if.then73:                                        ; preds = %if.end71
  %add75 = add nuw i32 %voice.0, 3
  %arrayidx76 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add75
  %70 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp78 = icmp sgt i32 %71, 0
  br i1 %cmp78, label %if.then80, label %if.then73.if.then95_crit_edge

if.then73.if.then95_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95

if.then80:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %conv82 = zext i8 %voice_offset.0 to i32
  %add84 = add nuw nsw i32 %conv82, 179
  %or85 = or i32 %add84, %reg_side.0
  %conv86 = trunc i32 %or85 to i16
  %keyon_reg87 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 5
  %72 = ptrtoint ptr %keyon_reg87 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %keyon_reg87, align 4
  %74 = and i8 %73, -33
  %75 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %command, align 4
  tail call void %76(ptr noundef %p, i16 noundef zeroext %conv86, i8 noundef zeroext %74) #6
  br label %if.then95

if.then95:                                        ; preds = %if.then80, %if.then73.if.then95_crit_edge
  %77 = ptrtoint ptr %connection_reg to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %connection_reg, align 4
  %79 = xor i16 %78, -1
  %and99617 = and i16 %conv59, %79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and99617)
  %tobool100.not = icmp eq i16 %and99617, 0
  br i1 %tobool100.not, label %if.then95.for.body_crit_edge, label %if.then101

if.then95.for.body_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then101:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %or105618 = or i16 %78, %conv59
  br label %if.end130.sink.split

if.else111:                                       ; preds = %if.end71
  %80 = ptrtoint ptr %connection_reg to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %connection_reg, align 4
  %and117614 = and i16 %81, %conv59
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and117614)
  %tobool118.not = icmp eq i16 %and117614, 0
  br i1 %tobool118.not, label %if.else111.for.body_crit_edge, label %if.then119

if.else111.for.body_crit_edge:                    ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then119:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i16 %conv59, -1
  %and124 = and i16 %81, %neg
  br label %if.end130.sink.split

if.end130.sink.split:                             ; preds = %if.then119, %if.then101
  %and124.sink723 = phi i16 [ %and124, %if.then119 ], [ %or105618, %if.then101 ]
  %cond.ph = phi i32 [ 2, %if.then119 ], [ 4, %if.then101 ]
  %82 = ptrtoint ptr %connection_reg to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %and124.sink723, ptr %connection_reg, align 4
  %83 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %command, align 4
  %conv128 = trunc i16 %and124.sink723 to i8
  tail call void %84(ptr noundef %p, i16 noundef zeroext 260, i8 noundef zeroext %conv128) #6
  br label %for.body

for.body:                                         ; preds = %if.end130.sink.split, %if.else111.for.body_crit_edge, %if.then95.for.body_crit_edge
  %cond = phi i32 [ 2, %if.else111.for.body_crit_edge ], [ 4, %if.then95.for.body_crit_edge ], [ %cond.ph, %if.end130.sink.split ]
  %ksl_level = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %ksl_level to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ksl_level, align 1
  %87 = ptrtoint ptr %vol_op to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %vol_op, align 4
  %ksl_level.1 = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %ksl_level.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ksl_level.1, align 1
  %90 = ptrtoint ptr %arrayidx135.1 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx135.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %exitcond.not.1 = icmp eq i32 %cond, 2
  br i1 %exitcond.not.1, label %for.body.for.end_crit_edge, label %for.body.2

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ksl_level.2 = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %ksl_level.2 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ksl_level.2, align 1
  %93 = ptrtoint ptr %arrayidx135.2 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx135.2, align 2
  %ksl_level.3 = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 0, i32 3, i32 1
  %94 = ptrtoint ptr %ksl_level.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ksl_level.3, align 1
  %96 = ptrtoint ptr %arrayidx135.3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx135.3, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.for.end_crit_edge
  %feedback_connection = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %feedback_connection to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %feedback_connection, align 1
  %99 = and i8 %98, 1
  br i1 %tobool72.not, label %if.else161, label %if.then141

if.then141:                                       ; preds = %for.end
  %100 = shl nuw nsw i8 %99, 1
  %arrayidx146 = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx146, align 1
  %103 = and i8 %102, 1
  %or150615 = or i8 %103, %100
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i, align 1
  %conv.i622 = zext i8 %105 to i32
  %mul.i = mul i32 %conv.i622, %vel
  %106 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %107 to i32
  %mul4.i = mul i32 %mul.i, %conv3.i
  %div.i = sdiv i32 %mul4.i, 16129
  %108 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 127) #6
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %2, align 1
  %111 = and i8 %110, 63
  %112 = xor i8 %111, 63
  %sub.i = zext i8 %112 to i32
  %arrayidx7.i = getelementptr [128 x i8], ptr @opl3_volume_table, i32 0, i32 %108
  %113 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %114 to i32
  %add.i623 = add nuw nsw i32 %sub.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i623)
  %cmp9.i = icmp ugt i32 %add.i623, 63
  %115 = trunc i32 %add.i623 to i8
  %116 = and i8 %115, 63
  %phi.cast.i = xor i8 %116, 63
  %newvol.0.i = select i1 %cmp9.i, i8 0, i8 %phi.cast.i
  %117 = and i8 %110, -64
  %conv22.i = or i8 %newvol.0.i, %117
  %118 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv22.i, ptr %2, align 1
  %conv153 = zext i8 %or150615 to i32
  %119 = zext i32 %conv153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %conv153, label %if.then141.if.end167_crit_edge [
    i32 3, label %sw.bb154
    i32 2, label %if.then141.sw.bb156_crit_edge
    i32 1, label %sw.bb158
  ]

if.then141.sw.bb156_crit_edge:                    ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb156

if.then141.if.end167_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

sw.bb154:                                         ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %1, align 2
  %122 = and i8 %121, 63
  %123 = xor i8 %122, 63
  %sub.i631 = zext i8 %123 to i32
  %add.i634 = add nuw nsw i32 %sub.i631, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i634)
  %cmp9.i635 = icmp ugt i32 %add.i634, 63
  %124 = trunc i32 %add.i634 to i8
  %125 = and i8 %124, 63
  %phi.cast.i636 = xor i8 %125, 63
  %newvol.0.i637 = select i1 %cmp9.i635, i8 0, i8 %phi.cast.i636
  %126 = and i8 %121, -64
  %conv22.i638 = or i8 %newvol.0.i637, %126
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv22.i638, ptr %1, align 2
  br label %sw.bb156

sw.bb156:                                         ; preds = %sw.bb154, %if.then141.sw.bb156_crit_edge
  %128 = ptrtoint ptr %vol_op to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %vol_op, align 4
  %130 = and i8 %129, 63
  %131 = xor i8 %130, 63
  %sub.i646 = zext i8 %131 to i32
  %add.i649 = add nuw nsw i32 %sub.i646, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i649)
  %cmp9.i650 = icmp ugt i32 %add.i649, 63
  %132 = trunc i32 %add.i649 to i8
  %133 = and i8 %132, 63
  %phi.cast.i651 = xor i8 %133, 63
  %newvol.0.i652 = select i1 %cmp9.i650, i8 0, i8 %phi.cast.i651
  %134 = and i8 %129, -64
  %conv22.i653 = or i8 %newvol.0.i652, %134
  %135 = ptrtoint ptr %vol_op to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv22.i653, ptr %vol_op, align 4
  br label %if.end167

sw.bb158:                                         ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %0, align 1
  %138 = and i8 %137, 63
  %139 = xor i8 %138, 63
  %sub.i661 = zext i8 %139 to i32
  %add.i664 = add nuw nsw i32 %sub.i661, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i664)
  %cmp9.i665 = icmp ugt i32 %add.i664, 63
  %140 = trunc i32 %add.i664 to i8
  %141 = and i8 %140, 63
  %phi.cast.i666 = xor i8 %141, 63
  %newvol.0.i667 = select i1 %cmp9.i665, i8 0, i8 %phi.cast.i666
  %142 = and i8 %137, -64
  %conv22.i668 = or i8 %newvol.0.i667, %142
  %143 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv22.i668, ptr %0, align 1
  br label %if.end167

if.else161:                                       ; preds = %for.end
  %144 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i, align 1
  %conv.i670 = zext i8 %145 to i32
  %mul.i671 = mul i32 %conv.i670, %vel
  %146 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i673 = zext i8 %147 to i32
  %mul4.i674 = mul i32 %mul.i671, %conv3.i673
  %div.i675 = sdiv i32 %mul4.i674, 16129
  %148 = tail call i32 @llvm.smin.i32(i32 %div.i675, i32 127) #6
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %0, align 1
  %151 = and i8 %150, 63
  %152 = xor i8 %151, 63
  %sub.i676 = zext i8 %152 to i32
  %arrayidx7.i677 = getelementptr [128 x i8], ptr @opl3_volume_table, i32 0, i32 %148
  %153 = ptrtoint ptr %arrayidx7.i677 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx7.i677, align 1
  %conv8.i678 = zext i8 %154 to i32
  %add.i679 = add nuw nsw i32 %sub.i676, %conv8.i678
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i679)
  %cmp9.i680 = icmp ugt i32 %add.i679, 63
  %155 = trunc i32 %add.i679 to i8
  %156 = and i8 %155, 63
  %phi.cast.i681 = xor i8 %156, 63
  %newvol.0.i682 = select i1 %cmp9.i680, i8 0, i8 %phi.cast.i681
  %157 = and i8 %150, -64
  %conv22.i683 = or i8 %newvol.0.i682, %157
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv22.i683, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool163.not = icmp eq i8 %99, 0
  br i1 %tobool163.not, label %if.else161.if.end167_crit_edge, label %if.then164

if.else161.if.end167_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then164:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %vol_op to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %vol_op, align 4
  %161 = and i8 %160, 63
  %162 = xor i8 %161, 63
  %sub.i691 = zext i8 %162 to i32
  %add.i694 = add nuw nsw i32 %sub.i691, %conv8.i678
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add.i694)
  %cmp9.i695 = icmp ugt i32 %add.i694, 63
  %163 = trunc i32 %add.i694 to i8
  %164 = and i8 %163, 63
  %phi.cast.i696 = xor i8 %164, 63
  %newvol.0.i697 = select i1 %cmp9.i695, i8 0, i8 %phi.cast.i696
  %165 = and i8 %160, -64
  %conv22.i698 = or i8 %newvol.0.i697, %165
  %166 = ptrtoint ptr %vol_op to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv22.i698, ptr %vol_op, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.else161.if.end167_crit_edge, %sw.bb158, %sw.bb156, %if.then141.if.end167_crit_edge
  %idxprom = zext i8 %voice_offset.0 to i32
  br label %for.body173

for.body173:                                      ; preds = %for.body173.for.body173_crit_edge, %if.end167
  %i.1711 = phi i32 [ 0, %if.end167 ], [ %inc216, %for.body173.for.body173_crit_edge ]
  %arrayidx175 = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom, i32 %i.1711
  %167 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx175, align 1
  %arrayidx177 = getelementptr [4 x %struct.fm_operator], ptr %inst, i32 0, i32 %i.1711
  %169 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx177, align 1
  %conv179 = zext i8 %168 to i32
  %add180 = add nuw nsw i32 %conv179, 32
  %or181 = or i32 %add180, %reg_side.0
  %conv182 = trunc i32 %or181 to i16
  %171 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %command, align 4
  tail call void %172(ptr noundef %p, i16 noundef zeroext %conv182, i8 noundef zeroext %170) #6
  %arrayidx184 = getelementptr [4 x i8], ptr %vol_op, i32 0, i32 %i.1711
  %173 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx184, align 1
  %add187 = add nuw nsw i32 %conv179, 64
  %or188 = or i32 %add187, %reg_side.0
  %conv189 = trunc i32 %or188 to i16
  %175 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %command, align 4
  tail call void %176(ptr noundef %p, i16 noundef zeroext %conv189, i8 noundef zeroext %174) #6
  %attack_decay = getelementptr [4 x %struct.fm_operator], ptr %inst, i32 0, i32 %i.1711, i32 2
  %177 = ptrtoint ptr %attack_decay to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %attack_decay, align 1
  %add195 = add nuw nsw i32 %conv179, 96
  %or196 = or i32 %add195, %reg_side.0
  %conv197 = trunc i32 %or196 to i16
  %179 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %command, align 4
  tail call void %180(ptr noundef %p, i16 noundef zeroext %conv197, i8 noundef zeroext %178) #6
  %sustain_release = getelementptr [4 x %struct.fm_operator], ptr %inst, i32 0, i32 %i.1711, i32 3
  %181 = ptrtoint ptr %sustain_release to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %sustain_release, align 1
  %add203 = add nuw nsw i32 %conv179, 128
  %or204 = or i32 %add203, %reg_side.0
  %conv205 = trunc i32 %or204 to i16
  %183 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %command, align 4
  tail call void %184(ptr noundef %p, i16 noundef zeroext %conv205, i8 noundef zeroext %182) #6
  %wave_select = getelementptr [4 x %struct.fm_operator], ptr %inst, i32 0, i32 %i.1711, i32 4
  %185 = ptrtoint ptr %wave_select to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %wave_select, align 1
  %add211 = add nuw nsw i32 %conv179, 224
  %or212 = or i32 %add211, %reg_side.0
  %conv213 = trunc i32 %or212 to i16
  %187 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %command, align 4
  tail call void %188(ptr noundef %p, i16 noundef zeroext %conv213, i8 noundef zeroext %186) #6
  %inc216 = add nuw nsw i32 %i.1711, 1
  %exitcond721.not = icmp eq i32 %inc216, %cond
  br i1 %exitcond721.not, label %for.end217, label %for.body173.for.body173_crit_edge

for.body173.for.body173_crit_edge:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body173

for.end217:                                       ; preds = %for.body173
  %189 = ptrtoint ptr %feedback_connection to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %feedback_connection, align 1
  %191 = or i8 %190, 48
  %192 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx224, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %193)
  %cmp226 = icmp ult i8 %193, 43
  %194 = and i8 %191, -33
  %spec.select = select i1 %cmp226, i8 %194, i8 %191
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %193)
  %cmp236 = icmp ugt i8 %193, 85
  %195 = and i8 %spec.select, -17
  %reg_val.1 = select i1 %cmp236, i8 %195, i8 %spec.select
  %add245 = add nuw nsw i32 %idxprom, 192
  %or246 = or i32 %add245, %reg_side.0
  %conv247 = trunc i32 %or246 to i16
  %196 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %command, align 4
  tail call void %197(ptr noundef %p, i16 noundef zeroext %conv247, i8 noundef zeroext %reg_val.1) #6
  br i1 %tobool72.not, label %for.end217.if.end286_crit_edge, label %if.then250

for.end217.if.end286_crit_edge:                   ; preds = %for.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

if.then250:                                       ; preds = %for.end217
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx252 = getelementptr %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 1, i32 1
  %198 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx252, align 1
  %200 = and i8 %199, 1
  %201 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx224, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %202)
  %cmp262 = icmp ult i8 %202, 43
  %spec.select620.v = select i1 %cmp262, i8 16, i8 48
  %spec.select620 = or i8 %spec.select620.v, %200
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %202)
  %cmp272 = icmp ugt i8 %202, 85
  %203 = and i8 %spec.select620, 33
  %reg_val.3 = select i1 %cmp272, i8 %203, i8 %spec.select620
  %add282 = add nuw nsw i32 %idxprom, 195
  %or283 = or i32 %add282, %reg_side.0
  %conv284 = trunc i32 %or283 to i16
  %204 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %command, align 4
  tail call void %205(ptr noundef %p, i16 noundef zeroext %conv284, i8 noundef zeroext %reg_val.3) #6
  br label %if.end286

if.end286:                                        ; preds = %if.then250, %for.end217.if.end286_crit_edge
  %fix_key = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 8
  %206 = ptrtoint ptr %fix_key to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %fix_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool287.not = icmp eq i8 %207, 0
  %conv290 = zext i8 %207 to i32
  %spec.select621 = select i1 %tobool287.not, i32 %note.addr.0717, i32 %conv290
  %trnsps = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 5
  %208 = ptrtoint ptr %trnsps to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %trnsps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool292.not = icmp eq i8 %209, 0
  %conv295 = zext i8 %209 to i32
  %sub296 = add nsw i32 %conv295, -64
  %add297 = select i1 %tobool292.not, i32 0, i32 %sub296
  %note.addr.2 = add i32 %add297, %spec.select621
  %note.addr.2.frozen = freeze i32 %note.addr.2
  %div.i704 = sdiv i32 %note.addr.2.frozen, 12
  %210 = mul i32 %div.i704, 12
  %rem.i.decomposed = sub i32 %note.addr.2.frozen, %210
  %add.i699 = add nsw i32 %rem.i.decomposed, 2
  %211 = ptrtoint ptr %midi_pitchbend.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %midi_pitchbend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool.not.i700 = icmp eq i16 %212, 0
  br i1 %tobool.not.i700, label %if.else.i703, label %if.then.i

if.then.i:                                        ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  %213 = tail call i16 @llvm.smax.i16(i16 %212, i16 -8192) #6
  %214 = tail call i16 @llvm.smin.i16(i16 %213, i16 8191) #6
  %.frozen = freeze i16 %214
  %div838.i = sdiv i16 %.frozen, 4096
  %div8.sext.i = sext i16 %div838.i to i32
  %add9.i = add nsw i32 %add.i699, %div8.sext.i
  %arrayidx.i701 = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add9.i
  %215 = ptrtoint ptr %arrayidx.i701 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx.i701, align 2
  %conv10.i = sext i16 %216 to i32
  %add12.i = add nsw i32 %add9.i, 1
  %arrayidx13.i = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add12.i
  %217 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = sext i16 %218 to i32
  %sub15.i = sub nsw i32 %conv14.i, %conv10.i
  %219 = mul i16 %div838.i, 4096
  %rem1639.i.decomposed = sub i16 %.frozen, %219
  %rem16.sext.i = sext i16 %rem1639.i.decomposed to i32
  %mul.i702 = mul nsw i32 %sub15.i, %rem16.sext.i
  %div17.i = sdiv i32 %mul.i702, 4096
  %add18.i = add nsw i32 %div17.i, %conv10.i
  br label %snd_opl3_calc_pitch.exit

if.else.i703:                                     ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19.i = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add.i699
  %220 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx19.i, align 2
  %conv2040.i = zext i16 %221 to i32
  br label %snd_opl3_calc_pitch.exit

snd_opl3_calc_pitch.exit:                         ; preds = %if.else.i703, %if.then.i
  %freq.0.i = phi i32 [ %add18.i, %if.then.i ], [ %conv2040.i, %if.else.i703 ]
  %conv22.i705 = trunc i32 %freq.0.i to i8
  %222 = lshr i32 %freq.0.i, 8
  %and23.i = and i32 %222, 3
  %and.i = shl nsw i32 %div.i704, 2
  %shl.i = add nsw i32 %and.i, 28
  %and24.i = and i32 %shl.i, 28
  %or.i = or i32 %and23.i, %and24.i
  %conv25.i = trunc i32 %or.i to i8
  %add301 = add nuw nsw i32 %idxprom, 160
  %or302 = or i32 %add301, %reg_side.0
  %conv303 = trunc i32 %or302 to i16
  %223 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %command, align 4
  tail call void %224(ptr noundef %p, i16 noundef zeroext %conv303, i8 noundef zeroext %conv22.i705) #6
  %keyon_reg307 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 5
  %225 = ptrtoint ptr %keyon_reg307 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv25.i, ptr %keyon_reg307, align 4
  %226 = or i8 %conv25.i, 32
  %add313 = add nuw nsw i32 %idxprom, 176
  %or314 = or i32 %add313, %reg_side.0
  %conv315 = trunc i32 %or314 to i16
  %227 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %command, align 4
  tail call void %228(ptr noundef %p, i16 noundef zeroext %conv315, i8 noundef zeroext %226) #6
  %fix_dur = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 6
  %229 = ptrtoint ptr %fix_dur to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %fix_dur, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool317.not = icmp eq i8 %230, 0
  br i1 %tobool317.not, label %snd_opl3_calc_pitch.exit.if.end330_crit_edge, label %if.then318

snd_opl3_calc_pitch.exit.if.end330_crit_edge:     ; preds = %snd_opl3_calc_pitch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

if.then318:                                       ; preds = %snd_opl3_calc_pitch.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %231 = load volatile i32, ptr @jiffies, align 128
  %conv320 = zext i8 %230 to i32
  %add321 = add i32 %231, %conv320
  %note_off = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 3
  %232 = ptrtoint ptr %note_off to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add321, ptr %note_off, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sys_timer_lock.i) #6
  %233 = ptrtoint ptr %sys_timer_status.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %sys_timer_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i706 = icmp eq i32 %234, 0
  br i1 %tobool.not.i706, label %if.then.i708, label %if.then318.snd_opl3_start_timer.exit_crit_edge

if.then318.snd_opl3_start_timer.exit_crit_edge:   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_start_timer.exit

if.then.i708:                                     ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %235 = load volatile i32, ptr @jiffies, align 128
  %add.i707 = add i32 %235, 1
  %call5.i = tail call i32 @mod_timer(ptr noundef %tlist.i, i32 noundef %add.i707) #6
  %236 = ptrtoint ptr %sys_timer_status.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1, ptr %sys_timer_status.i, align 4
  br label %snd_opl3_start_timer.exit

snd_opl3_start_timer.exit:                        ; preds = %if.then.i708, %if.then318.snd_opl3_start_timer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sys_timer_lock.i, i32 noundef %call2.i) #6
  br label %if.end330

if.end330:                                        ; preds = %snd_opl3_start_timer.exit, %snd_opl3_calc_pitch.exit.if.end330_crit_edge
  %.sink = phi i32 [ 1, %snd_opl3_start_timer.exit ], [ 0, %snd_opl3_calc_pitch.exit.if.end330_crit_edge ]
  %note_off_check329 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 4
  %237 = ptrtoint ptr %note_off_check329 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %.sink, ptr %note_off_check329, align 4
  br i1 %tobool331.not716, label %cond.false, label %if.end330.cond.end_crit_edge

if.end330.cond.end_crit_edge:                     ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  %modes = getelementptr inbounds %struct.fm_patch, ptr %call21718, i32 0, i32 3, i32 7
  %238 = ptrtoint ptr %modes to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %modes, align 1
  %conv332 = zext i8 %239 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end330.cond.end_crit_edge
  %cond333 = phi i32 [ %conv332, %cond.false ], [ 0, %if.end330.cond.end_crit_edge ]
  %240 = ptrtoint ptr %use_time to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %use_time, align 4
  %inc334 = add i32 %241, 1
  store i32 %inc334, ptr %use_time, align 4
  %time = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 1
  %242 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %time, align 4
  %note336 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 2
  %243 = ptrtoint ptr %note336 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv335, ptr %note336, align 4
  %chan337 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.0, i32 6
  %244 = ptrtoint ptr %chan337 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %chan, ptr %chan337, align 4
  br i1 %tobool72.not, label %if.else351, label %if.then339

if.then339:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %245 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 2, ptr %arrayidx61, align 4
  %add342 = add i32 %voice.0, 3
  %arrayidx343 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add342
  %246 = ptrtoint ptr %use_time to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %use_time, align 4
  %inc345 = add i32 %247, 1
  store i32 %inc345, ptr %use_time, align 4
  %time346 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add342, i32 1
  %248 = ptrtoint ptr %time346 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %time346, align 4
  %note348 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add342, i32 2
  %249 = ptrtoint ptr %note348 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv335, ptr %note348, align 4
  %chan349 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add342, i32 6
  %250 = ptrtoint ptr %chan349 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %chan, ptr %chan349, align 4
  %251 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 -1, ptr %arrayidx343, align 4
  br label %if.end365

if.else351:                                       ; preds = %cond.end
  %252 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %253)
  %cmp353 = icmp eq i32 %253, 2
  br i1 %cmp353, label %if.then355, label %if.else351.if.end363_crit_edge

if.else351.if.end363_crit_edge:                   ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end363

if.then355:                                       ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #8
  %add357 = add i32 %voice.0, 3
  %arrayidx358 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add357
  %254 = ptrtoint ptr %use_time to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %use_time, align 4
  %inc360 = add i32 %255, 1
  store i32 %inc360, ptr %use_time, align 4
  %time361 = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %add357, i32 1
  %256 = ptrtoint ptr %time361 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %time361, align 4
  %257 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %arrayidx358, align 4
  br label %if.end363

if.end363:                                        ; preds = %if.then355, %if.else351.if.end363_crit_edge
  %258 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %arrayidx61, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.end363, %if.then339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond333)
  %tobool366.not = icmp eq i32 %cond333, 0
  br i1 %tobool366.not, label %if.end365.cleanup.sink.split_crit_edge, label %if.then367

if.end365.cleanup.sink.split_crit_edge:           ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then367:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cond333)
  %cmp368 = icmp ugt i32 %cond333, 128
  %prg.2.v = select i1 %cmp368, i32 162, i32 255
  %prg.2 = add nuw nsw i32 %prg.2.v, %cond333
  %conv19 = and i32 %prg.2, 255
  %conv20 = select i1 %cmp368, i32 128, i32 0
  %call21 = tail call ptr @snd_opl3_find_patch(ptr noundef %p, i32 noundef %conv19, i32 noundef %conv20, i32 noundef 0) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then367.cleanup.sink.split_crit_edge, label %if.then367.if.end25_crit_edge

if.then367.if.end25_crit_edge:                    ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then367.cleanup.sink.split_crit_edge:          ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then367.cleanup.sink.split_crit_edge, %if.end365.cleanup.sink.split_crit_edge, %if.end42.cleanup.sink.split_crit_edge, %sw.bb27.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %if.then16, %__extra_prg.preheader.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call12) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else2.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol_op) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_drum_switch(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_opl3_find_patch(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_note_off(ptr noundef %p, i32 noundef %note, i32 noundef %vel, ptr noundef %chan) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  tail call fastcc void @snd_opl3_note_off_unsafe(ptr noundef %p, i32 noundef %note, i32 noundef %vel, ptr noundef %chan)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_key_press(ptr nocapture noundef %p, i32 noundef %note, i32 noundef %vel, ptr nocapture noundef %chan) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_terminate_note(ptr nocapture noundef %p, i32 noundef %note, ptr nocapture noundef %chan) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_control(ptr noundef %p, i32 noundef %type, ptr noundef readonly %chan) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 92, label %sw.bb8
    i32 128, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %drum_reg = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 29
  %3 = ptrtoint ptr %drum_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %drum_reg, align 2
  %5 = and i8 %4, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp.inv = icmp ult i8 %2, 64
  %masksel41 = select i1 %cmp.inv, i8 0, i8 64
  %.sink = or i8 %5, %masksel41
  %6 = ptrtoint ptr %drum_reg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %drum_reg, align 2
  %command = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %command, align 4
  tail call void %8(ptr noundef %p, i16 noundef zeroext 189, i8 noundef zeroext %.sink) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 92
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %10)
  %cmp12 = icmp ugt i8 %10, 63
  %drum_reg15 = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 29
  %11 = ptrtoint ptr %drum_reg15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %drum_reg15, align 2
  %13 = and i8 %12, 127
  %masksel = select i1 %cmp12, i8 -128, i8 0
  %.sink40 = or i8 %13, %masksel
  store i8 %.sink40, ptr %drum_reg15, align 2
  %command25 = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 5
  %14 = ptrtoint ptr %command25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %command25, align 4
  tail call void %15(ptr noundef %p, i16 noundef zeroext 189, i8 noundef zeroext %.sink40) #6
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %voice_lock.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 30
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #6
  %synth_mode.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 19
  %16 = ptrtoint ptr %synth_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %synth_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp5.i = icmp eq i32 %17, 1
  br i1 %cmp5.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %sw.bb27
  %max_voices.i = getelementptr inbounds %struct.snd_opl3, ptr %p, i32 0, i32 18
  %18 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_voices.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp838.not.i = icmp eq i8 %19, 0
  br i1 %cmp838.not.i, label %for.cond.preheader.i.snd_opl3_pitch_ctrl.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.snd_opl3_pitch_ctrl.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_pitch_ctrl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %voice.039.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.039.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.i = icmp sgt i32 %21, 0
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %chan12.i = getelementptr %struct.snd_opl3, ptr %p, i32 0, i32 26, i32 %voice.039.i, i32 6
  %22 = ptrtoint ptr %chan12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan12.i, align 4
  %cmp13.i = icmp eq ptr %23, %chan
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_opl3_update_pitch(ptr noundef %p, i32 noundef %voice.039.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then15.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %voice.039.i, 1
  %24 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_voices.i, align 2
  %conv7.i = zext i8 %25 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.snd_opl3_pitch_ctrl.exit_crit_edge

for.inc.i.snd_opl3_pitch_ctrl.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_pitch_ctrl.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.else.i:                                        ; preds = %sw.bb27
  %number.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 1
  %26 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %27)
  %cmp16.i = icmp slt i32 %27, 18
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i.snd_opl3_pitch_ctrl.exit_crit_edge

if.else.i.snd_opl3_pitch_ctrl.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_pitch_ctrl.exit

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20.i = getelementptr [18 x i32], ptr @snd_opl3_oss_map, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20.i, align 4
  tail call fastcc void @snd_opl3_update_pitch(ptr noundef %p, i32 noundef %29) #6
  br label %snd_opl3_pitch_ctrl.exit

snd_opl3_pitch_ctrl.exit:                         ; preds = %if.then18.i, %if.else.i.snd_opl3_pitch_ctrl.exit_crit_edge, %for.inc.i.snd_opl3_pitch_ctrl.exit_crit_edge, %for.cond.preheader.i.snd_opl3_pitch_ctrl.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i, i32 noundef %call2.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %snd_opl3_pitch_ctrl.exit, %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_nrpn(ptr nocapture noundef %p, ptr nocapture noundef %chan, ptr nocapture noundef %chset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_opl3_sysex(ptr nocapture noundef %p, ptr nocapture noundef %buf, i32 noundef %len, i32 noundef %parsed, ptr nocapture noundef %chset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_opl3_update_pitch(ptr noundef %opl3, i32 noundef %voice) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %voice)
  %cmp = icmp sgt i32 %voice, 17
  br i1 %cmp, label %do.end, label %if.end21, !prof !18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 733, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  %chan = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 %voice, i32 6
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %cmp22 = icmp eq ptr %1, null
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %voice)
  %cmp25 = icmp slt i32 %voice, 9
  %conv27 = add nsw i32 %voice, 247
  %voice_offset.0 = select i1 %cmp25, i32 %voice, i32 %conv27
  %reg_side.0 = select i1 %cmp25, i32 0, i32 256
  %note = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 %voice, i32 2
  %2 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %note, align 4
  %.frozen = freeze i8 %3
  %div.i6768 = udiv i8 %.frozen, 12
  %4 = mul i8 %div.i6768, 12
  %rem.i6566.decomposed = sub i8 %.frozen, %4
  %narrow = add nuw nsw i8 %rem.i6566.decomposed, 2
  %add.i = zext i8 %narrow to i32
  %midi_pitchbend.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %midi_pitchbend.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %midi_pitchbend.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i16 @llvm.smax.i16(i16 %6, i16 -8192) #6
  %8 = tail call i16 @llvm.smin.i16(i16 %7, i16 8191) #6
  %.frozen70 = freeze i16 %8
  %div838.i = sdiv i16 %.frozen70, 4096
  %div8.sext.i = sext i16 %div838.i to i32
  %add9.i = add nsw i32 %div8.sext.i, %add.i
  %arrayidx.i = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add9.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %conv10.i = sext i16 %10 to i32
  %add12.i = add nuw nsw i32 %add9.i, 1
  %arrayidx13.i = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add12.i
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = sext i16 %12 to i32
  %sub15.i = sub nsw i32 %conv14.i, %conv10.i
  %13 = mul i16 %div838.i, 4096
  %rem1639.i.decomposed = sub i16 %.frozen70, %13
  %rem16.sext.i = sext i16 %rem1639.i.decomposed to i32
  %mul.i = mul nsw i32 %sub15.i, %rem16.sext.i
  %div17.i = sdiv i32 %mul.i, 4096
  %add18.i = add nsw i32 %div17.i, %conv10.i
  br label %snd_opl3_calc_pitch.exit

if.else.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19.i = getelementptr [16 x i16], ptr @opl3_note_table, i32 0, i32 %add.i
  %14 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx19.i, align 2
  %conv2040.i = zext i16 %15 to i32
  br label %snd_opl3_calc_pitch.exit

snd_opl3_calc_pitch.exit:                         ; preds = %if.else.i, %if.then.i
  %freq.0.i = phi i32 [ %add18.i, %if.then.i ], [ %conv2040.i, %if.else.i ]
  %conv22.i = trunc i32 %freq.0.i to i8
  %16 = lshr i32 %freq.0.i, 8
  %17 = shl nuw nsw i8 %div.i6768, 2
  %narrow69 = add nuw nsw i8 %17, 28
  %18 = and i8 %narrow69, 28
  %19 = trunc i32 %16 to i8
  %20 = and i8 %19, 3
  %conv25.i = or i8 %20, %18
  %conv32 = and i32 %voice_offset.0, 255
  %add = add nuw nsw i32 %conv32, 160
  %or = or i32 %add, %reg_side.0
  %conv33 = trunc i32 %or to i16
  %command = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %21 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %command, align 4
  tail call void %22(ptr noundef %opl3, i16 noundef zeroext %conv33, i8 noundef zeroext %conv22.i) #6
  %keyon_reg = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 %voice, i32 5
  %23 = ptrtoint ptr %keyon_reg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv25.i, ptr %keyon_reg, align 4
  %24 = or i8 %conv25.i, 32
  %add39 = add nuw nsw i32 %conv32, 176
  %or40 = or i32 %add39, %reg_side.0
  %conv41 = trunc i32 %or40 to i16
  %25 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %command, align 4
  tail call void %26(ptr noundef %opl3, i16 noundef zeroext %conv41, i8 noundef zeroext %24) #6
  %use_time = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 27
  %27 = ptrtoint ptr %use_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_time, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %use_time, align 4
  %time = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 %voice, i32 1
  %29 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %time, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_opl3_calc_pitch.exit, %if.end21.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @opl3_volume_table, !1, !"opl3_volume_table", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_midi.c", i32 26, i32 19}
!2 = !{ptr @snd_opl3_oss_map, !3, !"snd_opl3_oss_map", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_midi.c", i32 268, i32 18}
!4 = !{ptr @opl3_note_table, !5, !"opl3_note_table", i1 false, i1 false}
!5 = !{!"../sound/drivers/opl3/opl3_midi.c", i32 72, i32 20}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/drivers/opl3/opl3_midi.c", i32 612, i32 6}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
