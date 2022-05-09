; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1_callback.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1_callback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
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
%struct.best_voice = type { i32, i32 }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_emux_voice = type { i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.soundfont_voice_info, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.soundfont_voice_info = type { i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, %struct.soundfont_voice_parm, i16 }
%struct.soundfont_voice_parm = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [4 x i16] }
%struct.snd_emu10k1_memblk = type { %struct.snd_util_memblk, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.snd_util_memblk = type { i32, i32, %struct.list_head }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }

@emu10k1_ops = internal constant { %struct.snd_emux_operators, [36 x i8] } { %struct.snd_emux_operators { ptr null, ptr @get_voice, ptr @start_voice, ptr @trigger_voice, ptr @release_voice, ptr @update_voice, ptr @terminate_voice, ptr @free_voice, ptr null, ptr @snd_emu10k1_sample_new, ptr @snd_emu10k1_sample_free, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sound/pci/emu10k1/emu10k1_callback.c\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 9, i64 17]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"emu10k1_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 51, i32 40 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../sound/pci/emu10k1/emu10k1_callback.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 319, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @emu10k1_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_emu10k1_ops_setup(ptr nocapture noundef writeonly %emux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.snd_emux, ptr %emux, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %ops, ptr @emu10k1_ops, i32 60)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_synth_get_voice(ptr noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  %best = alloca [4 x %struct.best_voice], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %best) #5
  %0 = getelementptr inbounds %struct.best_voice, ptr %best, i32 0, i32 1
  %1 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 3, i32 1
  %synth = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 39
  %4 = call ptr @memset(ptr %best, i32 255, i32 32)
  %5 = ptrtoint ptr %synth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %synth, align 4
  call fastcc void @lookup_voices(ptr noundef %6, ptr noundef %hw, ptr noundef nonnull %best, i32 noundef 1)
  %voices = getelementptr inbounds %struct.snd_emux, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp1 = icmp sgt i32 %8, -1
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %voices, align 4
  %arrayidx4 = getelementptr %struct.snd_emux_voice, ptr %10, i32 %8
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %if.then.3.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %.lcssa30 = phi i32 [ %8, %if.then.cleanup_crit_edge ], [ %20, %if.then.1.cleanup_crit_edge ], [ %26, %if.then.2.cleanup_crit_edge ], [ %32, %if.then.3.cleanup_crit_edge ]
  %.lcssa29 = phi ptr [ %10, %if.then.cleanup_crit_edge ], [ %22, %if.then.1.cleanup_crit_edge ], [ %28, %if.then.2.cleanup_crit_edge ], [ %34, %if.then.3.cleanup_crit_edge ]
  %arrayidx4.lcssa = phi ptr [ %arrayidx4, %if.then.cleanup_crit_edge ], [ %arrayidx4.1, %if.then.1.cleanup_crit_edge ], [ %arrayidx4.2, %if.then.2.cleanup_crit_edge ], [ %arrayidx4.3, %if.then.3.cleanup_crit_edge ]
  %.lcssa = phi i32 [ %12, %if.then.cleanup_crit_edge ], [ %24, %if.then.1.cleanup_crit_edge ], [ %30, %if.then.2.cleanup_crit_edge ], [ %36, %if.then.3.cleanup_crit_edge ]
  %emu8 = getelementptr %struct.snd_emux_voice, ptr %.lcssa29, i32 %.lcssa30, i32 10
  %13 = ptrtoint ptr %emu8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %emu8, align 4
  %num_voices = getelementptr inbounds %struct.snd_emux, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %num_voices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_voices, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %num_voices, align 4
  %17 = ptrtoint ptr %arrayidx4.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx4.lcssa, align 4
  %state = getelementptr %struct.snd_emux_voice, ptr %.lcssa29, i32 %.lcssa30, i32 1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  br label %cleanup11

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp1.1 = icmp sgt i32 %20, -1
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %voices, align 4
  %arrayidx4.1 = getelementptr %struct.snd_emux_voice, ptr %22, i32 %20
  %23 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.1 = icmp slt i32 %24, 0
  br i1 %cmp6.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp1.2 = icmp sgt i32 %26, -1
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %27 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %voices, align 4
  %arrayidx4.2 = getelementptr %struct.snd_emux_voice, ptr %28, i32 %26
  %29 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp6.2 = icmp slt i32 %30, 0
  br i1 %cmp6.2, label %if.then.2.for.inc.2_crit_edge, label %if.then.2.cleanup_crit_edge

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp1.3 = icmp sgt i32 %32, -1
  br i1 %cmp1.3, label %if.then.3, label %for.inc.2.cleanup11_crit_edge

for.inc.2.cleanup11_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

if.then.3:                                        ; preds = %for.inc.2
  %33 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %voices, align 4
  %arrayidx4.3 = getelementptr %struct.snd_emux_voice, ptr %34, i32 %32
  %35 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp6.3 = icmp slt i32 %36, 0
  br i1 %cmp6.3, label %if.then.3.cleanup11_crit_edge, label %if.then.3.cleanup_crit_edge

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.3.cleanup11_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup11

cleanup11:                                        ; preds = %if.then.3.cleanup11_crit_edge, %for.inc.2.cleanup11_crit_edge, %cleanup
  %retval.3 = phi i32 [ %.lcssa, %cleanup ], [ -12, %if.then.3.cleanup11_crit_edge ], [ -12, %for.inc.2.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %best) #5
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lookup_voices(ptr nocapture noundef readonly %emu, ptr noundef %hw, ptr noundef %best, i32 noundef %active_only) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %best, i32 255, i32 32)
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3107 = icmp sgt i32 %2, 0
  br i1 %cmp3107, label %for.body4.lr.ph, label %entry.for.end64_crit_edge

