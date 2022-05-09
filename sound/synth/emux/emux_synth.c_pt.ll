; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_synth.c_pt.bc'
source_filename = "../sound/synth/emux/emux_synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_emux_terminate_all\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_terminate_all\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_terminate_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_terminate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_terminate_all\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_terminate_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emux_lock_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_lock_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_lock_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_lock_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_lock_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_lock_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emux_unlock_voice\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_unlock_voice\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_unlock_voice\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_unlock_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_unlock_voice\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_unlock_voice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
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
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }
%struct.snd_sf_zone = type { ptr, i8, i8, i8, %struct.soundfont_voice_info, i32, ptr, ptr, ptr }
%struct.soundfont_voice_info = type { i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, %struct.soundfont_voice_parm, i16 }
%struct.soundfont_voice_parm = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [4 x i16] }
%struct.snd_emux_voice = type { i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.soundfont_voice_info, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_sf_sample = type { %struct.soundfont_sample_info, i32, ptr, ptr }
%struct.soundfont_sample_info = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.snd_emux_effect_table = type { [34 x i16], [34 x i8] }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/synth/emux/emux_synth.c\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_snd_emux_terminate_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_terminate_all = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_terminate_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_terminate_all to i32), ptr @__kstrtab_snd_emux_terminate_all, ptr @__kstrtabns_snd_emux_terminate_all }, section "___ksymtab+snd_emux_terminate_all", align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014invalid voice for lock %d (state = %x)\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emux_lock_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_lock_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_lock_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_lock_voice to i32), ptr @__kstrtab_snd_emux_lock_voice, ptr @__kstrtabns_snd_emux_lock_voice }, section "___ksymtab+snd_emux_lock_voice", align 4
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014invalid voice for unlock %d (state = %x)\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emux_unlock_voice = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_unlock_voice = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_unlock_voice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_unlock_voice to i32), ptr @__kstrtab_snd_emux_unlock_voice, ptr @__kstrtabns_snd_emux_unlock_voice }, section "___ksymtab+snd_emux_unlock_voice", align 4
@snd_sf_vol_table = external dso_local local_unnamed_addr global [128 x i32], align 4
@voltab1 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"ccccccccccc+)('&%$#\22! \1F\1E\1E\1D\1C\1B\1B\1A\19\19\18\17\17\16\16\15\15\14\14\13\13\13\12\12\11\11\11\10\10\10\0F\0F\0F\0E\0E\0E\0E\0D\0D\0D\0C\0C\0C\0C\0C\0B\0B\0B\0B\0A\0A\0A\0A\09\09\09\09\09\08\08\08\08\08\07\07\07\07\06\06\06\06\06\05\05\05\05\05\04\04\04\04\04\03\03\03\03\03\02\02\02\02\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@voltab2 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"210/.-,+**)('&%$$#\22!! \1F\1E\1E\1D\1C\1C\1B\1A\1A\19\19\18\18\17\16\16\15\15\14\14\13\13\13\12\12\11\11\10\10\10\0F\0F\0F\0E\0E\0E\0D\0D\0D\0C\0C\0C\0B\0B\0B\0B\0A\0A\0A\0A\09\09\09\09\09\08\08\08\08\08\07\07\07\07\07\06\06\06\06\06\06\05\05\05\05\05\05\05\04\04\04\04\04\04\03\03\03\03\03\03\02\02\02\02\02\02\01\01\01\01\01\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@expressiontab = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\7FlbZTPKHEB@=;9864310/-,+*)('&%$$#\22!! \1F\1E\1E\1D\1D\1C\1B\1B\1A\1A\19\18\18\17\17\16\16\15\15\15\14\14\13\13\12\12\11\11\11\10\10\0F\0F\0F\0E\0E\0E\0D\0D\0D\0C\0C\0C\0B\0B\0B\0A\0A\0A\09\09\09\09\08\08\08\07\07\07\07\06\06\06\06\05\05\05\04\04\04\04\04\03\03\03\03\02\02\02\02\01\01\01\01\01\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@pan_volumes = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\03\06\09\0C\0F\12\14\17\1A\1D \22%(*-0257:<?ADFIKMPRTWY[]`bdfhjloqsuwy{|~\80\82\84\86\88\89\8B\8D\8F\90\92\94\96\97\99\9A\9C\9E\9F\A1\A2\A4\A5\A7\A8\AA\AB\AD\AE\AF\B1\B2\B3\B5\B6\B7\B9\BA\BB\BC\BE\BF\C0\C1\C2\C3\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D7\D8\D9\DA\DB\DC\DC\DD\DE\DF\DF\E0\E1\E2\E2\E3\E4\E4\E5\E6\E6\E7\E8\E8\E9\E9\EA\EB\EB\EC\EC\ED\ED\EE\EE\EF\EF\F0\F0\F1\F1\F1\F2\F2\F3\F3\F3\F4\F4\F5\F5\F5\F6\F6\F6\F7\F7\F7\F7\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 7, i64 10, i64 11, i64 67, i64 128, i64 130]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 56, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 944, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 962, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"voltab1\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 687, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"voltab2\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 703, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"expressiontab\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 719, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"pan_volumes\00", align 1
@___asan_gen_.24 = private constant [33 x i8] c"../sound/synth/emux/emux_synth.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 619, i32 28 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_snd_emux_lock_voice, ptr @__ksymtab_snd_emux_terminate_all, ptr @__ksymtab_snd_emux_unlock_voice, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @voltab1, ptr @voltab2, ptr @expressiontab, ptr @pan_volumes], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltab1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltab2 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expressiontab to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pan_volumes to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_note_on(ptr noundef %p, i32 noundef %note, i32 noundef %vel, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %note.addr = alloca i32, align 4
  %table = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %note.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %note, ptr %note.addr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %table) #6
  %1 = call ptr @memset(ptr %table, i32 255, i32 64)
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %emu25 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %emu25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu25, align 4
  %tobool27.not = icmp eq ptr %3, null
  br i1 %tobool27.not, label %if.end24.do.end50_crit_edge, label %lor.lhs.false

if.end24.do.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end24
  %get_voice = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %get_voice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_voice, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %lor.lhs.false.do.end50_crit_edge, label %lor.rhs29

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

lor.rhs29:                                        ; preds = %lor.lhs.false
  %trigger = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trigger, align 4
  %tobool31.not = icmp eq ptr %7, null
  br i1 %tobool31.not, label %lor.rhs29.do.end50_crit_edge, label %if.end66, !prof !29

lor.rhs29.do.end50_crit_edge:                     ; preds = %lor.rhs29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

do.end50:                                         ; preds = %lor.rhs29.do.end50_crit_edge, %lor.lhs.false.do.end50_crit_edge, %if.end24.do.end50_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end66:                                         ; preds = %lor.rhs29
  %midi_mode.i.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %midi_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %midi_mode.i.i, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default.i.i [
    i8 3, label %sw.bb.i.i
    i8 2, label %sw.bb6.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end66
  %control.i.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 10
  %11 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %12)
  %cmp.i.i = icmp eq i8 %12, 127
  br i1 %cmp.i.i, label %sw.bb.i.i.get_bank.exit.thread.i_crit_edge, label %if.end.i.i

sw.bb.i.i.get_bank.exit.thread.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bank.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.i.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 32
  br label %get_bank.exit.i

sw.bb6.i.i:                                       ; preds = %if.end66
  %drum_channel.i.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %drum_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i = load i8, ptr %drum_channel.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %sw.bb6.i.i.get_bank.exit.thread.i_crit_edge

sw.bb6.i.i.get_bank.exit.thread.i_crit_edge:      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bank.exit.thread.i

if.end8.i.i:                                      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %control9.i.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 10
  br label %get_bank.exit.i

sw.default.i.i:                                   ; preds = %if.end66
  %drum_channel12.i.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %drum_channel12.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load13.i.i = load i8, ptr %drum_channel12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13.i.i)
  %tobool16.not.i.i = icmp sgt i8 %bf.load13.i.i, -1
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %sw.default.i.i.get_bank.exit.thread.i_crit_edge

sw.default.i.i.get_bank.exit.thread.i_crit_edge:  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bank.exit.thread.i

if.end18.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %control19.i.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 10
  br label %get_bank.exit.i

get_bank.exit.thread.i:                           ; preds = %sw.default.i.i.get_bank.exit.thread.i_crit_edge, %sw.bb6.i.i.get_bank.exit.thread.i_crit_edge, %sw.bb.i.i.get_bank.exit.thread.i_crit_edge
  %midi_program12.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 8
  %15 = ptrtoint ptr %midi_program12.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %midi_program12.i, align 4
  %conv13.i = zext i8 %16 to i32
  br label %if.then.i

get_bank.exit.i:                                  ; preds = %if.end18.i.i, %if.end8.i.i, %if.end.i.i
  %control19.sink.i.i = phi ptr [ %control19.i.i, %if.end18.i.i ], [ %control9.i.i, %if.end8.i.i ], [ %arrayidx4.i.i, %if.end.i.i ]
  %17 = ptrtoint ptr %control19.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %control19.sink.i.i, align 4
  %midi_program.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 8
  %19 = ptrtoint ptr %midi_program.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %midi_program.i, align 4
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %18)
  %cmp.i = icmp eq i8 %18, -128
  br i1 %cmp.i, label %get_bank.exit.i.if.then.i_crit_edge, label %if.else.i

