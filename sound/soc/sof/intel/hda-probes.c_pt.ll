; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-probes.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-probes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_compr_tstamp = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }

@hda_probe_compr_free.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hda_probe_compr_free\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/sof/intel/hda-probes.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stream put failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hda_probe_compr_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 85, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: hdac prepare failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hda_probe_compr_set_params\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_probe_compr_set_params._entry_ptr = internal global ptr @hda_probe_compr_set_params._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 49, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [36 x i8] c"../sound/soc/sof/intel/hda-probes.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 85, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @hda_probe_compr_set_params._entry, ptr @hda_probe_compr_set_params._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_probe_compr_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_probe_compr_assign(ptr noundef %sdev, ptr noundef %cstream, ptr nocapture noundef readnone %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  %call = tail call ptr @hda_dsp_stream_get(ptr noundef %sdev, i32 noundef %1, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %curr_pos = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %curr_pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %curr_pos, align 8
  %cstream2 = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %cstream2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cstream, ptr %cstream2, align 8
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %private_data, align 4
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_dsp_stream_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_probe_compr_free(ptr noundef %sdev, ptr nocapture noundef readonly %cstream, ptr nocapture noundef readnone %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 5
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %7 to i32
  %call1 = tail call i32 @hda_dsp_stream_put(ptr noundef %sdev, i32 noundef %5, i32 noundef %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_probe_compr_free.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_probe_compr_free, %if.then6)) #3
          to label %cleanup [label %if.then6], !srcloc !22

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_probe_compr_free.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %call1) #3
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cstream9 = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %cstream9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cstream9, align 8
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %private_data = getelementptr inbounds %struct.snd_compr_runtime, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %if.then6 ], [ %call1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_put(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_probe_compr_set_params(ptr noundef %sdev, ptr nocapture noundef readonly %cstream, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dma_buffer_p = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_buffer_p, align 4
  %call2 = tail call i32 @snd_pcm_format_physical_width(i32 noundef 10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @hda_dsp_get_bits(ptr noundef %sdev, i32 noundef %call2) #3
  %sample_rate = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_rate, align 4
  %call4 = tail call i32 @hda_dsp_get_mult_div(ptr noundef %sdev, i32 noundef %7) #3
  %or = or i32 %call4, %call3
  %ch_out = getelementptr inbounds %struct.snd_compr_params, ptr %params, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %ch_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_out, align 4
  %sub = add i32 %9, -1
  %or6 = or i32 %or, %sub
  %format_val = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %format_val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or6, ptr %format_val, align 4
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %buffer_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %14 to i32
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %bufsize, align 4
  %16 = load ptr, ptr %runtime.i, align 4
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fragment_size, align 8
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %period_bytes, align 8
  %no_period_wakeup = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 16
  %20 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %no_period_wakeup, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %no_period_wakeup, align 8
  %call9 = tail call i32 @hda_dsp_stream_hw_params(ptr noundef %sdev, ptr noundef %3, ptr noundef %5, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_get_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_get_mult_div(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_probe_compr_trigger(ptr noundef %sdev, ptr nocapture noundef readonly %cstream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @hda_dsp_stream_trigger(ptr noundef %sdev, ptr noundef %3, i32 noundef %cmd) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_trigger(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_probe_compr_pointer(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readonly %cstream, ptr nocapture noundef writeonly %tstamp, ptr nocapture noundef readonly %dai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %curr_pos = getelementptr inbounds %struct.hdac_stream, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %curr_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %curr_pos, align 8
  %conv = trunc i64 %7 to i32
  %copied_total = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %8 = ptrtoint ptr %copied_total to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %copied_total, align 4
  %rates = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %5, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rates, align 8
  %call1 = tail call i32 @snd_pcm_rate_bit_to_rate(i32 noundef %10) #3
  %sampling_rate = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 4
  %11 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1, ptr %sampling_rate, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_bit_to_rate(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-probes.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hda_probe_compr_free.__UNIQUE_ID_ddebug244, !1, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/hda-probes.c", i32 85, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hda_probe_compr_set_params._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @hda_probe_compr_set_params._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148305975, i64 2148305980, i64 2148305993, i64 2148306037, i64 2148306071, i64 2148306092}
