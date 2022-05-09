; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux.c_pt.bc'
source_filename = "../sound/synth/emux/emux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_emux_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_new\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emux_register\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_register\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emux_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emux_free\09\09\09\09"
module asm "\09.long\09__crc_snd_emux_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emux_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emux_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emux_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.snd_sf_callback = type { ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author189 = internal constant [35 x i8] c"snd_emux_synth.author=Takashi Iwai\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [70 x i8] c"snd_emux_synth.description=Routines for control of EMU WaveTable chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [52 x i8] c"snd_emux_synth.file=sound/synth/emux/snd-emux-synth\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [27 x i8] c"snd_emux_synth.license=GPL\00", section ".modinfo", align 1
@snd_emux_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&emu->voice_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_emux_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&emu->register_mutex\00", [43 x i8] zeroinitializer }, align 32
@snd_emux_new.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&emu->tlist)\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emux_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_new to i32), ptr @__kstrtab_snd_emux_new, ptr @__kstrtabns_snd_emux_new }, section "___ksymtab+snd_emux_new", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/synth/emux/emux.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emux_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_register to i32), ptr @__kstrtab_snd_emux_register, ptr @__kstrtabns_snd_emux_register }, section "___ksymtab+snd_emux_register", align 4
@__kstrtab_snd_emux_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emux_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emux_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emux_free to i32), ptr @__kstrtab_snd_emux_free, ptr @__kstrtabns_snd_emux_free }, section "___ksymtab+snd_emux_free", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 33, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 34, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 43, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [27 x i8] c"../sound/synth/emux/emux.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 82, i32 6 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__ksymtab_snd_emux_free, ptr @__ksymtab_snd_emux_new, ptr @__ksymtab_snd_emux_register, ptr @snd_emux_new.__key, ptr @.str, ptr @snd_emux_new.__key.1, ptr @.str.2, ptr @snd_emux_new.__key.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emux_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emux_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emux_new.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_new(ptr nocapture noundef writeonly %remu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %remu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %remu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 596) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %voice_lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_emux_new.__key, i16 noundef signext 3) #6
  %register_mutex = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %register_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_emux_new.__key.1) #6
  %client = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %client, align 4
  %oss_synth = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 29
  %3 = ptrtoint ptr %oss_synth to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %oss_synth, align 8
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %max_voices to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_voices, align 4
  %use_time = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %use_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %use_time, align 8
  %tlist = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 25
  tail call void @init_timer_key(ptr noundef %tlist, ptr noundef nonnull @snd_emux_timer_callback, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_emux_new.__key.3) #6
  %timer_active = getelementptr inbounds %struct.snd_emux, ptr %call7.i.i, i32 0, i32 26
  %6 = ptrtoint ptr %timer_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %timer_active, align 4
  %7 = ptrtoint ptr %remu to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %remu, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_timer_callback(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_register(ptr noundef %emu, ptr noundef %card, i32 noundef %index, ptr noundef %name) #0 align 64 {
entry:
  %sf_cb = alloca %struct.snd_sf_callback, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sf_cb) #6
  %0 = getelementptr inbounds %struct.snd_sf_callback, ptr %sf_cb, i32 0, i32 1
  %1 = getelementptr inbounds %struct.snd_sf_callback, ptr %sf_cb, i32 0, i32 2
  %2 = getelementptr inbounds %struct.snd_sf_callback, ptr %sf_cb, i32 0, i32 3
  %hw = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 6
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %5 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %lor.rhs.do.end_crit_edge, label %if.end22, !prof !33

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 82, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %lor.rhs
  %tobool24.not = icmp eq ptr %card, null
  %tobool26.not = icmp eq ptr %name, null
  %spec.select = or i1 %tobool24.not, %tobool26.not
  br i1 %spec.select, label %do.end45, label %if.end61, !prof !33

do.end45:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 84, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end61:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %emu to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %card, ptr %emu, align 4
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #6
  %name63 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 23
  %8 = ptrtoint ptr %name63 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %name63, align 4
  %9 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_voices, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 168) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !33