get_bank.exit.i.if.then.i_crit_edge:              ; preds = %get_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %get_bank.exit.i.if.then.i_crit_edge, %get_bank.exit.thread.i
  %conv18.i = phi i32 [ %conv13.i, %get_bank.exit.thread.i ], [ %conv.i, %get_bank.exit.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_emux_port, ptr %p, i32 0, i32 5, i32 12
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  br label %get_zone.exit

if.else.i:                                        ; preds = %get_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.i.i = zext i8 %18 to i32
  %arrayidx3.i = getelementptr %struct.snd_emux_port, ptr %p, i32 0, i32 5, i32 11
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx3.i, align 4
  br label %get_zone.exit

get_zone.exit:                                    ; preds = %if.else.i, %if.then.i
  %conv17.i = phi i32 [ %conv18.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %retval.0.shrunk.i15.i = phi i32 [ 128, %if.then.i ], [ %phi.cast.i.i, %if.else.i ]
  %def_preset.0.i = phi i32 [ %22, %if.then.i ], [ %conv.i, %if.else.i ]
  %def_bank.0.i = phi i32 [ 128, %if.then.i ], [ %24, %if.else.i ]
  %sflist.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 14
  %25 = ptrtoint ptr %sflist.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sflist.i, align 4
  %call4.i = call i32 @snd_soundfont_search_zone(ptr noundef %26, ptr noundef nonnull %note.addr, i32 noundef %vel, i32 noundef %conv17.i, i32 noundef %retval.0.shrunk.i15.i, i32 noundef %def_preset.0.i, i32 noundef %def_bank.0.i, ptr noundef nonnull %table, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool67.not = icmp eq i32 %call4.i, 0
  br i1 %tobool67.not, label %get_zone.exit.cleanup_crit_edge, label %for.cond.preheader

get_zone.exit.cleanup_crit_edge:                  ; preds = %get_zone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %get_zone.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp263 = icmp sgt i32 %call4.i, 0
  %voice_lock.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 17
  br i1 %cmp263, label %for.body.lr.ph, label %do.body78.thread

do.body78.thread:                                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %call83273 = call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #6
  br label %for.cond145.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_voices.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 1
  %voices.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 15
  %terminate.i.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 6
  %use_time.i.i = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.body.lr.ph
  %i.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end76.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %table, i32 0, i32 %i.0264
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool70.not = icmp eq ptr %28, null
  br i1 %tobool70.not, label %for.body.if.end76_crit_edge, label %land.lhs.true

for.body.if.end76_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true:                                    ; preds = %for.body
  %exclusiveClass = getelementptr inbounds %struct.snd_sf_zone, ptr %28, i32 0, i32 4, i32 18
  %29 = ptrtoint ptr %exclusiveClass to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %exclusiveClass, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool71.not = icmp eq i16 %30, 0
  br i1 %tobool71.not, label %land.lhs.true.if.end76_crit_edge, label %if.then72

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then72:                                        ; preds = %land.lhs.true
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #6
  %31 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_voices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp524.i = icmp sgt i32 %32, 0
  br i1 %cmp524.i, label %if.then72.for.body.i_crit_edge, label %if.then72.exclusive_note_off.exit_crit_edge

if.then72.exclusive_note_off.exit_crit_edge:      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %exclusive_note_off.exit

if.then72.for.body.i_crit_edge:                   ; preds = %if.then72
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then72.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then72.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %voices.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %voices.i, align 4
  %arrayidx.i255 = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i
  %state.i = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i, i32 1
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %port7.i = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i, i32 9
  %37 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port7.i, align 4
  %cmp8.i = icmp eq ptr %38, %p
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %exclusiveClass.i = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i, i32 13, i32 18
  %39 = ptrtoint ptr %exclusiveClass.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %exclusiveClass.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %30)
  %cmp12.i = icmp eq i16 %40, %30
  br i1 %cmp12.i, label %if.then.i256, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i256:                                     ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %terminate.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %terminate.i.i, align 4
  call void %42(ptr noundef %arrayidx.i255) #6
  %43 = ptrtoint ptr %use_time.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %use_time.i.i, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %use_time.i.i, align 4
  %time.i.i = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i, i32 2
  %45 = ptrtoint ptr %time.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %time.i.i, align 4
  %zone.i.i = getelementptr %struct.snd_emux_voice, ptr %34, i32 %i.025.i, i32 6
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %state.i, align 4
  %47 = call ptr @memset(ptr %zone.i.i, i32 0, i32 16)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i256, %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %48 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_voices.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %49
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.exclusive_note_off.exit_crit_edge

for.inc.i.exclusive_note_off.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exclusive_note_off.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

exclusive_note_off.exit:                          ; preds = %for.inc.i.exclusive_note_off.exit_crit_edge, %if.then72.exclusive_note_off.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i, i32 noundef %call2.i) #6
  br label %if.end76

if.end76:                                         ; preds = %exclusive_note_off.exit, %land.lhs.true.if.end76_crit_edge, %for.body.if.end76_crit_edge
  %inc = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc, %call4.i
  br i1 %exitcond.not, label %do.body78, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body78:                                        ; preds = %if.end76
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 17
  %call83 = call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  br i1 %cmp263, label %for.body91.lr.ph, label %do.body78.for.cond145.preheader_crit_edge

do.body78.for.cond145.preheader_crit_edge:        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond145.preheader

for.body91.lr.ph:                                 ; preds = %do.body78
  %terminate = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 6
  %use_time = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 16
  %conv114 = trunc i32 %note to i8
  %conv118 = trunc i32 %vel to i8
  %prepare = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 2
  br label %for.body91

for.cond145.preheader:                            ; preds = %for.inc142.for.cond145.preheader_crit_edge, %do.body78.for.cond145.preheader_crit_edge, %do.body78.thread
  %call83275 = phi i32 [ %call83273, %do.body78.thread ], [ %call83, %do.body78.for.cond145.preheader_crit_edge ], [ %call83, %for.inc142.for.cond145.preheader_crit_edge ]
  %voice_lock274 = phi ptr [ %voice_lock.i, %do.body78.thread ], [ %voice_lock, %do.body78.for.cond145.preheader_crit_edge ], [ %voice_lock, %for.inc142.for.cond145.preheader_crit_edge ]
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp146267 = icmp sgt i32 %51, 0
  br i1 %cmp146267, label %for.body148.lr.ph, label %for.cond145.preheader.for.end164_crit_edge

for.cond145.preheader.for.end164_crit_edge:       ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end164

for.body148.lr.ph:                                ; preds = %for.cond145.preheader
  %voices = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 15
  br label %for.body148

for.body91:                                       ; preds = %for.inc142.for.body91_crit_edge, %for.body91.lr.ph
  %i.1266 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc143, %for.inc142.for.body91_crit_edge ]
  %arrayidx92 = getelementptr [16 x ptr], ptr %table, i32 0, i32 %i.1266
  %52 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx92, align 4
  %cmp93 = icmp eq ptr %53, null
  br i1 %cmp93, label %for.body91.for.inc142_crit_edge, label %if.end96

for.body91.for.inc142_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.end96:                                         ; preds = %for.body91
  %54 = ptrtoint ptr %get_voice to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_voice, align 4
  %call99 = call ptr %55(ptr noundef nonnull %3, ptr noundef %p) #6
  %cmp100 = icmp eq ptr %call99, null
  br i1 %cmp100, label %if.end96.for.inc142_crit_edge, label %lor.lhs.false102

if.end96.for.inc142_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

lor.lhs.false102:                                 ; preds = %if.end96
  %56 = ptrtoint ptr %call99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp103 = icmp slt i32 %57, 0
  br i1 %cmp103, label %lor.lhs.false102.for.inc142_crit_edge, label %if.end106

lor.lhs.false102.for.inc142_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.end106:                                        ; preds = %lor.lhs.false102
  %state = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 1
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state, align 4
  %and = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool107.not = icmp eq i32 %and, 0
  br i1 %tobool107.not, label %if.end106.if.end110_crit_edge, label %if.then108

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %terminate, align 4
  call void %61(ptr noundef nonnull %call99) #6
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106.if.end110_crit_edge
  %62 = ptrtoint ptr %use_time to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %use_time, align 4
  %inc111 = add i32 %63, 1
  store i32 %inc111, ptr %use_time, align 4
  %time = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 2
  %64 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %time, align 4
  %chan112 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 8
  %65 = ptrtoint ptr %chan112 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %chan, ptr %chan112, align 4
  %port113 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 9
  %66 = ptrtoint ptr %port113 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %p, ptr %port113, align 4
  %key115 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 4
  %67 = ptrtoint ptr %key115 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv114, ptr %key115, align 1
  %68 = ptrtoint ptr %note.addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %note.addr, align 4
  %conv116 = trunc i32 %69 to i8
  %note117 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 3
  %70 = ptrtoint ptr %note117 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv116, ptr %note117, align 4
  %velocity = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 5
  %71 = ptrtoint ptr %velocity to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv118, ptr %velocity, align 2
  %72 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx92, align 4
  %zone = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 6
  %74 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %zone, align 4
  %sample = getelementptr inbounds %struct.snd_sf_zone, ptr %73, i32 0, i32 6
  %75 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sample, align 4
  %tobool121.not = icmp eq ptr %76, null
  br i1 %tobool121.not, label %if.end110.if.end127_crit_edge, label %if.then122

if.end110.if.end127_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then122:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %block = getelementptr inbounds %struct.snd_sf_sample, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %block, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.end110.if.end127_crit_edge
  %.sink = phi ptr [ %78, %if.then122 ], [ null, %if.end110.if.end127_crit_edge ]
  %79 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 7
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %.sink, ptr %79, align 4
  %reg.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13
  %81 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %zone, align 4
  %v.i = getelementptr inbounds %struct.snd_sf_zone, ptr %82, i32 0, i32 4
  %83 = call ptr @memcpy(ptr %reg.i, ptr %v.i, i32 92)
  call void @snd_emux_setup_effect(ptr noundef nonnull %call99) #6
  %apan.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 17
  %84 = ptrtoint ptr %apan.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %apan.i, align 4
  %avol.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 14
  %85 = ptrtoint ptr %avol.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %avol.i, align 4
  %apitch.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 16
  %86 = ptrtoint ptr %apitch.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %apitch.i, align 4
  call fastcc void @calc_volume(ptr noundef nonnull %call99) #6
  call fastcc void @calc_pitch(ptr noundef nonnull %call99) #6
  %fixpan.i.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 17
  %87 = ptrtoint ptr %fixpan.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fixpan.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp.i.i257 = icmp sgt i8 %88, 0
  br i1 %cmp.i.i257, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %conv81.i.i = zext i8 %88 to i32
  %mul.neg.i.i = mul nsw i32 %conv81.i.i, -2
  %sub.i.i = add nsw i32 %mul.neg.i.i, 255
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %chan112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chan112, align 4
  %arrayidx.i.i = getelementptr %struct.snd_midi_channel, ptr %90, i32 0, i32 10, i32 10
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i, align 2
  %conv6.i.i = zext i8 %92 to i32
  %sub7.neg.i.i = sub nsw i32 64, %conv6.i.i
  %pan9.i.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 16
  %93 = ptrtoint ptr %pan9.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pan9.i.i, align 2
  %conv10.i.i = sext i8 %94 to i32
  %sub17.neg.i.i = sub nsw i32 64, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1182.i.i = icmp slt i8 %94, 0
  %add.neg.i.i = select i1 %cmp1182.i.i, i32 0, i32 %sub17.neg.i.i
  %pan.0.neg.i.i = add nsw i32 %sub7.neg.i.i, %add.neg.i.i
  %mul18.neg.i.i = shl nsw i32 %pan.0.neg.i.i, 1
  %sub19.i.i = add nsw i32 %mul18.neg.i.i, 127
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %pan.1.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub19.i.i, %if.else.i.i ]
  %95 = call i32 @llvm.smin.i32(i32 %pan.1.i.i, i32 255) #6
  %96 = call i32 @llvm.smax.i32(i32 %95, i32 0) #6
  %emu.i.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 10
  %97 = ptrtoint ptr %emu.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %emu.i.i, align 4
  %linear_panning.i.i = getelementptr inbounds %struct.snd_emux, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %linear_panning.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i.i258 = load i8, ptr %linear_panning.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i258)
  %tobool.not.i.i259 = icmp sgt i8 %bf.load.i.i258, -1
  %100 = ptrtoint ptr %apan.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %apan.i, align 4
  br i1 %tobool.not.i.i259, label %if.else43.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %101)
  %cmp31.not.i.i = icmp eq i32 %96, %101
  br i1 %cmp31.not.i.i, label %if.then30.i.i.calc_pan.exit.i_crit_edge, label %if.then33.i.i

if.then30.i.i.calc_pan.exit.i_crit_edge:          ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit.i

if.then33.i.i:                                    ; preds = %if.then30.i.i
  %102 = ptrtoint ptr %apan.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %96, ptr %apan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp35.i.i = icmp slt i32 %95, 1
  br i1 %cmp35.i.i, label %if.then33.i.i.cleanup.sink.split.i.i_crit_edge, label %if.else38.i.i

if.then33.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.else38.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub39.i.i = sub nsw i32 0, %96
  %and.i.i = and i32 %sub39.i.i, 255
  br label %cleanup.sink.split.i.i

if.else43.i.i:                                    ; preds = %do.body.i.i
  %arrayidx45.i.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %96
  %103 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx45.i.i, align 1
  %conv46.i.i = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %conv46.i.i)
  %cmp47.not.i.i = icmp eq i32 %101, %conv46.i.i
  br i1 %cmp47.not.i.i, label %if.else43.i.i.calc_pan.exit.i_crit_edge, label %if.then49.i.i

if.else43.i.i.calc_pan.exit.i_crit_edge:          ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit.i

if.then49.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %apan.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv46.i.i, ptr %apan.i, align 4
  %sub53.i.i = sub nuw nsw i32 255, %96
  %arrayidx54.i.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %sub53.i.i
  %106 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx54.i.i, align 1
  %conv55.i.i = zext i8 %107 to i32
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then49.i.i, %if.else38.i.i, %if.then33.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %and.i.i, %if.else38.i.i ], [ %conv55.i.i, %if.then49.i.i ], [ 255, %if.then33.i.i.cleanup.sink.split.i.i_crit_edge ]
  %aaux.i.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 18
  %108 = ptrtoint ptr %aaux.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink.i.i, ptr %aaux.i.i, align 4
  br label %calc_pan.exit.i

