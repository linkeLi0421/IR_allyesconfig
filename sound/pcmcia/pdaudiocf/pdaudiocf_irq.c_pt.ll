; ModuleID = '/llk/IR_all_yes/sound/pcmcia/pdaudiocf/pdaudiocf_irq.c_pt.bc'
source_filename = "../sound/pcmcia/pdaudiocf/pdaudiocf_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pdacf = type { ptr, i32, i32, i32, %struct.mutex, [8 x i16], i16, %struct.spinlock, ptr, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/pcmcia/pdaudiocf/pdaudiocf_irq.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013PDAUDIOCF SRAM buffer overrun detected!\0A\00", [53 x i8] zeroinitializer }, align 32
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [42 x i8] c"../sound/pcmcia/pdaudiocf/pdaudiocf_irq.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 30, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pdacf_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 10
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #4, !srcloc !15
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %conv = zext i16 %6 to i32
  %and4 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then5

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then5:                                         ; preds = %if.end
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then5.if.end10_crit_edge, label %if.then9

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @.str.1) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5.if.end10_crit_edge
  %pcm_substream = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 11
  %7 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm_substream, align 4
  %tobool11.not = icmp eq ptr %8, null
  %phi.sel = select i1 %tobool11.not, i32 1, i32 2
  br label %if.end21

