; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_midi_emul.c_pt.bc'
source_filename = "../sound/core/seq/seq_midi_emul.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_midi_process_event\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_midi_process_event\09\09\09\09"
module asm "\09.long\09__crc_snd_midi_process_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_midi_process_event:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_midi_process_event\22\09\09\09\09\09"
module asm "__kstrtabns_snd_midi_process_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_midi_channel_set_clear\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_midi_channel_set_clear\09\09\09\09"
module asm "\09.long\09__crc_snd_midi_channel_set_clear\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_midi_channel_set_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_midi_channel_set_clear\22\09\09\09\09\09"
module asm "__kstrtabns_snd_midi_channel_set_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_midi_channel_alloc_set\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_midi_channel_alloc_set\09\09\09\09"
module asm "\09.long\09__crc_snd_midi_channel_alloc_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_midi_channel_alloc_set:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_midi_channel_alloc_set\22\09\09\09\09\09"
module asm "__kstrtabns_snd_midi_channel_alloc_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_midi_channel_free_set\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_midi_channel_free_set\09\09\09\09"
module asm "\09.long\09__crc_snd_midi_channel_free_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_midi_channel_free_set:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_midi_channel_free_set\22\09\09\09\09\09"
module asm "__kstrtabns_snd_midi_channel_free_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }
%struct.snd_midi_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author185 = internal constant [56 x i8] c"snd_seq_midi_emul.author=Takashi Iwai / Steve Ratcliffe\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [90 x i8] c"snd_seq_midi_emul.description=Advanced Linux Sound Architecture sequencer MIDI emulation.\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [56 x i8] c"snd_seq_midi_emul.file=sound/core/seq/snd-seq-midi-emul\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [30 x i8] c"snd_seq_midi_emul.license=GPL\00", section ".modinfo", align 1
@snd_midi_process_event.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_seq_midi_emul\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_midi_process_event\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/core/seq/seq_midi_emul.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ALSA: seq_midi_emul: ev or chanbase NULL (snd_midi_process_event)\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_midi_process_event.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ALSA: seq_midi_emul: dest channel is %d, max is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_snd_midi_process_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_midi_process_event = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_midi_process_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_midi_process_event to i32), ptr @__kstrtab_snd_midi_process_event, ptr @__kstrtabns_snd_midi_process_event }, section "___ksymtab+snd_midi_process_event", align 4
@__kstrtab_snd_midi_channel_set_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_midi_channel_set_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_midi_channel_set_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_midi_channel_set_clear to i32), ptr @__kstrtab_snd_midi_channel_set_clear, ptr @__kstrtabns_snd_midi_channel_set_clear }, section "___ksymtab+snd_midi_channel_set_clear", align 4
@__kstrtab_snd_midi_channel_alloc_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_midi_channel_alloc_set = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_midi_channel_alloc_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_midi_channel_alloc_set to i32), ptr @__kstrtab_snd_midi_channel_alloc_set, ptr @__kstrtabns_snd_midi_channel_alloc_set }, section "___ksymtab+snd_midi_channel_alloc_set", align 4
@__kstrtab_snd_midi_channel_free_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_midi_channel_free_set = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_midi_channel_free_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_midi_channel_free_set to i32), ptr @__kstrtab_snd_midi_channel_free_set, ptr @__kstrtabns_snd_midi_channel_free_set }, section "___ksymtab+snd_midi_channel_free_set", align 4
@sysex.gm_on_macro = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"~\7F\09\01", [28 x i8] zeroinitializer }, align 32
@sysex.xg_on_macro = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C\10L\00\00~\00", [25 x i8] zeroinitializer }, align 32
@sysex.gs_pfx_macro = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A\10B\12@", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [13 x i64] [i64 11, i64 8, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 130]
@__sancov_gen_cov_switch_values.6 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 6, i64 32, i64 38, i64 64, i64 65, i64 66, i64 98, i64 99, i64 100, i64 101, i64 120, i64 121, i64 123]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 81, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 90, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"gm_on_macro\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 482, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"xg_on_macro\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 486, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"gs_pfx_macro\00", align 1
@___asan_gen_.31 = private constant [34 x i8] c"../sound/core/seq/seq_midi_emul.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 495, i32 29 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__ksymtab_snd_midi_channel_alloc_set, ptr @__ksymtab_snd_midi_channel_free_set, ptr @__ksymtab_snd_midi_channel_set_clear, ptr @__ksymtab_snd_midi_process_event, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sysex.gm_on_macro, ptr @sysex.xg_on_macro, ptr @sysex.gs_pfx_macro], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysex.gm_on_macro to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysex.xg_on_macro to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysex.gs_pfx_macro to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_midi_process_event(ptr nocapture noundef readonly %ops, ptr noundef %ev, ptr noundef %chanset) #0 align 64 {
entry:
  %sysexbuf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ev, null
  %cmp1 = icmp eq ptr %chanset, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_midi_process_event.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_midi_process_event, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !39

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_midi_process_event.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chanset, i32 0, i32 4
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %cmp6 = icmp eq ptr %1, null
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ev, align 4
  %4 = add i8 %3, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %5 = icmp ult i8 %4, 15
  br i1 %5, label %if.then15, label %if.end8.if.end38_crit_edge

if.end8.if.end38_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then15:                                        ; preds = %if.end8
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 4
  %conv16 = zext i8 %7 to i32
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chanset, i32 0, i32 3
  %8 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv16)
  %cmp17.not = icmp sgt i32 %9, %conv16
  br i1 %cmp17.not, label %if.then15.if.end38_crit_edge, label %do.body20

if.then15.if.end38_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.body20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_midi_process_event.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_midi_process_event, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !39

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_channels, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_midi_process_event.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.4, i32 noundef %conv16, i32 noundef %11) #9
  br label %cleanup

if.end38:                                         ; preds = %if.then15.if.end38_crit_edge, %if.end8.if.end38_crit_edge
  %dest_channel.0 = phi i32 [ %conv16, %if.then15.if.end38_crit_edge ], [ 0, %if.end8.if.end38_crit_edge ]
  %add.ptr = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0
  %12 = ptrtoint ptr %chanset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanset, align 4
  %14 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end38.if.end57_crit_edge [
    i8 5, label %if.end38.cleanup_crit_edge
    i8 6, label %land.lhs.true50
  ]

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38.if.end57_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

land.lhs.true50:                                  ; preds = %if.end38
  %velocity = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %15 = ptrtoint ptr %velocity to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %velocity, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp53 = icmp eq i8 %16, 0
  br i1 %cmp53, label %if.end57.thread, label %land.lhs.true50.if.end57_crit_edge

land.lhs.true50.if.end57_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end57.thread:                                  ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %ev, align 4
  br label %if.then72

if.end57:                                         ; preds = %land.lhs.true50.if.end57_crit_edge, %if.end38.if.end57_crit_edge
  %18 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %ev, align 4
  %.off = add i8 %.pr, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end57.if.then72_crit_edge, label %if.end57.if.end79_crit_edge

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end57.if.then72_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72

