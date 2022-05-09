; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/voice.c_pt.bc'
source_filename = "../sound/pci/emu10k1/voice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_emu10k1_voice_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_voice_alloc\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_voice_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_voice_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_voice_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_voice_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_voice_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_voice_free\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_voice_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_voice_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_voice_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_voice_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/emu10k1/voice.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emu10k1_voice_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_voice_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_voice_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_voice_alloc to i32), ptr @__kstrtab_snd_emu10k1_voice_alloc, ptr @__kstrtabns_snd_emu10k1_voice_alloc }, section "___ksymtab+snd_emu10k1_voice_alloc", align 4
@__kstrtab_snd_emu10k1_voice_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_voice_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_voice_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_voice_free to i32), ptr @__kstrtab_snd_emu10k1_voice_free, ptr @__kstrtabns_snd_emu10k1_voice_free }, section "___ksymtab+snd_emu10k1_voice_free", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../sound/pci/emu10k1/voice.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 107, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_snd_emu10k1_voice_alloc, ptr @__ksymtab_snd_emu10k1_voice_free, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_voice_alloc(ptr noundef %emu, i32 noundef %type, i32 noundef %number, ptr noundef writeonly %rvoice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rvoice, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number)
  %tobool25.not = icmp eq i32 %number, 0
  br i1 %tobool25.not, label %do.end43, label %do.body61, !prof !15

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

do.body61:                                        ; preds = %if.end23
  %voice_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 43
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #2
  %next_free_voice.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 75
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %number)
  %cmp1.i = icmp ne i32 %number, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %number)
  %cmp492.i = icmp sgt i32 %number, 0
  %0 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  %get_synth_voice = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 40
  br label %for.cond

for.cond:                                         ; preds = %if.end98, %do.body61
  %1 = ptrtoint ptr %rvoice to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rvoice, align 4
  %2 = ptrtoint ptr %next_free_voice.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_free_voice.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc17.i.for.body.i_crit_edge, %for.cond
  %j.096.i = phi i32 [ 0, %for.cond ], [ %add19.i, %for.inc17.i.for.body.i_crit_edge ]
  %i.095.i = phi i32 [ %3, %for.cond ], [ %add18.i, %for.inc17.i.for.body.i_crit_edge ]
  %rem.i = srem i32 %i.095.i, 64
  %4 = and i32 %rem.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %for.cond3.preheader.i, label %if.then.i

for.cond3.preheader.i:                            ; preds = %for.body.i
  br i1 %cmp492.i, label %for.cond3.preheader.i.for.body5.i_crit_edge, label %for.end20.thread.i

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %inc.i = add nsw i32 %rem.i, 1
  br label %for.inc17.i

for.cond3.i:                                      ; preds = %for.body5.i
  %inc10.i = add nuw nsw i32 %k.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, %number
  br i1 %exitcond.not.i, label %for.end20.i, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %k.093.i = phi i32 [ %inc10.i, %for.cond3.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %add.i = add i32 %k.093.i, %rem.i
  %rem6.i = srem i32 %add.i, 64
  %use.i = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %rem6.i, i32 2
  %5 = ptrtoint ptr %use.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool7.not.i, label %for.cond3.i, label %for.body5.i.for.inc17.i_crit_edge

for.body5.i.for.inc17.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.body5.i.for.inc17.i_crit_edge, %if.then.i
  %i.1.i = phi i32 [ %inc.i, %if.then.i ], [ %rem.i, %for.body5.i.for.inc17.i_crit_edge ]
  %add18.i = add i32 %i.1.i, %number
  %add19.i = add i32 %j.096.i, %number
  %cmp.i = icmp slt i32 %add19.i, 64
  br i1 %cmp.i, label %for.inc17.i.for.body.i_crit_edge, label %for.inc17.i.lor.lhs.false_crit_edge

for.inc17.i.lor.lhs.false_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.lhs.false

for.inc17.i.for.body.i_crit_edge:                 ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.end20.i:                                      ; preds = %for.cond3.i
  %add13.i = add i32 %rem.i, %number
  %rem14.i = srem i32 %add13.i, 64
  %6 = ptrtoint ptr %next_free_voice.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem14.i, ptr %next_free_voice.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem14.i)
  %cmp21.i = icmp eq i32 %rem.i, %rem14.i
  br i1 %cmp21.i, label %for.end20.i.lor.lhs.false_crit_edge, label %for.body26.i.preheader

for.end20.i.lor.lhs.false_crit_edge:              ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.lhs.false

for.body26.i.preheader:                           ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %7 = icmp ult i32 %type, 4
  %switch.shiftamt = shl i32 %type, 3
  %switch.downshift = lshr i32 -2003779424, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %for.body26.i