if.end21:                                         ; preds = %if.end10, %if.end.if.end21_crit_edge
  %wake_thread.1.off0 = phi i32 [ 1, %if.end.if.end21_crit_edge ], [ %phi.sel, %if.end10 ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @__irq_regs to i32)
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp23.not = icmp eq ptr %17, null
  br i1 %cmp23.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ak4117, align 4
  %call26 = tail call i32 @snd_ak4117_check_rate_and_errors(ptr noundef %19, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %wake_thread.1.off0, %if.then25 ], [ %wake_thread.1.off0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4117_check_rate_and_errors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pdacf_threaded_irq(i32 noundef %irq, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_substream = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm_substream, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %lor.lhs.false4.cleanup_crit_edge [
    i32 3, label %lor.lhs.false4.if.end7_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

lor.lhs.false4.if.end7_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_pcm_running.exit:                             ; preds = %lor.lhs.false4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i.not = icmp eq i32 %12, 0
  br i1 %cmp5.i.not, label %snd_pcm_running.exit.if.end7_crit_edge, label %snd_pcm_running.exit.cleanup_crit_edge

snd_pcm_running.exit.cleanup_crit_edge:           ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_pcm_running.exit.if.end7_crit_edge:           ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %snd_pcm_running.exit.if.end7_crit_edge, %lor.lhs.false4.if.end7_crit_edge
  %port = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add = add i32 %14, 4
  %and8 = and i32 %add, 1048575
  %add9 = or i32 %and8, -18874368
  %15 = inttoptr i32 %add9 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #4, !srcloc !15
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add14 = add i32 %19, 2
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %20 = inttoptr i32 %add16 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #4, !srcloc !15
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %conv20 = zext i16 %22 to i32
  %sub = sub nsw i32 %conv20, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  %add24 = add nsw i32 %sub, 65536
  %spec.select = select i1 %cmp21, i32 %add24, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp26 = icmp eq i32 %spec.select, 0
  %spec.store.select = select i1 %cmp26, i32 65536, i32 %spec.select
  %pcm_frame = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 16
  %23 = ptrtoint ptr %pcm_frame to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm_frame, align 4
  %div = udiv i32 %spec.store.select, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp30 = icmp ugt i32 %div, 64
  %sub33 = add nsw i32 %div, -32
  %size.1 = select i1 %cmp30, i32 %sub33, i32 %div
  %pcm_hwptr = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 22
  %25 = ptrtoint ptr %pcm_hwptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcm_hwptr, align 4
  %pcm_tdone = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 21
  %27 = ptrtoint ptr %pcm_tdone to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcm_tdone, align 4
  %pcm_size = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcm_size, align 4
  %add37 = add i32 %28, %size.1
  store i32 %add37, ptr %pcm_tdone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %cmp38133.not = icmp eq i32 %size.1, 0
  br i1 %cmp38133.not, label %if.end7.while.end_crit_edge, label %while.body.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %add35 = add i32 %28, %26
  %rem = urem i32 %add35, %30
  %pcm_xor.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 18
  %pcm_sample.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 17
  %pcm_swab.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 14
  %pcm_channels26.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 13
  %pcm_area81.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 23
  %pcm_little.i = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %pdacf_transfer.exit.while.body_crit_edge, %while.body.lr.ph
  %size.2136 = phi i32 [ %size.1, %while.body.lr.ph ], [ %sub49, %pdacf_transfer.exit.while.body_crit_edge ]
  %off.0134 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem48, %pdacf_transfer.exit.while.body_crit_edge ]
  %31 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcm_size, align 4
  %sub41 = sub i32 %32, %off.0134
  %33 = tail call i32 @llvm.smin.i32(i32 %sub41, i32 %size.2136)
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %36 = ptrtoint ptr %pcm_xor.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcm_xor.i, align 4
  %38 = ptrtoint ptr %pcm_sample.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcm_sample.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i = icmp eq i32 %39, 3
  br i1 %cmp.i, label %if.then.i, label %if.end22.i

if.then.i:                                        ; preds = %while.body
  %40 = ptrtoint ptr %pcm_little.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pcm_little.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %pcm_channels26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcm_channels26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp9.i = icmp eq i32 %43, 1
  br i1 %tobool.not.i, label %if.else7.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  br i1 %cmp9.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then1.i
  %conv.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not33.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not33.i.i, label %if.then3.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i.i

if.then3.i.pdacf_transfer.exit_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i.i:                             ; preds = %if.then3.i
  %44 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcm_area81.i, align 4
  %mul.i = mul i32 %off.0134, 3
  %add.ptr.i = getelementptr i8, ptr %45, i32 %mul.i
  %and.i.i = and i32 %35, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %46 = inttoptr i32 %add.i.i to ptr
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dst.addr.035.i.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i.i ], [ %incdec.ptr25.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %size.addr.034.i.i = phi i32 [ %33, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %size.addr.034.i.i, -1
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #4, !srcloc !15
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %xor1832.i.i = xor i16 %49, %conv.i
  %51 = lshr i16 %xor1832.i.i, 8
  %conv19.i.i = trunc i16 %51 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %dst.addr.035.i.i, i32 1
  %52 = ptrtoint ptr %dst.addr.035.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv19.i.i, ptr %dst.addr.035.i.i, align 1
  %conv21.i.i = trunc i16 %48 to i8
  %incdec.ptr22.i.i = getelementptr i8, ptr %dst.addr.035.i.i, i32 2
  %53 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv21.i.i, ptr %incdec.ptr.i.i, align 1
  %shr23.i.i = lshr i16 %48, 8
  %conv24.i.i = trunc i16 %shr23.i.i to i8
  %incdec.ptr25.i.i = getelementptr i8, ptr %dst.addr.035.i.i, i32 3
  %54 = ptrtoint ptr %incdec.ptr22.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv24.i.i, ptr %incdec.ptr22.i.i, align 1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.pdacf_transfer.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.pdacf_transfer.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not53.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not53.i.i, label %if.else.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i158.i

if.else.i.pdacf_transfer.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i158.i:                          ; preds = %if.else.i
  %55 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcm_area81.i, align 4
  %mul5.i = mul i32 %off.0134, 6
  %add.ptr6.i = getelementptr i8, ptr %56, i32 %mul5.i
  %and.i156.i = and i32 %35, 1048575
  %add.i157.i = or i32 %and.i156.i, -18874368
  %57 = inttoptr i32 %add.i157.i to ptr
  br label %while.body.i163.i

while.body.i163.i:                                ; preds = %while.body.i163.i.while.body.i163.i_crit_edge, %while.body.lr.ph.i158.i
  %dst.addr.055.i.i = phi ptr [ %add.ptr6.i, %while.body.lr.ph.i158.i ], [ %incdec.ptr39.i.i, %while.body.i163.i.while.body.i163.i_crit_edge ]
  %size.addr.054.i.i = phi i32 [ %33, %while.body.lr.ph.i158.i ], [ %dec.i159.i, %while.body.i163.i.while.body.i163.i_crit_edge ]
  %dec.i159.i = add i32 %size.addr.054.i.i, -1
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %57) #4, !srcloc !15
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %57) #4, !srcloc !15
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %57) #4, !srcloc !15
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %conv.i.i = zext i16 %61 to i32
  %shl.i.i = shl i32 %conv.i.i, 24
  %conv15.i.i = zext i16 %59 to i32
  %shl16.i.i = shl nuw nsw i32 %conv15.i.i, 8
  %or.i.i = or i32 %shl.i.i, %shl16.i.i
  %xor17.i.i = xor i32 %or.i.i, %37
  %conv18.i.i = zext i16 %63 to i32
  %shl19.i.i = shl nuw i32 %conv18.i.i, 16
  %and21.i.i = and i32 %conv.i.i, 65280
  %or22.i.i = or i32 %shl19.i.i, %and21.i.i
  %xor23.i.i = xor i32 %or22.i.i, %37
  %shr.i.i = lshr i32 %xor17.i.i, 8
  %conv24.i160.i = trunc i32 %shr.i.i to i8
  %incdec.ptr.i161.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 1
  %64 = ptrtoint ptr %dst.addr.055.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv24.i160.i, ptr %dst.addr.055.i.i, align 1
  %shr25.i.i = lshr i32 %xor17.i.i, 16
  %conv26.i.i = trunc i32 %shr25.i.i to i8
  %incdec.ptr27.i.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 2
  %65 = ptrtoint ptr %incdec.ptr.i161.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv26.i.i, ptr %incdec.ptr.i161.i, align 1
  %shr28.i.i = lshr i32 %xor17.i.i, 24
  %conv29.i.i = trunc i32 %shr28.i.i to i8
  %incdec.ptr30.i.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 3
  %66 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv29.i.i, ptr %incdec.ptr27.i.i, align 1
  %shr31.i.i = lshr i32 %xor23.i.i, 8
  %conv32.i.i = trunc i32 %shr31.i.i to i8
  %incdec.ptr33.i.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 4
  %67 = ptrtoint ptr %incdec.ptr30.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv32.i.i, ptr %incdec.ptr30.i.i, align 1
  %shr34.i.i = lshr i32 %xor23.i.i, 16
  %conv35.i.i = trunc i32 %shr34.i.i to i8
  %incdec.ptr36.i.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 5
  %68 = ptrtoint ptr %incdec.ptr33.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv35.i.i, ptr %incdec.ptr33.i.i, align 1
  %shr37.i.i = lshr i32 %xor23.i.i, 24
  %conv38.i.i = trunc i32 %shr37.i.i to i8
  %incdec.ptr39.i.i = getelementptr i8, ptr %dst.addr.055.i.i, i32 6
  %69 = ptrtoint ptr %incdec.ptr36.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv38.i.i, ptr %incdec.ptr36.i.i, align 1
  %cmp.not.i162.i = icmp eq i32 %dec.i159.i, 0
  br i1 %cmp.not.i162.i, label %while.body.i163.i.pdacf_transfer.exit_crit_edge, label %while.body.i163.i.while.body.i163.i_crit_edge

while.body.i163.i.while.body.i163.i_crit_edge:    ; preds = %while.body.i163.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i163.i

while.body.i163.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i163.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else7.i:                                       ; preds = %if.then.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else7.i
  %conv15.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not33.i164.i = icmp eq i32 %33, 0
  br i1 %cmp.not33.i164.i, label %if.then11.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i167.i