if.then72:                                        ; preds = %if.end57.if.then72_crit_edge, %if.end57.thread
  %19 = phi i8 [ 7, %if.end57.thread ], [ %.pr, %if.end57.if.then72_crit_edge ]
  %note = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %note, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp75 = icmp slt i8 %21, 0
  br i1 %cmp75, label %if.then72.cleanup_crit_edge, label %if.then72.if.end79_crit_edge

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.then72.if.end79_crit_edge, %if.end57.if.end79_crit_edge
  %22 = phi i8 [ %.pr, %if.end57.if.end79_crit_edge ], [ %19, %if.then72.if.end79_crit_edge ]
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %22, label %if.end79.cleanup_crit_edge [
    i8 6, label %sw.bb
    i8 7, label %sw.bb111
    i8 8, label %sw.bb132
    i8 10, label %sw.bb143
    i8 11, label %sw.bb146
    i8 13, label %sw.bb150
    i8 12, label %sw.bb158
    i8 14, label %sw.bb167
    i8 15, label %sw.bb191
    i8 16, label %sw.bb218
    i8 -126, label %sw.bb249
  ]

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end79
  %note84 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %note84 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %note84, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 11, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool86.not = icmp eq i8 %28, 0
  br i1 %tobool86.not, label %sw.bb.if.end95_crit_edge, label %if.then87

sw.bb.if.end95_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then87:                                        ; preds = %sw.bb
  %note_off = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  %29 = ptrtoint ptr %note_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %note_off, align 4
  %tobool88.not = icmp eq ptr %30, null
  br i1 %tobool88.not, label %if.then87.if.end95_crit_edge, label %if.then89

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %30(ptr noundef %13, i32 noundef %idxprom, i32 noundef 0, ptr noundef %add.ptr) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %if.then87.if.end95_crit_edge, %sw.bb.if.end95_crit_edge
  %31 = ptrtoint ptr %note84 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %note84, align 1
  %idxprom99 = zext i8 %32 to i32
  %arrayidx100 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 11, i32 %idxprom99
  %33 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx100, align 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %tobool101.not = icmp eq ptr %35, null
  br i1 %tobool101.not, label %if.end95.cleanup_crit_edge, label %if.then102

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %note84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %note84, align 1
  %conv106 = zext i8 %37 to i32
  %velocity108 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %38 = ptrtoint ptr %velocity108 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %velocity108, align 2
  %conv109 = zext i8 %39 to i32
  tail call void %35(ptr noundef %13, i32 noundef %conv106, i32 noundef %conv109, ptr noundef %add.ptr) #9
  br label %cleanup

sw.bb111:                                         ; preds = %if.end79
  %note114 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %40 = ptrtoint ptr %note114 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %note114, align 1
  %idxprom115 = zext i8 %41 to i32
  %arrayidx116 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 11, i32 %idxprom115
  %42 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx116, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool119.not = icmp eq i8 %44, 0
  br i1 %tobool119.not, label %sw.bb111.cleanup_crit_edge, label %if.end121

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %sw.bb111
  %note_off122 = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  %45 = ptrtoint ptr %note_off122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %note_off122, align 4
  %tobool123.not = icmp eq ptr %46, null
  br i1 %tobool123.not, label %if.end121.cleanup_crit_edge, label %if.then124

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %velocity129 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %47 = ptrtoint ptr %velocity129 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %velocity129, align 2
  %conv130 = zext i8 %48 to i32
  tail call fastcc void @note_off(ptr noundef %ops, ptr noundef %13, ptr noundef %add.ptr, i32 noundef %idxprom115, i32 noundef %conv130)
  br label %cleanup

sw.bb132:                                         ; preds = %if.end79
  %key_press = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 2
  %49 = ptrtoint ptr %key_press to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %key_press, align 4
  %tobool133.not = icmp eq ptr %50, null
  br i1 %tobool133.not, label %sw.bb132.cleanup_crit_edge, label %if.then134

sw.bb132.cleanup_crit_edge:                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then134:                                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #11
  %note137 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %51 = ptrtoint ptr %note137 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %note137, align 1
  %conv138 = zext i8 %52 to i32
  %velocity140 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %53 = ptrtoint ptr %velocity140 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %velocity140, align 2
  %conv141 = zext i8 %54 to i32
  tail call void %50(ptr noundef %13, i32 noundef %conv138, i32 noundef %conv141, ptr noundef %add.ptr) #9
  br label %cleanup

sw.bb143:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %param = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %55 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %param, align 4
  %value = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %57 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value, align 4
  tail call fastcc void @do_control(ptr noundef %ops, ptr noundef %13, ptr noundef nonnull %chanset, ptr noundef %add.ptr, i32 noundef %56, i32 noundef %58)
  br label %cleanup

sw.bb146:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %value148 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %59 = ptrtoint ptr %value148 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value148, align 4
  %conv149 = trunc i32 %60 to i8
  %midi_program = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 8
  %61 = ptrtoint ptr %midi_program to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv149, ptr %midi_program, align 4
  br label %cleanup

sw.bb150:                                         ; preds = %if.end79
  %value152 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %62 = ptrtoint ptr %value152 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value152, align 4
  %conv153 = trunc i32 %63 to i16
  %midi_pitchbend = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 9
  %64 = ptrtoint ptr %midi_pitchbend to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv153, ptr %midi_pitchbend, align 2
  %control = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 4
  %65 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %control, align 4
  %tobool154.not = icmp eq ptr %66, null
  br i1 %tobool154.not, label %sw.bb150.cleanup_crit_edge, label %if.then155

sw.bb150.cleanup_crit_edge:                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then155:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %66(ptr noundef %13, i32 noundef 128, ptr noundef %add.ptr) #9
  br label %cleanup

sw.bb158:                                         ; preds = %if.end79
  %value160 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %67 = ptrtoint ptr %value160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value160, align 4
  %conv161 = trunc i32 %68 to i8
  %midi_pressure = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 7
  %69 = ptrtoint ptr %midi_pressure to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv161, ptr %midi_pressure, align 1
  %control162 = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 4
  %70 = ptrtoint ptr %control162 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %control162, align 4
  %tobool163.not = icmp eq ptr %71, null
  br i1 %tobool163.not, label %sw.bb158.cleanup_crit_edge, label %if.then164

sw.bb158.cleanup_crit_edge:                       ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then164:                                       ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %71(ptr noundef %13, i32 noundef 130, ptr noundef %add.ptr) #9
  br label %cleanup

sw.bb167:                                         ; preds = %if.end79
  %param169 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %72 = ptrtoint ptr %param169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %param169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %73)
  %cmp170 = icmp ult i32 %73, 32
  %value174 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %74 = ptrtoint ptr %value174 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value174, align 4
  br i1 %cmp170, label %if.then172, label %if.else

if.then172:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  %76 = trunc i32 %75 to i8
  %conv176 = and i8 %76, 127
  %add = add nuw nsw i32 %73, 32
  %arrayidx180 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 %add
  %77 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv176, ptr %arrayidx180, align 1
  %78 = ptrtoint ptr %param169 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %param169, align 4
  %80 = ptrtoint ptr %value174 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %value174, align 4
  %82 = lshr i32 %81, 7
  %and185 = and i32 %82, 127
  tail call fastcc void @do_control(ptr noundef %ops, ptr noundef %13, ptr noundef nonnull %chanset, ptr noundef %add.ptr, i32 noundef %79, i32 noundef %and185)
  br label %cleanup

if.else:                                          ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @do_control(ptr noundef %ops, ptr noundef %13, ptr noundef nonnull %chanset, ptr noundef %add.ptr, i32 noundef %73, i32 noundef %75)
  br label %cleanup

