; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_effect.c_pt.bc'
source_filename = "../sound/synth/emux/emux_effect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.emux_parm_defs = type { i32, i32, i32, i32, i32 }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_emux_effect_table = type { [34 x i16], [34 x i8] }
%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emux_voice = type { i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.soundfont_voice_info, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.soundfont_voice_info = type { i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, %struct.soundfont_voice_parm, i16 }
%struct.soundfont_voice_parm = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [4 x i16] }
%struct.snd_sf_zone = type { ptr, i8, i8, i8, %struct.soundfont_voice_info, i32, ptr, ptr, ptr }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }

@parm_defs = internal constant { [34 x %struct.emux_parm_defs], [184 x i8] } { [34 x %struct.emux_parm_defs] [%struct.emux_parm_defs { i32 2, i32 0, i32 32768, i32 0, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 128, i32 2, i32 0 }, %struct.emux_parm_defs { i32 5, i32 0, i32 126, i32 2, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 127, i32 4, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 127, i32 6, i32 0 }, %struct.emux_parm_defs { i32 5, i32 0, i32 127, i32 4, i32 0 }, %struct.emux_parm_defs { i32 5, i32 0, i32 255, i32 28, i32 0 }, %struct.emux_parm_defs { i32 9, i32 0, i32 255, i32 28, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 32768, i32 12, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 128, i32 14, i32 0 }, %struct.emux_parm_defs { i32 5, i32 0, i32 126, i32 14, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 127, i32 16, i32 0 }, %struct.emux_parm_defs { i32 9, i32 1, i32 127, i32 18, i32 0 }, %struct.emux_parm_defs { i32 5, i32 0, i32 127, i32 16, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 32768, i32 24, i32 0 }, %struct.emux_parm_defs { i32 9, i32 0, i32 255, i32 32, i32 16 }, %struct.emux_parm_defs { i32 21, i32 -128, i32 127, i32 32, i32 16 }, %struct.emux_parm_defs { i32 21, i32 -128, i32 127, i32 30, i32 8 }, %struct.emux_parm_defs { i32 9, i32 0, i32 255, i32 30, i32 8 }, %struct.emux_parm_defs { i32 2, i32 0, i32 32768, i32 26, i32 0 }, %struct.emux_parm_defs { i32 9, i32 0, i32 255, i32 34, i32 32 }, %struct.emux_parm_defs { i32 21, i32 -128, i32 127, i32 34, i32 32 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 2 }, %struct.emux_parm_defs { i32 1, i32 0, i32 255, i32 38, i32 0 }, %struct.emux_parm_defs { i32 1, i32 0, i32 255, i32 39, i32 0 }, %struct.emux_parm_defs { i32 1, i32 0, i32 255, i32 36, i32 1 }, %struct.emux_parm_defs { i32 1, i32 0, i32 15, i32 37, i32 64 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 2, i32 0, i32 65535, i32 -1, i32 0 }, %struct.emux_parm_defs { i32 1, i32 0, i32 255, i32 -1, i32 1 }], [184 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"parm_defs\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../sound/synth/emux/emux_effect.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 42, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @parm_defs], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parm_defs to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_send_effect_oss(ptr noundef %port, ptr noundef %chan, i32 noundef %type, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %type, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %. = select i1 %tobool2.not, i32 1, i32 2
  %mode.0 = select i1 %tobool.not, i32 %., i32 0
  %and6 = and i32 %type, 63
  tail call void @snd_emux_send_effect(ptr noundef %port, ptr noundef %chan, i32 noundef %and6, i32 noundef %val, i32 noundef %mode.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_send_effect(ptr noundef %port, ptr noundef %chan, i32 noundef %type, i32 noundef %val, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu1 = getelementptr inbounds %struct.snd_emux_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %emu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu1, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cmp = icmp eq ptr %1, null
  %cmp2 = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %type)
  %4 = icmp ugt i32 %type, 33
  %or.cond106 = or i1 %4, %or.cond
  br i1 %or.cond106, label %entry.cleanup54_crit_edge, label %if.end7

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

if.end7:                                          ; preds = %entry
  %conv = trunc i32 %val to i16
  %arrayidx = getelementptr [34 x i16], ptr %3, i32 0, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %arrayidx, align 2
  %conv9 = trunc i32 %mode to i8
  %arrayidx10 = getelementptr %struct.snd_emux_effect_table, ptr %3, i32 0, i32 1, i32 %type
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %type
  %update = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %type, i32 4
  %7 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %update, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end7.cleanup54_crit_edge, label %if.end13

if.end7.cleanup54_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

if.end13:                                         ; preds = %if.end7
  %offset15 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %type, i32 3
  %9 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16 = icmp slt i32 %10, 0
  br i1 %cmp16, label %if.end13.cleanup54_crit_edge, label %if.end19

if.end13.cleanup54_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

if.end19:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %and = lshr i32 %12, 3
  %and.lobit = and i32 %and, 1
  %spec.select = add nuw i32 %and.lobit, %10
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31107 = icmp sgt i32 %14, 0
  br i1 %cmp31107, label %for.body.lr.ph, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  %low.i = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %type, i32 1
  %high.i = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %type, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %cleanup.for.body_crit_edge ]
  %15 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %voices, align 4
  %state = getelementptr %struct.snd_emux_voice, ptr %16, i32 %i.0108, i32 1
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %and34 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false36

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false36:                                  ; preds = %for.body
  %chan37 = getelementptr %struct.snd_emux_voice, ptr %16, i32 %i.0108, i32 8
  %19 = ptrtoint ptr %chan37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan37, align 4
  %cmp38.not = icmp eq ptr %20, %chan
  br i1 %cmp38.not, label %if.end41, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false36
  %parm = getelementptr %struct.snd_emux_voice, ptr %16, i32 %i.0108, i32 13, i32 22
  %add.ptr = getelementptr i8, ptr %parm, i32 %spec.select
  %zone = getelementptr %struct.snd_emux_voice, ptr %16, i32 %i.0108, i32 6
  %21 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zone, align 4
  %parm42 = getelementptr inbounds %struct.snd_sf_zone, ptr %22, i32 0, i32 4, i32 22
  %add.ptr43 = getelementptr i8, ptr %parm42, i32 %spec.select
  %arrayidx44 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0108
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx44, align 4
  %and46 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end41
  %25 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr43, align 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %add.ptr, align 1
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan, align 4
  %arrayidx.i = getelementptr [34 x i16], ptr %29, i32 0, i32 %type
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i, align 2
  %arrayidx1.i = getelementptr %struct.snd_emux_effect_table, ptr %29, i32 0, i32 1, i32 %type
  %32 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i = icmp eq i8 %33, 2
  %narrow = select i1 %cmp.i, i8 %26, i8 0
  %add11.i = zext i8 %narrow to i16
  %effect.0.i = add i16 %31, %add11.i
  %conv14.i = sext i16 %effect.0.i to i32
  %34 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv14.i)
  %cmp16.i = icmp sgt i32 %35, %conv14.i
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t.i = trunc i32 %35 to i8
  br label %effect_set_byte.exit

if.else22.i:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv14.i)
  %cmp25.i = icmp slt i32 %37, %conv14.i
  %extract.t49.i = trunc i16 %effect.0.i to i8
  %extract.t48.i = trunc i32 %37 to i8
  %spec.select.i = select i1 %cmp25.i, i8 %extract.t48.i, i8 %extract.t49.i
  br label %effect_set_byte.exit

