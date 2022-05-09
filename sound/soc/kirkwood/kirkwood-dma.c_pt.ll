; ModuleID = '/llk/IR_all_yes/sound/soc/kirkwood/kirkwood-dma.c_pt.bc'
source_filename = "../sound/soc/kirkwood/kirkwood-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.kirkwood_dma_data = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mvebu-audio\00", [20 x i8] zeroinitializer }, align 32
@kirkwood_soc_component = dso_local constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_dma_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_dma_open, ptr @kirkwood_dma_close, ptr null, ptr @kirkwood_dma_hw_params, ptr null, ptr @kirkwood_dma_prepare, ptr null, ptr null, ptr @kirkwood_dma_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@kirkwood_dma_snd_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 8978691, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 524288, i32 256, i32 32768, i32 2, i32 16, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kirkwood-i2s\00", [19 x i8] zeroinitializer }, align 32
@kirkwood_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: got err interrupt 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kirkwood_dma_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/kirkwood/kirkwood-dma.c\00", [62 x i8] zeroinitializer }, align 32
@kirkwood_dma_irq._entry_ptr = internal global ptr @kirkwood_dma_irq._entry, section ".printk_index", align 4
@kirkwood_dma_irq._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: unexpected interrupt %lx\0A\00", [32 x i8] zeroinitializer }, align 32
@kirkwood_dma_irq._entry_ptr.7 = internal global ptr @kirkwood_dma_irq._entry.5, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 255, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"kirkwood_soc_component\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 254, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"kirkwood_dma_snd_hw\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 26, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 132, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 51, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [37 x i8] c"../sound/soc/kirkwood/kirkwood-dma.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 59, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @kirkwood_dma_irq._entry, ptr @kirkwood_dma_irq._entry.5, ptr @kirkwood_dma_irq._entry_ptr, ptr @kirkwood_dma_irq._entry_ptr.7, ptr @.str, ptr @kirkwood_soc_component, ptr @kirkwood_dma_snd_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_dma_snd_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_dma_irq._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 4294967295) #4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call3 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 2, ptr noundef %10, i32 noundef 524288, i32 noundef 524288) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @kirkwood_dma_snd_hw) #4
  %burst = getelementptr inbounds %struct.kirkwood_dma_data, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %burst, align 4
  %mul = shl i32 %13, 1
  %call3 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 18, i32 noundef %mul, i32 noundef 16777215) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %burst, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %16 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime1, align 4
  %18 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %burst, align 4
  %call11 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %17, i32 noundef 0, i32 noundef 14, i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %substream_play = getelementptr inbounds %struct.kirkwood_dma_data, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %substream_play to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream_play, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %substream_rec = getelementptr inbounds %struct.kirkwood_dma_data, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %substream_rec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream_rec, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.kirkwood_dma_data, ptr %11, i32 0, i32 7
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @kirkwood_dma_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %do.body, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 4868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #4, !srcloc !28
  br label %if.end21

if.end21:                                         ; preds = %do.body, %land.lhs.true.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %28 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp22 = icmp eq i32 %29, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  %30 = ptrtoint ptr %substream_play to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream_play, align 4
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.then23.cleanup.sink.split_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then23.cleanup.sink.split_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end21
  %substream_rec29 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %11, i32 0, i32 6
  %32 = ptrtoint ptr %substream_rec29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream_rec29, align 4
  %tobool30.not = icmp eq ptr %33, null
  br i1 %tobool30.not, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then23.cleanup.sink.split_crit_edge
  %substream_play.sink = phi ptr [ %substream_play, %if.then23.cleanup.sink.split_crit_edge ], [ %substream_rec29, %if.else.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %substream_play.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %substream, ptr %substream_play.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call.i, %if.then16.cleanup_crit_edge ], [ -16, %if.then23.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %substream_rec = getelementptr inbounds %struct.kirkwood_dma_data, ptr %9, i32 0, i32 6
  %substream_play = getelementptr inbounds %struct.kirkwood_dma_data, ptr %9, i32 0, i32 5
  %substream_rec.sink = select i1 %cmp, ptr %substream_play, ptr %substream_rec
  %12 = ptrtoint ptr %substream_rec.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %substream_rec.sink, align 4
  %substream_play3 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %substream_play3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream_play3, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %substream_rec5 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %9, i32 0, i32 6
  %15 = ptrtoint ptr %substream_rec5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream_rec5, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 4868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !28
  %irq = getelementptr inbounds %struct.kirkwood_dma_data, ptr %9, i32 0, i32 7
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %20, ptr noundef nonnull %9) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @mv_mbus_dram_info() #4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 51
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %. = zext i1 %cmp to i32
  tail call fastcc void @kirkwood_dma_conf_mbus_windows(ptr noundef %17, i32 noundef %., i32 noundef %13, ptr noundef %call1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %15, %13
  %div1.i = lshr i32 %mul.i, 5
  %sub = add nsw i32 %div1.i, -1
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size.i, align 4
  %mul.i.i = mul i32 %17, %15
  %div1.i.i = lshr i32 %mul.i.i, 3
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i)
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %11, align 4
  br i1 %cmp, label %do.body, label %do.body14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %22, i32 4884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 4
  %add.ptr8 = getelementptr i8, ptr %27, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %25) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 4
  %add.ptr13 = getelementptr i8, ptr %30, i32 4360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %28) #4, !srcloc !28
  br label %if.end

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr18 = getelementptr i8, ptr %22, i32 4880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %20) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %dma_addr22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %31 = ptrtoint ptr %dma_addr22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr22, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %11, align 4
  %add.ptr24 = getelementptr i8, ptr %35, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %33) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %11, align 4
  %add.ptr29 = getelementptr i8, ptr %38, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %36) #4, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %do.body14, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %12 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %15, i32 4364
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !34
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr8 = getelementptr i8, ptr %15, i32 4108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !34
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %19, %if.else ], [ %17, %if.then ]
  %mul.i17 = shl i32 %.sink, 3
  %frame_bits.i18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %20 = ptrtoint ptr %frame_bits.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_bits.i18, align 8
  %div.i19 = udiv i32 %mul.i17, %21
  ret i32 %div.i19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_dma_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4876
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 4872
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 4864
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %add.ptr24 = getelementptr i8, ptr %13, i32 4864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %10) #4, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and25 = and i32 %7, -24577
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body34, label %do.end30

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %7) #7
  br label %cleanup