if.then11.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i167.i:                          ; preds = %if.then11.i
  %70 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcm_area81.i, align 4
  %mul13.i = mul i32 %off.0134, 3
  %add.ptr14.i = getelementptr i8, ptr %71, i32 %mul13.i
  %and.i165.i = and i32 %35, 1048575
  %add.i166.i = or i32 %and.i165.i, -18874368
  %72 = inttoptr i32 %add.i166.i to ptr
  br label %while.body.i180.i

while.body.i180.i:                                ; preds = %while.body.i180.i.while.body.i180.i_crit_edge, %while.body.lr.ph.i167.i
  %dst.addr.035.i168.i = phi ptr [ %add.ptr14.i, %while.body.lr.ph.i167.i ], [ %incdec.ptr25.i178.i, %while.body.i180.i.while.body.i180.i_crit_edge ]
  %size.addr.034.i169.i = phi i32 [ %33, %while.body.lr.ph.i167.i ], [ %dec.i170.i, %while.body.i180.i.while.body.i180.i_crit_edge ]
  %dec.i170.i = add i32 %size.addr.034.i169.i, -1
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %72) #4, !srcloc !15
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %72) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %72) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %xor1832.i171.i = xor i16 %75, %conv15.i
  %shr.i172.i = lshr i16 %74, 8
  %conv19.i173.i = trunc i16 %shr.i172.i to i8
  %incdec.ptr.i174.i = getelementptr i8, ptr %dst.addr.035.i168.i, i32 1
  %77 = ptrtoint ptr %dst.addr.035.i168.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv19.i173.i, ptr %dst.addr.035.i168.i, align 1
  %conv21.i175.i = trunc i16 %74 to i8
  %incdec.ptr22.i176.i = getelementptr i8, ptr %dst.addr.035.i168.i, i32 2
  %78 = ptrtoint ptr %incdec.ptr.i174.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv21.i175.i, ptr %incdec.ptr.i174.i, align 1
  %79 = lshr i16 %xor1832.i171.i, 8
  %conv24.i177.i = trunc i16 %79 to i8
  %incdec.ptr25.i178.i = getelementptr i8, ptr %dst.addr.035.i168.i, i32 3
  %80 = ptrtoint ptr %incdec.ptr22.i176.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv24.i177.i, ptr %incdec.ptr22.i176.i, align 1
  %cmp.not.i179.i = icmp eq i32 %dec.i170.i, 0
  br i1 %cmp.not.i179.i, label %while.body.i180.i.pdacf_transfer.exit_crit_edge, label %while.body.i180.i.while.body.i180.i_crit_edge

while.body.i180.i.while.body.i180.i_crit_edge:    ; preds = %while.body.i180.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i180.i

while.body.i180.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i180.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else16.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not53.i181.i = icmp eq i32 %33, 0
  br i1 %cmp.not53.i181.i, label %if.else16.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i184.i

if.else16.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i184.i:                          ; preds = %if.else16.i
  %81 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcm_area81.i, align 4
  %mul18.i = mul i32 %off.0134, 6
  %add.ptr19.i = getelementptr i8, ptr %82, i32 %mul18.i
  %and.i182.i = and i32 %35, 1048575
  %add.i183.i = or i32 %and.i182.i, -18874368
  %83 = inttoptr i32 %add.i183.i to ptr
  br label %while.body.i218.i

while.body.i218.i:                                ; preds = %while.body.i218.i.while.body.i218.i_crit_edge, %while.body.lr.ph.i184.i
  %dst.addr.055.i185.i = phi ptr [ %add.ptr19.i, %while.body.lr.ph.i184.i ], [ %incdec.ptr39.i216.i, %while.body.i218.i.while.body.i218.i_crit_edge ]
  %size.addr.054.i186.i = phi i32 [ %33, %while.body.lr.ph.i184.i ], [ %dec.i187.i, %while.body.i218.i.while.body.i218.i_crit_edge ]
  %dec.i187.i = add i32 %size.addr.054.i186.i, -1
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %83) #4, !srcloc !15
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %83) #4, !srcloc !15
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %88 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %83) #4, !srcloc !15
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %conv.i188.i = zext i16 %87 to i32
  %shl.i189.i = shl i32 %conv.i188.i, 24
  %conv15.i190.i = zext i16 %85 to i32
  %shl16.i191.i = shl nuw nsw i32 %conv15.i190.i, 8
  %or.i192.i = or i32 %shl.i189.i, %shl16.i191.i
  %xor17.i193.i = xor i32 %or.i192.i, %37
  %conv18.i194.i = zext i16 %89 to i32
  %shl19.i195.i = shl nuw i32 %conv18.i194.i, 16
  %and21.i196.i = and i32 %conv.i188.i, 65280
  %or22.i197.i = or i32 %shl19.i195.i, %and21.i196.i
  %xor23.i198.i = xor i32 %or22.i197.i, %37
  %shr.i199.i = lshr i32 %xor17.i193.i, 24
  %conv24.i200.i = trunc i32 %shr.i199.i to i8
  %incdec.ptr.i201.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 1
  %90 = ptrtoint ptr %dst.addr.055.i185.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv24.i200.i, ptr %dst.addr.055.i185.i, align 1
  %shr25.i202.i = lshr i32 %xor17.i193.i, 16
  %conv26.i203.i = trunc i32 %shr25.i202.i to i8
  %incdec.ptr27.i204.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 2
  %91 = ptrtoint ptr %incdec.ptr.i201.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv26.i203.i, ptr %incdec.ptr.i201.i, align 1
  %shr28.i205.i = lshr i32 %xor17.i193.i, 8
  %conv29.i206.i = trunc i32 %shr28.i205.i to i8
  %incdec.ptr30.i207.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 3
  %92 = ptrtoint ptr %incdec.ptr27.i204.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv29.i206.i, ptr %incdec.ptr27.i204.i, align 1
  %shr31.i208.i = lshr i32 %xor23.i198.i, 24
  %conv32.i209.i = trunc i32 %shr31.i208.i to i8
  %incdec.ptr33.i210.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 4
  %93 = ptrtoint ptr %incdec.ptr30.i207.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv32.i209.i, ptr %incdec.ptr30.i207.i, align 1
  %shr34.i211.i = lshr i32 %xor23.i198.i, 16
  %conv35.i212.i = trunc i32 %shr34.i211.i to i8
  %incdec.ptr36.i213.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 5
  %94 = ptrtoint ptr %incdec.ptr33.i210.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv35.i212.i, ptr %incdec.ptr33.i210.i, align 1
  %shr37.i214.i = lshr i32 %xor23.i198.i, 8
  %conv38.i215.i = trunc i32 %shr37.i214.i to i8
  %incdec.ptr39.i216.i = getelementptr i8, ptr %dst.addr.055.i185.i, i32 6
  %95 = ptrtoint ptr %incdec.ptr36.i213.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv38.i215.i, ptr %incdec.ptr36.i213.i, align 1
  %cmp.not.i217.i = icmp eq i32 %dec.i187.i, 0
  br i1 %cmp.not.i217.i, label %while.body.i218.i.pdacf_transfer.exit_crit_edge, label %while.body.i218.i.while.body.i218.i_crit_edge

