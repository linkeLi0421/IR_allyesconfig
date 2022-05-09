; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_nrpn.c_pt.bc'
source_filename = "../sound/synth/emux/emux_nrpn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nrpn_conv_table = type { i32, i32, ptr }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
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

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/synth/emux/emux_nrpn.c\00", [35 x i8] zeroinitializer }, align 32
@awe_effects = internal constant { [27 x %struct.nrpn_conv_table], [92 x i8] } { [27 x %struct.nrpn_conv_table] [%struct.nrpn_conv_table { i32 0, i32 14, ptr @fx_delay }, %struct.nrpn_conv_table { i32 1, i32 15, ptr @fx_twice_value }, %struct.nrpn_conv_table { i32 2, i32 19, ptr @fx_delay }, %struct.nrpn_conv_table { i32 3, i32 20, ptr @fx_twice_value }, %struct.nrpn_conv_table { i32 4, i32 0, ptr @fx_delay }, %struct.nrpn_conv_table { i32 5, i32 1, ptr @fx_attack }, %struct.nrpn_conv_table { i32 6, i32 2, ptr @fx_hold }, %struct.nrpn_conv_table { i32 7, i32 3, ptr @fx_decay }, %struct.nrpn_conv_table { i32 8, i32 5, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 9, i32 4, ptr @fx_decay }, %struct.nrpn_conv_table { i32 10, i32 8, ptr @fx_delay }, %struct.nrpn_conv_table { i32 11, i32 9, ptr @fx_attack }, %struct.nrpn_conv_table { i32 12, i32 10, ptr @fx_hold }, %struct.nrpn_conv_table { i32 13, i32 11, ptr @fx_decay }, %struct.nrpn_conv_table { i32 14, i32 13, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 15, i32 12, ptr @fx_decay }, %struct.nrpn_conv_table { i32 16, i32 22, ptr @fx_conv_pitch }, %struct.nrpn_conv_table { i32 17, i32 17, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 18, i32 21, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 19, i32 6, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 20, i32 16, ptr @fx_twice_value }, %struct.nrpn_conv_table { i32 21, i32 25, ptr @fx_twice_value }, %struct.nrpn_conv_table { i32 22, i32 26, ptr @fx_conv_Q }, %struct.nrpn_conv_table { i32 23, i32 18, ptr @fx_twice_value }, %struct.nrpn_conv_table { i32 24, i32 7, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 25, i32 23, ptr @fx_the_value }, %struct.nrpn_conv_table { i32 26, i32 24, ptr @fx_the_value }], [92 x i8] zeroinitializer }, align 32
@gs_effects = internal constant { [8 x %struct.nrpn_conv_table], [32 x i8] } { [8 x %struct.nrpn_conv_table] [%struct.nrpn_conv_table { i32 32, i32 25, ptr @gs_cutoff }, %struct.nrpn_conv_table { i32 33, i32 26, ptr @gs_filterQ }, %struct.nrpn_conv_table { i32 99, i32 9, ptr @gs_attack }, %struct.nrpn_conv_table { i32 100, i32 11, ptr @gs_decay }, %struct.nrpn_conv_table { i32 102, i32 12, ptr @gs_release }, %struct.nrpn_conv_table { i32 8, i32 15, ptr @gs_vib_rate }, %struct.nrpn_conv_table { i32 9, i32 16, ptr @gs_vib_depth }, %struct.nrpn_conv_table { i32 10, i32 14, ptr @gs_vib_delay }], [32 x i8] zeroinitializer }, align 32
@xg_effects = internal constant { [4 x %struct.nrpn_conv_table], [48 x i8] } { [4 x %struct.nrpn_conv_table] [%struct.nrpn_conv_table { i32 71, i32 25, ptr @xg_cutoff }, %struct.nrpn_conv_table { i32 74, i32 26, ptr @xg_filterQ }, %struct.nrpn_conv_table { i32 72, i32 12, ptr @xg_release }, %struct.nrpn_conv_table { i32 73, i32 9, ptr @xg_attack }], [48 x i8] zeroinitializer }, align 32
@switch.table.snd_emux_xg_control = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 3, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 9, i64 10, i64 32, i64 33, i64 99, i64 100, i64 102]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 279, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"awe_effects\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 169, i32 37 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"gs_effects\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 256, i32 37 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"xg_effects\00", align 1
@___asan_gen_.11 = private constant [32 x i8] c"../sound/synth/emux/emux_nrpn.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 340, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [33 x i8] c"switch.table.snd_emux_xg_control\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @awe_effects, ptr @gs_effects, ptr @xg_effects, ptr @switch.table.snd_emux_xg_control], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @awe_effects to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_effects to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xg_effects to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_emux_xg_control to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_nrpn(ptr noundef %p, ptr noundef %chan, ptr nocapture noundef readnone %chset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 99
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp = icmp eq i8 %1, 127
  br i1 %cmp, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end24
  %arrayidx27 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 98
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %3)
  %cmp29 = icmp ult i8 %3, 27
  br i1 %cmp29, label %if.then31, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx33 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 6
  %4 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx33, align 2
  %conv34 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv34, 7
  %arrayidx36 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 38
  %6 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx36, align 2
  %conv37 = zext i8 %7 to i32
  %or = or i32 %shl, %conv37
  %sub = add nsw i32 %or, -8192
  %switch.idx.cast = zext i8 %3 to i32
  %convert.i = getelementptr %struct.nrpn_conv_table, ptr @awe_effects, i32 %switch.idx.cast, i32 2
  %8 = ptrtoint ptr %convert.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %convert.i, align 4
  %call.i = tail call i32 %9(i32 noundef %sub) #3
  %effect.i = getelementptr %struct.nrpn_conv_table, ptr @awe_effects, i32 %switch.idx.cast, i32 1
  %10 = ptrtoint ptr %effect.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %effect.i, align 4
  tail call void @snd_emux_send_effect(ptr noundef nonnull %p, ptr noundef nonnull %chan, i32 noundef %11, i32 noundef %call.i, i32 noundef 1) #3
  br label %cleanup