calc_pan.exit.i:                                  ; preds = %cleanup.sink.split.i.i, %if.else43.i.i.calc_pan.exit.i_crit_edge, %if.then30.i.i.calc_pan.exit.i_crit_edge
  %parm4.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22
  %modatkhld.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22, i32 1
  %109 = ptrtoint ptr %modatkhld.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %modatkhld.i, align 2
  %111 = and i16 %110, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp.not.i = icmp eq i16 %111, 0
  br i1 %cmp.not.i, label %calc_pan.exit.i.if.else35.i_crit_edge, label %land.lhs.true.i260

calc_pan.exit.i.if.else35.i_crit_edge:            ; preds = %calc_pan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else35.i

land.lhs.true.i260:                               ; preds = %calc_pan.exit.i
  %112 = ptrtoint ptr %parm4.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %parm4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp7.i = icmp slt i16 %113, 0
  br i1 %cmp7.i, label %if.then.i261, label %land.lhs.true.i260.if.else35.i_crit_edge

land.lhs.true.i260.if.else35.i_crit_edge:         ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else35.i

if.then.i261:                                     ; preds = %land.lhs.true.i260
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %parm4.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -16385, ptr %parm4.i, align 2
  %pefe.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22, i32 14
  %115 = ptrtoint ptr %pefe.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %pefe.i, align 2
  %conv10.i = zext i16 %116 to i32
  %117 = lshr i32 %conv10.i, 4
  %shl.i = and i32 %117, 4080
  %118 = ptrtoint ptr %apitch.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %apitch.i, align 4
  %add.i = add i32 %shl.i, %119
  %120 = call i32 @llvm.smin.i32(i32 %add.i, i32 65535) #6
  %cutoff.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22, i32 18
  %121 = ptrtoint ptr %cutoff.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %cutoff.i, align 2
  %conv16.i = zext i8 %122 to i32
  %and19.i = and i32 %conv10.i, 255
  %add20.i = add nuw nsw i32 %and19.i, %conv16.i
  %ftarget.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 21
  %123 = call i32 @llvm.umin.i32(i32 %add20.i, i32 255) #6
  %shl34.i = shl nuw nsw i32 %123, 8
  %124 = ptrtoint ptr %ftarget.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shl34.i, ptr %ftarget.i, align 4
  br label %if.end42.i

if.else35.i:                                      ; preds = %land.lhs.true.i260.if.else35.i_crit_edge, %calc_pan.exit.i.if.else35.i_crit_edge
  %cutoff36.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22, i32 18
  %125 = ptrtoint ptr %cutoff36.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %cutoff36.i, align 2
  %conv37.i = zext i8 %126 to i32
  %ftarget38.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 21
  %shl40.i = shl nuw nsw i32 %conv37.i, 8
  %127 = ptrtoint ptr %ftarget38.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %shl40.i, ptr %ftarget38.i, align 4
  %128 = ptrtoint ptr %apitch.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %apitch.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else35.i, %if.then.i261
  %pitch.0.i = phi i32 [ %120, %if.then.i261 ], [ %129, %if.else35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %pitch.0.i)
  %cmp43.not.i = icmp eq i32 %pitch.0.i, 65535
  br i1 %cmp43.not.i, label %if.end42.i.if.end84.i_crit_edge, label %if.then45.i

if.end42.i.if.end84.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr46.i = ashr i32 %pitch.0.i, 12
  %shl47.i = shl nuw i32 1, %shr46.i
  %and48.i = and i32 %pitch.0.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool.not.i262 = icmp eq i32 %and48.i, 0
  %mul.i = shl i32 4142, %shr46.i
  %div.i = sdiv i32 %mul.i, 10000
  %add52.i = select i1 %tobool.not.i262, i32 0, i32 %div.i
  %storemerge.i = add i32 %add52.i, %shl47.i
  %and54.i = and i32 %pitch.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %mul58.i = mul i32 %storemerge.i, 1892
  %div59.i = sdiv i32 %mul58.i, 10000
  %add61.i = select i1 %tobool55.not.i, i32 0, i32 %div59.i
  %storemerge163.i = add i32 %add61.i, %storemerge.i
  %and63.i = and i32 %pitch.0.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %mul67.i = mul i32 %storemerge163.i, 905
  %div68.i = sdiv i32 %mul67.i, 10000
  %add70.i = select i1 %tobool64.not.i, i32 0, i32 %div68.i
  %storemerge = add i32 %storemerge163.i, %add70.i
  %shr73.i = ashr i32 %storemerge, 1
  %add75.i = add i32 %shr73.i, %storemerge
  %130 = call i32 @llvm.smin.i32(i32 %add75.i, i32 65535) #6
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end84.i_crit_edge
  %.sink271 = phi i32 [ %130, %if.then45.i ], [ 65535, %if.end42.i.if.end84.i_crit_edge ]
  %131 = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 19
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %.sink271, ptr %131, align 4
  br i1 %cmp.not.i, label %if.end84.i.if.end98.i_crit_edge, label %if.then90.i

if.end84.i.if.end98.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i

if.then90.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  %and93.i = and i16 %110, -256
  %133 = or i16 %and93.i, 127
  %134 = ptrtoint ptr %modatkhld.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %modatkhld.i, align 2
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then90.i, %if.end84.i.if.end98.i_crit_edge
  %vtarget.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 20
  %135 = ptrtoint ptr %vtarget.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %vtarget.i, align 4
  %volatkhld.i = getelementptr inbounds %struct.snd_emux_voice, ptr %call99, i32 0, i32 13, i32 22, i32 7
  %136 = ptrtoint ptr %volatkhld.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %volatkhld.i, align 2
  %138 = and i16 %137, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cmp101.not.i = icmp eq i16 %138, 0
  br i1 %cmp101.not.i, label %if.end98.i.setup_voice.exit_crit_edge, label %if.then103.i

if.end98.i.setup_voice.exit_crit_edge:            ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %setup_voice.exit

if.then103.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  %and106.i = and i16 %137, -256
  %139 = or i16 %and106.i, 127
  %140 = ptrtoint ptr %volatkhld.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %volatkhld.i, align 2
  br label %setup_voice.exit

setup_voice.exit:                                 ; preds = %if.then103.i, %if.end98.i.setup_voice.exit_crit_edge
  %141 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 9, ptr %state, align 4
  %142 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prepare, align 4
  %tobool130.not = icmp eq ptr %143, null
  br i1 %tobool130.not, label %setup_voice.exit.for.inc142_crit_edge, label %if.then131

setup_voice.exit.for.inc142_crit_edge:            ; preds = %setup_voice.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.then131:                                       ; preds = %setup_voice.exit
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %state, align 4
  %145 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prepare, align 4
  %call135 = call i32 %146(ptr noundef nonnull %call99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call135)
  %cmp136 = icmp sgt i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.then131.for.inc142_crit_edge

if.then131.for.inc142_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.then138:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 9, ptr %state, align 4
  br label %for.inc142

for.inc142:                                       ; preds = %if.then138, %if.then131.for.inc142_crit_edge, %setup_voice.exit.for.inc142_crit_edge, %lor.lhs.false102.for.inc142_crit_edge, %if.end96.for.inc142_crit_edge, %for.body91.for.inc142_crit_edge
  %inc143 = add nuw nsw i32 %i.1266, 1
  %exitcond270.not = icmp eq i32 %inc143, %call4.i
  br i1 %exitcond270.not, label %for.inc142.for.cond145.preheader_crit_edge, label %for.inc142.for.body91_crit_edge

for.inc142.for.body91_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91

for.inc142.for.cond145.preheader_crit_edge:       ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond145.preheader

for.body148:                                      ; preds = %for.inc162.for.body148_crit_edge, %for.body148.lr.ph
  %i.2268 = phi i32 [ 0, %for.body148.lr.ph ], [ %inc163, %for.inc162.for.body148_crit_edge ]
  %148 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %voices, align 4
  %arrayidx149 = getelementptr %struct.snd_emux_voice, ptr %149, i32 %i.2268
  %state150 = getelementptr %struct.snd_emux_voice, ptr %149, i32 %i.2268, i32 1
  %150 = ptrtoint ptr %state150 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %state150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %151)
  %cmp151 = icmp eq i32 %151, 9
  br i1 %cmp151, label %land.lhs.true153, label %for.body148.for.inc162_crit_edge

for.body148.for.inc162_crit_edge:                 ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc162

land.lhs.true153:                                 ; preds = %for.body148
  %chan154 = getelementptr %struct.snd_emux_voice, ptr %149, i32 %i.2268, i32 8
  %152 = ptrtoint ptr %chan154 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %chan154, align 4
  %cmp155 = icmp eq ptr %153, %chan
  br i1 %cmp155, label %if.then157, label %land.lhs.true153.for.inc162_crit_edge

land.lhs.true153.for.inc162_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc162

if.then157:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %trigger, align 4
  call void %155(ptr noundef %arrayidx149) #6
  %156 = ptrtoint ptr %state150 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %state150, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %ontime = getelementptr %struct.snd_emux_voice, ptr %149, i32 %i.2268, i32 12
  %158 = ptrtoint ptr %ontime to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %ontime, align 4
  br label %for.inc162

for.inc162:                                       ; preds = %if.then157, %land.lhs.true153.for.inc162_crit_edge, %for.body148.for.inc162_crit_edge
  %inc163 = add nuw nsw i32 %i.2268, 1
  %159 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_voices, align 4
  %cmp146 = icmp slt i32 %inc163, %160
  br i1 %cmp146, label %for.inc162.for.body148_crit_edge, label %for.inc162.for.end164_crit_edge

for.inc162.for.end164_crit_edge:                  ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end164

for.inc162.for.body148_crit_edge:                 ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body148

for.end164:                                       ; preds = %for.inc162.for.end164_crit_edge, %for.cond145.preheader.for.end164_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock274, i32 noundef %call83275) #6
  %port_mode = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 2
  %161 = ptrtoint ptr %port_mode to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %port_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %162)
  %cmp167 = icmp eq i8 %162, 1
  br i1 %cmp167, label %if.then169, label %for.end164.cleanup_crit_edge

for.end164.cleanup_crit_edge:                     ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then169:                                       ; preds = %for.end164
  %163 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %chan, align 4
  %tobool170.not = icmp eq ptr %164, null
  br i1 %tobool170.not, label %if.then169.cleanup_crit_edge, label %if.then171

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then171:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx172 = getelementptr %struct.snd_emux_effect_table, ptr %164, i32 0, i32 1, i32 27
  %165 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %arrayidx172, align 1
  %arrayidx174 = getelementptr %struct.snd_emux_effect_table, ptr %164, i32 0, i32 1, i32 30
  %166 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %arrayidx174, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.then169.cleanup_crit_edge, %for.end164.cleanup_crit_edge, %get_zone.exit.cleanup_crit_edge, %do.end50, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %table) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_note_off(ptr noundef readonly %p, i32 noundef %note, i32 noundef %vel, ptr noundef readnone %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %emu25 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %emu25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu25, align 4
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.end24.do.end48_crit_edge, label %lor.rhs28

if.end24.do.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

lor.rhs28:                                        ; preds = %if.end24
  %release = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %tobool29.not = icmp eq ptr %3, null
  br i1 %tobool29.not, label %lor.rhs28.do.end48_crit_edge, label %do.body66, !prof !29

lor.rhs28.do.end48_crit_edge:                     ; preds = %lor.rhs28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end48:                                         ; preds = %lor.rhs28.do.end48_crit_edge, %if.end24.do.end48_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body66:                                        ; preds = %lor.rhs28
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73124 = icmp sgt i32 %5, 0
  br i1 %cmp73124, label %for.body.lr.ph, label %do.body66.for.end_crit_edge

do.body66.for.end_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body66
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  %timer_active = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 26
  %tlist = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0125
  %state = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0125, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %chan76 = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0125, i32 8
  %10 = ptrtoint ptr %chan76 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan76, align 4
  %cmp77 = icmp eq ptr %11, %chan
  br i1 %cmp77, label %land.lhs.true79, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true79:                                  ; preds = %land.lhs.true
  %key = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0125, i32 4
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key, align 1
  %conv80 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv80, i32 %note)
  %cmp81 = icmp eq i32 %conv80, %note
  br i1 %cmp81, label %if.then83, label %land.lhs.true79.for.inc_crit_edge