entry.for.end64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body4.lr.ph:                                  ; preds = %entry
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active_only)
  %tobool.not = icmp eq i32 %active_only, 0
  %add.ptr29 = getelementptr %struct.best_voice, ptr %best, i32 3
  %add.ptr35 = getelementptr %struct.best_voice, ptr %best, i32 1
  br label %for.body4

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body4.lr.ph
  %i.1108 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc63, %cleanup.for.body4_crit_edge ]
  %3 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %voices, align 4
  %arrayidx5 = getelementptr %struct.snd_emux_voice, ptr %4, i32 %i.1108
  %state6 = getelementptr %struct.snd_emux_voice, ptr %4, i32 %i.1108, i32 1
  %5 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state6, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.else26 [
    i32 0, label %if.then
    i32 3, label %for.body4.if.then16_crit_edge
    i32 17, label %for.body4.if.then16_crit_edge111
    i32 9, label %for.body4.cleanup_crit_edge
  ]

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body4.if.then16_crit_edge111:                 ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

for.body4.if.then16_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.then:                                          ; preds = %for.body4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp8 = icmp sgt i32 %9, -1
  %brmerge = or i1 %cmp8, %tobool.not
  %10 = xor i32 %9, -1
  %.lobit.not = lshr i32 %10, 31
  %add.ptr11.mux = getelementptr %struct.best_voice, ptr %best, i32 %.lobit.not
  br i1 %brmerge, label %if.then.if.end51_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then16:                                        ; preds = %for.body4.if.then16_crit_edge, %for.body4.if.then16_crit_edge111
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %call = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %hw, i32 noundef 269484034, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool19.not = icmp eq i32 %call, 0
  %spec.select.v = select i1 %tobool19.not, i32 1, i32 2
  %spec.select = getelementptr %struct.best_voice, ptr %best, i32 %spec.select.v
  br label %if.end34

if.else26:                                        ; preds = %for.body4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.else26.cleanup_crit_edge, label %if.else26.if.end34_crit_edge

if.else26.if.end34_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.else26.if.end34_crit_edge, %if.then16
  %bp.0 = phi ptr [ %spec.select, %if.then16 ], [ %add.ptr29, %if.else26.if.end34_crit_edge ]
  %cmp36.not = icmp eq ptr %bp.0, %add.ptr35
  %cmp38.not = icmp eq ptr %bp.0, %best
  %or.cond = or i1 %cmp36.not, %cmp38.not
  br i1 %or.cond, label %if.end34.if.end51_crit_edge, label %land.lhs.true39

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

land.lhs.true39:                                  ; preds = %if.end34
  %sample_mode = getelementptr %struct.snd_emux_voice, ptr %4, i32 %i.1108, i32 13, i32 23
  %13 = ptrtoint ptr %sample_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sample_mode, align 2
  %15 = and i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool41.not = icmp eq i16 %15, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end51_crit_edge, label %if.then42

land.lhs.true39.if.end51_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5, align 4
  %call44 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %hw, i32 noundef 402653192, i32 noundef %17) #5
  %loopstart = getelementptr %struct.snd_emux_voice, ptr %4, i32 %i.1108, i32 13, i32 4
  %18 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %loopstart, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call44, i32 %19)
  %cmp46.not = icmp slt i32 %call44, %19
  %spec.select100 = select i1 %cmp46.not, ptr %bp.0, ptr %add.ptr35
  br label %if.end51

