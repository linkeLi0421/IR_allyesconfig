; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1_synth.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1_synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__UNIQUE_ID_author238 = internal constant [38 x i8] c"snd_emu10k1_synth.author=Takashi Iwai\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [78 x i8] c"snd_emu10k1_synth.description=Routines for control of EMU10K1 WaveTable synth\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [59 x i8] c"snd_emu10k1_synth.file=sound/pci/emu10k1/snd-emu10k1-synth\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [30 x i8] c"snd_emu10k1_synth.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_snd_emu10k1_synth__242_106_emu10k1_synth_driver_init6 = internal global ptr @emu10k1_synth_driver_init, section ".initcall6.init", align 4
@emu10k1_synth_driver = internal global { %struct.snd_seq_driver, [44 x i8] } { %struct.snd_seq_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @snd_emu10k1_synth_probe, ptr null, ptr @snd_emu10k1_synth_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, i32 16 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_emu10k1_synth_driver_exit = internal global ptr @emu10k1_synth_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_emu10k1_synth\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emu10k1-synth\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Emu10k1\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"emu10k1_synth_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 96, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 98, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 102, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../sound/pci/emu10k1/emu10k1_synth.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 55, i32 53 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_emu10k1_synth_driver_exit, ptr @__initcall__kmod_snd_emu10k1_synth__242_106_emu10k1_synth_driver_init6, ptr @emu10k1_synth_driver_exit, ptr @emu10k1_synth_driver, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_synth_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emu10k1_synth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__snd_seq_driver_register(ptr noundef nonnull @emu10k1_synth_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emu10k1_synth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_seq_driver_unregister(ptr noundef nonnull @emu10k1_synth_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_seq_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_synth_probe(ptr noundef %_dev) #2 align 64 {
entry:
  %emux = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_dev, i32 -112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emux) #5
  %0 = ptrtoint ptr %emux to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %emux, align 4, !annotation !27
  %add.ptr1 = getelementptr i8, ptr %_dev, i32 928
  %cmp = icmp eq ptr %add.ptr1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq_ports = getelementptr i8, ptr %_dev, i32 936
  %1 = ptrtoint ptr %seq_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %seq_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %max_voices = getelementptr i8, ptr %_dev, i32 940
  %3 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_voices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5 = icmp slt i32 %4, 1
  br i1 %cmp5, label %if.end4.if.end13.sink.split_crit_edge, label %if.else

if.end4.if.end13.sink.split_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp9 = icmp ugt i32 %4, 64
  br i1 %cmp9, label %if.else.if.end13.sink.split_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %if.end4.if.end13.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end4.if.end13.sink.split_crit_edge ], [ 64, %if.else.if.end13.sink.split_crit_edge ]
  %5 = ptrtoint ptr %max_voices to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %max_voices, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %call = call i32 @snd_emux_new(ptr noundef nonnull %emux) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %6 = ptrtoint ptr %emux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emux, align 4
  call void @snd_emu10k1_ops_setup(ptr noundef %7) #5
  %8 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr1, align 4
  %10 = ptrtoint ptr %emux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emux, align 4
  %hw17 = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %hw17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %hw17, align 4
  %13 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_voices, align 4
  %max_voices19 = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %max_voices19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_voices19, align 4
  %16 = ptrtoint ptr %seq_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq_ports, align 4
  %num_ports = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_ports, align 4
  %pitch_shift = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %pitch_shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -501, ptr %pitch_shift, align 4
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %9, i32 0, i32 19
  %20 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memhdr, align 4
  %memhdr21 = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 27
  %22 = ptrtoint ptr %memhdr21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %memhdr21, align 4
  %23 = load i32, ptr %seq_ports, align 4
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 2)
  %midi_ports = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 8
  %25 = ptrtoint ptr %midi_ports to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %midi_ports, align 4
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  %cond25 = select i1 %tobool.not, i32 1, i32 2
  %midi_devidx = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 9
  %28 = ptrtoint ptr %midi_devidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond25, ptr %midi_devidx, align 4
  %linear_panning = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 10
  %29 = ptrtoint ptr %linear_panning to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %linear_panning, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %linear_panning, align 4
  %hwdep_idx = getelementptr inbounds %struct.snd_emux, ptr %11, i32 0, i32 11
  %30 = ptrtoint ptr %hwdep_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %hwdep_idx, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %index = getelementptr i8, ptr %_dev, i32 932
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index, align 4
  %call26 = call i32 @snd_emux_register(ptr noundef %11, ptr noundef %32, i32 noundef %34, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %do.body31

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %emux to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %emux, align 4
  %call29 = call i32 @snd_emux_free(ptr noundef %36) #5
  br label %cleanup

do.body31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %voice_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %9, i32 0, i32 43
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #5
  %37 = ptrtoint ptr %emux to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %emux, align 4
  %synth = getelementptr inbounds %struct.snd_emu10k1, ptr %9, i32 0, i32 39
  %39 = ptrtoint ptr %synth to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %synth, align 4
  %get_synth_voice = getelementptr inbounds %struct.snd_emu10k1, ptr %9, i32 0, i32 40
  %40 = ptrtoint ptr %get_synth_voice to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @snd_emu10k1_synth_get_voice, ptr %get_synth_voice, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call35) #5
  %41 = ptrtoint ptr %emux to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %emux, align 4
  %driver_data = getelementptr i8, ptr %_dev, i32 -16
  %43 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %driver_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %if.then28, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then28 ], [ 0, %do.body31 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emux) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_synth_remove(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr i8, ptr %_dev, i32 -16
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hw2 = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw2, align 4
  %voice_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 43
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %voice_lock) #5
  %synth = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %synth to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %synth, align 4
  %get_synth_voice = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 40
  %5 = ptrtoint ptr %get_synth_voice to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %get_synth_voice, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %voice_lock, i32 noundef %call6) #5
  %call10 = tail call i32 @snd_emux_free(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ops_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_synth_get_voice(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_snd_emu10k1_synth__242_106_emu10k1_synth_driver_init6, !8, !"__initcall__kmod_snd_emu10k1_synth__242_106_emu10k1_synth_driver_init6", i1 false, i1 false}
!8 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 106, i32 1}
!9 = !{ptr @__exitcall_emu10k1_synth_driver_exit, !8, !"__exitcall_emu10k1_synth_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 98, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 102, i32 8}
!14 = !{ptr @emu10k1_synth_driver, !15, !"emu10k1_synth_driver", i1 false, i1 false}
!15 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 96, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/emu10k1/emu10k1_synth.c", i32 55, i32 53}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