while.body.i218.i.while.body.i218.i_crit_edge:    ; preds = %while.body.i218.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i218.i

while.body.i218.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i218.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.end22.i:                                       ; preds = %while.body
  %96 = ptrtoint ptr %pcm_swab.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pcm_swab.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp23.i = icmp eq i32 %97, 0
  %98 = ptrtoint ptr %pcm_channels26.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pcm_channels26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp27.i = icmp eq i32 %99, 1
  %100 = ptrtoint ptr %pcm_frame to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pcm_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp30.i = icmp eq i32 %101, 2
  br i1 %cmp23.i, label %if.then25.i, label %if.else55.i

if.then25.i:                                      ; preds = %if.end22.i
  br i1 %cmp27.i, label %if.then29.i, label %if.else40.i

if.then29.i:                                      ; preds = %if.then25.i
  br i1 %cmp30.i, label %if.then32.i, label %if.else36.i

if.then32.i:                                      ; preds = %if.then29.i
  %conv35.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not13.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not13.i.i, label %if.then32.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i221.i

if.then32.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i221.i:                          ; preds = %if.then32.i
  %102 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcm_area81.i, align 4
  %add.ptr34.i = getelementptr i16, ptr %103, i32 %off.0134
  %and.i219.i = and i32 %35, 1048575
  %add.i220.i = or i32 %and.i219.i, -18874368
  %104 = inttoptr i32 %add.i220.i to ptr
  br label %while.body.i225.i

while.body.i225.i:                                ; preds = %while.body.i225.i.while.body.i225.i_crit_edge, %while.body.lr.ph.i221.i
  %dst.addr.015.i.i = phi ptr [ %add.ptr34.i, %while.body.lr.ph.i221.i ], [ %incdec.ptr.i223.i, %while.body.i225.i.while.body.i225.i_crit_edge ]
  %size.addr.014.i.i = phi i32 [ %33, %while.body.lr.ph.i221.i ], [ %dec.i222.i, %while.body.i225.i.while.body.i225.i_crit_edge ]
  %dec.i222.i = add i32 %size.addr.014.i.i, -1
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %104) #4, !srcloc !15
  %106 = tail call i16 @llvm.bswap.i16(i16 %105) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %xor312.i.i = xor i16 %106, %conv35.i
  %incdec.ptr.i223.i = getelementptr i16, ptr %dst.addr.015.i.i, i32 1
  %107 = ptrtoint ptr %dst.addr.015.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %xor312.i.i, ptr %dst.addr.015.i.i, align 2
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %104) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %cmp.not.i224.i = icmp eq i32 %dec.i222.i, 0
  br i1 %cmp.not.i224.i, label %while.body.i225.i.pdacf_transfer.exit_crit_edge, label %while.body.i225.i.while.body.i225.i_crit_edge

while.body.i225.i.while.body.i225.i_crit_edge:    ; preds = %while.body.i225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i225.i

while.body.i225.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else36.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not20.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not20.i.i, label %if.else36.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i228.i

if.else36.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i228.i:                          ; preds = %if.else36.i
  %109 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pcm_area81.i, align 4
  %add.ptr38.i = getelementptr i32, ptr %110, i32 %off.0134
  %and.i226.i = and i32 %35, 1048575
  %add.i227.i = or i32 %and.i226.i, -18874368
  %111 = inttoptr i32 %add.i227.i to ptr
  br label %while.body.i238.i

while.body.i238.i:                                ; preds = %while.body.i238.i.while.body.i238.i_crit_edge, %while.body.lr.ph.i228.i
  %dst.addr.022.i.i = phi ptr [ %add.ptr38.i, %while.body.lr.ph.i228.i ], [ %incdec.ptr.i236.i, %while.body.i238.i.while.body.i238.i_crit_edge ]
  %size.addr.021.i.i = phi i32 [ %33, %while.body.lr.ph.i228.i ], [ %dec.i229.i, %while.body.i238.i.while.body.i238.i_crit_edge ]
  %dec.i229.i = add i32 %size.addr.021.i.i, -1
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %111) #4, !srcloc !15
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %111) #4, !srcloc !15
  %115 = lshr i16 %114, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %111) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %conv.i230.i = zext i16 %115 to i32
  %shl.i231.i = shl nuw i32 %conv.i230.i, 24
  %conv15.i232.i = zext i16 %113 to i32
  %shl16.i233.i = shl nuw nsw i32 %conv15.i232.i, 8
  %or.i234.i = or i32 %shl.i231.i, %shl16.i233.i
  %xor17.i235.i = xor i32 %or.i234.i, %37
  %incdec.ptr.i236.i = getelementptr i32, ptr %dst.addr.022.i.i, i32 1
  %117 = ptrtoint ptr %dst.addr.022.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %xor17.i235.i, ptr %dst.addr.022.i.i, align 4
  %cmp.not.i237.i = icmp eq i32 %dec.i229.i, 0
  br i1 %cmp.not.i237.i, label %while.body.i238.i.pdacf_transfer.exit_crit_edge, label %while.body.i238.i.while.body.i238.i_crit_edge