land.lhs.true79.for.inc_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then83:                                        ; preds = %land.lhs.true79
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state, align 4
  %ontime = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0125, i32 12
  %15 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ontime, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp85 = icmp eq i32 %16, %17
  br i1 %cmp85, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.then83
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 17, ptr %state, align 4
  %19 = ptrtoint ptr %timer_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timer_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool89.not = icmp eq i32 %20, 0
  br i1 %tobool89.not, label %if.then90, label %if.then87.for.inc_crit_edge

if.then87.for.inc_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 1
  %call91 = tail call i32 @mod_timer(ptr noundef %tlist, i32 noundef %add) #6
  %22 = ptrtoint ptr %timer_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %timer_active, align 4
  br label %for.inc

if.else:                                          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release, align 4
  tail call void %24(ptr noundef %arrayidx) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then90, %if.then87.for.inc_crit_edge, %land.lhs.true79.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ch.0125, 1
  %25 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_voices, align 4
  %cmp73 = icmp slt i32 %inc, %26
  br i1 %cmp73, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body66.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call68) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end48, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_timer_callback(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr i8, ptr %t, i32 -408
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr i8, ptr %t, i32 -528
  %0 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp635 = icmp sgt i32 %1, 0
  br i1 %cmp635, label %for.body.lr.ph, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

for.body.lr.ph:                                   ; preds = %entry
  %voices = getelementptr i8, ptr %t, i32 -416
  %release = getelementptr i8, ptr %t, i32 -496
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %do_again.038 = phi i32 [ 0, %for.body.lr.ph ], [ %do_again.1, %for.inc.for.body_crit_edge ]
  %ch.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %3, i32 %ch.036
  %state = getelementptr %struct.snd_emux_voice, ptr %3, i32 %ch.036, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp8 = icmp eq i32 %5, 17
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ontime = getelementptr %struct.snd_emux_voice, ptr %3, i32 %ch.036, i32 12
  %6 = ptrtoint ptr %ontime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ontime, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp10 = icmp eq i32 %7, %8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %do_again.038, 1
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %release, align 4
  tail call void %10(ptr noundef %arrayidx) #6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12, %for.body.for.inc_crit_edge
  %do_again.1 = phi i32 [ %inc, %if.then12 ], [ %do_again.038, %if.else ], [ %do_again.038, %for.body.for.inc_crit_edge ]
  %inc15 = add nuw nsw i32 %ch.036, 1
  %12 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_voices, align 4
  %cmp6 = icmp slt i32 %inc15, %13
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_again.1)
  %tobool.not = icmp eq i32 %do_again.1, 0
  br i1 %tobool.not, label %for.end.if.end20_crit_edge, label %if.then16

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 1
  %call17 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i32 [ 1, %if.then16 ], [ 0, %for.end.if.end20_crit_edge ], [ 0, %entry.if.end20_crit_edge ]
  %15 = getelementptr i8, ptr %t, i32 48
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_key_press(ptr noundef readonly %p, i32 noundef %note, i32 noundef %vel, ptr noundef readnone %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %emu25 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %emu25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu25, align 4
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.end24.do.end48_crit_edge, label %lor.rhs28

if.end24.do.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

lor.rhs28:                                        ; preds = %if.end24
  %update = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 4
  %tobool29.not = icmp eq ptr %3, null
  br i1 %tobool29.not, label %lor.rhs28.do.end48_crit_edge, label %do.body66, !prof !29

lor.rhs28.do.end48_crit_edge:                     ; preds = %lor.rhs28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end48:                                         ; preds = %lor.rhs28.do.end48_crit_edge, %if.end24.do.end48_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body66:                                        ; preds = %lor.rhs28
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp73108 = icmp sgt i32 %5, 0
  br i1 %cmp73108, label %for.body.lr.ph, label %do.body66.for.end_crit_edge

do.body66.for.end_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body66
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  %conv85 = trunc i32 %vel to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109
  %state = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp75 = icmp eq i32 %9, 1
  br i1 %cmp75, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %chan77 = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109, i32 8
  %10 = ptrtoint ptr %chan77 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan77, align 4
  %cmp78 = icmp eq ptr %11, %chan
  br i1 %cmp78, label %land.lhs.true80, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true80:                                  ; preds = %land.lhs.true
  %key = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109, i32 4
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key, align 1
  %conv81 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv81, i32 %note)
  %cmp82 = icmp eq i32 %conv81, %note
  br i1 %cmp82, label %if.then84, label %land.lhs.true80.for.inc_crit_edge

land.lhs.true80.for.inc_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then84:                                        ; preds = %land.lhs.true80
  %velocity = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109, i32 5
  %14 = ptrtoint ptr %velocity to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv85, ptr %velocity, align 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then84.for.inc_crit_edge, label %if.end.i

if.then84.for.inc_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.then84
  %17 = ptrtoint ptr %chan77 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan77, align 4
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %port.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %ch.0109, i32 9
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port.i, align 4
  %cmp1.i = icmp eq ptr %20, null
  br i1 %cmp1.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end3.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @calc_volume(ptr noundef %arrayidx) #6
  %21 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %update, align 4
  tail call void %22(ptr noundef %arrayidx, i32 noundef 1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end3.i, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.then84.for.inc_crit_edge, %land.lhs.true80.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ch.0109, 1
  %23 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_voices, align 4
  %cmp73 = icmp slt i32 %inc, %24
  br i1 %cmp73, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body66.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call68) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end48, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_voice(ptr nocapture noundef readonly %emu, ptr noundef %vp, i32 noundef %update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %chan = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %port = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 9
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  %and4 = and i32 %update, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @calc_volume(ptr noundef %vp)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %and8 = and i32 %update, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @calc_pitch(ptr noundef %vp)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %and13 = and i32 %update, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %fixpan.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 17
  %6 = ptrtoint ptr %fixpan.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fixpan.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp sgt i8 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %conv81.i = zext i8 %7 to i32
  %mul.neg.i = mul nsw i32 %conv81.i, -2
  %sub.i = add nsw i32 %mul.neg.i, 255
  br label %do.body.i

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 2
  %conv6.i = zext i8 %11 to i32
  %sub7.neg.i = sub nsw i32 64, %conv6.i
  %pan9.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 16
  %12 = ptrtoint ptr %pan9.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pan9.i, align 2
  %conv10.i = sext i8 %13 to i32
  %sub17.neg.i = sub nsw i32 64, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1182.i = icmp slt i8 %13, 0
  %add.neg.i = select i1 %cmp1182.i, i32 0, i32 %sub17.neg.i
  %pan.0.neg.i = add nsw i32 %sub7.neg.i, %add.neg.i
  %mul18.neg.i = shl nsw i32 %pan.0.neg.i, 1
  %sub19.i = add nsw i32 %mul18.neg.i, 127
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %pan.1.i = phi i32 [ %sub.i, %if.then.i ], [ %sub19.i, %if.else.i ]
  %14 = tail call i32 @llvm.smin.i32(i32 %pan.1.i, i32 255) #6
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0) #6
  %emu.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 10
  %16 = ptrtoint ptr %emu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %emu.i, align 4
  %linear_panning.i = getelementptr inbounds %struct.snd_emux, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %linear_panning.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %linear_panning.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %apan44.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 17
  %19 = ptrtoint ptr %apan44.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %apan44.i, align 4
  br i1 %tobool.not.i, label %if.else43.i, label %if.then30.i

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %20)
  %cmp31.not.i = icmp eq i32 %15, %20
  br i1 %cmp31.not.i, label %if.then30.i.calc_pan.exit_crit_edge, label %if.then33.i

if.then30.i.calc_pan.exit_crit_edge:              ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit

if.then33.i:                                      ; preds = %if.then30.i
  %21 = ptrtoint ptr %apan44.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %apan44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp35.i = icmp slt i32 %14, 1
  br i1 %cmp35.i, label %if.then33.i.calc_pan.exit.thread_crit_edge, label %if.else38.i

if.then33.i.calc_pan.exit.thread_crit_edge:       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit.thread

if.else38.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub39.i = sub nsw i32 0, %15
  %and.i = and i32 %sub39.i, 255
  br label %calc_pan.exit.thread

if.else43.i:                                      ; preds = %do.body.i
  %arrayidx45.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %15
  %22 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv46.i)
  %cmp47.not.i = icmp eq i32 %20, %conv46.i
  br i1 %cmp47.not.i, label %if.else43.i.calc_pan.exit_crit_edge, label %if.then49.i

if.else43.i.calc_pan.exit_crit_edge:              ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit

if.then49.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %apan44.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv46.i, ptr %apan44.i, align 4
  %sub53.i = sub nuw nsw i32 255, %15
  %arrayidx54.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %sub53.i
  %25 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %26 to i32
  br label %calc_pan.exit.thread

calc_pan.exit.thread:                             ; preds = %if.then49.i, %if.else38.i, %if.then33.i.calc_pan.exit.thread_crit_edge
  %.sink.i = phi i32 [ %and.i, %if.else38.i ], [ %conv55.i, %if.then49.i ], [ 255, %if.then33.i.calc_pan.exit.thread_crit_edge ]
  %aaux.i = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 18
  %27 = ptrtoint ptr %aaux.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i, ptr %aaux.i, align 4
  br label %if.end21

calc_pan.exit:                                    ; preds = %if.else43.i.calc_pan.exit_crit_edge, %if.then30.i.calc_pan.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %update)
  %cmp18 = icmp eq i32 %update, 4
  br i1 %cmp18, label %calc_pan.exit.return_crit_edge, label %calc_pan.exit.if.end21_crit_edge

calc_pan.exit.if.end21_crit_edge:                 ; preds = %calc_pan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

calc_pan.exit.return_crit_edge:                   ; preds = %calc_pan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end21:                                         ; preds = %calc_pan.exit.if.end21_crit_edge, %calc_pan.exit.thread, %if.end12.if.end21_crit_edge
  %update22 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %update22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %update22, align 4
  tail call void %29(ptr noundef %vp, i32 noundef %update) #6
  br label %return

return:                                           ; preds = %if.end21, %calc_pan.exit.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_update_channel(ptr nocapture noundef readonly %port, ptr noundef readnone %chan, i32 noundef %update) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update)
  %tobool.not = icmp eq i32 %update, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %emu1 = getelementptr inbounds %struct.snd_emux_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %emu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %lor.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %update3 = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %update3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %do.body31, !prof !29

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body31:                                        ; preds = %lor.rhs
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3860 = icmp sgt i32 %5, 0
  br i1 %cmp3860, label %for.body.lr.ph, label %do.body31.for.end_crit_edge

do.body31.for.end_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body31
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %chan40 = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.061, i32 8
  %8 = ptrtoint ptr %chan40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan40, align 4
  %cmp41 = icmp eq ptr %9, %chan
  br i1 %cmp41, label %if.then43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.061
  tail call fastcc void @update_voice(ptr noundef nonnull %1, ptr noundef %arrayidx, i32 noundef %update)
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %10 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_voices, align 4
  %cmp38 = icmp slt i32 %inc, %11
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body31.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call33) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_update_port(ptr noundef readonly %port, i32 noundef %update) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update)
  %tobool.not = icmp eq i32 %update, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %emu1 = getelementptr inbounds %struct.snd_emux_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %emu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %lor.rhs

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %if.end
  %update3 = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %update3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %do.body31, !prof !29

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body31:                                        ; preds = %lor.rhs
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3861 = icmp sgt i32 %5, 0
  br i1 %cmp3861, label %for.body.lr.ph, label %do.body31.for.end_crit_edge

