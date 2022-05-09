; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1_patch.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1_patch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.soundfont_sample_info = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32 }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sf_sample = type { %struct.soundfont_sample_info, i32, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/pci/emu10k1/emu10k1_patch.c\00", [62 x i8] zeroinitializer }, align 32
@snd_emu10k1_sample_new.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_emu10k1_synth\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_emu10k1_sample_new\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"emu: rom font for sample %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_emu10k1_sample_new.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"synth malloc failed (size=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 37, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 41, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [37 x i8] c"../sound/pci/emu10k1/emu10k1_patch.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 81, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_sample_new(ptr nocapture noundef readonly %rec, ptr noundef %sp, ptr noundef readnone %hdr, ptr noundef %data, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.snd_emux, ptr %rec, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tobool.not = icmp eq ptr %sp, null
  %tobool1.not = icmp eq ptr %hdr, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %size25 = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body27, label %if.end41

do.body27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_sample_new, %if.then36)) #3
          to label %cleanup [label %if.then36], !srcloc !20

if.then36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #5
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %sample = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 1
  %8 = ptrtoint ptr %sample to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sample, align 2
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug238, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %conv) #3
  br label %cleanup

if.end41:                                         ; preds = %if.end24
  %start = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 2
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 3
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  %sub = sub i32 %13, %11
  store i32 %sub, ptr %end, align 4
  %loopstart = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 4
  %14 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %loopstart, align 4
  %sub47 = sub i32 %15, %11
  store i32 %sub47, ptr %loopstart, align 4
  %loopend51 = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 5
  %16 = ptrtoint ptr %loopend51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loopend51, align 4
  %sub52 = sub i32 %17, %11
  store i32 %sub52, ptr %loopend51, align 4
  store i32 0, ptr %start, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %3)
  %19 = tail call i32 @llvm.smin.i32(i32 %sub52, i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47, i32 %sub52)
  %cmp75.not = icmp slt i32 %sub47, %sub52
  br i1 %cmp75.not, label %if.end41.if.end89_crit_edge, label %do.body78

if.end41.if.end89_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end89

do.body78:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %loopstart to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub52, ptr %loopstart, align 4
  %21 = ptrtoint ptr %loopend51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub47, ptr %loopend51, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.body78, %if.end41.if.end89_crit_edge
  %mode_flags = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 8
  %22 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mode_flags, align 2
  %24 = and i16 %23, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool94.not = icmp eq i16 %24, 0
  %spec.select353.v = select i1 %tobool94.not, i32 32, i32 44
  %spec.select353 = add i32 %spec.select353.v, %3
  %25 = and i16 %23, 1
  %26 = xor i16 %25, 1
  %27 = zext i16 %26 to i32
  %blocksize.0 = shl i32 %spec.select353, %27
  %call105 = tail call ptr @snd_emu10k1_synth_alloc(ptr noundef %1, i32 noundef %blocksize.0) #3
  %block = getelementptr inbounds %struct.snd_sf_sample, ptr %sp, i32 0, i32 2
  %28 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call105, ptr %block, align 4
  %cmp107 = icmp eq ptr %call105, null
  br i1 %cmp107, label %do.body110, label %if.end128

do.body110:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_emu10k1_sample_new, %if.then122)) #3
          to label %cleanup [label %if.then122], !srcloc !20

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #5
  %card123 = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 32
  %29 = ptrtoint ptr %card123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card123, align 4
  %dev124 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev124, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug239, ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %blocksize.0) #3
  br label %cleanup

if.end128:                                        ; preds = %if.end89
  %truesize130 = getelementptr inbounds %struct.soundfont_sample_info, ptr %sp, i32 0, i32 9
  %33 = ptrtoint ptr %truesize130 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %blocksize.0, ptr %truesize130, align 4
  %34 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mode_flags, align 2
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool135.not = icmp eq i16 %36, 0
  %spec.select354 = select i1 %tobool135.not, i32 64, i32 32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select354, i32 %blocksize.0)
  %cmp140 = icmp sgt i32 %spec.select354, %blocksize.0
  br i1 %cmp140, label %if.end128.cleanup_crit_edge, label %if.end143

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end143:                                        ; preds = %if.end128
  %call145 = tail call i32 @snd_emu10k1_synth_bzero(ptr noundef %1, ptr noundef nonnull %call105, i32 noundef 0, i32 noundef %spec.select354) #3
  %37 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mode_flags, align 2
  %39 = and i16 %38, 1
  %40 = xor i16 %39, 1
  %41 = zext i16 %40 to i32
  %spec.select355 = shl i32 %19, %41
  %add155 = add i32 %spec.select355, %spec.select354
  call void @__sanitizer_cov_trace_cmp4(i32 %add155, i32 %blocksize.0)
  %cmp156 = icmp sgt i32 %add155, %blocksize.0
  br i1 %cmp156, label %if.end143.cleanup_crit_edge, label %if.end159

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end159:                                        ; preds = %if.end143
  %42 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block, align 4
  %call161 = tail call i32 @snd_emu10k1_synth_copy_from_user(ptr noundef %1, ptr noundef %43, i32 noundef %spec.select354, ptr noundef %data, i32 noundef %spec.select355) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end167, label %if.then163

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %block, align 4
  %call165 = tail call i32 @snd_emu10k1_synth_free(ptr noundef %1, ptr noundef %45) #3
  %46 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %block, align 4
  br label %cleanup