effect_set_byte.exit:                             ; preds = %if.else22.i, %if.then18.i
  %effect.1.off0.i = phi i8 [ %extract.t.i, %if.then18.i ], [ %spec.select.i, %if.else22.i ]
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %effect.1.off0.i, ptr %add.ptr, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end41
  %39 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr43, align 2
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %add.ptr, align 2
  %42 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan, align 4
  %arrayidx.i99 = getelementptr [34 x i16], ptr %43, i32 0, i32 %type
  %44 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i99, align 2
  %conv.i = zext i16 %45 to i32
  %arrayidx1.i100 = getelementptr %struct.snd_emux_effect_table, ptr %43, i32 0, i32 1, i32 %type
  %46 = ptrtoint ptr %arrayidx1.i100 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.i100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i101 = icmp eq i8 %47, 2
  %conv4.i = zext i16 %40 to i32
  %add.i = select i1 %cmp.i101, i32 %conv4.i, i32 0
  %effect.0.i103 = add nuw nsw i32 %add.i, %conv.i
  %48 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %effect.0.i103, i32 %49)
  %cmp6.i = icmp slt i32 %effect.0.i103, %49
  br i1 %cmp6.i, label %if.else.effect_set_word.exit_crit_edge, label %if.else.i

if.else.effect_set_word.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %effect_set_word.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %high.i, align 4
  %52 = tail call i32 @llvm.smin.i32(i32 %effect.0.i103, i32 %51) #6
  br label %effect_set_word.exit