do.body31.for.end_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body31
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %port40 = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.062, i32 9
  %8 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port40, align 4
  %cmp41 = icmp eq ptr %9, %port
  br i1 %cmp41, label %if.then43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.062
  tail call fastcc void @update_voice(ptr noundef nonnull %1, ptr noundef %arrayidx, i32 noundef %update)
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %10 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_voices, align 4
  %cmp38 = icmp slt i32 %inc, %11
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body31.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call33) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_control(ptr noundef %p, i32 noundef %type, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 316, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %if.end24.sw.epilog_crit_edge [
    i32 7, label %if.end24.sw.bb_crit_edge
    i32 11, label %if.end24.sw.bb_crit_edge164
    i32 10, label %sw.bb25
    i32 67, label %sw.bb26
    i32 128, label %sw.bb30
    i32 1, label %if.end24.sw.bb31_crit_edge
    i32 130, label %if.end24.sw.bb31_crit_edge165
  ]

if.end24.sw.bb31_crit_edge165:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

if.end24.sw.bb31_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

if.end24.sw.bb_crit_edge164:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge164
  %emu1.i = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %emu1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emu1.i, align 4
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %sw.bb.do.end.i_crit_edge, label %lor.rhs.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %sw.bb
  %update3.i = getelementptr inbounds %struct.snd_emux, ptr %2, i32 0, i32 5, i32 5
  %3 = ptrtoint ptr %update3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %update3.i, align 4
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %do.body31.i, !prof !29

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

do.body31.i:                                      ; preds = %lor.rhs.i
  %voice_lock.i = getelementptr inbounds %struct.snd_emux, ptr %2, i32 0, i32 17
  %call33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #6
  %max_voices.i = getelementptr inbounds %struct.snd_emux, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_voices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3860.i = icmp sgt i32 %6, 0
  br i1 %cmp3860.i, label %for.body.lr.ph.i, label %do.body31.i.for.end.i_crit_edge

do.body31.i.for.end.i_crit_edge:                  ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body31.i
  %voices.i = getelementptr inbounds %struct.snd_emux, ptr %2, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %voices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %voices.i, align 4
  %chan40.i = getelementptr %struct.snd_emux_voice, ptr %8, i32 %i.061.i, i32 8
  %9 = ptrtoint ptr %chan40.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan40.i, align 4
  %cmp41.i = icmp eq ptr %10, %chan
  br i1 %cmp41.i, label %if.then43.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then43.i:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.snd_emux_voice, ptr %8, i32 %i.061.i
  %state.i = getelementptr %struct.snd_emux_voice, ptr %8, i32 %i.061.i, i32 1
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then43.i.for.inc.i_crit_edge, label %if.end.i

if.then43.i.for.inc.i_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then43.i
  %13 = ptrtoint ptr %chan40.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan40.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %port.i = getelementptr %struct.snd_emux_voice, ptr %8, i32 %i.061.i, i32 9
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 4
  %cmp1.i = icmp eq ptr %16, null
  br i1 %cmp1.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end3.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end3.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @calc_volume(ptr noundef %arrayidx.i) #6
  %17 = ptrtoint ptr %update3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update3.i, align 4
  tail call void %18(ptr noundef %arrayidx.i, i32 noundef 1) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.then43.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %19 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_voices.i, align 4
  %cmp38.i = icmp slt i32 %inc.i, %20
  br i1 %cmp38.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body31.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i, i32 noundef %call33.i) #6
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end24
  %emu1.i56 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %21 = ptrtoint ptr %emu1.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %emu1.i56, align 4
  %tobool2.not.i57 = icmp eq ptr %22, null
  br i1 %tobool2.not.i57, label %sw.bb25.do.end.i61_crit_edge, label %lor.rhs.i60

sw.bb25.do.end.i61_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i61

lor.rhs.i60:                                      ; preds = %sw.bb25
  %update3.i58 = getelementptr inbounds %struct.snd_emux, ptr %22, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %update3.i58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update3.i58, align 4
  %tobool4.not.i59 = icmp eq ptr %24, null
  br i1 %tobool4.not.i59, label %lor.rhs.i60.do.end.i61_crit_edge, label %do.body31.i66, !prof !29

lor.rhs.i60.do.end.i61_crit_edge:                 ; preds = %lor.rhs.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i61

do.end.i61:                                       ; preds = %lor.rhs.i60.do.end.i61_crit_edge, %sw.bb25.do.end.i61_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

do.body31.i66:                                    ; preds = %lor.rhs.i60
  %voice_lock.i62 = getelementptr inbounds %struct.snd_emux, ptr %22, i32 0, i32 17
  %call33.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i62) #6
  %max_voices.i64 = getelementptr inbounds %struct.snd_emux, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %max_voices.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_voices.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3860.i65 = icmp sgt i32 %26, 0
  br i1 %cmp3860.i65, label %for.body.lr.ph.i68, label %do.body31.i66.for.end.i78_crit_edge

do.body31.i66.for.end.i78_crit_edge:              ; preds = %do.body31.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i78

for.body.lr.ph.i68:                               ; preds = %do.body31.i66
  %voices.i67 = getelementptr inbounds %struct.snd_emux, ptr %22, i32 0, i32 15
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.inc.i77.for.body.i72_crit_edge, %for.body.lr.ph.i68
  %i.061.i69 = phi i32 [ 0, %for.body.lr.ph.i68 ], [ %inc.i75, %for.inc.i77.for.body.i72_crit_edge ]
  %27 = ptrtoint ptr %voices.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %voices.i67, align 4
  %chan40.i70 = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 8
  %29 = ptrtoint ptr %chan40.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan40.i70, align 4
  %cmp41.i71 = icmp eq ptr %30, %chan
  br i1 %cmp41.i71, label %if.then43.i74, label %for.body.i72.for.inc.i77_crit_edge

for.body.i72.for.inc.i77_crit_edge:               ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

if.then43.i74:                                    ; preds = %for.body.i72
  %arrayidx.i73 = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69
  %state.i128 = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 1
  %31 = ptrtoint ptr %state.i128 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i128, align 4
  %and.i129 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %if.then43.i74.for.inc.i77_crit_edge, label %if.end.i133

if.then43.i74.for.inc.i77_crit_edge:              ; preds = %if.then43.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

if.end.i133:                                      ; preds = %if.then43.i74
  %33 = ptrtoint ptr %chan40.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan40.i70, align 4
  %cmp.i132 = icmp eq ptr %34, null
  br i1 %cmp.i132, label %if.end.i133.for.inc.i77_crit_edge, label %lor.lhs.false.i136

if.end.i133.for.inc.i77_crit_edge:                ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

lor.lhs.false.i136:                               ; preds = %if.end.i133
  %port.i134 = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 9
  %35 = ptrtoint ptr %port.i134 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port.i134, align 4
  %cmp1.i135 = icmp eq ptr %36, null
  br i1 %cmp1.i135, label %lor.lhs.false.i136.for.inc.i77_crit_edge, label %if.end3.i137

lor.lhs.false.i136.for.inc.i77_crit_edge:         ; preds = %lor.lhs.false.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

if.end3.i137:                                     ; preds = %lor.lhs.false.i136
  %fixpan.i.i = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 13, i32 17
  %37 = ptrtoint ptr %fixpan.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fixpan.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp.i.i = icmp sgt i8 %38, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end3.i137
  call void @__sanitizer_cov_trace_pc() #8
  %conv81.i.i = zext i8 %38 to i32
  %mul.neg.i.i = mul nsw i32 %conv81.i.i, -2
  %sub.i.i = add nsw i32 %mul.neg.i.i, 255
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.end3.i137
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.snd_midi_channel, ptr %34, i32 0, i32 10, i32 10
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 2
  %conv6.i.i = zext i8 %40 to i32
  %sub7.neg.i.i = sub nsw i32 64, %conv6.i.i
  %pan9.i.i = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 13, i32 16
  %41 = ptrtoint ptr %pan9.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pan9.i.i, align 2
  %conv10.i.i = sext i8 %42 to i32
  %sub17.neg.i.i = sub nsw i32 64, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1182.i.i = icmp slt i8 %42, 0
  %add.neg.i.i = select i1 %cmp1182.i.i, i32 0, i32 %sub17.neg.i.i
  %pan.0.neg.i.i = add nsw i32 %sub7.neg.i.i, %add.neg.i.i
  %mul18.neg.i.i = shl nsw i32 %pan.0.neg.i.i, 1
  %sub19.i.i = add nsw i32 %mul18.neg.i.i, 127
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %pan.1.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %sub19.i.i, %if.else.i.i ]
  %43 = tail call i32 @llvm.smin.i32(i32 %pan.1.i.i, i32 255) #6
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0) #6
  %emu.i.i = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 10
  %45 = ptrtoint ptr %emu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %emu.i.i, align 4
  %linear_panning.i.i = getelementptr inbounds %struct.snd_emux, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %linear_panning.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i.i = load i8, ptr %linear_panning.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %apan44.i.i = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 17
  %48 = ptrtoint ptr %apan44.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %apan44.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else43.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %49)
  %cmp31.not.i.i = icmp eq i32 %44, %49
  br i1 %cmp31.not.i.i, label %if.then30.i.i.for.inc.i77_crit_edge, label %if.then33.i.i

if.then30.i.i.for.inc.i77_crit_edge:              ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

if.then33.i.i:                                    ; preds = %if.then30.i.i
  %50 = ptrtoint ptr %apan44.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %44, ptr %apan44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp35.i.i = icmp slt i32 %43, 1
  br i1 %cmp35.i.i, label %if.then33.i.i.calc_pan.exit.thread.i_crit_edge, label %if.else38.i.i

if.then33.i.i.calc_pan.exit.thread.i_crit_edge:   ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_pan.exit.thread.i

if.else38.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub39.i.i = sub nsw i32 0, %44
  %and.i.i = and i32 %sub39.i.i, 255
  br label %calc_pan.exit.thread.i

if.else43.i.i:                                    ; preds = %do.body.i.i
  %arrayidx45.i.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %44
  %51 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx45.i.i, align 1
  %conv46.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv46.i.i)
  %cmp47.not.i.i = icmp eq i32 %49, %conv46.i.i
  br i1 %cmp47.not.i.i, label %if.else43.i.i.for.inc.i77_crit_edge, label %if.then49.i.i

if.else43.i.i.for.inc.i77_crit_edge:              ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i77

if.then49.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %apan44.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv46.i.i, ptr %apan44.i.i, align 4
  %sub53.i.i = sub nuw nsw i32 255, %44
  %arrayidx54.i.i = getelementptr [256 x i8], ptr @pan_volumes, i32 0, i32 %sub53.i.i
  %54 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx54.i.i, align 1
  %conv55.i.i = zext i8 %55 to i32
  br label %calc_pan.exit.thread.i

calc_pan.exit.thread.i:                           ; preds = %if.then49.i.i, %if.else38.i.i, %if.then33.i.i.calc_pan.exit.thread.i_crit_edge
  %.sink.i.i = phi i32 [ %and.i.i, %if.else38.i.i ], [ %conv55.i.i, %if.then49.i.i ], [ 255, %if.then33.i.i.calc_pan.exit.thread.i_crit_edge ]
  %aaux.i.i = getelementptr %struct.snd_emux_voice, ptr %28, i32 %i.061.i69, i32 18
  %56 = ptrtoint ptr %aaux.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i.i, ptr %aaux.i.i, align 4
  %57 = ptrtoint ptr %update3.i58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %update3.i58, align 4
  tail call void %58(ptr noundef %arrayidx.i73, i32 noundef 4) #6
  br label %for.inc.i77