sw.bb191:                                         ; preds = %if.end79
  %param_type = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 5
  %83 = ptrtoint ptr %param_type to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load = load i8, ptr %param_type, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %param_type, align 1
  %value193 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %84 = ptrtoint ptr %value193 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value193, align 4
  %86 = lshr i32 %85, 7
  %87 = trunc i32 %86 to i8
  %conv196 = and i8 %87, 127
  %arrayidx198 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 6
  %88 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv196, ptr %arrayidx198, align 2
  %89 = load i32, ptr %value193, align 4
  %90 = trunc i32 %89 to i8
  %conv202 = and i8 %90, 127
  %arrayidx204 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 38
  %91 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv202, ptr %arrayidx204, align 2
  %param206 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %92 = ptrtoint ptr %param206 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %param206, align 4
  %shr207 = lshr i32 %93, 7
  %94 = trunc i32 %shr207 to i8
  %conv209 = and i8 %94, 127
  %arrayidx211 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 99
  %95 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv209, ptr %arrayidx211, align 1
  %96 = load i32, ptr %param206, align 4
  %97 = trunc i32 %96 to i8
  %conv215 = and i8 %97, 127
  %arrayidx217 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 98
  %98 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv215, ptr %arrayidx217, align 2
  %nrpn.i = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 5
  %99 = ptrtoint ptr %nrpn.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nrpn.i, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %sw.bb191.cleanup_crit_edge, label %if.then.i

sw.bb191.cleanup_crit_edge:                       ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %100(ptr noundef %13, ptr noundef %add.ptr, ptr noundef nonnull %chanset) #9
  br label %cleanup

sw.bb218:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %param_type219 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 5
  %101 = ptrtoint ptr %param_type219 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load220 = load i8, ptr %param_type219, align 1
  %bf.clear221 = and i8 %bf.load220, -65
  store i8 %bf.clear221, ptr %param_type219, align 1
  %value224 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %102 = ptrtoint ptr %value224 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %value224, align 4
  %104 = lshr i32 %103, 7
  %105 = trunc i32 %104 to i8
  %conv227 = and i8 %105, 127
  %arrayidx229 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 6
  %106 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv227, ptr %arrayidx229, align 2
  %107 = load i32, ptr %value224, align 4
  %108 = trunc i32 %107 to i8
  %conv233 = and i8 %108, 127
  %arrayidx235 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 38
  %109 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv233, ptr %arrayidx235, align 2
  %param237 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %110 = ptrtoint ptr %param237 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %param237, align 4
  %shr238 = lshr i32 %111, 7
  %112 = trunc i32 %shr238 to i8
  %conv240 = and i8 %112, 127
  %arrayidx242 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 101
  %113 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv240, ptr %arrayidx242, align 1
  %114 = load i32, ptr %param237, align 4
  %115 = trunc i32 %114 to i8
  %conv246 = and i8 %115, 127
  %arrayidx248 = getelementptr %struct.snd_midi_channel, ptr %1, i32 %dest_channel.0, i32 10, i32 100
  %116 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv246, ptr %arrayidx248, align 4
  tail call fastcc void @rpn(ptr noundef %add.ptr, ptr noundef nonnull %chanset)
  br label %cleanup

sw.bb249:                                         ; preds = %if.end79
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags, align 1
  %119 = and i8 %118, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %119)
  %cmp252 = icmp eq i8 %119, 4
  br i1 %cmp252, label %if.then254, label %sw.bb249.cleanup_crit_edge

sw.bb249.cleanup_crit_edge:                       ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then254:                                       ; preds = %sw.bb249
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sysexbuf) #9
  %120 = call ptr @memset(ptr %sysexbuf, i32 255, i32 64)
  %call255 = call i32 @snd_seq_expand_var_event(ptr noundef nonnull %ev, i32 noundef 64, ptr noundef nonnull %sysexbuf, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %cmp256 = icmp sgt i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.then254.if.end260_crit_edge

if.then254.if.end260_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end260

if.then258:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sysex(ptr noundef %ops, ptr noundef %13, ptr noundef nonnull %sysexbuf, i32 noundef %call255, ptr noundef nonnull %chanset)
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %if.then254.if.end260_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sysexbuf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end260, %sw.bb249.cleanup_crit_edge, %sw.bb218, %if.then.i, %sw.bb191.cleanup_crit_edge, %if.else, %if.then172, %if.then164, %sw.bb158.cleanup_crit_edge, %if.then155, %sw.bb150.cleanup_crit_edge, %sw.bb146, %sw.bb143, %if.then134, %sw.bb132.cleanup_crit_edge, %if.then124, %if.end121.cleanup_crit_edge, %sw.bb111.cleanup_crit_edge, %if.then102, %if.end95.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then72.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then32, %do.body20, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @note_off(ptr nocapture noundef readonly %ops, ptr noundef %drv, ptr noundef %chan, i32 noundef %note, i32 noundef %vel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 64
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %arrayidx5 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %note
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = or i8 %3, 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx5, align 1
  br label %if.end21

if.else:                                          ; preds = %entry
  %6 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %if.else14, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i8 %3, 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or12, ptr %arrayidx5, align 1
  br label %if.end21

if.else14:                                        ; preds = %if.else
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx5, align 1
  %note_off = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  %9 = ptrtoint ptr %note_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %note_off, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.else14.if.end21_crit_edge, label %if.then18

if.else14.if.end21_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %drv, i32 noundef %note, i32 noundef %vel, ptr noundef %chan) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.else14.if.end21_crit_edge, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_control(ptr nocapture noundef readonly %ops, ptr noundef %drv, ptr noundef %chset, ptr noundef %chan, i32 noundef %control, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %control)
  %cmp = icmp ugt i32 %control, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add nsw i32 %control, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %1 = icmp ult i32 %0, 6
  %2 = and i32 %control, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %2)
  %3 = icmp eq i32 %2, 80
  %or.cond = or i1 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %value)
  %cmp7 = icmp sgt i32 %value, 63
  %cond = select i1 %cmp7, i32 127, i32 0
  %value.addr.0 = select i1 %or.cond, i32 %cond, i32 %value
  %conv = trunc i32 %value.addr.0 to i8
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 %control
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  %5 = zext i32 %control to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %control, label %sw.default [
    i32 64, label %sw.bb
    i32 65, label %if.end.cleanup_crit_edge
    i32 66, label %sw.bb26
    i32 6, label %sw.bb81
    i32 38, label %if.end.sw.bb84_crit_edge
    i32 100, label %if.end.sw.bb90_crit_edge
    i32 101, label %if.end.sw.bb90_crit_edge232
    i32 98, label %if.end.sw.bb94_crit_edge
    i32 99, label %if.end.sw.bb94_crit_edge233
    i32 120, label %sw.bb99
    i32 123, label %sw.bb100
    i32 0, label %sw.bb101
    i32 32, label %if.end.cleanup_crit_edge234
    i32 121, label %sw.bb119
  ]

if.end.cleanup_crit_edge234:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb94_crit_edge233:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb94

if.end.sw.bb94_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb94

if.end.sw.bb90_crit_edge232:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb90

if.end.sw.bb90_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb90

if.end.sw.bb84_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb84

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %cmp10 = icmp eq i32 %value.addr.0, 0
  br i1 %cmp10, label %for.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  %note_off = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0212 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %i.0212
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %for.body
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx15, align 1
  %10 = ptrtoint ptr %note_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %note_off, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.then17.for.inc_crit_edge, label %if.then21

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %drv, i32 noundef %i.0212, i32 noundef 0, ptr noundef %chan) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.then17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond219.not = icmp eq i32 %inc, 128
  br i1 %exitcond219.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.addr.0)
  %tobool27.not = icmp eq i32 %value.addr.0, 0
  br i1 %tobool27.not, label %for.cond47.preheader, label %sw.bb26.for.body32_crit_edge

sw.bb26.for.body32_crit_edge:                     ; preds = %sw.bb26
  br label %for.body32

for.cond47.preheader:                             ; preds = %sw.bb26
  %note_off70 = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  br label %for.body50

