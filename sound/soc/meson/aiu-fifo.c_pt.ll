; ModuleID = '/llk/IR_all_yes/sound/soc/meson/aiu-fifo.c_pt.bc'
source_filename = "../sound/soc/meson/aiu-fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.aiu_fifo = type { ptr, i32, i32, ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.aiu_fifo_trigger = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 6, i32 6, i32 0, i32 6, i32 0, i32 6], [36 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [30 x i8] c"../sound/soc/meson/aiu-fifo.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [30 x i8] c"switch.table.aiu_fifo_trigger\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.aiu_fifo_trigger], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aiu_fifo_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_pointer(ptr noundef %component, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %playback_dma_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %mem_offset = getelementptr inbounds %struct.aiu_fifo, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_offset, align 4
  %add = add i32 %11, 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add) #3
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 51
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %sub = sub i32 %call2, %13
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %0 = icmp ult i32 %cmd, 7
  br i1 %0, label %switch.hole_check, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.return_crit_edge, label %switch.lookup

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.aiu_fifo_trigger, i32 0, i32 %cmd
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %component1.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %3 = ptrtoint ptr %component1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component1.i, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %5 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %playback_dma_data.i, align 4
  %mem_offset.i = getelementptr inbounds %struct.aiu_fifo, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_offset.i, align 4
  %add.i = add i32 %8, 16
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %add.i, i32 noundef 6, i32 noundef %switch.load) #3
  br label %return

return:                                           ; preds = %switch.lookup, %switch.hole_check.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %2 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %playback_dma_data, align 4
  %mem_offset = getelementptr inbounds %struct.aiu_fifo, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_offset, align 4
  %add = add i32 %5, 16
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 1) #3
  %6 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_offset, align 4
  %add3 = add i32 %7, 16
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add3, i32 noundef 1, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component2, align 4
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_dma_data, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_bytes, align 4
  %add = add i32 %9, %7
  %fifo_block = getelementptr inbounds %struct.aiu_fifo, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %fifo_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_block, align 4
  %sub = sub i32 %add, %11
  %mem_offset = getelementptr inbounds %struct.aiu_fifo, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_offset, align 4
  %call = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef %13, i32 noundef %7) #3
  %14 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_offset, align 4
  %add6 = add i32 %15, 4
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 8
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef %add6, i32 noundef %17) #3
  %18 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_offset, align 4
  %add10 = add i32 %19, 8
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef %add10, i32 noundef %sub) #3
  %20 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_offset, align 4
  %add13 = add i32 %21, 12
  %call42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef %add13, i32 noundef 65535, i32 noundef 65535) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %0 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %playback_dma_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef %3) #3
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %fifo_block = getelementptr inbounds %struct.aiu_fifo, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fifo_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_block, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 18, i32 noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %10 = ptrtoint ptr %fifo_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_block, align 4
  %call4 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %9, i32 noundef 0, i32 noundef 14, i32 noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %pclk = getelementptr inbounds %struct.aiu_fifo, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end.i
  %irq = getelementptr inbounds %struct.aiu_fifo, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %if.end.i36, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i36:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i36, %if.end11.dev_name.exit_crit_edge
  %retval.0.i37 = phi ptr [ %21, %if.end.i36 ], [ %19, %if.end11.dev_name.exit_crit_edge ]
  %call.i38 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @aiu_fifo_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i37, ptr noundef %substream) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool14.not = icmp eq i32 %call.i38, 0
  br i1 %tobool14.not, label %dev_name.exit.cleanup_crit_edge, label %if.then15

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then15:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %23) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then15, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %23, %if.then15 ], [ %13, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i38, %if.then15 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dev_name.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_fifo_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_pcm_period_elapsed(ptr noundef %dev_id) #3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aiu_fifo_shutdown(ptr noundef %substream, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %0 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %playback_dma_data, align 4
  %irq = getelementptr inbounds %struct.aiu_fifo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %substream) #3
  %pclk = getelementptr inbounds %struct.aiu_fifo, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_pcm_new(ptr nocapture noundef readonly %rtd, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_dma_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_bytes_max, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %11, i64 noundef 4294967295) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %11, i64 noundef 4294967295) #3
  %pcm2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %13 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm2, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call4 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %14, i32 noundef 2, ptr noundef %16, i32 noundef %9, i32 noundef %9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_dai_probe(ptr nocapture noundef writeonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %1 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %playback_dma_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aiu_fifo_dai_remove(ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %0 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %playback_dma_data, align 4
  tail call void @kfree(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