for.inc.i77:                                      ; preds = %calc_pan.exit.thread.i, %if.else43.i.i.for.inc.i77_crit_edge, %if.then30.i.i.for.inc.i77_crit_edge, %lor.lhs.false.i136.for.inc.i77_crit_edge, %if.end.i133.for.inc.i77_crit_edge, %if.then43.i74.for.inc.i77_crit_edge, %for.body.i72.for.inc.i77_crit_edge
  %inc.i75 = add nuw nsw i32 %i.061.i69, 1
  %59 = ptrtoint ptr %max_voices.i64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_voices.i64, align 4
  %cmp38.i76 = icmp slt i32 %inc.i75, %60
  br i1 %cmp38.i76, label %for.inc.i77.for.body.i72_crit_edge, label %for.inc.i77.for.end.i78_crit_edge

for.inc.i77.for.end.i78_crit_edge:                ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i78

for.inc.i77.for.body.i72_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i72

for.end.i78:                                      ; preds = %for.inc.i77.for.end.i78_crit_edge, %do.body31.i66.for.end.i78_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i62, i32 noundef %call33.i63) #6
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end24
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 67
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %62)
  %cmp = icmp ugt i8 %62, 63
  br i1 %cmp, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emux_send_effect(ptr noundef nonnull %p, ptr noundef nonnull %chan, i32 noundef 25, i32 noundef -160, i32 noundef 2) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emux_send_effect(ptr noundef nonnull %p, ptr noundef nonnull %chan, i32 noundef 25, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end24
  %emu1.i80 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %63 = ptrtoint ptr %emu1.i80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %emu1.i80, align 4
  %tobool2.not.i81 = icmp eq ptr %64, null
  br i1 %tobool2.not.i81, label %sw.bb30.do.end.i85_crit_edge, label %lor.rhs.i84

sw.bb30.do.end.i85_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i85

lor.rhs.i84:                                      ; preds = %sw.bb30
  %update3.i82 = getelementptr inbounds %struct.snd_emux, ptr %64, i32 0, i32 5, i32 5
  %65 = ptrtoint ptr %update3.i82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %update3.i82, align 4
  %tobool4.not.i83 = icmp eq ptr %66, null
  br i1 %tobool4.not.i83, label %lor.rhs.i84.do.end.i85_crit_edge, label %do.body31.i90, !prof !29

lor.rhs.i84.do.end.i85_crit_edge:                 ; preds = %lor.rhs.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i85

do.end.i85:                                       ; preds = %lor.rhs.i84.do.end.i85_crit_edge, %sw.bb30.do.end.i85_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

do.body31.i90:                                    ; preds = %lor.rhs.i84
  %voice_lock.i86 = getelementptr inbounds %struct.snd_emux, ptr %64, i32 0, i32 17
  %call33.i87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i86) #6
  %max_voices.i88 = getelementptr inbounds %struct.snd_emux, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %max_voices.i88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_voices.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp3860.i89 = icmp sgt i32 %68, 0
  br i1 %cmp3860.i89, label %for.body.lr.ph.i92, label %do.body31.i90.for.end.i102_crit_edge

do.body31.i90.for.end.i102_crit_edge:             ; preds = %do.body31.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i102

for.body.lr.ph.i92:                               ; preds = %do.body31.i90
  %voices.i91 = getelementptr inbounds %struct.snd_emux, ptr %64, i32 0, i32 15
  br label %for.body.i96

for.body.i96:                                     ; preds = %for.inc.i101.for.body.i96_crit_edge, %for.body.lr.ph.i92
  %i.061.i93 = phi i32 [ 0, %for.body.lr.ph.i92 ], [ %inc.i99, %for.inc.i101.for.body.i96_crit_edge ]
  %69 = ptrtoint ptr %voices.i91 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %voices.i91, align 4
  %chan40.i94 = getelementptr %struct.snd_emux_voice, ptr %70, i32 %i.061.i93, i32 8
  %71 = ptrtoint ptr %chan40.i94 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chan40.i94, align 4
  %cmp41.i95 = icmp eq ptr %72, %chan
  br i1 %cmp41.i95, label %if.then43.i98, label %for.body.i96.for.inc.i101_crit_edge

for.body.i96.for.inc.i101_crit_edge:              ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101

if.then43.i98:                                    ; preds = %for.body.i96
  %arrayidx.i97 = getelementptr %struct.snd_emux_voice, ptr %70, i32 %i.061.i93
  %state.i140 = getelementptr %struct.snd_emux_voice, ptr %70, i32 %i.061.i93, i32 1
  %73 = ptrtoint ptr %state.i140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state.i140, align 4
  %and.i141 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %if.then43.i98.for.inc.i101_crit_edge, label %if.end.i145

if.then43.i98.for.inc.i101_crit_edge:             ; preds = %if.then43.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101

if.end.i145:                                      ; preds = %if.then43.i98
  %75 = ptrtoint ptr %chan40.i94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chan40.i94, align 4
  %cmp.i144 = icmp eq ptr %76, null
  br i1 %cmp.i144, label %if.end.i145.for.inc.i101_crit_edge, label %lor.lhs.false.i148

if.end.i145.for.inc.i101_crit_edge:               ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101

lor.lhs.false.i148:                               ; preds = %if.end.i145
  %port.i146 = getelementptr %struct.snd_emux_voice, ptr %70, i32 %i.061.i93, i32 9
  %77 = ptrtoint ptr %port.i146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %port.i146, align 4
  %cmp1.i147 = icmp eq ptr %78, null
  br i1 %cmp1.i147, label %lor.lhs.false.i148.for.inc.i101_crit_edge, label %if.end3.i149

lor.lhs.false.i148.for.inc.i101_crit_edge:        ; preds = %lor.lhs.false.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101

if.end3.i149:                                     ; preds = %lor.lhs.false.i148
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @calc_pitch(ptr noundef %arrayidx.i97) #6
  %79 = ptrtoint ptr %update3.i82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %update3.i82, align 4
  tail call void %80(ptr noundef %arrayidx.i97, i32 noundef 2) #6
  br label %for.inc.i101

for.inc.i101:                                     ; preds = %if.end3.i149, %lor.lhs.false.i148.for.inc.i101_crit_edge, %if.end.i145.for.inc.i101_crit_edge, %if.then43.i98.for.inc.i101_crit_edge, %for.body.i96.for.inc.i101_crit_edge
  %inc.i99 = add nuw nsw i32 %i.061.i93, 1
  %81 = ptrtoint ptr %max_voices.i88 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_voices.i88, align 4
  %cmp38.i100 = icmp slt i32 %inc.i99, %82
  br i1 %cmp38.i100, label %for.inc.i101.for.body.i96_crit_edge, label %for.inc.i101.for.end.i102_crit_edge

for.inc.i101.for.end.i102_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i102

for.inc.i101.for.body.i96_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i96

for.end.i102:                                     ; preds = %for.inc.i101.for.end.i102_crit_edge, %do.body31.i90.for.end.i102_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i86, i32 noundef %call33.i87) #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end24.sw.bb31_crit_edge, %if.end24.sw.bb31_crit_edge165
  %emu1.i104 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %83 = ptrtoint ptr %emu1.i104 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %emu1.i104, align 4
  %tobool2.not.i105 = icmp eq ptr %84, null
  br i1 %tobool2.not.i105, label %sw.bb31.do.end.i109_crit_edge, label %lor.rhs.i108

sw.bb31.do.end.i109_crit_edge:                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i109

lor.rhs.i108:                                     ; preds = %sw.bb31
  %update3.i106 = getelementptr inbounds %struct.snd_emux, ptr %84, i32 0, i32 5, i32 5
  %85 = ptrtoint ptr %update3.i106 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %update3.i106, align 4
  %tobool4.not.i107 = icmp eq ptr %86, null
  br i1 %tobool4.not.i107, label %lor.rhs.i108.do.end.i109_crit_edge, label %do.body31.i114, !prof !29

lor.rhs.i108.do.end.i109_crit_edge:               ; preds = %lor.rhs.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i109

do.end.i109:                                      ; preds = %lor.rhs.i108.do.end.i109_crit_edge, %sw.bb31.do.end.i109_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

do.body31.i114:                                   ; preds = %lor.rhs.i108
  %voice_lock.i110 = getelementptr inbounds %struct.snd_emux, ptr %84, i32 0, i32 17
  %call33.i111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i110) #6
  %max_voices.i112 = getelementptr inbounds %struct.snd_emux, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %max_voices.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_voices.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp3860.i113 = icmp sgt i32 %88, 0
  br i1 %cmp3860.i113, label %for.body.lr.ph.i116, label %do.body31.i114.for.end.i126_crit_edge

do.body31.i114.for.end.i126_crit_edge:            ; preds = %do.body31.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i126

for.body.lr.ph.i116:                              ; preds = %do.body31.i114
  %voices.i115 = getelementptr inbounds %struct.snd_emux, ptr %84, i32 0, i32 15
  br label %for.body.i120

for.body.i120:                                    ; preds = %for.inc.i125.for.body.i120_crit_edge, %for.body.lr.ph.i116
  %i.061.i117 = phi i32 [ 0, %for.body.lr.ph.i116 ], [ %inc.i123, %for.inc.i125.for.body.i120_crit_edge ]
  %89 = ptrtoint ptr %voices.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %voices.i115, align 4
  %chan40.i118 = getelementptr %struct.snd_emux_voice, ptr %90, i32 %i.061.i117, i32 8
  %91 = ptrtoint ptr %chan40.i118 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %chan40.i118, align 4
  %cmp41.i119 = icmp eq ptr %92, %chan
  br i1 %cmp41.i119, label %if.then43.i122, label %for.body.i120.for.inc.i125_crit_edge

for.body.i120.for.inc.i125_crit_edge:             ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i125

if.then43.i122:                                   ; preds = %for.body.i120
  %arrayidx.i121 = getelementptr %struct.snd_emux_voice, ptr %90, i32 %i.061.i117
  %state.i152 = getelementptr %struct.snd_emux_voice, ptr %90, i32 %i.061.i117, i32 1
  %93 = ptrtoint ptr %state.i152 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state.i152, align 4
  %and.i153 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i154, label %if.then43.i122.for.inc.i125_crit_edge, label %if.end.i157

if.then43.i122.for.inc.i125_crit_edge:            ; preds = %if.then43.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i125

if.end.i157:                                      ; preds = %if.then43.i122
  %95 = ptrtoint ptr %chan40.i118 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chan40.i118, align 4
  %cmp.i156 = icmp eq ptr %96, null
  br i1 %cmp.i156, label %if.end.i157.for.inc.i125_crit_edge, label %lor.lhs.false.i160

if.end.i157.for.inc.i125_crit_edge:               ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i125

lor.lhs.false.i160:                               ; preds = %if.end.i157
  %port.i158 = getelementptr %struct.snd_emux_voice, ptr %90, i32 %i.061.i117, i32 9
  %97 = ptrtoint ptr %port.i158 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %port.i158, align 4
  %cmp1.i159 = icmp eq ptr %98, null
  br i1 %cmp1.i159, label %lor.lhs.false.i160.for.inc.i125_crit_edge, label %if.end3.i161

lor.lhs.false.i160.for.inc.i125_crit_edge:        ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i125

if.end3.i161:                                     ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %update3.i106 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %update3.i106, align 4
  tail call void %100(ptr noundef %arrayidx.i121, i32 noundef 40) #6
  br label %for.inc.i125

for.inc.i125:                                     ; preds = %if.end3.i161, %lor.lhs.false.i160.for.inc.i125_crit_edge, %if.end.i157.for.inc.i125_crit_edge, %if.then43.i122.for.inc.i125_crit_edge, %for.body.i120.for.inc.i125_crit_edge
  %inc.i123 = add nuw nsw i32 %i.061.i117, 1
  %101 = ptrtoint ptr %max_voices.i112 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_voices.i112, align 4
  %cmp38.i124 = icmp slt i32 %inc.i123, %102
  br i1 %cmp38.i124, label %for.inc.i125.for.body.i120_crit_edge, label %for.inc.i125.for.end.i126_crit_edge