for.body32:                                       ; preds = %for.inc44.for.body32_crit_edge, %sw.bb26.for.body32_crit_edge
  %i.1209 = phi i32 [ %inc45, %for.inc44.for.body32_crit_edge ], [ 0, %sw.bb26.for.body32_crit_edge ]
  %arrayidx34 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %i.1209
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx34, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool37.not = icmp eq i8 %14, 0
  br i1 %tobool37.not, label %for.body32.for.inc44_crit_edge, label %if.then38

for.body32.for.inc44_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

if.then38:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i8 %13, 4
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or, ptr %arrayidx34, align 1
  br label %for.inc44

for.inc44:                                        ; preds = %if.then38, %for.body32.for.inc44_crit_edge
  %inc45 = add nuw nsw i32 %i.1209, 1
  %exitcond.not = icmp eq i32 %inc45, 128
  br i1 %exitcond.not, label %for.inc44.cleanup_crit_edge, label %for.inc44.for.body32_crit_edge

for.inc44.for.body32_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.inc44.cleanup_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body50:                                       ; preds = %for.inc77.for.body50_crit_edge, %for.cond47.preheader
  %i.2210 = phi i32 [ 0, %for.cond47.preheader ], [ %inc78, %for.inc77.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %i.2210
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx52, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool55.not = icmp eq i8 %18, 0
  br i1 %tobool55.not, label %for.body50.for.inc77_crit_edge, label %if.then56

for.body50.for.inc77_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

if.then56:                                        ; preds = %for.body50
  %and60 = and i8 %17, -5
  %19 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and60, ptr %arrayidx52, align 1
  %20 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool66.not = icmp eq i8 %20, 0
  br i1 %tobool66.not, label %if.then56.for.inc77_crit_edge, label %if.then67

if.then56.for.inc77_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

if.then67:                                        ; preds = %if.then56
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx52, align 1
  %22 = ptrtoint ptr %note_off70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %note_off70, align 4
  %tobool71.not = icmp eq ptr %23, null
  br i1 %tobool71.not, label %if.then67.for.inc77_crit_edge, label %if.then72

if.then67.for.inc77_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %drv, i32 noundef %i.2210, i32 noundef 0, ptr noundef %chan) #9
  br label %for.inc77

for.inc77:                                        ; preds = %if.then72, %if.then67.for.inc77_crit_edge, %if.then56.for.inc77_crit_edge, %for.body50.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %i.2210, 1
  %exitcond218.not = icmp eq i32 %inc78, 128
  br i1 %exitcond218.not, label %for.inc77.cleanup_crit_edge, label %for.inc77.for.body50_crit_edge

for.inc77.for.body50_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.inc77.cleanup_crit_edge:                      ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb81:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx83 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 38
  %24 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx83, align 2
  br label %sw.bb84

sw.bb84:                                          ; preds = %sw.bb81, %if.end.sw.bb84_crit_edge
  %param_type = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %25 = ptrtoint ptr %param_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %param_type, align 1
  %26 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp85 = icmp eq i8 %26, 0
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %sw.bb84
  %midi_mode.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %27 = ptrtoint ptr %midi_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %midi_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 0
  br i1 %cmp.not.i, label %if.then87.cleanup_crit_edge, label %if.then.i

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then87
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 101
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %arrayidx4.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 100
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.i, align 4
  %conv5.i = zext i8 %32 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %arrayidx7.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 6
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx7.i, align 2
  %conv8.i = zext i8 %34 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 7
  %arrayidx11.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 38
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx11.i, align 2
  %conv12.i = zext i8 %36 to i32
  %or13.i = or i32 %shl9.i, %conv12.i
  %37 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %or.i, label %if.then.i.cleanup_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb15.i
    i16 2, label %sw.bb17.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i = trunc i32 %or13.i to i16
  %gm_rpn_pitch_bend_range.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 12
  %38 = ptrtoint ptr %gm_rpn_pitch_bend_range.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv14.i, ptr %gm_rpn_pitch_bend_range.i, align 4
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = trunc i32 %or13.i to i16
  %conv16.i = add nsw i16 %39, -8192
  %gm_rpn_fine_tuning.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 13
  %40 = ptrtoint ptr %gm_rpn_fine_tuning.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv16.i, ptr %gm_rpn_fine_tuning.i, align 2
  br label %cleanup

sw.bb17.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = trunc i32 %or13.i to i16
  %conv19.i = add nsw i16 %41, -8192
  %gm_rpn_coarse_tuning.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 14
  %42 = ptrtoint ptr %gm_rpn_coarse_tuning.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv19.i, ptr %gm_rpn_coarse_tuning.i, align 4
  br label %cleanup

if.else88:                                        ; preds = %sw.bb84
  %nrpn.i = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 5
  %43 = ptrtoint ptr %nrpn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nrpn.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.else88.cleanup_crit_edge, label %if.then.i194

if.else88.cleanup_crit_edge:                      ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i194:                                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %44(ptr noundef %drv, ptr noundef %chan, ptr noundef %chset) #9
  br label %cleanup

sw.bb90:                                          ; preds = %if.end.sw.bb90_crit_edge, %if.end.sw.bb90_crit_edge232
  %param_type91 = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %45 = ptrtoint ptr %param_type91 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load92 = load i8, ptr %param_type91, align 1
  %bf.clear93 = and i8 %bf.load92, -65
  store i8 %bf.clear93, ptr %param_type91, align 1
  br label %cleanup

sw.bb94:                                          ; preds = %if.end.sw.bb94_crit_edge, %if.end.sw.bb94_crit_edge233
  %param_type95 = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %46 = ptrtoint ptr %param_type95 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load96 = load i8, ptr %param_type95, align 1
  %bf.set98 = or i8 %bf.load96, 64
  store i8 %bf.set98, ptr %param_type95, align 1
  br label %cleanup

sw.bb99:                                          ; preds = %if.end
  %note_terminate.i = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 3
  %47 = ptrtoint ptr %note_terminate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %note_terminate.i, align 4
  %tobool.not.i195 = icmp eq ptr %48, null
  br i1 %tobool.not.i195, label %sw.bb99.cleanup_crit_edge, label %sw.bb99.for.body.i_crit_edge

sw.bb99.for.body.i_crit_edge:                     ; preds = %sw.bb99
  br label %for.body.i

sw.bb99.cleanup_crit_edge:                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb99.for.body.i_crit_edge
  %n.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb99.for.body.i_crit_edge ]
  %arrayidx.i196 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %n.014.i
  %49 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool1.not.i = icmp eq i8 %50, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %note_terminate.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %note_terminate.i, align 4
  tail call void %52(ptr noundef %drv, i32 noundef %n.014.i, ptr noundef %chan) #9
  %53 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx.i196, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %n.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb100:                                         ; preds = %if.end
  %note_off.i = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 1
  %54 = ptrtoint ptr %note_off.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %note_off.i, align 4
  %tobool.not.i197 = icmp eq ptr %55, null
  br i1 %tobool.not.i197, label %sw.bb100.cleanup_crit_edge, label %for.cond.preheader.i

sw.bb100.cleanup_crit_edge:                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %sw.bb100
  %arrayidx.i.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 64
  br label %for.body.i199

for.body.i199:                                    ; preds = %for.inc.i202.for.body.i199_crit_edge, %for.cond.preheader.i
  %n.010.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i200, %for.inc.i202.for.body.i199_crit_edge ]
  %arrayidx.i198 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 11, i32 %n.010.i
  %56 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp1.i = icmp eq i8 %57, 1
  br i1 %cmp1.i, label %if.then3.i, label %for.body.i199.for.inc.i202_crit_edge

for.body.i199.for.inc.i202_crit_edge:             ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i202