if.end167:                                        ; preds = %if.end159
  %47 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size25, align 4
  %sub171 = sub i32 %48, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub171)
  %cmp172 = icmp slt i32 %sub171, 0
  br i1 %cmp172, label %if.end167.cleanup_crit_edge, label %if.end175

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end175:                                        ; preds = %if.end167
  %add.ptr = getelementptr i8, ptr %data, i32 %spec.select355
  %49 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mode_flags, align 2
  %51 = and i16 %50, 1
  %52 = xor i16 %51, 1
  %53 = zext i16 %52 to i32
  %spec.select356 = shl nuw i32 %sub171, %53
  %54 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %block, align 4
  %call185 = tail call i32 @snd_emu10k1_synth_copy_from_user(ptr noundef %1, ptr noundef %55, i32 noundef %add155, ptr noundef %add.ptr, i32 noundef %spec.select356) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end191, label %if.then187

if.then187:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %block, align 4
  %call189 = tail call i32 @snd_emu10k1_synth_free(ptr noundef %1, ptr noundef %57) #3
  %58 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %block, align 4
  br label %cleanup

if.end191:                                        ; preds = %if.end175
  %add192 = add i32 %spec.select356, %add155
  call void @__sanitizer_cov_trace_cmp4(i32 %blocksize.0, i32 %add192)
  %cmp193 = icmp sgt i32 %blocksize.0, %add192
  br i1 %cmp193, label %if.then195, label %if.end191.if.end199_crit_edge

if.end191.if.end199_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end199

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %block, align 4
  %sub197 = sub i32 %blocksize.0, %add192
  %call198 = tail call i32 @snd_emu10k1_synth_bzero(ptr noundef %1, ptr noundef %60, i32 noundef %add192, i32 noundef %sub197) #3
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %if.end191.if.end199_crit_edge
  %61 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mode_flags, align 2
  %63 = and i16 %62, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %63)
  %.not = icmp eq i16 %63, 12
  br i1 %.not, label %if.then211, label %if.end199.if.end223_crit_edge

if.end199.if.end223_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end223

if.then211:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end, align 4
  %add214 = add i32 %65, 4
  %66 = ptrtoint ptr %loopstart to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add214, ptr %loopstart, align 4
  %add219 = add i32 %65, 8
  %67 = ptrtoint ptr %loopend51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add219, ptr %loopend51, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then211, %if.end199.if.end223_crit_edge
  %68 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool228.not = icmp eq i16 %68, 0
  %spec.select357 = select i1 %tobool228.not, i32 32, i32 64
  %69 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %start, align 4
  %add233 = add i32 %70, %spec.select357
  store i32 %add233, ptr %start, align 4
  %71 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %end, align 4
  %add236 = add i32 %72, %spec.select357
  store i32 %add236, ptr %end, align 4
  %73 = ptrtoint ptr %loopstart to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %loopstart, align 4
  %add239 = add i32 %74, %spec.select357
  store i32 %add239, ptr %loopstart, align 4
  %75 = ptrtoint ptr %loopend51 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %loopend51, align 4
  %add242 = add i32 %76, %spec.select357
  store i32 %add242, ptr %loopend51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end223, %if.then187, %if.end167.cleanup_crit_edge, %if.then163, %if.end143.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %if.then122, %do.body110, %if.then36, %do.body27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -14, %if.then163 ], [ -14, %if.then187 ], [ 0, %if.end223 ], [ 0, %if.then36 ], [ -28, %if.then122 ], [ -22, %if.end128.cleanup_crit_edge ], [ -22, %if.end143.cleanup_crit_edge ], [ -22, %if.end167.cleanup_crit_edge ], [ 0, %do.body27 ], [ -28, %do.body110 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_emu10k1_synth_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_synth_bzero(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_synth_copy_from_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_synth_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_sample_free(ptr nocapture noundef readonly %rec, ptr noundef %sp, ptr noundef readnone %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.snd_emux, ptr %rec, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %tobool.not = icmp eq ptr %sp, null
  %tobool1.not = icmp eq ptr %hdr, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %block = getelementptr inbounds %struct.snd_sf_sample, ptr %sp, i32 0, i32 2
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @snd_emu10k1_synth_free(ptr noundef %1, ptr noundef nonnull %3) #3
  %4 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then26 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1_patch.c", i32 37, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1_patch.c", i32 41, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug238, !3, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/pci/emu10k1/emu10k1_patch.c", i32 81, i32 3}
!9 = !{ptr @snd_emu10k1_sample_new.__UNIQUE_ID_ddebug239, !8, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148882145, i64 2148882150, i64 2148882163, i64 2148882207, i64 2148882241, i64 2148882262}