effect_set_word.exit:                             ; preds = %if.else.i, %if.else.effect_set_word.exit_crit_edge
  %effect.1.i = phi i32 [ %49, %if.else.effect_set_word.exit_crit_edge ], [ %52, %if.else.i ]
  %conv19.i = trunc i32 %effect.1.i to i16
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv19.i, ptr %add.ptr, align 2
  br label %cleanup

cleanup:                                          ; preds = %effect_set_word.exit, %effect_set_byte.exit, %lor.lhs.false36.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc50 = add nuw nsw i32 %i.0108, 1
  %54 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_voices, align 4
  %cmp31 = icmp slt i32 %inc50, %55
  br i1 %cmp31, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end19.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call28) #6
  tail call void @snd_emux_update_channel(ptr noundef %port, ptr noundef %chan, i32 noundef %8) #6
  br label %cleanup54

cleanup54:                                        ; preds = %for.end, %if.end13.cleanup54_crit_edge, %if.end7.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_update_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_setup_effect(ptr nocapture noundef %vp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %for.cond.preheader

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

for.cond.preheader:                               ; preds = %entry
  %parm = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.0119 = phi i32 [ 0, %for.cond.preheader ], [ %inc20, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_emux_effect_table, ptr %3, i32 0, i32 1, i32 %i.0119
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %offset6 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119, i32 3
  %6 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %arrayidx5 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %and = lshr i32 %9, 3
  %and.lobit = and i32 %and, 1
  %spec.select = add nuw i32 %and.lobit, %7
  %add.ptr = getelementptr i8, ptr %parm, i32 %spec.select
  %and16 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx.i65 = getelementptr [34 x i16], ptr %11, i32 0, i32 %i.0119
  %12 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i65, align 2
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end9
  %arrayidx1.i = getelementptr %struct.snd_emux_effect_table, ptr %11, i32 0, i32 1, i32 %i.0119
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp eq i8 %15, 2
  br i1 %cmp.i, label %if.then.i, label %if.then18.if.end13.i_crit_edge

if.then18.if.end13.i_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  %conv9.i = zext i8 %17 to i16
  %add11.i = add i16 %13, %conv9.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i, %if.then18.if.end13.i_crit_edge
  %effect.0.i = phi i16 [ %13, %if.then18.if.end13.i_crit_edge ], [ %add11.i, %if.then.i ]
  %conv14.i = sext i16 %effect.0.i to i32
  %low.i = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119, i32 1
  %18 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %low.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv14.i)
  %cmp16.i = icmp sgt i32 %19, %conv14.i
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %extract.t.i = trunc i32 %19 to i8
  br label %effect_set_byte.exit

if.else22.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %high.i = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119, i32 2
  %20 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv14.i)
  %cmp25.i = icmp slt i32 %21, %conv14.i
  %extract.t49.i = trunc i16 %effect.0.i to i8
  %extract.t48.i = trunc i32 %21 to i8
  %spec.select.i = select i1 %cmp25.i, i8 %extract.t48.i, i8 %extract.t49.i
  br label %effect_set_byte.exit