while.body.i238.i.while.body.i238.i_crit_edge:    ; preds = %while.body.i238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i238.i

while.body.i238.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else40.i:                                      ; preds = %if.then25.i
  br i1 %cmp30.i, label %if.then44.i, label %if.else49.i

if.then44.i:                                      ; preds = %if.else40.i
  %conv48.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not21.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not21.i.i, label %if.then44.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i241.i

if.then44.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i241.i:                          ; preds = %if.then44.i
  %118 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcm_area81.i, align 4
  %mul46.i = shl i32 %off.0134, 1
  %add.ptr47.i = getelementptr i16, ptr %119, i32 %mul46.i
  %and.i239.i = and i32 %35, 1048575
  %add.i240.i = or i32 %and.i239.i, -18874368
  %120 = inttoptr i32 %add.i240.i to ptr
  br label %while.body.i245.i

while.body.i245.i:                                ; preds = %while.body.i245.i.while.body.i245.i_crit_edge, %while.body.lr.ph.i241.i
  %dst.addr.023.i.i = phi ptr [ %add.ptr47.i, %while.body.lr.ph.i241.i ], [ %incdec.ptr15.i.i, %while.body.i245.i.while.body.i245.i_crit_edge ]
  %size.addr.022.i.i = phi i32 [ %33, %while.body.lr.ph.i241.i ], [ %dec.i242.i, %while.body.i245.i.while.body.i245.i_crit_edge ]
  %dec.i242.i = add i32 %size.addr.022.i.i, -1
  %121 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %120) #4, !srcloc !15
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %xor319.i.i = xor i16 %122, %conv48.i
  %incdec.ptr.i243.i = getelementptr i16, ptr %dst.addr.023.i.i, i32 1
  %123 = ptrtoint ptr %dst.addr.023.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %xor319.i.i, ptr %dst.addr.023.i.i, align 2
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %120) #4, !srcloc !15
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %xor1320.i.i = xor i16 %125, %conv48.i
  %incdec.ptr15.i.i = getelementptr i16, ptr %dst.addr.023.i.i, i32 2
  %126 = ptrtoint ptr %incdec.ptr.i243.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %xor1320.i.i, ptr %incdec.ptr.i243.i, align 2
  %cmp.not.i244.i = icmp eq i32 %dec.i242.i, 0
  br i1 %cmp.not.i244.i, label %while.body.i245.i.pdacf_transfer.exit_crit_edge, label %while.body.i245.i.while.body.i245.i_crit_edge

while.body.i245.i.while.body.i245.i_crit_edge:    ; preds = %while.body.i245.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i245.i

while.body.i245.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i245.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else49.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not30.i.i = icmp eq i32 %33, 0
  br i1 %cmp.not30.i.i, label %if.else49.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i248.i

if.else49.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i248.i:                          ; preds = %if.else49.i
  %127 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcm_area81.i, align 4
  %mul51.i = shl i32 %off.0134, 1
  %add.ptr52.i = getelementptr i32, ptr %128, i32 %mul51.i
  %and.i246.i = and i32 %35, 1048575
  %add.i247.i = or i32 %and.i246.i, -18874368
  %129 = inttoptr i32 %add.i247.i to ptr
  br label %while.body.i263.i

while.body.i263.i:                                ; preds = %while.body.i263.i.while.body.i263.i_crit_edge, %while.body.lr.ph.i248.i
  %dst.addr.032.i.i = phi ptr [ %add.ptr52.i, %while.body.lr.ph.i248.i ], [ %incdec.ptr24.i.i, %while.body.i263.i.while.body.i263.i_crit_edge ]
  %size.addr.031.i.i = phi i32 [ %33, %while.body.lr.ph.i248.i ], [ %dec.i249.i, %while.body.i263.i.while.body.i263.i_crit_edge ]
  %dec.i249.i = add i32 %size.addr.031.i.i, -1
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %129) #4, !srcloc !15
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %129) #4, !srcloc !15
  %133 = tail call i16 @llvm.bswap.i16(i16 %132) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %129) #4, !srcloc !15
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %conv.i250.i = zext i16 %133 to i32
  %shl.i251.i = shl i32 %conv.i250.i, 24
  %conv15.i252.i = zext i16 %131 to i32
  %shl16.i253.i = shl nuw nsw i32 %conv15.i252.i, 8
  %or.i254.i = or i32 %shl.i251.i, %shl16.i253.i
  %xor17.i255.i = xor i32 %or.i254.i, %37
  %incdec.ptr.i256.i = getelementptr i32, ptr %dst.addr.032.i.i, i32 1
  %136 = ptrtoint ptr %dst.addr.032.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %xor17.i255.i, ptr %dst.addr.032.i.i, align 4
  %conv18.i257.i = zext i16 %135 to i32
  %shl19.i258.i = shl nuw i32 %conv18.i257.i, 16
  %and21.i259.i = and i32 %conv.i250.i, 65280
  %or22.i260.i = or i32 %shl19.i258.i, %and21.i259.i
  %xor23.i261.i = xor i32 %or22.i260.i, %37
  %incdec.ptr24.i.i = getelementptr i32, ptr %dst.addr.032.i.i, i32 2
  %137 = ptrtoint ptr %incdec.ptr.i256.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %xor23.i261.i, ptr %incdec.ptr.i256.i, align 4
  %cmp.not.i262.i = icmp eq i32 %dec.i249.i, 0
  br i1 %cmp.not.i262.i, label %while.body.i263.i.pdacf_transfer.exit_crit_edge, label %while.body.i263.i.while.body.i263.i_crit_edge