for.inc.i125.for.end.i126_crit_edge:              ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i126

for.inc.i125.for.body.i120_crit_edge:             ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i120

for.end.i126:                                     ; preds = %for.inc.i125.for.end.i126_crit_edge, %do.body31.i114.for.end.i126_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i110, i32 noundef %call33.i111) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.i126, %do.end.i109, %for.end.i102, %do.end.i85, %if.else, %if.then28, %for.end.i78, %do.end.i61, %for.end.i, %do.end.i, %if.end24.sw.epilog_crit_edge
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %p, i32 0, i32 5
  %103 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %midi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %104)
  %cmp33 = icmp eq i8 %104, 3
  br i1 %cmp33, label %if.then35, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_emux_xg_control(ptr noundef %p, ptr noundef %chan, i32 noundef %type) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_send_effect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_xg_control(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_terminate_note(ptr noundef readonly %p, i32 noundef %note, ptr noundef readnone %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  %tobool1.not = icmp eq ptr %chan, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %emu25 = getelementptr inbounds %struct.snd_emux_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %emu25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu25, align 4
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %if.end24.do.end48_crit_edge, label %lor.rhs28

if.end24.do.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

lor.rhs28:                                        ; preds = %if.end24
  %terminate = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %terminate, align 4
  %tobool29.not = icmp eq ptr %3, null
  br i1 %tobool29.not, label %lor.rhs28.do.end48_crit_edge, label %if.end64, !prof !29

lor.rhs28.do.end48_crit_edge:                     ; preds = %lor.rhs28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48

do.end48:                                         ; preds = %lor.rhs28.do.end48_crit_edge, %if.end24.do.end48_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 395, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end64:                                         ; preds = %lor.rhs28
  %voice_lock.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock.i) #6
  %max_voices.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp51.i = icmp sgt i32 %5, 0
  br i1 %cmp51.i, label %for.body.lr.ph.i, label %if.end64.terminate_note1.exit_crit_edge

if.end64.terminate_note1.exit_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %terminate_note1.exit

for.body.lr.ph.i:                                 ; preds = %if.end64
  %voices.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  %use_time.i.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 16
  %free_voice.i.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %voices.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices.i, align 4
  %arrayidx.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i
  %state.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %chan7.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i, i32 8
  %10 = ptrtoint ptr %chan7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan7.i, align 4
  %cmp8.i = icmp eq ptr %11, %chan
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %key.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i, i32 4
  %12 = ptrtoint ptr %key.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %key.i, align 1
  %conv11.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %note)
  %cmp12.i = icmp eq i32 %conv11.i, %note
  br i1 %cmp12.i, label %if.then.i, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  %14 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %terminate, align 4
  tail call void %15(ptr noundef %arrayidx.i) #6
  %16 = ptrtoint ptr %use_time.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %use_time.i.i, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %use_time.i.i, align 4
  %time.i.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i, i32 2
  %18 = ptrtoint ptr %time.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %time.i.i, align 4
  %zone.i.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.02.i, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state.i, align 4
  %20 = call ptr @memset(ptr %zone.i.i, i32 0, i32 16)
  %21 = ptrtoint ptr %free_voice.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_voice.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %22(ptr noundef %arrayidx.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %23 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_voices.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %24
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.terminate_note1.exit_crit_edge

for.inc.i.terminate_note1.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %terminate_note1.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

terminate_note1.exit:                             ; preds = %for.inc.i.terminate_note1.exit_crit_edge, %if.end64.terminate_note1.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock.i, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %terminate_note1.exit, %do.end48, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_terminate_all(ptr noundef %emu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp542 = icmp sgt i32 %1, 0
  br i1 %cmp542, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %terminate.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 6
  %use_time.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 16
  %free_voice = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 7
  %reset = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end22.for.body_crit_edge ]
  %2 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.043
  %state = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.043, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %terminate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %terminate.i, align 4
  tail call void %7(ptr noundef %arrayidx) #6
  %8 = ptrtoint ptr %use_time.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_time.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %use_time.i, align 4
  %time.i = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.043, i32 2
  %10 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %time.i, align 4
  %zone.i = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.043, i32 6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state, align 4
  %12 = call ptr @memset(ptr %zone.i, i32 0, i32 16)
  br label %if.then10

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.end.if.then10_crit_edge, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.thread
  %13 = ptrtoint ptr %free_voice to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_voice, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.then10.if.end15_crit_edge, label %if.then12

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %14(ptr noundef %arrayidx) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10.if.end15_crit_edge
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %16(ptr noundef %emu, i32 noundef %i.043) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %time = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.043, i32 2
  %17 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %time, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %18 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_voices, align 4
  %cmp5 = icmp slt i32 %inc, %19
  br i1 %cmp5, label %if.end22.for.body_crit_edge, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %entry.for.end_crit_edge
  %use_time = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 16
  %20 = ptrtoint ptr %use_time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %use_time, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_sounds_off_all(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %emu24 = getelementptr inbounds %struct.snd_emux_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %emu24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu24, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.end23.do.end45_crit_edge, label %lor.rhs

if.end23.do.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

lor.rhs:                                          ; preds = %if.end23
  %terminate = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %terminate, align 4
  %tobool27.not = icmp eq ptr %3, null
  br i1 %tobool27.not, label %lor.rhs.do.end45_crit_edge, label %do.body63, !prof !29

lor.rhs.do.end45_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end45:                                         ; preds = %lor.rhs.do.end45_crit_edge, %if.end23.do.end45_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 446, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body63:                                        ; preds = %lor.rhs
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 17
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp70123 = icmp sgt i32 %5, 0
  br i1 %cmp70123, label %for.body.lr.ph, label %do.body63.for.end_crit_edge

do.body63.for.end_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body63
  %voices = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 15
  %use_time.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 16
  %free_voice = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 7
  %reset = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.0124
  %state = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.0124, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %for.body.if.end77_crit_edge, label %land.lhs.true

for.body.if.end77_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

land.lhs.true:                                    ; preds = %for.body
  %port73 = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.0124, i32 9
  %10 = ptrtoint ptr %port73 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port73, align 4
  %cmp74 = icmp eq ptr %11, %port
  br i1 %cmp74, label %if.then76, label %land.lhs.true.if.end77thread-pre-split_crit_edge

land.lhs.true.if.end77thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77thread-pre-split

if.then76:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %terminate, align 4
  tail call void %13(ptr noundef %arrayidx) #6
  %14 = ptrtoint ptr %use_time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use_time.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %use_time.i, align 4
  %time.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.0124, i32 2
  %16 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %time.i, align 4
  %zone.i = getelementptr %struct.snd_emux_voice, ptr %7, i32 %i.0124, i32 6
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state, align 4
  %18 = call ptr @memset(ptr %zone.i, i32 0, i32 16)
  br label %if.end77thread-pre-split

if.end77thread-pre-split:                         ; preds = %if.then76, %land.lhs.true.if.end77thread-pre-split_crit_edge
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %state, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77thread-pre-split, %for.body.if.end77_crit_edge
  %20 = phi i32 [ %.pr, %if.end77thread-pre-split ], [ %9, %for.body.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp79 = icmp eq i32 %20, 0
  br i1 %cmp79, label %if.then81, label %if.end77.for.inc_crit_edge

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then81:                                        ; preds = %if.end77
  %21 = ptrtoint ptr %free_voice to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_voice, align 4
  %tobool83.not = icmp eq ptr %22, null
  br i1 %tobool83.not, label %if.then81.if.end87_crit_edge, label %if.then84

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %22(ptr noundef %arrayidx) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.then81.if.end87_crit_edge
  %23 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset, align 4
  %tobool89.not = icmp eq ptr %24, null
  br i1 %tobool89.not, label %if.end87.for.inc_crit_edge, label %if.then90

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef nonnull %1, i32 noundef %i.0124) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then90, %if.end87.for.inc_crit_edge, %if.end77.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0124, 1
  %25 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_voices, align 4
  %cmp70 = icmp slt i32 %inc, %26
  br i1 %cmp70, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body63.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call65) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end45, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_init_voices(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp523 = icmp sgt i32 %1, 0
  br i1 %cmp523, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %hw = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voices, align 4
  %arrayidx = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx, align 4
  %state = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %chan = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 8
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan, align 4
  %port = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 9
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %port, align 4
  %time = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 2
  %8 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %time, align 4
  %emu7 = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 10
  %9 = ptrtoint ptr %emu7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %emu, ptr %emu7, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %hw8 = getelementptr %struct.snd_emux_voice, ptr %3, i32 %i.024, i32 11
  %12 = ptrtoint ptr %hw8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %hw8, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %13 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_voices, align 4
  %cmp5 = icmp slt i32 %inc, %14
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_lock_voice(ptr noundef %emu, i32 noundef %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %0 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %voices, align 4
  %state = getelementptr %struct.snd_emux_voice, ptr %1, i32 %voice, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %state, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 946, ptr noundef nonnull @.str.1, i32 noundef %voice, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_unlock_voice(ptr noundef %emu, i32 noundef %voice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %0 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %voices, align 4
  %state = getelementptr %struct.snd_emux_voice, ptr %1, i32 %voice, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp5 = icmp eq i32 %3, 256
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 964, ptr noundef nonnull @.str.2, i32 noundef %voice, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @calc_volume(ptr nocapture noundef %vp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %port2 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 9
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 4
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %1, i32 0, i32 10, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %velocity = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 5
  %6 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %velocity, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp slt i8 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %velocity to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %velocity, align 2
  br label %if.else

if.else:                                          ; preds = %if.then, %entry.if.else_crit_edge
  %9 = tail call i8 @llvm.umin.i8(i8 %5, i8 127)
  %10 = zext i8 %9 to i32
  %port_mode = getelementptr inbounds %struct.snd_emux_port, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %port_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp18 = icmp eq i8 %12, 1
  br i1 %cmp18, label %if.else34, label %do.end63

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %velocity, align 2
  %conv25 = zext i8 %14 to i32
  %arrayidx22 = getelementptr %struct.snd_midi_channel, ptr %1, i32 0, i32 10, i32 7
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %mul = mul nuw nsw i32 %conv25, %10
  %mul26 = mul nuw nsw i32 %mul, %conv23
  %div = udiv i32 %mul26, 16129
  %amplitude = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 19
  %17 = ptrtoint ptr %amplitude to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %amplitude, align 2
  %conv27 = zext i8 %18 to i32
  %mul28 = mul nuw nsw i32 %div, %conv27
  %div29 = udiv i32 %mul28, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 16255, i32 %mul28)
  %cmp35 = icmp ugt i32 %mul28, 16255
  %spec.select = select i1 %cmp35, i32 127, i32 %div29
  %arrayidx42 = getelementptr [128 x i32], ptr @snd_sf_vol_table, i32 0, i32 %spec.select
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx42, align 4
  br label %do.end92

do.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx45 = getelementptr %struct.snd_midi_channel, ptr %1, i32 0, i32 10, i32 7
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %22 to i16
  %amplitude48 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 19
  %23 = ptrtoint ptr %amplitude48 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %amplitude48, align 2
  %conv49 = zext i8 %24 to i16
  %mul50 = mul nuw i16 %conv49, %conv46
  %div514 = udiv i16 %mul50, 127
  %25 = tail call i16 @llvm.umin.i16(i16 %div514, i16 127)
  %26 = zext i16 %25 to i32
  %arrayidx64 = getelementptr [128 x i8], ptr @voltab1, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %28 to i16
  %29 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %velocity, align 2
  %idxprom = zext i8 %30 to i32
  %arrayidx67 = getelementptr [128 x i8], ptr @voltab2, i32 0, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %32 to i16
  %add = add nuw nsw i16 %conv68, %conv65
  %mul69 = shl nuw nsw i16 %add, 3
  %div705 = udiv i16 %mul69, 3
  %div70.zext = zext i16 %div705 to i32
  %attenuation = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 20
  %33 = ptrtoint ptr %attenuation to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %attenuation, align 1
  %conv72 = zext i8 %34 to i32
  %add73 = add nuw nsw i32 %div70.zext, %conv72
  %sub = sub nsw i32 256, %add73
  %arrayidx74 = getelementptr [128 x i8], ptr @expressiontab, i32 0, i32 %10
  %35 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %36 to i32
  %mul76 = mul nsw i32 %sub, %conv75
  %div77 = sdiv i32 %mul76, 128
  %add78 = add nsw i32 %div77, %add73
  br label %do.end92

do.end92:                                         ; preds = %do.end63, %if.else34
  %vol.1 = phi i32 [ %20, %if.else34 ], [ %add78, %do.end63 ]
  %gs_master_volume = getelementptr inbounds %struct.snd_midi_channel_set, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %gs_master_volume to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %gs_master_volume, align 1
  %39 = tail call i8 @llvm.umin.i8(i8 %38, i8 127)
  %40 = zext i8 %39 to i32
  %arrayidx93 = getelementptr [128 x i32], ptr @snd_sf_vol_table, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %42, %vol.1
  %volume_atten = getelementptr inbounds %struct.snd_emux_port, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %volume_atten to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %volume_atten, align 4
  %add95 = add i32 %add94, %44
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %do.end92.do.body102_crit_edge, label %if.then96

do.end92.do.body102_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

if.then96:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx98 = getelementptr [34 x i16], ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx98, align 2
  %conv99 = sext i16 %48 to i32
  %add100 = add i32 %add95, %conv99
  br label %do.body102

do.body102:                                       ; preds = %if.then96, %do.end92.do.body102_crit_edge
  %vol.2 = phi i32 [ %add100, %if.then96 ], [ %add95, %do.end92.do.body102_crit_edge ]
  %49 = tail call i32 @llvm.smin.i32(i32 %vol.2, i32 255)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %avol = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 14
  %51 = ptrtoint ptr %avol to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %avol, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %50)
  %cmp114 = icmp eq i32 %52, %50
  br i1 %cmp114, label %do.body102.cleanup_crit_edge, label %if.end117

do.body102.cleanup_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117:                                        ; preds = %do.body102
  %53 = ptrtoint ptr %avol to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %avol, align 4
  %midi_mode.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %3, i32 0, i32 5
  %54 = ptrtoint ptr %midi_mode.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %midi_mode.i, align 4
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %55, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end117
  %control.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %control.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %58)
  %cmp.i = icmp eq i8 %58, 127
  br i1 %cmp.i, label %sw.bb.i.if.else140_crit_edge, label %if.end.i

sw.bb.i.if.else140_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else140

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.i = getelementptr %struct.snd_midi_channel, ptr %1, i32 0, i32 10, i32 32
  br label %get_bank.exit

sw.bb6.i:                                         ; preds = %if.end117
  %drum_channel.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %drum_channel.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %drum_channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end8.i, label %sw.bb6.i.if.else140_crit_edge

sw.bb6.i.if.else140_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else140

if.end8.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %control9.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 10
  br label %get_bank.exit

sw.default.i:                                     ; preds = %if.end117
  %drum_channel12.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 5
  %60 = ptrtoint ptr %drum_channel12.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load13.i = load i8, ptr %drum_channel12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13.i)
  %tobool16.not.i = icmp sgt i8 %bf.load13.i, -1
  br i1 %tobool16.not.i, label %if.end18.i, label %sw.default.i.if.else140_crit_edge

sw.default.i.if.else140_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else140

if.end18.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %control19.i = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 10
  br label %get_bank.exit

get_bank.exit:                                    ; preds = %if.end18.i, %if.end8.i, %if.end.i
  %control19.sink.i = phi ptr [ %control19.i, %if.end18.i ], [ %control9.i, %if.end8.i ], [ %arrayidx4.i, %if.end.i ]
  %61 = ptrtoint ptr %control19.sink.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %control19.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %62)
  %cmp119 = icmp eq i8 %62, -128
  br i1 %cmp119, label %get_bank.exit.if.else140_crit_edge, label %land.lhs.true