if.then3.i:                                       ; preds = %for.body.i199
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i, label %if.else14.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %arrayidx.i198, align 1
  br label %for.inc.i202

if.else14.i.i:                                    ; preds = %if.then3.i
  %61 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx.i198, align 1
  %62 = ptrtoint ptr %note_off.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %note_off.i, align 4
  %tobool17.not.i.i = icmp eq ptr %63, null
  br i1 %tobool17.not.i.i, label %if.else14.i.i.for.inc.i202_crit_edge, label %if.then18.i.i

if.else14.i.i.for.inc.i202_crit_edge:             ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i202

if.then18.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %63(ptr noundef %drv, i32 noundef %n.010.i, i32 noundef 0, ptr noundef %chan) #9
  br label %for.inc.i202

for.inc.i202:                                     ; preds = %if.then18.i.i, %if.else14.i.i.for.inc.i202_crit_edge, %if.then.i.i, %for.body.i199.for.inc.i202_crit_edge
  %inc.i200 = add nuw nsw i32 %n.010.i, 1
  %exitcond.not.i201 = icmp eq i32 %inc.i200, 128
  br i1 %exitcond.not.i201, label %for.inc.i202.cleanup_crit_edge, label %for.inc.i202.for.body.i199_crit_edge

for.inc.i202.for.body.i199_crit_edge:             ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i199

for.inc.i202.cleanup_crit_edge:                   ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb101:                                         ; preds = %if.end
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %64 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %midi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp103 = icmp eq i8 %65, 3
  br i1 %cmp103, label %if.then105, label %sw.bb101.cleanup_crit_edge

sw.bb101.cleanup_crit_edge:                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then105:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %value.addr.0)
  %cmp106 = icmp eq i32 %value.addr.0, 127
  %drum_channel = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 5
  %66 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load109 = load i8, ptr %drum_channel, align 1
  br i1 %cmp106, label %if.then108, label %if.else112

if.then108:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set111 = or i8 %bf.load109, -128
  %67 = ptrtoint ptr %drum_channel to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %bf.set111, ptr %drum_channel, align 1
  br label %cleanup

if.else112:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear115 = and i8 %bf.load109, 127
  %68 = ptrtoint ptr %drum_channel to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %bf.clear115, ptr %drum_channel, align 1
  br label %cleanup

sw.bb119:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %control.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 10
  %69 = call ptr @memset(ptr %control.i, i32 0, i32 128)
  %arrayidx.i203 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 7
  %70 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 127, ptr %arrayidx.i203, align 1
  %arrayidx3.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 11
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 127, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 10
  %72 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 64, ptr %arrayidx5.i, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %control121 = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 4
  %73 = ptrtoint ptr %control121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %control121, align 4
  %tobool122.not = icmp eq ptr %74, null
  br i1 %tobool122.not, label %sw.default.cleanup_crit_edge, label %if.then123

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then123:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %74(ptr noundef %drv, i32 noundef %control, ptr noundef %chan) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %sw.default.cleanup_crit_edge, %sw.bb119, %if.else112, %if.then108, %sw.bb101.cleanup_crit_edge, %for.inc.i202.cleanup_crit_edge, %sw.bb100.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb99.cleanup_crit_edge, %sw.bb94, %sw.bb90, %if.then.i194, %if.else88.cleanup_crit_edge, %sw.bb17.i, %sw.bb15.i, %sw.bb.i, %if.then.i.cleanup_crit_edge, %if.then87.cleanup_crit_edge, %for.inc77.cleanup_crit_edge, %for.inc44.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge234, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rpn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %chset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %0 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %midi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 101
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i16
  %shl = shl nuw i16 %conv2, 8
  %arrayidx4 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 100
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 4
  %conv5 = zext i8 %5 to i16
  %or = or i16 %shl, %conv5
  %arrayidx7 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 2
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw nsw i32 %conv8, 7
  %arrayidx11 = getelementptr %struct.snd_midi_channel, ptr %chan, i32 0, i32 10, i32 38
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %9 to i32
  %or13 = or i32 %shl9, %conv12
  %10 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %or, label %if.then.if.end_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb15
    i16 2, label %sw.bb17
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = trunc i32 %or13 to i16
  %gm_rpn_pitch_bend_range = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 12
  %11 = ptrtoint ptr %gm_rpn_pitch_bend_range to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv14, ptr %gm_rpn_pitch_bend_range, align 4
  br label %if.end

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = trunc i32 %or13 to i16
  %conv16 = add nsw i16 %12, -8192
  %gm_rpn_fine_tuning = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 13
  %13 = ptrtoint ptr %gm_rpn_fine_tuning to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16, ptr %gm_rpn_fine_tuning, align 2
  br label %if.end

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = trunc i32 %or13 to i16
  %conv19 = add nsw i16 %14, -8192
  %gm_rpn_coarse_tuning = getelementptr inbounds %struct.snd_midi_channel, ptr %chan, i32 0, i32 14
  %15 = ptrtoint ptr %gm_rpn_coarse_tuning to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv19, ptr %gm_rpn_coarse_tuning, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb17, %sw.bb15, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_expand_var_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysex(ptr nocapture noundef readonly %ops, ptr noundef %private, ptr noundef %buf, i32 noundef %len, ptr noundef %chset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %1)
  %cmp1.not = icmp eq i8 %1, -16
  br i1 %cmp1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec)
  %cmp3 = icmp sgt i32 %dec, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end183_crit_edge

if.end.if.end183_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

land.lhs.true:                                    ; preds = %if.end
  %bcmp250 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %incdec.ptr, ptr noundef nonnull dereferenceable(4) @sysex.gm_on_macro, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp250)
  %cmp5 = icmp eq i32 %bcmp250, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %2 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %midi_mode, align 4
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp eq i8 %4, 2
  br i1 %switch, label %if.then7.if.end183_crit_edge, label %if.then16

if.then7.if.end183_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then16:                                        ; preds = %if.then7
  %5 = ptrtoint ptr %midi_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %midi_mode, align 4
  %max_channels.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %6 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp sgt i32 %7, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then16.if.end183_crit_edge

if.then16.if.end183_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

for.body.lr.ph.i:                                 ; preds = %if.then16
  %channels.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels.i, align 4
  %control.i.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 10
  %10 = call ptr @memset(ptr %control.i.i, i32 0, i32 128)
  %arrayidx.i.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 10, i32 7
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %arrayidx.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 10, i32 11
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %arrayidx3.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 10, i32 10
  %13 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 64, ptr %arrayidx5.i.i, align 2
  %gm_rpn_pitch_bend_range.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 12
  %14 = ptrtoint ptr %gm_rpn_pitch_bend_range.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %gm_rpn_pitch_bend_range.i, align 4
  %gm_rpn_fine_tuning.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 13
  %15 = ptrtoint ptr %gm_rpn_fine_tuning.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %gm_rpn_fine_tuning.i, align 2
  %gm_rpn_coarse_tuning.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 14
  %16 = ptrtoint ptr %gm_rpn_coarse_tuning.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %gm_rpn_coarse_tuning.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ch.016.i)
  %cmp1.i = icmp eq i32 %ch.016.i, 9
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 9, i32 5
  %17 = ptrtoint ptr %drum_channel.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %drum_channel.i, align 1
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %drum_channel.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel2.i = getelementptr %struct.snd_midi_channel, ptr %9, i32 %ch.016.i, i32 5
  %18 = ptrtoint ptr %drum_channel2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load3.i = load i8, ptr %drum_channel2.i, align 1
  %bf.clear4.i = and i8 %bf.load3.i, 127
  store i8 %bf.clear4.i, ptr %drum_channel2.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw nsw i32 %ch.016.i, 1
  %19 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end183_crit_edge