effect_set_byte.exit:                             ; preds = %if.else22.i, %if.then18.i
  %effect.1.off0.i = phi i8 [ %extract.t.i, %if.then18.i ], [ %spec.select.i, %if.else22.i ]
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %effect.1.off0.i, ptr %add.ptr, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %conv.i = zext i16 %13 to i32
  %arrayidx1.i66 = getelementptr %struct.snd_emux_effect_table, ptr %11, i32 0, i32 1, i32 %i.0119
  %23 = ptrtoint ptr %arrayidx1.i66 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i67 = icmp eq i8 %24, 2
  br i1 %cmp.i67, label %if.then.i68, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i68:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr, align 2
  %conv4.i = zext i16 %26 to i32
  %add.i = add nuw nsw i32 %conv4.i, %conv.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i68, %if.else.if.end.i_crit_edge
  %effect.0.i69 = phi i32 [ %add.i, %if.then.i68 ], [ %conv.i, %if.else.if.end.i_crit_edge ]
  %low.i70 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119, i32 1
  %27 = ptrtoint ptr %low.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %low.i70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %effect.0.i69, i32 %28)
  %cmp6.i = icmp slt i32 %effect.0.i69, %28
  br i1 %cmp6.i, label %if.end.i.effect_set_word.exit_crit_edge, label %if.else.i

if.end.i.effect_set_word.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %effect_set_word.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %high.i71 = getelementptr [34 x %struct.emux_parm_defs], ptr @parm_defs, i32 0, i32 %i.0119, i32 2
  %29 = ptrtoint ptr %high.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %high.i71, align 4
  %31 = tail call i32 @llvm.smin.i32(i32 %effect.0.i69, i32 %30) #6
  br label %effect_set_word.exit

effect_set_word.exit:                             ; preds = %if.else.i, %if.end.i.effect_set_word.exit_crit_edge
  %effect.1.i = phi i32 [ %28, %if.end.i.effect_set_word.exit_crit_edge ], [ %31, %if.else.i ]
  %conv19.i = trunc i32 %effect.1.i to i16
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv19.i, ptr %add.ptr, align 2
  br label %cleanup

cleanup:                                          ; preds = %effect_set_word.exit, %effect_set_byte.exit, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc20 = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc20, 34
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  %sample_mode = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 23
  %33 = ptrtoint ptr %sample_mode to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sample_mode, align 2
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %arrayidx.i72 = getelementptr %struct.snd_emux_effect_table, ptr %36, i32 0, i32 1, i32 30
  %37 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %for.end.if.end.i76_crit_edge, label %if.then.i75

for.end.if.end.i76_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i76

if.then.i75:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i73 = getelementptr [34 x i16], ptr %36, i32 0, i32 30
  %39 = ptrtoint ptr %arrayidx1.i73 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx1.i73, align 2
  %conv.i74 = sext i16 %40 to i32
  %phi.bo.i = shl nsw i32 %conv.i74, 15
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i75, %for.end.if.end.i76_crit_edge
  %addr.0.i = phi i32 [ %phi.bo.i, %if.then.i75 ], [ 0, %for.end.if.end.i76_crit_edge ]
  %arrayidx3.i = getelementptr %struct.snd_emux_effect_table, ptr %36, i32 0, i32 1, i32 27
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool4.not.i = icmp eq i8 %42, 0
  br i1 %tobool4.not.i, label %if.end.i76.effect_get_offset.exit_crit_edge, label %if.then5.i

if.end.i76.effect_get_offset.exit_crit_edge:      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %effect_get_offset.exit

if.then5.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i = getelementptr [34 x i16], ptr %36, i32 0, i32 27
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = sext i16 %44 to i32
  %add.i77 = add nsw i32 %addr.0.i, %conv8.i
  br label %effect_get_offset.exit