while.body.i263.i.while.body.i263.i_crit_edge:    ; preds = %while.body.i263.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i263.i

while.body.i263.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i263.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else55.i:                                      ; preds = %if.end22.i
  br i1 %cmp27.i, label %if.then59.i, label %if.else71.i

if.then59.i:                                      ; preds = %if.else55.i
  br i1 %cmp30.i, label %if.then63.i, label %if.else67.i

if.then63.i:                                      ; preds = %if.then59.i
  %conv66.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not13.i264.i = icmp eq i32 %33, 0
  br i1 %cmp.not13.i264.i, label %if.then63.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i267.i

if.then63.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i267.i:                          ; preds = %if.then63.i
  %138 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcm_area81.i, align 4
  %add.ptr65.i = getelementptr i16, ptr %139, i32 %off.0134
  %and.i265.i = and i32 %35, 1048575
  %add.i266.i = or i32 %and.i265.i, -18874368
  %140 = inttoptr i32 %add.i266.i to ptr
  br label %while.body.i274.i

while.body.i274.i:                                ; preds = %while.body.i274.i.while.body.i274.i_crit_edge, %while.body.lr.ph.i267.i
  %dst.addr.015.i268.i = phi ptr [ %add.ptr65.i, %while.body.lr.ph.i267.i ], [ %incdec.ptr.i272.i, %while.body.i274.i.while.body.i274.i_crit_edge ]
  %size.addr.014.i269.i = phi i32 [ %33, %while.body.lr.ph.i267.i ], [ %dec.i270.i, %while.body.i274.i.while.body.i274.i_crit_edge ]
  %dec.i270.i = add i32 %size.addr.014.i269.i, -1
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %140) #4, !srcloc !15
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %xor312.i271.i = xor i16 %142, %conv66.i
  %143 = tail call i16 @llvm.bswap.i16(i16 %xor312.i271.i) #4
  %incdec.ptr.i272.i = getelementptr i16, ptr %dst.addr.015.i268.i, i32 1
  %144 = ptrtoint ptr %dst.addr.015.i268.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %dst.addr.015.i268.i, align 2
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %140) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %cmp.not.i273.i = icmp eq i32 %dec.i270.i, 0
  br i1 %cmp.not.i273.i, label %while.body.i274.i.pdacf_transfer.exit_crit_edge, label %while.body.i274.i.while.body.i274.i_crit_edge

while.body.i274.i.while.body.i274.i_crit_edge:    ; preds = %while.body.i274.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i274.i

while.body.i274.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i274.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else67.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not20.i275.i = icmp eq i32 %33, 0
  br i1 %cmp.not20.i275.i, label %if.else67.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i278.i

if.else67.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i278.i:                          ; preds = %if.else67.i
  %146 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pcm_area81.i, align 4
  %add.ptr69.i = getelementptr i32, ptr %147, i32 %off.0134
  %and.i276.i = and i32 %35, 1048575
  %add.i277.i = or i32 %and.i276.i, -18874368
  %148 = inttoptr i32 %add.i277.i to ptr
  br label %while.body.i290.i

while.body.i290.i:                                ; preds = %while.body.i290.i.while.body.i290.i_crit_edge, %while.body.lr.ph.i278.i
  %dst.addr.022.i279.i = phi ptr [ %add.ptr69.i, %while.body.lr.ph.i278.i ], [ %incdec.ptr.i288.i, %while.body.i290.i.while.body.i290.i_crit_edge ]
  %size.addr.021.i280.i = phi i32 [ %33, %while.body.lr.ph.i278.i ], [ %dec.i281.i, %while.body.i290.i.while.body.i290.i_crit_edge ]
  %dec.i281.i = add i32 %size.addr.021.i280.i, -1
  %149 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %148) #4, !srcloc !15
  %150 = tail call i16 @llvm.bswap.i16(i16 %149) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %151 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %148) #4, !srcloc !15
  %152 = lshr i16 %151, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %148) #4, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  %conv.i282.i = zext i16 %152 to i32
  %shl.i283.i = shl nuw i32 %conv.i282.i, 24
  %conv15.i284.i = zext i16 %150 to i32
  %shl16.i285.i = shl nuw nsw i32 %conv15.i284.i, 8
  %or.i286.i = or i32 %shl.i283.i, %shl16.i285.i
  %xor17.i287.i = xor i32 %or.i286.i, %37
  %154 = tail call i32 @llvm.bswap.i32(i32 %xor17.i287.i) #4
  %incdec.ptr.i288.i = getelementptr i32, ptr %dst.addr.022.i279.i, i32 1
  %155 = ptrtoint ptr %dst.addr.022.i279.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %dst.addr.022.i279.i, align 4
  %cmp.not.i289.i = icmp eq i32 %dec.i281.i, 0
  br i1 %cmp.not.i289.i, label %while.body.i290.i.pdacf_transfer.exit_crit_edge, label %while.body.i290.i.while.body.i290.i_crit_edge

while.body.i290.i.while.body.i290.i_crit_edge:    ; preds = %while.body.i290.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i290.i

while.body.i290.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i290.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else71.i:                                      ; preds = %if.else55.i
  br i1 %cmp30.i, label %if.then75.i, label %if.else80.i

if.then75.i:                                      ; preds = %if.else71.i
  %conv79.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not21.i291.i = icmp eq i32 %33, 0
  br i1 %cmp.not21.i291.i, label %if.then75.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i294.i

if.then75.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i294.i:                          ; preds = %if.then75.i
  %156 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcm_area81.i, align 4
  %mul77.i = shl i32 %off.0134, 1
  %add.ptr78.i = getelementptr i16, ptr %157, i32 %mul77.i
  %and.i292.i = and i32 %35, 1048575
  %add.i293.i = or i32 %and.i292.i, -18874368
  %158 = inttoptr i32 %add.i293.i to ptr
  br label %while.body.i303.i