if.end.i.if.end183_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dec)
  %cmp19 = icmp ugt i32 %dec, 7
  br i1 %cmp19, label %land.lhs.true21, label %if.else152

land.lhs.true21:                                  ; preds = %if.else
  %bcmp249 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %incdec.ptr, ptr noundef nonnull dereferenceable(5) @sysex.gs_pfx_macro, i32 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp249)
  %cmp23 = icmp eq i32 %bcmp249, 0
  br i1 %cmp23, label %if.then25, label %land.lhs.true21.land.lhs.true155_crit_edge

land.lhs.true21.land.lhs.true155_crit_edge:       ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true155

if.then25:                                        ; preds = %land.lhs.true21
  %midi_mode26 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %21 = ptrtoint ptr %midi_mode26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %midi_mode26, align 4
  %23 = and i8 %22, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %switch252 = icmp eq i8 %23, 2
  br i1 %switch252, label %if.then25.if.end37_crit_edge, label %if.then35

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %midi_mode26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %midi_mode26, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then25.if.end37_crit_edge
  %arrayidx38 = getelementptr i8, ptr %buf, i32 6
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp40 = icmp eq i8 %26, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.else53

land.lhs.true42:                                  ; preds = %if.end37
  %arrayidx43 = getelementptr i8, ptr %buf, i32 7
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %28)
  %cmp45 = icmp eq i8 %28, 127
  br i1 %cmp45, label %land.lhs.true47, label %land.lhs.true42.land.lhs.true139_crit_edge

land.lhs.true42.land.lhs.true139_crit_edge:       ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true139

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %arrayidx48 = getelementptr i8, ptr %buf, i32 8
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp50 = icmp eq i8 %30, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true139thread-pre-split

if.then52:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @reset_all_channels(ptr noundef %chset)
  br label %if.end183

if.else53:                                        ; preds = %if.end37
  %31 = and i8 %26, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %31)
  %cmp56 = icmp eq i8 %31, 16
  br i1 %cmp56, label %land.lhs.true58, label %if.else110

land.lhs.true58:                                  ; preds = %if.else53
  %arrayidx59 = getelementptr i8, ptr %buf, i32 7
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %33)
  %cmp61 = icmp eq i8 %33, 21
  br i1 %cmp61, label %if.then63, label %land.lhs.true87

if.then63:                                        ; preds = %land.lhs.true58
  %34 = and i8 %26, 15
  %and.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i253 = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %34)
  %cmp2.i = icmp ult i8 %34, 10
  %dec.i = sext i1 %cmp2.i to i32
  %spec.select.i = add nsw i32 %dec.i, %and.i
  %p.0.i = select i1 %cmp.i253, i32 9, i32 %spec.select.i
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %35 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i, i32 %36)
  %cmp66 = icmp slt i32 %p.0.i, %36
  br i1 %cmp66, label %if.then68, label %if.then63.if.end183_crit_edge

if.then63.if.end183_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then68:                                        ; preds = %if.then63
  %arrayidx69 = getelementptr i8, ptr %buf, i32 8
  %37 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  %channels73 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  %39 = ptrtoint ptr %channels73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channels73, align 4
  %drum_channel75 = getelementptr %struct.snd_midi_channel, ptr %40, i32 %p.0.i, i32 5
  %41 = ptrtoint ptr %drum_channel75 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load76 = load i8, ptr %drum_channel75, align 1
  br i1 %tobool.not, label %if.else72, label %if.then70

if.then70:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load76, -128
  %42 = ptrtoint ptr %drum_channel75 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %bf.set, ptr %drum_channel75, align 1
  br label %if.end183

if.else72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear77 = and i8 %bf.load76, 127
  %43 = ptrtoint ptr %drum_channel75 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.clear77, ptr %drum_channel75, align 1
  br label %if.end183

land.lhs.true87:                                  ; preds = %land.lhs.true58
  %44 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %45)
  %cmp90 = icmp eq i8 %45, 33
  br i1 %cmp90, label %if.then92, label %land.lhs.true87.if.end183_crit_edge

land.lhs.true87.if.end183_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then92:                                        ; preds = %land.lhs.true87
  %46 = and i8 %26, 15
  %and.i254 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i255 = icmp eq i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %46)
  %cmp2.i256 = icmp ult i8 %46, 10
  %dec.i257 = sext i1 %cmp2.i256 to i32
  %spec.select.i258 = add nsw i32 %dec.i257, %and.i254
  %p.0.i259 = select i1 %cmp.i255, i32 9, i32 %spec.select.i258
  %max_channels96 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %47 = ptrtoint ptr %max_channels96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_channels96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.i259, i32 %48)
  %cmp97 = icmp slt i32 %p.0.i259, %48
  br i1 %cmp97, label %land.lhs.true99, label %if.then92.if.end183_crit_edge

if.then92.if.end183_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

land.lhs.true99:                                  ; preds = %if.then92
  %channels100 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  %49 = ptrtoint ptr %channels100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channels100, align 4
  %drum_channel102 = getelementptr %struct.snd_midi_channel, ptr %50, i32 %p.0.i259, i32 5
  %51 = ptrtoint ptr %drum_channel102 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load103 = load i8, ptr %drum_channel102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load103)
  %tobool104.not = icmp sgt i8 %bf.load103, -1
  br i1 %tobool104.not, label %if.then105, label %land.lhs.true99.if.end183_crit_edge

land.lhs.true99.if.end183_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then105:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx106 = getelementptr i8, ptr %buf, i32 8
  %52 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx106, align 1
  %midi_program = getelementptr %struct.snd_midi_channel, ptr %50, i32 %p.0.i259, i32 8
  %54 = ptrtoint ptr %midi_program to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %midi_program, align 4
  br label %if.end183

if.else110:                                       ; preds = %if.else53
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp113 = icmp eq i8 %26, 1
  br i1 %cmp113, label %land.lhs.true115, label %if.else110.if.end183_crit_edge

if.else110.if.end183_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

land.lhs.true115:                                 ; preds = %if.else110
  %arrayidx116 = getelementptr i8, ptr %buf, i32 7
  %55 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %56)
  %cmp118 = icmp eq i8 %56, 48
  br i1 %cmp118, label %if.then120, label %land.lhs.true127

if.then120:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx121 = getelementptr i8, ptr %buf, i32 8
  %57 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx121, align 1
  %gs_reverb_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 8
  %59 = ptrtoint ptr %gs_reverb_mode to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %gs_reverb_mode, align 1
  br label %if.end183

land.lhs.true127:                                 ; preds = %land.lhs.true115
  %60 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %61)
  %cmp130 = icmp eq i8 %61, 56
  br i1 %cmp130, label %if.then132, label %land.lhs.true127.if.end183_crit_edge

land.lhs.true127.if.end183_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then132:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx133 = getelementptr i8, ptr %buf, i32 8
  %62 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx133, align 1
  %gs_chorus_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 7
  %64 = ptrtoint ptr %gs_chorus_mode to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %gs_chorus_mode, align 2
  br label %if.end183

land.lhs.true139thread-pre-split:                 ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %65)
  %.pr = load i8, ptr %arrayidx43, align 1
  br label %land.lhs.true139

land.lhs.true139:                                 ; preds = %land.lhs.true139thread-pre-split, %land.lhs.true42.land.lhs.true139_crit_edge
  %66 = phi i8 [ %.pr, %land.lhs.true139thread-pre-split ], [ %28, %land.lhs.true42.land.lhs.true139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %66)
  %cmp142 = icmp eq i8 %66, 4
  br i1 %cmp142, label %if.then144, label %land.lhs.true139.if.end183_crit_edge