effect_get_offset.exit:                           ; preds = %if.then5.i, %if.end.i76.effect_get_offset.exit_crit_edge
  %addr.1.i = phi i32 [ %add.i77, %if.then5.i ], [ %addr.0.i, %if.end.i76.effect_get_offset.exit_crit_edge ]
  %45 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool10.not.i = icmp eq i16 %45, 0
  %div.i = sdiv i32 %addr.1.i, 2
  %spec.select.i78 = select i1 %tobool10.not.i, i32 %div.i, i32 %addr.1.i
  %start = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 2
  %46 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start, align 4
  %add = add i32 %spec.select.i78, %47
  store i32 %add, ptr %start, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx.i79 = getelementptr %struct.snd_emux_effect_table, ptr %49, i32 0, i32 1, i32 31
  %50 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i80 = icmp eq i8 %51, 0
  br i1 %tobool.not.i80, label %effect_get_offset.exit.if.end.i88_crit_edge, label %if.then.i84

effect_get_offset.exit.if.end.i88_crit_edge:      ; preds = %effect_get_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i88

if.then.i84:                                      ; preds = %effect_get_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i81 = getelementptr [34 x i16], ptr %49, i32 0, i32 31
  %52 = ptrtoint ptr %arrayidx1.i81 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx1.i81, align 2
  %conv.i82 = sext i16 %53 to i32
  %phi.bo.i83 = shl nsw i32 %conv.i82, 15
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then.i84, %effect_get_offset.exit.if.end.i88_crit_edge
  %addr.0.i85 = phi i32 [ %phi.bo.i83, %if.then.i84 ], [ 0, %effect_get_offset.exit.if.end.i88_crit_edge ]
  %arrayidx3.i86 = getelementptr %struct.snd_emux_effect_table, ptr %49, i32 0, i32 1, i32 28
  %54 = ptrtoint ptr %arrayidx3.i86 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx3.i86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool4.not.i87 = icmp eq i8 %55, 0
  br i1 %tobool4.not.i87, label %if.end.i88.effect_get_offset.exit98_crit_edge, label %if.then5.i92

if.end.i88.effect_get_offset.exit98_crit_edge:    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %effect_get_offset.exit98

if.then5.i92:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i89 = getelementptr [34 x i16], ptr %49, i32 0, i32 28
  %56 = ptrtoint ptr %arrayidx7.i89 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx7.i89, align 2
  %conv8.i90 = sext i16 %57 to i32
  %add.i91 = add nsw i32 %addr.0.i85, %conv8.i90
  br label %effect_get_offset.exit98

effect_get_offset.exit98:                         ; preds = %if.then5.i92, %if.end.i88.effect_get_offset.exit98_crit_edge
  %addr.1.i93 = phi i32 [ %add.i91, %if.then5.i92 ], [ %addr.0.i85, %if.end.i88.effect_get_offset.exit98_crit_edge ]
  %div.i96 = sdiv i32 %addr.1.i93, 2
  %spec.select.i97 = select i1 %tobool10.not.i, i32 %div.i96, i32 %addr.1.i93
  %loopstart = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 4
  %58 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %loopstart, align 4
  %add28 = add i32 %spec.select.i97, %59
  store i32 %add28, ptr %loopstart, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %arrayidx.i99 = getelementptr %struct.snd_emux_effect_table, ptr %61, i32 0, i32 1, i32 32
  %62 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i100 = icmp eq i8 %63, 0
  br i1 %tobool.not.i100, label %effect_get_offset.exit98.if.end.i108_crit_edge, label %if.then.i104

effect_get_offset.exit98.if.end.i108_crit_edge:   ; preds = %effect_get_offset.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108

if.then.i104:                                     ; preds = %effect_get_offset.exit98
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i101 = getelementptr [34 x i16], ptr %61, i32 0, i32 32
  %64 = ptrtoint ptr %arrayidx1.i101 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx1.i101, align 2
  %conv.i102 = sext i16 %65 to i32
  %phi.bo.i103 = shl nsw i32 %conv.i102, 15
  br label %if.end.i108