if.end51:                                         ; preds = %if.then42, %land.lhs.true39.if.end51_crit_edge, %if.end34.if.end51_crit_edge, %if.then.if.end51_crit_edge
  %bp.1 = phi ptr [ %bp.0, %land.lhs.true39.if.end51_crit_edge ], [ %bp.0, %if.end34.if.end51_crit_edge ], [ %spec.select100, %if.then42 ], [ %add.ptr11.mux, %if.then.if.end51_crit_edge ]
  %time52 = getelementptr %struct.snd_emux_voice, ptr %4, i32 %i.1108, i32 2
  %20 = ptrtoint ptr %time52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time52, align 4
  %22 = ptrtoint ptr %bp.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bp.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp54 = icmp ult i32 %21, %23
  br i1 %cmp54, label %if.then56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %bp.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %bp.1, align 4
  %voice59 = getelementptr inbounds %struct.best_voice, ptr %bp.1, i32 0, i32 1
  %25 = ptrtoint ptr %voice59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1108, ptr %voice59, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end51.cleanup_crit_edge, %if.else26.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %inc63 = add nuw nsw i32 %i.1108, 1
  %26 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_voices, align 4
  %cmp3 = icmp slt i32 %inc63, %27
  br i1 %cmp3, label %cleanup.for.body4_crit_edge, label %cleanup.for.end64_crit_edge

cleanup.for.end64_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.end64:                                        ; preds = %cleanup.for.end64_crit_edge, %entry.for.end64_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_voice(ptr nocapture noundef %emu, ptr nocapture noundef readnone %port) #1 align 64 {
entry:
  %best = alloca [4 x %struct.best_voice], align 4
  %hwvoice = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %best) #5
  %0 = getelementptr inbounds %struct.best_voice, ptr %best, i32 0, i32 1
  %1 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds [4 x %struct.best_voice], ptr %best, i32 0, i32 3, i32 1
  %hw1 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 6
  %4 = call ptr @memset(ptr %best, i32 255, i32 32)
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 4
  call fastcc void @lookup_voices(ptr noundef %emu, ptr noundef %6, ptr noundef nonnull %best, i32 noundef 0)
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp2 = icmp sgt i32 %8, -1
  br i1 %cmp2, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %voices, align 4
  %arrayidx5 = getelementptr %struct.snd_emux_voice, ptr %10, i32 %8
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.then.cleanup15_crit_edge

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwvoice) #5
  %13 = ptrtoint ptr %hwvoice to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwvoice, align 4, !annotation !13
  %call = call i32 @snd_emu10k1_voice_alloc(ptr noundef %6, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %hwvoice) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then7.cleanup.thread_crit_edge, label %lor.lhs.false

if.then7.cleanup.thread_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then7
  %14 = ptrtoint ptr %hwvoice to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwvoice, align 4
  %cmp9 = icmp eq ptr %15, null
  br i1 %cmp9, label %lor.lhs.false.cleanup.thread_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.then7.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwvoice) #5
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false.3.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %.lcssa = phi ptr [ %15, %lor.lhs.false.cleanup_crit_edge ], [ %29, %lor.lhs.false.1.cleanup_crit_edge ], [ %38, %lor.lhs.false.2.cleanup_crit_edge ], [ %47, %lor.lhs.false.3.cleanup_crit_edge ]
  %arrayidx5.lcssa = phi ptr [ %arrayidx5, %lor.lhs.false.cleanup_crit_edge ], [ %arrayidx5.1, %lor.lhs.false.1.cleanup_crit_edge ], [ %arrayidx5.2, %lor.lhs.false.2.cleanup_crit_edge ], [ %arrayidx5.3, %lor.lhs.false.3.cleanup_crit_edge ]
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %.lcssa, i32 0, i32 1
  %16 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number, align 4
  %18 = ptrtoint ptr %arrayidx5.lcssa to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx5.lcssa, align 4
  %num_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 13
  %19 = ptrtoint ptr %num_voices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_voices, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %num_voices, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwvoice) #5
  br label %cleanup15

for.inc:                                          ; preds = %cleanup.thread, %entry.for.inc_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp2.1 = icmp sgt i32 %22, -1
  br i1 %cmp2.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %23 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %voices, align 4
  %arrayidx5.1 = getelementptr %struct.snd_emux_voice, ptr %24, i32 %22
  %25 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6.1 = icmp slt i32 %26, 0
  br i1 %cmp6.1, label %if.then7.1, label %if.then.1.cleanup15_crit_edge

if.then.1.cleanup15_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then7.1:                                       ; preds = %if.then.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwvoice) #5
  %27 = ptrtoint ptr %hwvoice to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwvoice, align 4, !annotation !13
  %call.1 = call i32 @snd_emu10k1_voice_alloc(ptr noundef %6, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %hwvoice) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp8.1 = icmp slt i32 %call.1, 0
  br i1 %cmp8.1, label %if.then7.1.cleanup.thread.1_crit_edge, label %lor.lhs.false.1