land.lhs.true139.if.end183_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then144:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx145 = getelementptr i8, ptr %buf, i32 8
  %67 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx145, align 1
  %gs_master_volume = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 6
  %69 = ptrtoint ptr %gs_master_volume to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %gs_master_volume, align 1
  br label %if.end183

if.else152:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dec)
  %cmp153 = icmp eq i32 %dec, 7
  br i1 %cmp153, label %if.else152.land.lhs.true155_crit_edge, label %if.else152.if.end183_crit_edge

if.else152.if.end183_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.else152.land.lhs.true155_crit_edge:            ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true155

land.lhs.true155:                                 ; preds = %if.else152.land.lhs.true155_crit_edge, %land.lhs.true21.land.lhs.true155_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(7) %incdec.ptr, ptr noundef nonnull dereferenceable(7) @sysex.xg_on_macro, i32 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp157 = icmp eq i32 %bcmp, 0
  br i1 %cmp157, label %if.then159, label %land.lhs.true155.if.end183_crit_edge

land.lhs.true155.if.end183_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then159:                                       ; preds = %land.lhs.true155
  %midi_mode160 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %70 = ptrtoint ptr %midi_mode160 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %midi_mode160, align 4
  %max_channels161 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %71 = ptrtoint ptr %max_channels161 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_channels161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp162275 = icmp sgt i32 %72, 0
  br i1 %cmp162275, label %for.body.lr.ph, label %if.then159.if.end183_crit_edge

if.then159.if.end183_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

for.body.lr.ph:                                   ; preds = %if.then159
  %channels164 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %73 = ptrtoint ptr %channels164 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channels164, align 4
  %drum_channel166 = getelementptr %struct.snd_midi_channel, ptr %74, i32 %i.0276, i32 5
  %75 = ptrtoint ptr %drum_channel166 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load167 = load i8, ptr %drum_channel166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load167)
  %tobool170.not.inv = icmp slt i8 %bf.load167, 0
  %spec.select = select i1 %tobool170.not.inv, i8 127, i8 0
  %76 = getelementptr %struct.snd_midi_channel, ptr %74, i32 %i.0276, i32 10
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %spec.select, ptr %76, align 4
  %inc = add nuw nsw i32 %i.0276, 1
  %78 = ptrtoint ptr %max_channels161 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_channels161, align 4
  %cmp162 = icmp slt i32 %inc, %79
  br i1 %cmp162, label %for.body.for.body_crit_edge, label %for.body.if.end183_crit_edge

for.body.if.end183_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end183:                                        ; preds = %for.body.if.end183_crit_edge, %if.then159.if.end183_crit_edge, %land.lhs.true155.if.end183_crit_edge, %if.else152.if.end183_crit_edge, %if.then144, %land.lhs.true139.if.end183_crit_edge, %if.then132, %land.lhs.true127.if.end183_crit_edge, %if.then120, %if.else110.if.end183_crit_edge, %if.then105, %land.lhs.true99.if.end183_crit_edge, %if.then92.if.end183_crit_edge, %land.lhs.true87.if.end183_crit_edge, %if.else72, %if.then70, %if.then63.if.end183_crit_edge, %if.then52, %if.end.i.if.end183_crit_edge, %if.then16.if.end183_crit_edge, %if.then7.if.end183_crit_edge, %if.end.if.end183_crit_edge
  %parsed.2 = phi i32 [ 3, %if.then52 ], [ 5, %if.then120 ], [ 4, %if.then132 ], [ 6, %if.then144 ], [ 0, %land.lhs.true139.if.end183_crit_edge ], [ 0, %land.lhs.true155.if.end183_crit_edge ], [ 0, %if.else152.if.end183_crit_edge ], [ 0, %if.then7.if.end183_crit_edge ], [ 8, %if.then70 ], [ 8, %if.else72 ], [ 0, %if.then63.if.end183_crit_edge ], [ 0, %land.lhs.true99.if.end183_crit_edge ], [ 8, %if.then105 ], [ 0, %if.then92.if.end183_crit_edge ], [ 1, %if.then16.if.end183_crit_edge ], [ 0, %if.end.if.end183_crit_edge ], [ 0, %land.lhs.true87.if.end183_crit_edge ], [ 0, %land.lhs.true127.if.end183_crit_edge ], [ 0, %if.else110.if.end183_crit_edge ], [ 9, %if.then159.if.end183_crit_edge ], [ 1, %if.end.i.if.end183_crit_edge ], [ 9, %for.body.if.end183_crit_edge ]
  %sysex = getelementptr inbounds %struct.snd_midi_op, ptr %ops, i32 0, i32 6
  %80 = ptrtoint ptr %sysex to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sysex, align 4
  %tobool184.not = icmp eq ptr %81, null
  br i1 %tobool184.not, label %if.end183.cleanup_crit_edge, label %if.then185

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then185:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %81(ptr noundef %private, ptr noundef %buf, i32 noundef %len, i32 noundef %parsed.2, ptr noundef %chset) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then185, %if.end183.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_midi_channel_set_clear(ptr nocapture noundef %chset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_mode = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 5
  %0 = ptrtoint ptr %midi_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %midi_mode, align 4
  %gs_master_volume = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 6
  %1 = ptrtoint ptr %gs_master_volume to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 127, ptr %gs_master_volume, align 1
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %2 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22 = icmp sgt i32 %3, 0
  br i1 %cmp22, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %midi_aftertouch = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 6
  %6 = ptrtoint ptr %midi_aftertouch to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %midi_aftertouch, align 2
  %midi_pressure = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 7
  %7 = ptrtoint ptr %midi_pressure to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %midi_pressure, align 1
  %midi_program = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 8
  %8 = ptrtoint ptr %midi_program to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %midi_program, align 4
  %midi_pitchbend = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 9
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 10, i32 7
  %9 = call ptr @memset(ptr %midi_pitchbend, i32 0, i32 258)
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 127, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 10, i32 11
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 10, i32 10
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %arrayidx5.i, align 2
  %gm_rpn_pitch_bend_range = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 12
  %13 = ptrtoint ptr %gm_rpn_pitch_bend_range to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %gm_rpn_pitch_bend_range, align 4
  %gm_rpn_fine_tuning = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 13
  %14 = ptrtoint ptr %gm_rpn_fine_tuning to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %gm_rpn_fine_tuning, align 2
  %gm_rpn_coarse_tuning = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 14
  %15 = ptrtoint ptr %gm_rpn_coarse_tuning to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %gm_rpn_coarse_tuning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.023)
  %cmp1 = icmp eq i32 %i.023, 9
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel = getelementptr %struct.snd_midi_channel, ptr %5, i32 9, i32 5
  %16 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %drum_channel, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %drum_channel, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel2 = getelementptr %struct.snd_midi_channel, ptr %5, i32 %i.023, i32 5
  %17 = ptrtoint ptr %drum_channel2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load3 = load i8, ptr %drum_channel2, align 1
  %bf.clear4 = and i8 %bf.load3, 127
  store i8 %bf.clear4, ptr %drum_channel2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.023, 1
  %18 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_channels, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @snd_midi_channel_alloc_set(i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 288) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.then.snd_midi_channel_init_set.exit_crit_edge, label %if.end7.i.i, !prof !40

if.then.snd_midi_channel_init_set.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init_set.exit