if.end.i108:                                      ; preds = %if.then.i104, %effect_get_offset.exit98.if.end.i108_crit_edge
  %addr.0.i105 = phi i32 [ %phi.bo.i103, %if.then.i104 ], [ 0, %effect_get_offset.exit98.if.end.i108_crit_edge ]
  %arrayidx3.i106 = getelementptr %struct.snd_emux_effect_table, ptr %61, i32 0, i32 1, i32 29
  %66 = ptrtoint ptr %arrayidx3.i106 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool4.not.i107 = icmp eq i8 %67, 0
  br i1 %tobool4.not.i107, label %if.end.i108.effect_get_offset.exit118_crit_edge, label %if.then5.i112

if.end.i108.effect_get_offset.exit118_crit_edge:  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %effect_get_offset.exit118

if.then5.i112:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i109 = getelementptr [34 x i16], ptr %61, i32 0, i32 29
  %68 = ptrtoint ptr %arrayidx7.i109 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx7.i109, align 2
  %conv8.i110 = sext i16 %69 to i32
  %add.i111 = add nsw i32 %addr.0.i105, %conv8.i110
  br label %effect_get_offset.exit118

effect_get_offset.exit118:                        ; preds = %if.then5.i112, %if.end.i108.effect_get_offset.exit118_crit_edge
  %addr.1.i113 = phi i32 [ %add.i111, %if.then5.i112 ], [ %addr.0.i105, %if.end.i108.effect_get_offset.exit118_crit_edge ]
  %div.i116 = sdiv i32 %addr.1.i113, 2
  %spec.select.i117 = select i1 %tobool10.not.i, i32 %div.i116, i32 %addr.1.i113
  %loopend = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 5
  %70 = ptrtoint ptr %loopend to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %loopend, align 4
  %add34 = add i32 %spec.select.i117, %71
  store i32 %add34, ptr %loopend, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %effect_get_offset.exit118, %entry.cleanup35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_create_effect(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_channels, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 102) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !11

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %effect38 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %effect38 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %effect38, align 4
  br label %for.cond6.preheader

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #9
  %effect = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %effect to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %effect, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.for.cond6.preheader_crit_edge, label %for.cond.preheader

if.end7.i.i.for.cond6.preheader_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp32 = icmp sgt i32 %8, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 4
  br label %for.body

for.cond6.preheader:                              ; preds = %if.end7.i.i.for.cond6.preheader_crit_edge, %kcalloc.exit.thread
  %9 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp934 = icmp sgt i32 %10, 0
  br i1 %cmp934, label %for.body10.lr.ph, label %for.cond6.preheader.if.end_crit_edge

for.cond6.preheader.if.end_crit_edge:             ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body10.lr.ph:                                 ; preds = %for.cond6.preheader
  %channels12 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 4
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %effect to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effect, align 4
  %add.ptr = getelementptr %struct.snd_emux_effect_table, ptr %12, i32 %i.033
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %14, i32 %i.033
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.033, 1
  %16 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_channels, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.135 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc16, %for.body10.for.body10_crit_edge ]
  %18 = ptrtoint ptr %channels12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels12, align 4
  %arrayidx13 = getelementptr %struct.snd_midi_channel, ptr %19, i32 %i.135
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx13, align 4
  %inc16 = add nuw nsw i32 %i.135, 1
  %21 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_channels, align 4
  %cmp9 = icmp slt i32 %inc16, %22
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.if.end_crit_edge

for.body10.if.end_crit_edge:                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

if.end:                                           ; preds = %for.body10.if.end_crit_edge, %for.body.if.end_crit_edge, %for.cond6.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_delete_effect(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %effect = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %effect, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %effect, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_emux_clear_effect(ptr nocapture noundef readonly %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %effect = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %effect, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_channels, align 4
  %mul = mul i32 %3, 102
  %4 = call ptr @memset(ptr %1, i32 0, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @parm_defs, !1, !"parm_defs", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_effect.c", i32 42, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