while.body.i303.i:                                ; preds = %while.body.i303.i.while.body.i303.i_crit_edge, %while.body.lr.ph.i294.i
  %dst.addr.023.i295.i = phi ptr [ %add.ptr78.i, %while.body.lr.ph.i294.i ], [ %incdec.ptr15.i301.i, %while.body.i303.i.while.body.i303.i_crit_edge ]
  %size.addr.022.i296.i = phi i32 [ %33, %while.body.lr.ph.i294.i ], [ %dec.i297.i, %while.body.i303.i.while.body.i303.i_crit_edge ]
  %dec.i297.i = add i32 %size.addr.022.i296.i, -1
  %159 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %158) #4, !srcloc !15
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %xor319.i298.i = xor i16 %160, %conv79.i
  %161 = tail call i16 @llvm.bswap.i16(i16 %xor319.i298.i) #4
  %incdec.ptr.i299.i = getelementptr i16, ptr %dst.addr.023.i295.i, i32 1
  %162 = ptrtoint ptr %dst.addr.023.i295.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %dst.addr.023.i295.i, align 2
  %163 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %158) #4, !srcloc !15
  %164 = tail call i16 @llvm.bswap.i16(i16 %163) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %xor1320.i300.i = xor i16 %164, %conv79.i
  %165 = tail call i16 @llvm.bswap.i16(i16 %xor1320.i300.i) #4
  %incdec.ptr15.i301.i = getelementptr i16, ptr %dst.addr.023.i295.i, i32 2
  %166 = ptrtoint ptr %incdec.ptr.i299.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %incdec.ptr.i299.i, align 2
  %cmp.not.i302.i = icmp eq i32 %dec.i297.i, 0
  br i1 %cmp.not.i302.i, label %while.body.i303.i.pdacf_transfer.exit_crit_edge, label %while.body.i303.i.while.body.i303.i_crit_edge

while.body.i303.i.while.body.i303.i_crit_edge:    ; preds = %while.body.i303.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i303.i

while.body.i303.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i303.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

if.else80.i:                                      ; preds = %if.else71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not30.i304.i = icmp eq i32 %33, 0
  br i1 %cmp.not30.i304.i, label %if.else80.i.pdacf_transfer.exit_crit_edge, label %while.body.lr.ph.i307.i

if.else80.i.pdacf_transfer.exit_crit_edge:        ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

while.body.lr.ph.i307.i:                          ; preds = %if.else80.i
  %167 = ptrtoint ptr %pcm_area81.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcm_area81.i, align 4
  %mul82.i = shl i32 %off.0134, 1
  %add.ptr83.i = getelementptr i32, ptr %168, i32 %mul82.i
  %and.i305.i = and i32 %35, 1048575
  %add.i306.i = or i32 %and.i305.i, -18874368
  %169 = inttoptr i32 %add.i306.i to ptr
  br label %while.body.i325.i

while.body.i325.i:                                ; preds = %while.body.i325.i.while.body.i325.i_crit_edge, %while.body.lr.ph.i307.i
  %dst.addr.032.i308.i = phi ptr [ %add.ptr83.i, %while.body.lr.ph.i307.i ], [ %incdec.ptr24.i323.i, %while.body.i325.i.while.body.i325.i_crit_edge ]
  %size.addr.031.i309.i = phi i32 [ %33, %while.body.lr.ph.i307.i ], [ %dec.i310.i, %while.body.i325.i.while.body.i325.i_crit_edge ]
  %dec.i310.i = add i32 %size.addr.031.i309.i, -1
  %170 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %169) #4, !srcloc !15
  %171 = tail call i16 @llvm.bswap.i16(i16 %170) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %172 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %169) #4, !srcloc !15
  %173 = tail call i16 @llvm.bswap.i16(i16 %172) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %169) #4, !srcloc !15
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %conv.i311.i = zext i16 %173 to i32
  %shl.i312.i = shl i32 %conv.i311.i, 24
  %conv15.i313.i = zext i16 %171 to i32
  %shl16.i314.i = shl nuw nsw i32 %conv15.i313.i, 8
  %or.i315.i = or i32 %shl.i312.i, %shl16.i314.i
  %xor17.i316.i = xor i32 %or.i315.i, %37
  %176 = tail call i32 @llvm.bswap.i32(i32 %xor17.i316.i) #4
  %incdec.ptr.i317.i = getelementptr i32, ptr %dst.addr.032.i308.i, i32 1
  %177 = ptrtoint ptr %dst.addr.032.i308.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %dst.addr.032.i308.i, align 4
  %conv18.i318.i = zext i16 %175 to i32
  %shl19.i319.i = shl nuw i32 %conv18.i318.i, 16
  %and21.i320.i = and i32 %conv.i311.i, 65280
  %or22.i321.i = or i32 %shl19.i319.i, %and21.i320.i
  %xor23.i322.i = xor i32 %or22.i321.i, %37
  %178 = tail call i32 @llvm.bswap.i32(i32 %xor23.i322.i) #4
  %incdec.ptr24.i323.i = getelementptr i32, ptr %dst.addr.032.i308.i, i32 2
  %179 = ptrtoint ptr %incdec.ptr.i317.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %incdec.ptr.i317.i, align 4
  %cmp.not.i324.i = icmp eq i32 %dec.i310.i, 0
  br i1 %cmp.not.i324.i, label %while.body.i325.i.pdacf_transfer.exit_crit_edge, label %while.body.i325.i.while.body.i325.i_crit_edge

while.body.i325.i.while.body.i325.i_crit_edge:    ; preds = %while.body.i325.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i325.i

while.body.i325.i.pdacf_transfer.exit_crit_edge:  ; preds = %while.body.i325.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pdacf_transfer.exit

