; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel-pcm-dma.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pcm-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atmel_pcm_dma_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_atmel_pcm_dma_platform_register\09\09\09\09"
module asm "\09.long\09__crc_atmel_pcm_dma_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pcm_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pcm_dma_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pcm_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@atmel_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @atmel_pcm_configure_dma, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @atmel_pcm_dma_hardware, i32 65536 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_atmel_pcm_dma_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pcm_dma_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pcm_dma_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pcm_dma_platform_register to i32), ptr @__kstrtab_atmel_pcm_dma_platform_register, ptr @__kstrtabns_atmel_pcm_dma_platform_register }, section "___ksymtab+atmel_pcm_dma_platform_register", align 4
@__UNIQUE_ID_author242 = internal constant [60 x i8] c"snd_soc_atmel_pcm_dma.author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [61 x i8] c"snd_soc_atmel_pcm_dma.description=Atmel DMA based PCM module\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [65 x i8] c"snd_soc_atmel_pcm_dma.file=sound/soc/atmel/snd-soc-atmel-pcm-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [34 x i8] c"snd_soc_atmel_pcm_dma.license=GPL\00", section ".modinfo", align 1
@atmel_pcm_dma_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 524288, i32 256, i32 131070, i32 8, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@atmel_pcm_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013atmel-pcm: hwparams to dma slave configure failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_pcm_configure_dma\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/atmel/atmel-pcm-dma.c\00", [32 x i8] zeroinitializer }, align 32
@atmel_pcm_configure_dma._entry_ptr = internal global ptr @atmel_pcm_configure_dma._entry, section ".printk_index", align 4
@atmel_pcm_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014atmel-pcm: buffer %s on %s (SSC_SR=%#x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_pcm_dma_irq\00", [46 x i8] zeroinitializer }, align 32
@atmel_pcm_dma_irq._entry_ptr = internal global ptr @atmel_pcm_dma_irq._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"underrun\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overrun\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"atmel_dmaengine_pcm_config\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 105, i32 46 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"atmel_pcm_dma_hardware\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 33, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 90, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [35 x i8] c"../sound/soc/atmel/atmel-pcm-dma.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 62, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__ksymtab_atmel_pcm_dma_platform_register, ptr @atmel_pcm_configure_dma._entry, ptr @atmel_pcm_configure_dma._entry_ptr, ptr @atmel_pcm_dma_irq._entry, ptr @atmel_pcm_dma_irq._entry_ptr, ptr @atmel_dmaengine_pcm_config, ptr @atmel_pcm_dma_hardware, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_dma_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_pcm_dma_platform_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @atmel_dmaengine_pcm_config, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_configure_dma(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %ssc1 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %cond.i, i32 0, i32 2
  %9 = ptrtoint ptr %ssc1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssc1, align 4
  %call2 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %phybase = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %phybase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phybase, align 4
  %add = add i32 %12, 36
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 2
  %13 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %dst_addr, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %14 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_maxburst, align 4
  %15 = load i32, ptr %phybase, align 4
  %add5 = add i32 %15, 32
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 1
  %16 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add5, ptr %src_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %17 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %src_maxburst, align 4
  %dma_intr_handler = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %cond.i, i32 0, i32 6
  %18 = ptrtoint ptr %dma_intr_handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @atmel_pcm_dma_irq, ptr %dma_intr_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pcm_dma_irq(i32 noundef %ssc_sr, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %cond.i, i32 0, i32 4
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mask, align 4
  %ssc_error = getelementptr inbounds %struct.atmel_ssc_mask, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ssc_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ssc_error, align 4
  %and = and i32 %12, %ssc_sr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then:                                          ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime.i, align 4
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 37
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %status.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.then.if.end_crit_edge [
    i32 3, label %if.then.do.end_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

snd_pcm_running.exit:                             ; preds = %if.then
  br i1 %cmp.i, label %snd_pcm_running.exit.do.end_crit_edge, label %snd_pcm_running.exit.if.end_crit_edge

snd_pcm_running.exit.if.end_crit_edge:            ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

snd_pcm_running.exit.do.end_crit_edge:            ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %snd_pcm_running.exit.do.end_crit_edge, %if.then.do.end_crit_edge
  %cond = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  %20 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cond.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, ptr noundef %21, i32 noundef %ssc_sr) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %snd_pcm_running.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mask, align 4
  %ssc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ssc_disable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssc_disable, align 4
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %cond.i, i32 0, i32 2
  %26 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #3, !srcloc !35
  %call6 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %substream) #3
  %30 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ssc, align 4
  %regs8 = getelementptr inbounds %struct.ssc_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs8, align 4
  %add.ptr9 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #3, !srcloc !36
  %35 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ssc, align 4
  %regs12 = getelementptr inbounds %struct.ssc_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs12, align 4
  %add.ptr13 = getelementptr i8, ptr %38, i32 64
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !36
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_atmel_pcm_dma_platform_register, !1, !"__ksymtab_atmel_pcm_dma_platform_register", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 116, i32 1}
!2 = !{ptr @__UNIQUE_ID_author242, !3, !"__UNIQUE_ID_author242", i1 false, i1 false}
!3 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 118, i32 1}
!4 = !{ptr @__UNIQUE_ID_description243, !5, !"__UNIQUE_ID_description243", i1 false, i1 false}
!5 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 119, i32 1}
!6 = !{ptr @__UNIQUE_ID_file244, !7, !"__UNIQUE_ID_file244", i1 false, i1 false}
!7 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 120, i32 1}
!8 = !{ptr @__UNIQUE_ID_license245, !7, !"__UNIQUE_ID_license245", i1 false, i1 false}
!9 = !{ptr @atmel_dmaengine_pcm_config, !10, !"atmel_dmaengine_pcm_config", i1 false, i1 false}
!10 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 105, i32 46}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 90, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @atmel_pcm_configure_dma._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @atmel_pcm_configure_dma._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 62, i32 4}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atmel_pcm_dma_irq._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @atmel_pcm_dma_irq._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atmel_pcm_dma_hardware, !25, !"atmel_pcm_dma_hardware", i1 false, i1 false}
!25 = !{!"../sound/soc/atmel/atmel-pcm-dma.c", i32 33, i32 38}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 6273359}
!36 = !{i64 6273777}