if.end7.i.i:                                      ; preds = %if.then
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.snd_midi_channel_init_set.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.snd_midi_channel_init_set.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init_set.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp11.not.i = icmp eq i32 %n, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.snd_midi_channel_init_set.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.snd_midi_channel_init_set.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init_set.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %drum_channel.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 9, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %snd_midi_channel_init.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.012.i = phi i32 [ %inc.i, %snd_midi_channel_init.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i
  %cmp.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.i.i, label %for.body.i.snd_midi_channel_init.exit.i_crit_edge, label %if.end.i7.i

for.body.i.snd_midi_channel_init.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init.exit.i

if.end.i7.i:                                      ; preds = %for.body.i
  %number.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 1
  %4 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 288)
  %5 = ptrtoint ptr %number.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.012.i, ptr %number.i.i, align 4
  %control.i.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 10
  %6 = call ptr @memset(ptr %control.i.i.i, i32 0, i32 128)
  %arrayidx.i.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 10, i32 7
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %arrayidx.i.i.i, align 1
  %arrayidx3.i.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 10, i32 11
  %8 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %arrayidx3.i.i.i, align 1
  %arrayidx5.i.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 10, i32 10
  %9 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %arrayidx5.i.i.i, align 2
  %gm_rpn_pitch_bend_range.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 12
  %10 = ptrtoint ptr %gm_rpn_pitch_bend_range.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 256, ptr %gm_rpn_pitch_bend_range.i.i, align 8
  %gm_rpn_coarse_tuning.i.i = getelementptr %struct.snd_midi_channel, ptr %call8.i.i, i32 %i.012.i, i32 14
  %11 = ptrtoint ptr %gm_rpn_coarse_tuning.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %gm_rpn_coarse_tuning.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.012.i)
  %cmp1.i.i = icmp eq i32 %i.012.i, 9
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end.i7.i.snd_midi_channel_init.exit.i_crit_edge

if.end.i7.i.snd_midi_channel_init.exit.i_crit_edge: ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init.exit.i

if.then2.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %drum_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %drum_channel.i.i, align 1
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %drum_channel.i.i, align 1
  br label %snd_midi_channel_init.exit.i

snd_midi_channel_init.exit.i:                     ; preds = %if.then2.i.i, %if.end.i7.i.snd_midi_channel_init.exit.i_crit_edge, %for.body.i.snd_midi_channel_init.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n
  br i1 %exitcond.not.i, label %snd_midi_channel_init.exit.i.snd_midi_channel_init_set.exit_crit_edge, label %snd_midi_channel_init.exit.i.for.body.i_crit_edge

snd_midi_channel_init.exit.i.for.body.i_crit_edge: ; preds = %snd_midi_channel_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

snd_midi_channel_init.exit.i.snd_midi_channel_init_set.exit_crit_edge: ; preds = %snd_midi_channel_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_midi_channel_init_set.exit

snd_midi_channel_init_set.exit:                   ; preds = %snd_midi_channel_init.exit.i.snd_midi_channel_init_set.exit_crit_edge, %for.cond.preheader.i.snd_midi_channel_init_set.exit_crit_edge, %if.end7.i.i.snd_midi_channel_init_set.exit_crit_edge, %if.then.snd_midi_channel_init_set.exit_crit_edge
  %retval.0.i10.i = phi ptr [ null, %if.end7.i.i.snd_midi_channel_init_set.exit_crit_edge ], [ null, %if.then.snd_midi_channel_init_set.exit_crit_edge ], [ %call8.i.i, %for.cond.preheader.i.snd_midi_channel_init_set.exit_crit_edge ], [ %call8.i.i, %snd_midi_channel_init.exit.i.snd_midi_channel_init_set.exit_crit_edge ]
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i, i32 0, i32 4
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i10.i, ptr %channels, align 8
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call7.i, align 8
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %n, ptr %max_channels, align 4
  br label %if.end

if.end:                                           ; preds = %snd_midi_channel_init_set.exit, %entry.if.end_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_midi_channel_free_set(ptr noundef %chset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %chset, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %chset) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_all_channels(ptr nocapture noundef readonly %chset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 3
  %0 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %chset, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ch.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %control.i = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 10
  %4 = call ptr @memset(ptr %control.i, i32 0, i32 128)
  %arrayidx.i = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 10, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 127, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 10, i32 11
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 127, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 10, i32 10
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %arrayidx5.i, align 2
  %gm_rpn_pitch_bend_range = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 12
  %8 = ptrtoint ptr %gm_rpn_pitch_bend_range to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %gm_rpn_pitch_bend_range, align 4
  %gm_rpn_fine_tuning = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 13
  %9 = ptrtoint ptr %gm_rpn_fine_tuning to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %gm_rpn_fine_tuning, align 2
  %gm_rpn_coarse_tuning = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 14
  %10 = ptrtoint ptr %gm_rpn_coarse_tuning to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %gm_rpn_coarse_tuning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ch.016)
  %cmp1 = icmp eq i32 %ch.016, 9
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel = getelementptr %struct.snd_midi_channel, ptr %3, i32 9, i32 5
  %11 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %drum_channel, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %drum_channel, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %drum_channel2 = getelementptr %struct.snd_midi_channel, ptr %3, i32 %ch.016, i32 5
  %12 = ptrtoint ptr %drum_channel2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load3 = load i8, ptr %drum_channel2, align 1
  %bf.clear4 = and i8 %bf.load3, 127
  store i8 %bf.clear4, ptr %drum_channel2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %ch.016, 1
  %13 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_channels, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_author185, !1, !"__UNIQUE_ID_author185", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_midi_emul.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description186, !3, !"__UNIQUE_ID_description186", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_midi_emul.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file187, !5, !"__UNIQUE_ID_file187", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_midi_emul.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license188, !5, !"__UNIQUE_ID_license188", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/seq/seq_midi_emul.c", i32 81, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_midi_process_event.__UNIQUE_ID_ddebug189, !8, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/core/seq/seq_midi_emul.c", i32 90, i32 4}
!15 = !{ptr @snd_midi_process_event.__UNIQUE_ID_ddebug190, !14, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!16 = !{ptr @__ksymtab_snd_midi_process_event, !17, !"__ksymtab_snd_midi_process_event", i1 false, i1 false}
!17 = !{!"../sound/core/seq/seq_midi_emul.c", i32 228, i32 1}
!18 = !{ptr @__ksymtab_snd_midi_channel_set_clear, !19, !"__ksymtab_snd_midi_channel_set_clear", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq_midi_emul.c", i32 404, i32 1}
!20 = !{ptr @__ksymtab_snd_midi_channel_alloc_set, !21, !"__ksymtab_snd_midi_channel_alloc_set", i1 false, i1 false}
!21 = !{!"../sound/core/seq/seq_midi_emul.c", i32 699, i32 1}
!22 = !{ptr @__ksymtab_snd_midi_channel_free_set, !23, !"__ksymtab_snd_midi_channel_free_set", i1 false, i1 false}
!23 = !{!"../sound/core/seq/seq_midi_emul.c", i32 723, i32 1}
!24 = !{ptr @sysex.gm_on_macro, !25, !"gm_on_macro", i1 false, i1 false}
!25 = !{!"../sound/core/seq/seq_midi_emul.c", i32 482, i32 29}
!26 = !{ptr @sysex.xg_on_macro, !27, !"xg_on_macro", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq_midi_emul.c", i32 486, i32 29}
!28 = !{ptr @sysex.gs_pfx_macro, !29, !"gs_pfx_macro", i1 false, i1 false}
!29 = !{!"../sound/core/seq/seq_midi_emul.c", i32 495, i32 29}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148218616, i64 2148218621, i64 2148218634, i64 2148218678, i64 2148218712, i64 2148218733}
!40 = !{!"branch_weights", i32 1, i32 2000}