kcalloc.exit.thread:                              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %voices128 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %13 = ptrtoint ptr %voices128 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %voices128, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end61
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #10
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %15 = ptrtoint ptr %voices to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %voices, align 4
  %16 = ptrtoint ptr %name63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name63, align 4
  %cmp67 = icmp eq ptr %17, null
  %cmp69 = icmp eq ptr %call8.i.i, null
  %or.cond = select i1 %cmp67, i1 true, i1 %cmp69
  br i1 %or.cond, label %if.end7.i.i.cleanup_crit_edge, label %if.end71

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end7.i.i
  %18 = getelementptr inbounds i8, ptr %sf_cb, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 12)
  %20 = ptrtoint ptr %sf_cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %emu, ptr %sf_cb, align 4
  %sample_new = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 9
  %21 = ptrtoint ptr %sample_new to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sample_new, align 4
  %tobool72.not = icmp eq ptr %22, null
  br i1 %tobool72.not, label %if.end71.if.end75_crit_edge, label %if.then73

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sf_sample_new, ptr %0, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71.if.end75_crit_edge
  %sample_free = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 10
  %24 = ptrtoint ptr %sample_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sample_free, align 4
  %tobool77.not = icmp eq ptr %25, null
  br i1 %tobool77.not, label %if.end75.if.end80_crit_edge, label %if.then78

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sf_sample_free, ptr %1, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end75.if.end80_crit_edge
  %sample_reset = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5, i32 11
  %27 = ptrtoint ptr %sample_reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sample_reset, align 4
  %tobool82.not = icmp eq ptr %28, null
  br i1 %tobool82.not, label %if.end80.if.end85_crit_edge, label %if.then83

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sf_sample_reset, ptr %2, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end80.if.end85_crit_edge
  %memhdr = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 27
  %30 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %memhdr, align 4
  %call86 = call ptr @snd_sf_new(ptr noundef nonnull %sf_cb, ptr noundef %31) #6
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 14
  %32 = ptrtoint ptr %sflist to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call86, ptr %sflist, align 4
  %cmp88 = icmp eq ptr %call86, null
  br i1 %cmp88, label %if.end85.cleanup_crit_edge, label %if.end90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %call91 = call i32 @snd_emux_init_hwdep(ptr noundef %emu) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end94

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_emux_init_voices(ptr noundef %emu) #6
  %call95 = call i32 @snd_emux_init_seq(ptr noundef %emu, ptr noundef nonnull %card, i32 noundef %index) #6
  call void @snd_emux_init_seq_oss(ptr noundef %emu) #6
  %call96 = call i32 @snd_emux_init_virmidi(ptr noundef %emu, ptr noundef nonnull %card) #6
  call void @snd_emux_proc_init(ptr noundef %emu, ptr noundef nonnull %card, i32 noundef %index) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end90.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end45, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end45 ], [ 0, %if.end94 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end85.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sf_cb) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_sample_new(ptr noundef %private_data, ptr noundef %sp, ptr noundef %hdr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_new = getelementptr inbounds %struct.snd_emux, ptr %private_data, i32 0, i32 5, i32 9
  %0 = ptrtoint ptr %sample_new to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sample_new, align 4
  %call = tail call i32 %1(ptr noundef %private_data, ptr noundef %sp, ptr noundef %hdr, ptr noundef %buf, i32 noundef %count) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sf_sample_free(ptr noundef %private_data, ptr noundef %sp, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_free = getelementptr inbounds %struct.snd_emux, ptr %private_data, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %sample_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sample_free, align 4
  %call = tail call i32 %1(ptr noundef %private_data, ptr noundef %sp, ptr noundef %hdr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sf_sample_reset(ptr noundef %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sample_reset = getelementptr inbounds %struct.snd_emux, ptr %private_data, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %sample_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sample_reset, align 4
  tail call void %1(ptr noundef %private_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sf_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_init_hwdep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_init_voices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_init_seq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_init_seq_oss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_init_virmidi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_proc_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_free(ptr noundef %emu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %emu, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %voice_lock = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #6
  %timer_active = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 26
  %0 = ptrtoint ptr %timer_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %do.body1.if.end8_crit_edge, label %if.then6

do.body1.if.end8_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %tlist = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 25
  %call7 = tail call i32 @del_timer(ptr noundef %tlist) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body1.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call2) #6
  tail call void @snd_emux_proc_free(ptr noundef nonnull %emu) #6
  %call10 = tail call i32 @snd_emux_delete_virmidi(ptr noundef nonnull %emu) #6
  tail call void @snd_emux_detach_seq_oss(ptr noundef nonnull %emu) #6
  tail call void @snd_emux_detach_seq(ptr noundef nonnull %emu) #6
  tail call void @snd_emux_delete_hwdep(ptr noundef nonnull %emu) #6
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 14
  %2 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sflist, align 4
  tail call void @snd_sf_free(ptr noundef %3) #6
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %4 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voices, align 4
  tail call void @kfree(ptr noundef %5) #6
  %name = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 23
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %7) #6
  tail call void @kfree(ptr noundef nonnull %emu) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_proc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_delete_virmidi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_detach_seq_oss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_detach_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_delete_hwdep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/synth/emux/emux.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @snd_emux_new.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../sound/synth/emux/emux.c", i32 33, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_emux_new.__key.1, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/synth/emux/emux.c", i32 34, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @snd_emux_new.__key.3, !14, !"__key", i1 false, i1 false}
!14 = !{!"../sound/synth/emux/emux.c", i32 43, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_snd_emux_new, !17, !"__ksymtab_snd_emux_new", i1 false, i1 false}
!17 = !{!"../sound/synth/emux/emux.c", i32 50, i32 1}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/synth/emux/emux.c", i32 82, i32 6}
!20 = !{ptr @__ksymtab_snd_emux_register, !21, !"__ksymtab_snd_emux_register", i1 false, i1 false}
!21 = !{!"../sound/synth/emux/emux.c", i32 123, i32 1}
!22 = !{ptr @__ksymtab_snd_emux_free, !23, !"__ksymtab_snd_emux_free", i1 false, i1 false}
!23 = !{!"../sound/synth/emux/emux.c", i32 153, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