if.then7.1.cleanup.thread.1_crit_edge:            ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.1

lor.lhs.false.1:                                  ; preds = %if.then7.1
  %28 = ptrtoint ptr %hwvoice to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hwvoice, align 4
  %cmp9.1 = icmp eq ptr %29, null
  br i1 %cmp9.1, label %lor.lhs.false.1.cleanup.thread.1_crit_edge, label %lor.lhs.false.1.cleanup_crit_edge

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.1.cleanup.thread.1_crit_edge:       ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.1

cleanup.thread.1:                                 ; preds = %lor.lhs.false.1.cleanup.thread.1_crit_edge, %if.then7.1.cleanup.thread.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwvoice) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %cleanup.thread.1, %for.inc.for.inc.1_crit_edge
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp2.2 = icmp sgt i32 %31, -1
  br i1 %cmp2.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %32 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %voices, align 4
  %arrayidx5.2 = getelementptr %struct.snd_emux_voice, ptr %33, i32 %31
  %34 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.2 = icmp slt i32 %35, 0
  br i1 %cmp6.2, label %if.then7.2, label %if.then.2.cleanup15_crit_edge

if.then.2.cleanup15_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then7.2:                                       ; preds = %if.then.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwvoice) #5
  %36 = ptrtoint ptr %hwvoice to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwvoice, align 4, !annotation !13
  %call.2 = call i32 @snd_emu10k1_voice_alloc(ptr noundef %6, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %hwvoice) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp8.2 = icmp slt i32 %call.2, 0
  br i1 %cmp8.2, label %if.then7.2.cleanup.thread.2_crit_edge, label %lor.lhs.false.2

if.then7.2.cleanup.thread.2_crit_edge:            ; preds = %if.then7.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.2

lor.lhs.false.2:                                  ; preds = %if.then7.2
  %37 = ptrtoint ptr %hwvoice to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hwvoice, align 4
  %cmp9.2 = icmp eq ptr %38, null
  br i1 %cmp9.2, label %lor.lhs.false.2.cleanup.thread.2_crit_edge, label %lor.lhs.false.2.cleanup_crit_edge

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.2.cleanup.thread.2_crit_edge:       ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.2

cleanup.thread.2:                                 ; preds = %lor.lhs.false.2.cleanup.thread.2_crit_edge, %if.then7.2.cleanup.thread.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwvoice) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %cleanup.thread.2, %for.inc.1.for.inc.2_crit_edge
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp2.3 = icmp sgt i32 %40, -1
  br i1 %cmp2.3, label %if.then.3, label %for.inc.2.cleanup15_crit_edge

for.inc.2.cleanup15_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then.3:                                        ; preds = %for.inc.2
  %41 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %voices, align 4
  %arrayidx5.3 = getelementptr %struct.snd_emux_voice, ptr %42, i32 %40
  %43 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp6.3 = icmp slt i32 %44, 0
  br i1 %cmp6.3, label %if.then7.3, label %if.then.3.cleanup15_crit_edge

if.then.3.cleanup15_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup15

if.then7.3:                                       ; preds = %if.then.3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwvoice) #5
  %45 = ptrtoint ptr %hwvoice to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwvoice, align 4, !annotation !13
  %call.3 = call i32 @snd_emu10k1_voice_alloc(ptr noundef %6, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %hwvoice) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp8.3 = icmp slt i32 %call.3, 0
  br i1 %cmp8.3, label %if.then7.3.cleanup.thread.3_crit_edge, label %lor.lhs.false.3

if.then7.3.cleanup.thread.3_crit_edge:            ; preds = %if.then7.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.3

lor.lhs.false.3:                                  ; preds = %if.then7.3
  %46 = ptrtoint ptr %hwvoice to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwvoice, align 4
  %cmp9.3 = icmp eq ptr %47, null
  br i1 %cmp9.3, label %lor.lhs.false.3.cleanup.thread.3_crit_edge, label %lor.lhs.false.3.cleanup_crit_edge

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.3.cleanup.thread.3_crit_edge:       ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.3