pdacf_transfer.exit:                              ; preds = %while.body.i325.i.pdacf_transfer.exit_crit_edge, %if.else80.i.pdacf_transfer.exit_crit_edge, %while.body.i303.i.pdacf_transfer.exit_crit_edge, %if.then75.i.pdacf_transfer.exit_crit_edge, %while.body.i290.i.pdacf_transfer.exit_crit_edge, %if.else67.i.pdacf_transfer.exit_crit_edge, %while.body.i274.i.pdacf_transfer.exit_crit_edge, %if.then63.i.pdacf_transfer.exit_crit_edge, %while.body.i263.i.pdacf_transfer.exit_crit_edge, %if.else49.i.pdacf_transfer.exit_crit_edge, %while.body.i245.i.pdacf_transfer.exit_crit_edge, %if.then44.i.pdacf_transfer.exit_crit_edge, %while.body.i238.i.pdacf_transfer.exit_crit_edge, %if.else36.i.pdacf_transfer.exit_crit_edge, %while.body.i225.i.pdacf_transfer.exit_crit_edge, %if.then32.i.pdacf_transfer.exit_crit_edge, %while.body.i218.i.pdacf_transfer.exit_crit_edge, %if.else16.i.pdacf_transfer.exit_crit_edge, %while.body.i180.i.pdacf_transfer.exit_crit_edge, %if.then11.i.pdacf_transfer.exit_crit_edge, %while.body.i163.i.pdacf_transfer.exit_crit_edge, %if.else.i.pdacf_transfer.exit_crit_edge, %while.body.i.i.pdacf_transfer.exit_crit_edge, %if.then3.i.pdacf_transfer.exit_crit_edge
  %add46 = add i32 %33, %off.0134
  %180 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pcm_size, align 4
  %rem48 = urem i32 %add46, %181
  %sub49 = sub i32 %size.2136, %33
  %cmp38 = icmp sgt i32 %sub49, 0
  br i1 %cmp38, label %pdacf_transfer.exit.while.body_crit_edge, label %pdacf_transfer.exit.while.end_crit_edge

pdacf_transfer.exit.while.end_crit_edge:          ; preds = %pdacf_transfer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

pdacf_transfer.exit.while.body_crit_edge:         ; preds = %pdacf_transfer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %pdacf_transfer.exit.while.end_crit_edge, %if.end7.while.end_crit_edge
  %reg_lock = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #4
  %pcm_period = getelementptr inbounds %struct.snd_pdacf, ptr %dev, i32 0, i32 20
  %182 = ptrtoint ptr %pcm_tdone to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %pcm_tdone, align 4
  %184 = ptrtoint ptr %pcm_period to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pcm_period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %185)
  %cmp52.not137 = icmp ult i32 %183, %185
  br i1 %cmp52.not137, label %while.end.while.end67_crit_edge, label %while.end.while.body54_crit_edge

while.end.while.body54_crit_edge:                 ; preds = %while.end
  br label %while.body54

while.end.while.end67_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end67

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %while.end.while.body54_crit_edge
  %186 = phi i32 [ %198, %while.body54.while.body54_crit_edge ], [ %185, %while.end.while.body54_crit_edge ]
  %187 = phi i32 [ %196, %while.body54.while.body54_crit_edge ], [ %183, %while.end.while.body54_crit_edge ]
  %188 = ptrtoint ptr %pcm_hwptr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pcm_hwptr, align 4
  %add57 = add i32 %189, %186
  %190 = ptrtoint ptr %pcm_size to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pcm_size, align 4
  %rem60 = urem i32 %add57, %191
  store i32 %rem60, ptr %pcm_hwptr, align 4
  %sub63 = sub i32 %187, %186
  %192 = ptrtoint ptr %pcm_tdone to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %sub63, ptr %pcm_tdone, align 4
  tail call void @mutex_unlock(ptr noundef %reg_lock) #4
  %193 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pcm_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %194) #4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #4
  %195 = ptrtoint ptr %pcm_tdone to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pcm_tdone, align 4
  %197 = ptrtoint ptr %pcm_period to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pcm_period, align 4
  %cmp52.not = icmp ult i32 %196, %198
  br i1 %cmp52.not, label %while.body54.while.end67_crit_edge, label %while.body54.while.body54_crit_edge

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body54

while.body54.while.end67_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end67

while.end67:                                      ; preds = %while.body54.while.end67_crit_edge, %while.end.while.end67_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end67, %snd_pcm_running.exit.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_irq.c", i32 30, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!5 = !{!"sp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 6381768}
!16 = !{i64 2154665550}
!17 = !{i64 2154690362}
!18 = !{i64 2154691045}
!19 = !{i64 2154682060}
!20 = !{i64 2154682702}
!21 = !{i64 2154683344}
!22 = !{i64 2154686250}
!23 = !{i64 2154686892}
!24 = !{i64 2154687534}
!25 = !{i64 2154684155}
!26 = !{i64 2154684797}
!27 = !{i64 2154685439}
!28 = !{i64 2154688345}
!29 = !{i64 2154688987}
!30 = !{i64 2154689629}
!31 = !{i64 2154666583}
!32 = !{i64 2154667225}
!33 = !{i64 2154668036}
!34 = !{i64 2154668678}
!35 = !{i64 2154669320}
!36 = !{i64 2154670131}
!37 = !{i64 2154670773}
!38 = !{i64 2154671584}
!39 = !{i64 2154672226}
!40 = !{i64 2154672868}
!41 = !{i64 2154673998}
!42 = !{i64 2154674656}
!43 = !{i64 2154675467}
!44 = !{i64 2154676109}
!45 = !{i64 2154676751}
!46 = !{i64 2154677976}
!47 = !{i64 2154678953}
!48 = !{i64 2154679780}
!49 = !{i64 2154680422}
!50 = !{i64 2154681064}