get_bank.exit.if.else140_crit_edge:               ; preds = %get_bank.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else140

land.lhs.true:                                    ; preds = %get_bank.exit
  %volatkhld = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 7
  %63 = ptrtoint ptr %volatkhld to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %volatkhld, align 2
  %65 = and i16 %64, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 125, i16 %65)
  %cmp123 = icmp ult i16 %65, 125
  br i1 %cmp123, label %if.then125, label %land.lhs.true.if.else140_crit_edge

land.lhs.true.if.else140_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else140

if.then125:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %velocity, align 2
  %68 = tail call i8 @llvm.umax.i8(i8 %67, i8 70)
  %atten.0 = zext i8 %68 to i32
  %cutoff = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 18
  %69 = ptrtoint ptr %cutoff to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cutoff, align 2
  %conv137 = zext i8 %70 to i32
  %mul138 = mul nuw nsw i32 %atten.0, %conv137
  %add139 = add nuw nsw i32 %mul138, 160
  %71 = lshr i32 %add139, 7
  br label %cleanup.sink.split

if.else140:                                       ; preds = %land.lhs.true.if.else140_crit_edge, %get_bank.exit.if.else140_crit_edge, %sw.default.i.if.else140_crit_edge, %sw.bb6.i.if.else140_crit_edge, %sw.bb.i.if.else140_crit_edge
  %cutoff143 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 22, i32 18
  %72 = ptrtoint ptr %cutoff143 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %cutoff143, align 2
  %conv144 = zext i8 %73 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else140, %if.then125
  %.sink = phi i32 [ %71, %if.then125 ], [ %conv144, %if.else140 ]
  %acutoff = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 15
  %74 = ptrtoint ptr %acutoff to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink, ptr %acutoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body102.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @calc_pitch(ptr nocapture noundef %vp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 8
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %fixkey = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 14
  %2 = ptrtoint ptr %fixkey to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fixkey, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %note = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 3
  %4 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %note, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ %5, %if.else ], [ %3, %entry.if.end_crit_edge ]
  %conv8 = zext i8 %.sink to i32
  %root10 = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %root10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %root10, align 4
  %conv11 = sext i16 %7 to i32
  %sub12 = sub nsw i32 %conv8, %conv11
  %offset.0.in = shl nsw i32 %sub12, 12
  %offset.0 = sdiv i32 %offset.0.in, 12
  %scaleTuning = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 21
  %8 = ptrtoint ptr %scaleTuning to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %scaleTuning, align 4
  %conv16 = sext i16 %9 to i32
  %mul17 = mul i32 %offset.0, %conv16
  %div18 = sdiv i32 %mul17, 100
  %tune = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %tune to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tune, align 2
  %conv20 = sext i16 %11 to i32
  %mul21 = shl nsw i32 %conv20, 12
  %div22 = sdiv i32 %mul21, 1200
  %add = add nsw i32 %div22, %div18
  %midi_pitchbend = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %midi_pitchbend to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %midi_pitchbend, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp24.not = icmp eq i16 %13, 0
  br i1 %cmp24.not, label %if.end.if.end33_crit_edge, label %if.then26

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = sext i16 %13 to i32
  %gm_rpn_pitch_bend_range = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %gm_rpn_pitch_bend_range to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gm_rpn_pitch_bend_range, align 4
  %conv29 = sext i16 %15 to i32
  %mul30 = mul nsw i32 %conv29, %conv23
  %div31 = sdiv i32 %mul30, 3072
  %add32 = add nsw i32 %div31, %add
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end.if.end33_crit_edge
  %offset.1 = phi i32 [ %add32, %if.then26 ], [ %add, %if.end.if.end33_crit_edge ]
  %gm_rpn_coarse_tuning = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %gm_rpn_coarse_tuning to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gm_rpn_coarse_tuning, align 4
  %conv34 = sext i16 %17 to i32
  %mul35 = shl nsw i32 %conv34, 12
  %div36 = sdiv i32 %mul35, 1536
  %add37 = add nsw i32 %div36, %offset.1
  %gm_rpn_fine_tuning = getelementptr inbounds %struct.snd_midi_channel, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %gm_rpn_fine_tuning to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gm_rpn_fine_tuning, align 2
  %20 = sdiv i16 %19, 24
  %div39 = sext i16 %20 to i32
  %add40 = add nsw i32 %add37, %div39
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end33.if.end49_crit_edge, label %if.then41

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then41:                                        ; preds = %if.end33
  %arrayidx = getelementptr %struct.snd_emux_effect_table, ptr %22, i32 0, i32 1, i32 22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool43.not = icmp eq i8 %24, 0
  br i1 %tobool43.not, label %if.then41.if.end49_crit_edge, label %if.then44

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx45 = getelementptr [34 x i16], ptr %22, i32 0, i32 22
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx45, align 2
  %conv46 = sext i16 %26 to i32
  %add47 = add nsw i32 %add40, %conv46
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then41.if.end49_crit_edge, %if.end33.if.end49_crit_edge
  %offset.3 = phi i32 [ %add40, %if.end33.if.end49_crit_edge ], [ %add47, %if.then44 ], [ %add40, %if.then41.if.end49_crit_edge ]
  %rate_offset = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 13, i32 6
  %27 = ptrtoint ptr %rate_offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rate_offset, align 4
  %conv51 = sext i16 %28 to i32
  %emu = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 10
  %29 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %emu, align 4
  %pitch_shift = getelementptr inbounds %struct.snd_emux, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %pitch_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pitch_shift, align 4
  %add52 = add nsw i32 %offset.3, 57344
  %add53 = add nsw i32 %add52, %conv51
  %add54 = add i32 %add53, %32
  %33 = tail call i32 @llvm.smin.i32(i32 %add54, i32 65535)
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %apitch = getelementptr inbounds %struct.snd_emux_voice, ptr %vp, i32 0, i32 16
  %35 = ptrtoint ptr %apitch to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %apitch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp64 = icmp eq i32 %34, %36
  br i1 %cmp64, label %if.end49.cleanup_crit_edge, label %if.end67

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %apitch to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %apitch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end49.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_setup_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_search_zone(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_synth.c", i32 56, i32 6}
!2 = !{ptr @__ksymtab_snd_emux_terminate_all, !3, !"__ksymtab_snd_emux_terminate_all", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux_synth.c", i32 430, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/synth/emux/emux_synth.c", i32 944, i32 3}
!6 = !{ptr @__ksymtab_snd_emux_lock_voice, !7, !"__ksymtab_snd_emux_lock_voice", i1 false, i1 false}
!7 = !{!"../sound/synth/emux/emux_synth.c", i32 950, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/synth/emux/emux_synth.c", i32 962, i32 3}
!10 = !{ptr @__ksymtab_snd_emux_unlock_voice, !11, !"__ksymtab_snd_emux_unlock_voice", i1 false, i1 false}
!11 = !{!"../sound/synth/emux/emux_synth.c", i32 968, i32 1}
!12 = !{ptr @voltab1, !13, !"voltab1", i1 false, i1 false}
!13 = !{!"../sound/synth/emux/emux_synth.c", i32 687, i32 28}
!14 = !{ptr @voltab2, !15, !"voltab2", i1 false, i1 false}
!15 = !{!"../sound/synth/emux/emux_synth.c", i32 703, i32 28}
!16 = !{ptr @expressiontab, !17, !"expressiontab", i1 false, i1 false}
!17 = !{!"../sound/synth/emux/emux_synth.c", i32 719, i32 28}
!18 = !{ptr @pan_volumes, !19, !"pan_volumes", i1 false, i1 false}
!19 = !{!"../sound/synth/emux/emux_synth.c", i32 619, i32 28}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