cleanup.thread.3:                                 ; preds = %lor.lhs.false.3.cleanup.thread.3_crit_edge, %if.then7.3.cleanup.thread.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwvoice) #5
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup.thread.3, %if.then.3.cleanup15_crit_edge, %for.inc.2.cleanup15_crit_edge, %if.then.2.cleanup15_crit_edge, %if.then.1.cleanup15_crit_edge, %cleanup, %if.then.cleanup15_crit_edge
  %retval.0 = phi ptr [ %arrayidx5.lcssa, %cleanup ], [ %arrayidx5, %if.then.cleanup15_crit_edge ], [ %arrayidx5.1, %if.then.1.cleanup15_crit_edge ], [ %arrayidx5.2, %if.then.2.cleanup15_crit_edge ], [ %arrayidx5.3, %if.then.3.cleanup15_crit_edge ], [ null, %cleanup.thread.3 ], [ null, %for.inc.2.cleanup15_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %best) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_voice(ptr noundef %vp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  %chan24 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %4 = ptrtoint ptr %chan24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan24, align 4
  %block = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 7
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block, align 4
  %cmp25 = icmp eq ptr %7, null
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %map_locked = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %map_locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_locked, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %map_locked, align 4
  %call = tail call i32 @snd_emu10k1_memblk_map(ptr noundef %1, ptr noundef nonnull %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapped_page, align 4
  %shl = shl i32 %11, 12
  %offset = getelementptr inbounds %struct.snd_util_memblk, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %and = and i32 %13, 4094
  %or = or i32 %and, %shl
  %shr = lshr exact i32 %or, 1
  %start = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start, align 4
  %add = add i32 %shr, %15
  store i32 %add, ptr %start, align 4
  %end = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 3
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  %add32 = add i32 %17, %shr
  store i32 %add32, ptr %end, align 4
  %loopstart = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 4
  %18 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %loopstart, align 4
  %add34 = add i32 %19, %shr
  store i32 %add34, ptr %loopstart, align 4
  %loopend = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %loopend to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loopend, align 4
  %add36 = add i32 %21, %shr
  store i32 %add36, ptr %loopend, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 126, i32 noundef %3, i32 noundef 218891524) #5
  br label %if.end39

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 11, i32 noundef %3, i32 noundef -598474752) #5
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then38
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %3, i32 noundef 0) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 3, i32 noundef %3, i32 noundef 65535) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 2, i32 noundef %3, i32 noundef 65535) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 1, i32 noundef %3, i32 noundef 0) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 0, i32 noundef %3, i32 noundef 0) #5
  %24 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vp, align 4
  %apitch = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 16
  %26 = ptrtoint ptr %apitch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %apitch, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 24, i32 noundef %25, i32 noundef %27) #5
  %parm = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22
  %28 = ptrtoint ptr %parm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %parm, align 2
  %conv = zext i16 %29 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 20, i32 noundef %3, i32 noundef %conv) #5
  %modatkhld = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 1
  %30 = ptrtoint ptr %modatkhld to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %modatkhld, align 2
  %conv44 = zext i16 %31 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 21, i32 noundef %3, i32 noundef %conv44) #5
  %moddcysus = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 2
  %32 = ptrtoint ptr %moddcysus to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %moddcysus, align 2
  %conv47 = zext i16 %33 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 22, i32 noundef %3, i32 noundef %conv47) #5
  %voldelay = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 6
  %34 = ptrtoint ptr %voldelay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %voldelay, align 2
  %conv50 = zext i16 %35 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 16, i32 noundef %3, i32 noundef %conv50) #5
  %volatkhld = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 7
  %36 = ptrtoint ptr %volatkhld to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %volatkhld, align 2
  %conv53 = zext i16 %37 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 17, i32 noundef %3, i32 noundef %conv53) #5
  %acutoff = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 15
  %38 = ptrtoint ptr %acutoff to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %acutoff, align 4
  %shl54 = shl i32 %39, 8
  %avol = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 14
  %40 = ptrtoint ptr %avol to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %avol, align 4
  %conv56 = and i32 %41, 255
  %or57 = or i32 %conv56, %shl54
  %42 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 25, i32 noundef %43, i32 noundef %or57) #5
  %pefe = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 14
  %44 = ptrtoint ptr %pefe to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pefe, align 2
  %conv61 = zext i16 %45 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 26, i32 noundef %3, i32 noundef %conv61) #5
  %lfo1delay = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 12
  %46 = ptrtoint ptr %lfo1delay to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %lfo1delay, align 2
  %conv64 = zext i16 %47 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 19, i32 noundef %3, i32 noundef %conv64) #5
  %lfo2delay = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 13
  %48 = ptrtoint ptr %lfo2delay to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %lfo2delay, align 2
  %conv67 = zext i16 %49 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 23, i32 noundef %3, i32 noundef %conv67) #5
  %fmmod1.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 15
  %50 = ptrtoint ptr %fmmod1.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fmmod1.i, align 2
  %52 = ptrtoint ptr %chan24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan24, align 4
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %53, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %55 to i16
  %midi_pressure.i = getelementptr inbounds %struct.snd_midi_channel, ptr %53, i32 0, i32 7
  %56 = ptrtoint ptr %midi_pressure.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %midi_pressure.i, align 1
  %conv11.i = zext i8 %57 to i16
  %add.i = add nuw nsw i16 %conv11.i, %conv9.i
  %mul.i = mul nuw nsw i16 %add.i, 18
  %div.i = udiv i16 %mul.i, 1200
  %58 = lshr i16 %51, 8
  %add13.i = add nuw nsw i16 %div.i, %58
  %59 = tail call i16 @llvm.umin.i16(i16 %add13.i, i16 127) #5
  %60 = shl nuw nsw i16 %59, 8
  %61 = and i16 %51, 255
  %or34.i = or i16 %60, %61
  %62 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vp, align 4
  %conv26.i = zext i16 %or34.i to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 27, i32 noundef %63, i32 noundef %conv26.i) #5
  %64 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vp, align 4
  %tremfrq = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 16
  %66 = ptrtoint ptr %tremfrq to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tremfrq, align 2
  %conv71 = zext i16 %67 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 28, i32 noundef %65, i32 noundef %conv71) #5
  %fm2frq21.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 17
  %68 = ptrtoint ptr %fm2frq21.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %fm2frq21.i, align 2
  %70 = ptrtoint ptr %chan24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chan24, align 4
  %arrayidx.i274 = getelementptr %struct.snd_midi_channel, ptr %71, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %arrayidx.i274 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i274, align 1
  %conv9.i275 = zext i8 %73 to i16
  %midi_pressure.i276 = getelementptr inbounds %struct.snd_midi_channel, ptr %71, i32 0, i32 7
  %74 = ptrtoint ptr %midi_pressure.i276 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %midi_pressure.i276, align 1
  %conv11.i277 = zext i8 %75 to i16
  %add.i278 = add nuw nsw i16 %conv11.i277, %conv9.i275
  %mul.i279 = mul nuw nsw i16 %add.i278, 18
  %div.i280 = udiv i16 %mul.i279, 1200
  %76 = lshr i16 %69, 8
  %add13.i281 = add nuw nsw i16 %div.i280, %76
  %77 = tail call i16 @llvm.umin.i16(i16 %add13.i281, i16 127) #5
  %78 = shl nuw nsw i16 %77, 8
  %79 = and i16 %69, 255
  %or34.i282 = or i16 %78, %79
  %80 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vp, align 4
  %conv26.i283 = zext i16 %or34.i282 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 29, i32 noundef %81, i32 noundef %conv26.i283) #5
  %reverb = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 21
  %82 = ptrtoint ptr %reverb to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reverb, align 1
  %conv74 = zext i8 %83 to i32
  %84 = ptrtoint ptr %chan24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chan24, align 4
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %85, i32 0, i32 10, i32 91
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx, align 1
  %conv76 = zext i8 %87 to i16
  %mul = mul nuw nsw i16 %conv76, 9
  %div284 = udiv i16 %mul, 10
  %div.zext = zext i16 %div284 to i32
  %add77 = add nuw nsw i32 %div.zext, %conv74
  %88 = tail call i32 @llvm.umin.i32(i32 %add77, i32 255)
  %89 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %loopstart, align 4
  %91 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vp, align 4
  %shl88 = shl nuw i32 %88, 24
  %or89 = or i32 %shl88, %90
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 6, i32 noundef %92, i32 noundef %or89) #5
  %93 = ptrtoint ptr %loopend to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %loopend, align 4
  %chorus = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 20
  %95 = ptrtoint ptr %chorus to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %chorus, align 2
  %conv94 = zext i8 %96 to i32
  %arrayidx96 = getelementptr %struct.snd_midi_channel, ptr %5, i32 0, i32 10, i32 93
  %97 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %98 to i16
  %mul98 = mul nuw nsw i16 %conv97, 9
  %div99285 = udiv i16 %mul98, 10
  %div99.zext = zext i16 %div99285 to i32
  %add100 = add nuw nsw i32 %div99.zext, %conv94
  %99 = tail call i32 @llvm.umin.i32(i32 %add100, i32 255)
  %shl108 = shl nuw i32 %99, 24
  %or109 = or i32 %shl108, %94
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 7, i32 noundef %3, i32 noundef %or109) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 5, i32 noundef %3, i32 noundef 0) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 4, i32 noundef %3, i32 noundef 0) #5
  %addr110 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 15, i32 2
  %100 = ptrtoint ptr %addr110 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %addr110, align 4
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 10
  %102 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %address_mode, align 4
  %shl111 = shl i32 %101, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool113.not = icmp eq i32 %103, 0
  %cond = select i1 %tobool113.not, i32 4095, i32 8191
  %or114 = or i32 %cond, %shl111
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 12, i32 noundef %3, i32 noundef %or114) #5
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 13, i32 noundef %3, i32 noundef %or114) #5
  %104 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %start, align 4
  %filterQ = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 19
  %106 = ptrtoint ptr %filterQ to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %filterQ, align 1
  %conv119 = zext i8 %107 to i32
  %shl120 = shl i32 %conv119, 28
  %or121 = or i32 %shl120, %105
  %108 = ptrtoint ptr %apitch to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %apitch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 58368, i32 %109)
  %cmp123 = icmp slt i32 %109, 58368
  %sub = shl i32 %109, 15
  %110 = add i32 %sub, -1879048192
  %shl130 = and i32 %110, -33554432
  %or131 = select i1 %cmp123, i32 0, i32 %shl130
  %temp.0 = or i32 %or121, %or131
  %sample_mode = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 23
  %111 = ptrtoint ptr %sample_mode to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sample_mode, align 2
  %113 = and i16 %112, 1
  %114 = zext i16 %113 to i32
  %115 = shl nuw nsw i32 %114, 24
  %116 = or i32 %temp.0, %115
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 8, i32 noundef %3, i32 noundef %116) #5
  %vtarget = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 20
  %117 = ptrtoint ptr %vtarget to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vtarget, align 4
  %shl140 = shl i32 %118, 16
  %ftarget = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 21
  %119 = ptrtoint ptr %ftarget to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ftarget, align 4
  %or141 = or i32 %shl140, %120
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 3, i32 noundef %3, i32 noundef %or141) #5
  %or142 = or i32 %shl140, 65280
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 2, i32 noundef %3, i32 noundef %or142) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end39 ], [ -22, %if.end23.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_voice(ptr nocapture noundef readonly %vp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %block = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 7
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mapped_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %apitch = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 16
  %6 = ptrtoint ptr %apitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %apitch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %7, 4095
  %or = or i32 %and, 4096
  %8 = lshr i32 %7, 12
  %and5 = and i32 %8, 15
  %add = add nuw nsw i32 %and5, 4
  %shl = shl i32 %or, %add
  %and6 = and i32 %shl, -65536
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %and6, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %apan = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 17
  %9 = ptrtoint ptr %apan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %apan, align 4
  %shl7 = shl i32 %10, 8
  %or8 = or i32 %shl7, %cond
  %aaux = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 18
  %11 = ptrtoint ptr %aaux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aaux, align 4
  %or9 = or i32 %or8, %12
  %13 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 1, i32 noundef %14, i32 noundef %or9) #5
  %15 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 0, i32 noundef %16, i32 noundef %cond) #5
  %17 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vp, align 4
  %voldcysus = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 8
  %19 = ptrtoint ptr %voldcysus to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %voldcysus, align 2
  %21 = or i16 %20, 128
  %or12 = zext i16 %21 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %18, i32 noundef %or12) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_voice(ptr nocapture noundef readonly %vp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %modrelease = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 3
  %2 = ptrtoint ptr %modrelease to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %modrelease, align 2
  %4 = and i16 %3, 255
  %5 = or i16 %4, -32768
  %or = zext i16 %5 to i32
  %6 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 22, i32 noundef %7, i32 noundef %or) #5
  %volrelease = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 9
  %8 = ptrtoint ptr %volrelease to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %volrelease, align 2
  %10 = and i16 %9, 127
  %11 = or i16 %10, -32640
  %or8 = zext i16 %11 to i32
  %12 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %13, i32 noundef %or8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_voice(ptr nocapture noundef readonly %vp, i32 noundef %update) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %and = and i32 %update, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp, align 4
  %avol = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 14
  %4 = ptrtoint ptr %avol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avol, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 134217753, i32 noundef %3, i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %update, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp, align 4
  %apitch = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 16
  %8 = ptrtoint ptr %apitch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %apitch, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 24, i32 noundef %7, i32 noundef %9) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i32 %update, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vp, align 4
  %apan = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 17
  %12 = ptrtoint ptr %apan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %apan, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 134742017, i32 noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vp, align 4
  %aaux = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 18
  %16 = ptrtoint ptr %aaux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aaux, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 134217729, i32 noundef %15, i32 noundef %17) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %and13 = and i32 %update, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %fmmod1.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 15
  %18 = ptrtoint ptr %fmmod1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fmmod1.i, align 2
  %chan.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %20 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan.i, align 4
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %21, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %23 to i16
  %midi_pressure.i = getelementptr inbounds %struct.snd_midi_channel, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %midi_pressure.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %midi_pressure.i, align 1
  %conv11.i = zext i8 %25 to i16
  %add.i = add nuw nsw i16 %conv11.i, %conv9.i
  %mul.i = mul nuw nsw i16 %add.i, 18
  %div.i = udiv i16 %mul.i, 1200
  %26 = lshr i16 %19, 8
  %add13.i = add nuw nsw i16 %div.i, %26
  %27 = tail call i16 @llvm.umin.i16(i16 %add13.i, i16 127) #5
  %28 = shl nuw nsw i16 %27, 8
  %29 = and i16 %19, 255
  %or34.i = or i16 %28, %29
  %30 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vp, align 4
  %conv26.i = zext i16 %or34.i to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 27, i32 noundef %31, i32 noundef %conv26.i) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %and17 = and i32 %update, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vp, align 4
  %tremfrq = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 16
  %34 = ptrtoint ptr %tremfrq to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tremfrq, align 2
  %conv = zext i16 %35 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 28, i32 noundef %33, i32 noundef %conv) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %and22 = and i32 %update, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %fm2frq21.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 17
  %36 = ptrtoint ptr %fm2frq21.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fm2frq21.i, align 2
  %chan.i56 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %38 = ptrtoint ptr %chan.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan.i56, align 4
  %arrayidx.i57 = getelementptr %struct.snd_midi_channel, ptr %39, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i57, align 1
  %conv9.i58 = zext i8 %41 to i16
  %midi_pressure.i59 = getelementptr inbounds %struct.snd_midi_channel, ptr %39, i32 0, i32 7
  %42 = ptrtoint ptr %midi_pressure.i59 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %midi_pressure.i59, align 1
  %conv11.i60 = zext i8 %43 to i16
  %add.i61 = add nuw nsw i16 %conv11.i60, %conv9.i58
  %mul.i62 = mul nuw nsw i16 %add.i61, 18
  %div.i63 = udiv i16 %mul.i62, 1200
  %44 = lshr i16 %37, 8
  %add13.i64 = add nuw nsw i16 %div.i63, %44
  %45 = tail call i16 @llvm.umin.i16(i16 %add13.i64, i16 127) #5
  %46 = shl nuw nsw i16 %45, 8
  %47 = and i16 %37, 255
  %or34.i65 = or i16 %46, %47
  %48 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vp, align 4
  %conv26.i66 = zext i16 %or34.i65 to i32
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 29, i32 noundef %49, i32 noundef %conv26.i66) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %and26 = and i32 %update, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vp, align 4
  %call.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %1, i32 noundef 8, i32 noundef %51) #5
  %and.i = and i32 %call.i, 268435455
  %filterQ.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 19
  %52 = ptrtoint ptr %filterQ.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %filterQ.i, align 1
  %conv.i = zext i8 %53 to i32
  %shl.i = shl i32 %conv.i, 28
  %or.i = or i32 %shl.i, %and.i
  %54 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 8, i32 noundef %55, i32 noundef %or.i) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @terminate_voice(ptr noundef readonly %vp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vp, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  %hw24 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw24, align 4
  %2 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %1, i32 noundef 18, i32 noundef %3, i32 noundef 33023) #5
  %block = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 7
  %4 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  %map_locked = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %map_locked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.then26.cleanup_crit_edge, label %if.then28

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %7, -1
  %8 = ptrtoint ptr %map_locked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec, ptr %map_locked, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_voice(ptr nocapture noundef %vp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_emu10k1_ptr_write(ptr noundef nonnull %1, i32 noundef 25, i32 noundef %3, i32 noundef 65280) #5
  %4 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef nonnull %1, i32 noundef 18, i32 noundef %5, i32 noundef 33023) #5
  %6 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %7, i32 noundef 65535) #5
  %8 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vp, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef nonnull %1, i32 noundef 2, i32 noundef %9, i32 noundef 65535) #5
  %10 = ptrtoint ptr %vp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vp, align 4
  %arrayidx = getelementptr %struct.snd_emu10k1, ptr %1, i32 0, i32 46, i32 %11
  %call = tail call i32 @snd_emu10k1_voice_free(ptr noundef nonnull %1, ptr noundef %arrayidx) #5
  %emu = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 10
  %12 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %emu, align 4
  %num_voices = getelementptr inbounds %struct.snd_emux, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %num_voices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_voices, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %num_voices, align 4
  %16 = ptrtoint ptr %vp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %vp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_sample_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_sample_free(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_voice_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_memblk_map(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_voice_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @emu10k1_ops, !1, !"emu10k1_ops", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1_callback.c", i32 51, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1_callback.c", i32 319, i32 6}
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
!14 = !{!"branch_weights", i32 1, i32 2000}