for.end20.thread.i:                               ; preds = %for.cond3.preheader.i
  %add13105.i = add i32 %rem.i, %number
  %rem14106.i = srem i32 %add13105.i, 64
  %8 = ptrtoint ptr %next_free_voice.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem14106.i, ptr %next_free_voice.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem14106.i)
  %cmp21107.i = icmp eq i32 %rem.i, %rem14106.i
  br i1 %cmp21107.i, label %for.end20.thread.i.lor.lhs.false_crit_edge, label %for.end20.thread.i.voice_alloc.exit_crit_edge

for.end20.thread.i.voice_alloc.exit_crit_edge:    ; preds = %for.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %voice_alloc.exit

for.end20.thread.i.lor.lhs.false_crit_edge:       ; preds = %for.end20.thread.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.lhs.false

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.body26.i.preheader
  %i.298.i = phi i32 [ %inc49.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.body26.i.preheader ]
  %add28.i = add i32 %i.298.i, %rem.i
  %rem29.i = srem i32 %add28.i, 64
  %use31.i = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %rem29.i, i32 2
  %9 = ptrtoint ptr %use31.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load32.i = load i8, ptr %use31.i, align 4
  %spec.select = select i1 %7, i8 %switch.masked, i8 -128
  %storemerge = or i8 %bf.load32.i, %spec.select
  store i8 %storemerge, ptr %use31.i, align 4
  %inc49.i = add nuw nsw i32 %i.298.i, 1
  %exitcond104.not.i = icmp eq i32 %inc49.i, %number
  br i1 %exitcond104.not.i, label %for.body26.i.voice_alloc.exit_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body26.i

for.body26.i.voice_alloc.exit_crit_edge:          ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %voice_alloc.exit

voice_alloc.exit:                                 ; preds = %for.body26.i.voice_alloc.exit_crit_edge, %for.end20.thread.i.voice_alloc.exit_crit_edge
  %arrayidx52.i = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %rem.i
  %10 = ptrtoint ptr %rvoice to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx52.i, ptr %rvoice, align 4
  br label %for.end

lor.lhs.false:                                    ; preds = %for.end20.thread.i.lor.lhs.false_crit_edge, %for.end20.i.lor.lhs.false_crit_edge, %for.inc17.i.lor.lhs.false_crit_edge
  br i1 %switch, label %lor.lhs.false.for.end_crit_edge, label %if.end77

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end77:                                         ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %get_synth_voice to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_synth_voice, align 4
  %tobool78.not = icmp eq ptr %12, null
  br i1 %tobool78.not, label %if.end77.for.end_crit_edge, label %if.then79

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.then79:                                        ; preds = %if.end77
  %call81 = tail call i32 %12(ptr noundef %emu) #2
  %cmp82 = icmp sgt i32 %call81, -1
  br i1 %cmp82, label %if.end98, label %if.then79.for.end_crit_edge

if.then79.for.end_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end98:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #4
  %interrupt = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %call81, i32 3
  %13 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %interrupt, align 4
  %efx = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %call81, i32 2
  %14 = ptrtoint ptr %efx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %efx, align 4
  %bf.clear95 = and i8 %bf.load, 7
  store i8 %bf.clear95, ptr %efx, align 4
  %epcm = getelementptr %struct.snd_emu10k1, ptr %emu, i32 0, i32 46, i32 %call81, i32 4
  %15 = ptrtoint ptr %epcm to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %epcm, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then79.for.end_crit_edge, %if.end77.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %voice_alloc.exit
  %result.1 = phi i32 [ 0, %voice_alloc.exit ], [ %call81, %if.then79.for.end_crit_edge ], [ -12, %if.end77.for.end_crit_edge ], [ -12, %lor.lhs.false.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call63) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end43 ], [ %result.1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_voice_free(ptr noundef %emu, ptr noundef %pvoice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pvoice, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %voice_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 43
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #2
  %interrupt = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice, i32 0, i32 3
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %interrupt, align 4
  %efx = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice, i32 0, i32 2
  %1 = ptrtoint ptr %efx to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %efx, align 4
  %bf.clear42 = and i8 %bf.load, 7
  store i8 %bf.clear42, ptr %efx, align 4
  %epcm = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice, i32 0, i32 4
  %2 = ptrtoint ptr %epcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %epcm, align 4
  %number = getelementptr inbounds %struct.snd_emu10k1_voice, ptr %pvoice, i32 0, i32 1
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  tail call void @snd_emu10k1_voice_init(ptr noundef %emu, i32 noundef %4) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call27) #2
  br label %cleanup

cleanup:                                          ; preds = %do.body25, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_voice_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/voice.c", i32 107, i32 6}
!2 = !{ptr @__ksymtab_snd_emu10k1_voice_alloc, !3, !"__ksymtab_snd_emu10k1_voice_alloc", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/voice.c", i32 136, i32 1}
!4 = !{ptr @__ksymtab_snd_emu10k1_voice_free, !5, !"__ksymtab_snd_emu10k1_voice_free", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/voice.c", i32 154, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