do.body34:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %add.ptr38 = getelementptr i8, ptr %15, i32 4872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %6) #4, !srcloc !28
  %and39 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body34.if.end42_crit_edge, label %if.then41

do.body34.if.end42_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then41:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %substream_play = getelementptr inbounds %struct.kirkwood_dma_data, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %substream_play to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream_play, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %17) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %do.body34.if.end42_crit_edge
  %and43 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %substream_rec = getelementptr inbounds %struct.kirkwood_dma_data, ptr %dev_id, i32 0, i32 6
  %18 = ptrtoint ptr %substream_rec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream_rec, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %do.end30
  %retval.0 = phi i32 [ 0, %do.end30 ], [ 1, %if.then45 ], [ 1, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kirkwood_dma_conf_mbus_windows(ptr noundef %base, i32 noundef %win, i32 noundef %dma, ptr nocapture noundef readonly %dram) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %win, 3
  %add = add i32 %shl, 2564
  %add.ptr = getelementptr i8, ptr %base, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %add5 = add i32 %shl, 2560
  %add.ptr6 = getelementptr i8, ptr %base, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #4, !srcloc !28
  %num_cs = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 1
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51 = icmp sgt i32 %1, 0
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cs7 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 2
  %and10 = and i32 %dma, -65536
  %conv = zext i32 %and10 to i64
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %base9 = getelementptr %struct.mbus_dram_window, ptr %cs7, i32 %i.052, i32 2
  %2 = ptrtoint ptr %base9 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %base9, align 8
  %and = and i64 %3, 4294901760
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %cmp11 = icmp ult i64 %and, %conv
  br i1 %cmp11, label %do.body13, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %base9 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %base9, align 8
  %6 = trunc i64 %5 to i32
  %conv18 = and i32 %6, -65536
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %size = getelementptr %struct.mbus_dram_window, ptr %cs7, i32 %i.052, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %mbus_attr = getelementptr %struct.mbus_dram_window, ptr %cs7, i32 %i.052, i32 1
  %10 = ptrtoint ptr %mbus_attr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mbus_attr, align 1
  %conv26 = zext i8 %11 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %12 = ptrtoint ptr %dram to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dram, align 8
  %conv29 = zext i8 %13 to i32
  %shl30 = shl nuw nsw i32 %conv29, 4
  %14 = trunc i64 %9 to i32
  %15 = add i32 %14, -1
  %16 = and i32 %15, -65536
  %17 = or i32 %16, %shl27
  %18 = or i32 %shl30, %17
  %conv34 = or i32 %18, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv34)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #4, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %do.body13, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %20 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cs, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 255, i32 11}
!2 = !{ptr @kirkwood_soc_component, !3, !"kirkwood_soc_component", i1 false, i1 false}
!3 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 254, i32 39}
!4 = !{ptr @kirkwood_dma_snd_hw, !5, !"kirkwood_dma_snd_hw", i1 false, i1 false}
!5 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 26, i32 38}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 132, i32 7}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 51, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @kirkwood_dma_irq._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @kirkwood_dma_irq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/kirkwood/kirkwood-dma.c", i32 59, i32 3}
!16 = !{ptr @kirkwood_dma_irq._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @kirkwood_dma_irq._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2154821236}
!28 = !{i64 4776128}
!29 = !{i64 2154821699}
!30 = !{i64 2154822511}
!31 = !{i64 2154822950}
!32 = !{i64 2154823767}
!33 = !{i64 2154824206}
!34 = !{i64 4776546}
!35 = !{i64 2154824877}
!36 = !{i64 2154825370}
!37 = !{i64 2154813946}
!38 = !{i64 2154814439}
!39 = !{i64 2154814932}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2154816667}
!42 = !{i64 2154818575}
!43 = !{i64 2154819024}
!44 = !{i64 2154819454}
!45 = !{i64 2154819904}
!46 = !{i64 2154820492}