if.end41:                                         ; preds = %if.end24
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %midi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp44 = icmp eq i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp50 = icmp eq i8 %1, 1
  %or.cond = select i1 %cmp44, i1 %cmp50, i1 false
  br i1 %or.cond, label %if.then52, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then52:                                        ; preds = %if.end41
  %arrayidx55 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 6
  %14 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx55, align 2
  %conv56 = zext i8 %15 to i32
  %arrayidx58 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 98
  %16 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx58, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.then52.cleanup_crit_edge [
    i8 32, label %if.then52.if.then.i84_crit_edge
    i8 33, label %if.then.i84.fold.split
    i8 99, label %if.then.i84.fold.split123
    i8 100, label %if.then.i84.fold.split124
    i8 102, label %if.then.i84.fold.split125
    i8 8, label %if.then.i84.fold.split126
    i8 9, label %if.then.i84.fold.split127
    i8 10, label %if.then.i84.fold.split128
  ]

if.then52.if.then.i84_crit_edge:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i84.fold.split:                           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split123:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split124:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split125:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split126:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split127:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84.fold.split128:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i84

if.then.i84:                                      ; preds = %if.then.i84.fold.split128, %if.then.i84.fold.split127, %if.then.i84.fold.split126, %if.then.i84.fold.split125, %if.then.i84.fold.split124, %if.then.i84.fold.split123, %if.then.i84.fold.split, %if.then52.if.then.i84_crit_edge
  %i.013.i77.lcssa = phi i32 [ 0, %if.then52.if.then.i84_crit_edge ], [ 1, %if.then.i84.fold.split ], [ 2, %if.then.i84.fold.split123 ], [ 3, %if.then.i84.fold.split124 ], [ 4, %if.then.i84.fold.split125 ], [ 5, %if.then.i84.fold.split126 ], [ 6, %if.then.i84.fold.split127 ], [ 7, %if.then.i84.fold.split128 ]
  %convert.i81 = getelementptr %struct.nrpn_conv_table, ptr @gs_effects, i32 %i.013.i77.lcssa, i32 2
  %19 = ptrtoint ptr %convert.i81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %convert.i81, align 4
  %call.i82 = tail call i32 %20(i32 noundef %conv56) #3
  %effect.i83 = getelementptr %struct.nrpn_conv_table, ptr @gs_effects, i32 %i.013.i77.lcssa, i32 1
  %21 = ptrtoint ptr %effect.i83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %effect.i83, align 4
  tail call void @snd_emux_send_effect(ptr noundef nonnull %p, ptr noundef nonnull %chan, i32 noundef %22, i32 noundef %call.i82, i32 noundef 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then.i84, %if.then52.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then31, %land.lhs.true.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_xg_control(ptr noundef %port, ptr noundef %chan, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %param, -71
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %entry.send_converted_effect.exit_crit_edge

entry.send_converted_effect.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %send_converted_effect.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 %param
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_emux_xg_control, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %convert.i = getelementptr %struct.nrpn_conv_table, ptr @xg_effects, i32 %switch.load, i32 2
  %4 = ptrtoint ptr %convert.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %convert.i, align 4
  %call.i = tail call i32 %5(i32 noundef %conv) #3
  %effect.i = getelementptr %struct.nrpn_conv_table, ptr @xg_effects, i32 %switch.load, i32 1
  %6 = ptrtoint ptr %effect.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %effect.i, align 4
  tail call void @snd_emux_send_effect(ptr noundef %port, ptr noundef %chan, i32 noundef %7, i32 noundef %call.i, i32 noundef 2) #3
  br label %send_converted_effect.exit

send_converted_effect.exit:                       ; preds = %switch.lookup, %entry.send_converted_effect.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %switch.lookup ], [ 0, %entry.send_converted_effect.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_sysex(ptr noundef %p, ptr noundef %buf, i32 noundef %len, i32 noundef %parsed, ptr noundef %chset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chset, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %emu25 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %emu25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %parsed)
  %cond = icmp eq i32 %parsed, 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @snd_emux_update_port(ptr noundef nonnull %p, i32 noundef 1) #3
  br label %cleanup

sw.default:                                       ; preds = %if.end24
  %sysex = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 13
  %2 = ptrtoint ptr %sysex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysex, align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %sw.default.cleanup_crit_edge, label %if.then27

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %1, ptr noundef %buf, i32 noundef %len, i32 noundef %parsed, ptr noundef nonnull %chset) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %sw.default.cleanup_crit_edge, %sw.bb, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_update_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_send_effect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fx_delay(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %val, 1000
  %div.neg = sdiv i32 %mul, -725
  %conv = and i32 %div.neg, 65535
  %conv1 = xor i32 %conv, 32768
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fx_twice_value(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i32 %val, 1
  %conv = and i32 %0, 254
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fx_attack(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_sf_calc_parm_attack(i32 noundef %val) #3
  %conv1 = and i32 %call, 65535
  ret i32 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fx_hold(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_sf_calc_parm_hold(i32 noundef %val) #3
  %conv1 = and i32 %call, 65535
  ret i32 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fx_decay(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_sf_calc_parm_decay(i32 noundef %val) #3
  %conv1 = and i32 %call, 65535
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fx_the_value(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = and i32 %val, 255
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fx_conv_pitch(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %val, 12
  %div = sdiv i32 %mul, 1200
  %sext = shl i32 %div, 16
  %conv1 = ashr exact i32 %sext, 16
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fx_conv_Q(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 8
  %conv = and i32 %div, 255
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sf_calc_parm_attack(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sf_calc_parm_hold(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sf_calc_parm_decay(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_cutoff(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = mul i32 %val, 170
  %mul = add i32 %0, -10880
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_filterQ(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = mul i32 %val, 6
  %mul = add i32 %0, -384
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_attack(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 50
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_decay(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 50
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_release(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 50
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_vib_rate(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = mul i32 %val, 30
  %mul = add i32 %0, -1920
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_vib_depth(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = shl i32 %val, 2
  %mul = add i32 %sub, -256
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gs_vib_delay(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 1500
  %div = sdiv i32 %mul, 50
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xg_cutoff(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = mul i32 %val, 170
  %mul = add i32 %0, -10880
  %div = sdiv i32 %mul, 64
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xg_filterQ(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = mul i32 %val, 6
  %mul = add i32 %0, -384
  %div = sdiv i32 %mul, 64
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xg_release(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 50
  %div = sdiv i32 %mul, 64
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xg_attack(i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = sub i32 64, %val
  %mul = mul i32 %sub1, 50
  %div = sdiv i32 %mul, 64
  ret i32 %div
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_nrpn.c", i32 279, i32 6}
!2 = !{ptr @awe_effects, !3, !"awe_effects", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux_nrpn.c", i32 169, i32 37}
!4 = !{ptr @gs_effects, !5, !"gs_effects", i1 false, i1 false}
!5 = !{!"../sound/synth/emux/emux_nrpn.c", i32 256, i32 37}
!6 = distinct !{null, !7, !"gs_sense", i1 false, i1 false}
!7 = !{!"../sound/synth/emux/emux_nrpn.c", i32 66, i32 18}
!8 = !{ptr @xg_effects, !9, !"xg_effects", i1 false, i1 false}
!9 = !{!"../sound/synth/emux/emux_nrpn.c", i32 340, i32 37}
!10 = distinct !{null, !11, !"xg_sense", i1 false, i1 false}
!11 = !{!"../sound/synth/emux/emux_nrpn.c", i32 75, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
