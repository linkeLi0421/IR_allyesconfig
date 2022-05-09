; ModuleID = '/llk/IR_all_yes/sound/firewire/digi00x/amdtp-dot.c_pt.bc'
source_filename = "../sound/firewire/digi00x/amdtp-dot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.72, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.72 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, %struct.anon.76, i32, i32, i32, ptr, i32 }
%struct.anon.76 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.amdtp_dot = type { i32, %struct.dot_state, [3 x ptr], [3 x i32], i32 }
%struct.dot_state = type { i8, i8, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.pkt_desc = type { i32, i32, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@dot_scrt.len = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\03\05\07\09\0B\0D\0E\0C\0A\08\06\04\02\00", [16 x i8] zeroinitializer }, align 32
@dot_scrt.nib = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", [17 x i8] zeroinitializer }, align 32
@dot_scrt.hir = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\06\0F\08\07\05\03\04\0C\0D\0E\01\02\0B\0A", [17 x i8] zeroinitializer }, align 32
@dot_scrt.hio = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0B\0C\06\07\05\01\04\03\00\0E\0D\08\09\0A\02", [16 x i8] zeroinitializer }, align 32
@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 68, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"nib\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 75, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"hir\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 79, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"hio\00", align 1
@___asan_gen_.11 = private constant [38 x i8] c"../sound/firewire/digi00x/amdtp-dot.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 88, i32 18 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @dot_scrt.len, ptr @dot_scrt.nib, ptr @dot_scrt.hir, ptr @dot_scrt.hio], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot_scrt.len to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot_scrt.nib to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot_scrt.hir to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dot_scrt.hio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_dot_set_parameters(ptr noundef %s, i32 noundef %rate, i32 noundef %pcm_channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %context.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %pcm_channels, 1
  %call1 = tail call i32 @amdtp_stream_set_parameters(ptr noundef %s, i32 noundef %rate, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sfc = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 17
  %4 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sfc, align 4
  %ctx_data = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 10
  %6 = ptrtoint ptr %ctx_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctx_data, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pcm_channels, ptr %1, align 4
  %syt_interval = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 18
  %8 = ptrtoint ptr %syt_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %syt_interval, align 4
  %mul.neg = mul i32 %9, -3093
  %sub = add i32 %rate, 1
  %add5 = add i32 %sub, %mul.neg
  %midi_fifo_limit = getelementptr inbounds %struct.amdtp_dot, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %midi_fifo_limit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add5, ptr %midi_fifo_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_set_parameters(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_dot_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %runtime, i32 noundef 0, i32 noundef 32, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdtp_dot_midi_trigger(ptr nocapture noundef readonly %s, i32 noundef %port, ptr noundef %midi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %cmp = icmp ult i32 %port, 3
  br i1 %cmp, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %arrayidx = getelementptr %struct.amdtp_dot, ptr %1, i32 0, i32 2, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %midi, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_dot_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %process_ir_ctx_payloads.process_it_ctx_payloads = select i1 %cmp, ptr @process_ir_ctx_payloads, ptr @process_it_ctx_payloads
  %call = tail call i32 @amdtp_stream_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir, i32 noundef 1024, i32 noundef 16, ptr noundef nonnull %process_ir_ctx_payloads.process_it_ctx_payloads, i32 noundef 40) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_ir_ctx_payloads(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %descs, i32 noundef %packets, ptr noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp19.not = icmp eq i32 %packets, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pcm, null
  %protocol.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %data_block_quadlets.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %read_midi_messages.exit.for.body_crit_edge, %for.body.lr.ph
  %pcm_frames.021 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.1, %read_midi_messages.exit.for.body_crit_edge ]
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %read_midi_messages.exit.for.body_crit_edge ]
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.020, i32 4
  %0 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_payload, align 4
  %data_blocks1 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.020, i32 2
  %2 = ptrtoint ptr %data_blocks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_blocks1, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp31.not.i = icmp eq i32 %3, 0
  br i1 %cmp31.not.i, label %if.then.read_pcm_s32.exit_crit_edge, label %for.cond4.preheader.lr.ph.i

if.then.read_pcm_s32.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pcm_s32.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %if.then
  %incdec.ptr.i = getelementptr i32, ptr %1, i32 1
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %12 = ptrtoint ptr %pcm_buffer_pointer2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_buffer_pointer2.i, align 4
  %add.i = add i32 %13, %pcm_frames.021
  %rem.i = urem i32 %add.i, %11
  %sub.i = sub i32 %11, %rem.i
  %14 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_area.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %17, %rem.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %add.ptr.i = getelementptr i8, ptr %15, i32 %div1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp528.not.i = icmp eq i32 %7, 0
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc11.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.cond4.preheader.i_crit_edge ]
  %dst.034.i = phi ptr [ %add.ptr.i, %for.cond4.preheader.lr.ph.i ], [ %dst.2.i, %for.inc11.i.for.cond4.preheader.i_crit_edge ]
  %remaining_frames.033.i = phi i32 [ %sub.i, %for.cond4.preheader.lr.ph.i ], [ %dec.i, %for.inc11.i.for.cond4.preheader.i_crit_edge ]
  %buffer.addr.032.i = phi ptr [ %incdec.ptr.i, %for.cond4.preheader.lr.ph.i ], [ %add.ptr8.i, %for.inc11.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp528.not.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %c.030.i = phi i32 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %dst.129.i = phi ptr [ %incdec.ptr7.i, %for.body6.i.for.body6.i_crit_edge ], [ %dst.034.i, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %buffer.addr.032.i, i32 %c.030.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %19, 8
  %20 = ptrtoint ptr %dst.129.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl.i, ptr %dst.129.i, align 4
  %incdec.ptr7.i = getelementptr i32, ptr %dst.129.i, i32 1
  %inc.i = add nuw i32 %c.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body6.i.for.end.i_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

for.body6.i.for.end.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body6.i.for.end.i_crit_edge, %for.cond4.preheader.i.for.end.i_crit_edge
  %dst.1.lcssa.i = phi ptr [ %dst.034.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr7.i, %for.body6.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %buffer.addr.032.i, i32 %22
  %dec.i = add i32 %remaining_frames.033.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.i, label %if.then.i, label %for.end.i.for.inc11.i_crit_edge

for.end.i.for.inc11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc11.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %if.then.i, %for.end.i.for.inc11.i_crit_edge
  %dst.2.i = phi ptr [ %24, %if.then.i ], [ %dst.1.lcssa.i, %for.end.i.for.inc11.i_crit_edge ]
  %inc12.i = add nuw i32 %i.035.i, 1
  %exitcond36.not.i = icmp eq i32 %inc12.i, %3
  br i1 %exitcond36.not.i, label %for.inc11.i.read_pcm_s32.exit_crit_edge, label %for.inc11.i.for.cond4.preheader.i_crit_edge

for.inc11.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.i

for.inc11.i.read_pcm_s32.exit_crit_edge:          ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_pcm_s32.exit

read_pcm_s32.exit:                                ; preds = %for.inc11.i.read_pcm_s32.exit_crit_edge, %if.then.read_pcm_s32.exit_crit_edge
  %add = add i32 %3, %pcm_frames.021
  br label %if.end

if.end:                                           ; preds = %read_pcm_s32.exit, %for.body.if.end_crit_edge
  %pcm_frames.1 = phi i32 [ %add, %read_pcm_s32.exit ], [ %pcm_frames.021, %for.body.if.end_crit_edge ]
  %25 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not.i = icmp eq i32 %3, 0
  br i1 %cmp27.not.i, label %if.end.read_midi_messages.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.read_midi_messages.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_midi_messages.exit

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %f.030.i = phi i32 [ %inc.i16, %if.end16.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %buffer.addr.028.i = phi ptr [ %add.ptr17.i, %if.end16.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr i8, ptr %buffer.addr.028.i, i32 3
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i, align 1
  %29 = and i8 %28, 15
  %and.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp2.not.i = icmp eq i8 %29, 0
  br i1 %cmp2.not.i, label %for.body.i.if.end16.i_crit_edge, label %if.then.i14

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i14:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp6.not.i = icmp ult i8 %28, 16
  %..i = select i1 %cmp6.not.i, i32 0, i32 2
  %arrayidx11.i = getelementptr %struct.amdtp_dot, ptr %26, i32 0, i32 2, i32 %..i
  %30 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then.i14.if.end16.i_crit_edge, label %if.then12.i

if.then.i14.if.end16.i_crit_edge:                 ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i15 = getelementptr i8, ptr %buffer.addr.028.i, i32 1
  %call.i = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %31, ptr noundef %add.ptr.i15, i32 noundef %and.i) #5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.then.i14.if.end16.i_crit_edge, %for.body.i.if.end16.i_crit_edge
  %32 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr17.i = getelementptr i32, ptr %buffer.addr.028.i, i32 %33
  %inc.i16 = add nuw i32 %f.030.i, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, %3
  br i1 %exitcond.not.i17, label %if.end16.i.read_midi_messages.exit_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end16.i.read_midi_messages.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_midi_messages.exit

read_midi_messages.exit:                          ; preds = %if.end16.i.read_midi_messages.exit_crit_edge, %if.end.read_midi_messages.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %read_midi_messages.exit.for.end_crit_edge, label %read_midi_messages.exit.for.body_crit_edge

read_midi_messages.exit.for.body_crit_edge:       ; preds = %read_midi_messages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

read_midi_messages.exit.for.end_crit_edge:        ; preds = %read_midi_messages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %read_midi_messages.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pcm_frames.1, %read_midi_messages.exit.for.end_crit_edge ]
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_it_ctx_payloads(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %descs, i32 noundef %packets, ptr noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp39.not = icmp eq i32 %packets, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pcm, null
  %protocol.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %data_block_quadlets.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %syt_interval.i.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 18
  %sfc.i.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %write_midi_messages.exit.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %write_midi_messages.exit.for.body_crit_edge ]
  %pcm_frames.040 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.138, %write_midi_messages.exit.for.body_crit_edge ]
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.042, i32 4
  %0 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_payload, align 4
  %data_blocks1 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.042, i32 2
  %2 = ptrtoint ptr %data_blocks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_blocks1, align 4
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp35.not.i = icmp eq i32 %3, 0
  br i1 %cmp35.not.i, label %if.then.write_pcm_s32.exit_crit_edge, label %for.cond4.preheader.lr.ph.i

if.then.write_pcm_s32.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_pcm_s32.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %if.then
  %incdec.ptr.i = getelementptr i32, ptr %1, i32 1
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %12 = ptrtoint ptr %pcm_buffer_pointer2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_buffer_pointer2.i, align 4
  %add.i = add i32 %13, %pcm_frames.040
  %rem.i = urem i32 %add.i, %11
  %sub.i = sub i32 %11, %rem.i
  %14 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_area.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %17, %rem.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  %add.ptr.i = getelementptr i8, ptr %15, i32 %div1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp532.not.i = icmp eq i32 %7, 0
  %state.i = getelementptr inbounds %struct.amdtp_dot, ptr %5, i32 0, i32 1
  %off.i.i = getelementptr inbounds %struct.amdtp_dot, ptr %5, i32 0, i32 1, i32 2
  %idx.i.i = getelementptr inbounds %struct.amdtp_dot, ptr %5, i32 0, i32 1, i32 1
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc12.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc13.i, %for.inc12.i.for.cond4.preheader.i_crit_edge ]
  %src.038.i = phi ptr [ %add.ptr.i, %for.cond4.preheader.lr.ph.i ], [ %src.2.i, %for.inc12.i.for.cond4.preheader.i_crit_edge ]
  %remaining_frames.037.i = phi i32 [ %sub.i, %for.cond4.preheader.lr.ph.i ], [ %dec.i, %for.inc12.i.for.cond4.preheader.i_crit_edge ]
  %buffer.addr.036.i = phi ptr [ %incdec.ptr.i, %for.cond4.preheader.lr.ph.i ], [ %add.ptr9.i, %for.inc12.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp532.not.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body6.i:                                      ; preds = %dot_encode_step.exit.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %c.034.i = phi i32 [ %inc.i, %dot_encode_step.exit.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %src.133.i = phi ptr [ %incdec.ptr8.i, %dot_encode_step.exit.i.for.body6.i_crit_edge ], [ %src.038.i, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %18 = ptrtoint ptr %src.133.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src.133.i, align 4
  %shr.i = lshr i32 %19, 8
  %or.i = or i32 %shr.i, 1073741824
  %arrayidx.i = getelementptr i32, ptr %buffer.addr.036.i, i32 %c.034.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %arrayidx.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %21 = and i32 %19, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i.i, label %for.body6.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body6.i.if.end.i.i_crit_edge:                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %off.i.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %state.i, align 4
  %xor24.i.i = xor i8 %26, %24
  %27 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %xor24.i.i, ptr %idx.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body6.i.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %state.i, align 4
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  %xor1023.i.i = xor i8 %31, %29
  store i8 %xor1023.i.i, ptr %arrayidx.i.i, align 1
  %32 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %idx.i.i, align 1
  %34 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %off.i.i, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %off.i.i, align 4
  %and.i.i.i = and i8 %33, 15
  %36 = lshr i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %36)
  %cmp.i.i.i = icmp eq i8 %36, 9
  br i1 %cmp.i.i.i, label %if.end.i.i.cond.end.i.i.i_crit_edge, label %cond.false.i.i.i

if.end.i.i.cond.end.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i.i.i = zext i8 %36 to i32
  %arrayidx.i.i.i = getelementptr [16 x i8], ptr @dot_scrt.hio, i32 0, i32 %conv5.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv7.i.i.i = zext i8 %38 to i32
  %add.i.i.i = add i32 %inc.i.i, %conv7.i.i.i
  %rem.i.i.i = urem i32 %add.i.i.i, 15
  %arrayidx8.i.i.i = getelementptr [15 x i8], ptr @dot_scrt.hir, i32 0, i32 %rem.i.i.i
  %39 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i.i.i, align 1
  %phi.bo.i.i.i = shl i8 %40, 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %if.end.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i8 [ %phi.bo.i.i.i, %cond.false.i.i.i ], [ -112, %if.end.i.i.cond.end.i.i.i_crit_edge ]
  %idxprom11.i.i.i = zext i8 %and.i.i.i to i32
  %arrayidx12.i.i.i = getelementptr [16 x i8], ptr @dot_scrt.len, i32 0, i32 %idxprom11.i.i.i
  %41 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx12.i.i.i, align 1
  %conv13.i.i.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv13.i.i.i)
  %cmp14.i.i.i = icmp ugt i32 %inc.i.i, %conv13.i.i.i
  br i1 %cmp14.i.i.i, label %cond.end.i.i.i.dot_encode_step.exit.i_crit_edge, label %if.end.i.i.i

cond.end.i.i.i.dot_encode_step.exit.i_crit_edge:  ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dot_encode_step.exit.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add16.i.i.i = add i32 %35, 15
  %sub.i.i.i = sub i32 %add16.i.i.i, %conv13.i.i.i
  %arrayidx20.i.i.i = getelementptr [15 x i8], ptr @dot_scrt.nib, i32 0, i32 %sub.i.i.i
  %43 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx20.i.i.i, align 1
  %or.i.i.i = or i8 %44, %cond.i.i.i
  br label %dot_encode_step.exit.i

dot_encode_step.exit.i:                           ; preds = %if.end.i.i.i, %cond.end.i.i.i.dot_encode_step.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %or.i.i.i, %if.end.i.i.i ], [ 0, %cond.end.i.i.i.dot_encode_step.exit.i_crit_edge ]
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %retval.0.i.i.i, ptr %state.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %src.133.i, i32 1
  %inc.i = add nuw i32 %c.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %dot_encode_step.exit.i.for.end.i_crit_edge, label %dot_encode_step.exit.i.for.body6.i_crit_edge

dot_encode_step.exit.i.for.body6.i_crit_edge:     ; preds = %dot_encode_step.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

dot_encode_step.exit.i.for.end.i_crit_edge:       ; preds = %dot_encode_step.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %dot_encode_step.exit.i.for.end.i_crit_edge, %for.cond4.preheader.i.for.end.i_crit_edge
  %src.1.lcssa.i = phi ptr [ %src.038.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr8.i, %dot_encode_step.exit.i.for.end.i_crit_edge ]
  %46 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %buffer.addr.036.i, i32 %47
  %dec.i = add i32 %remaining_frames.037.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp10.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.i, label %if.then.i, label %for.end.i.for.inc12.i_crit_edge

for.end.i.for.inc12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then.i, %for.end.i.for.inc12.i_crit_edge
  %src.2.i = phi ptr [ %49, %if.then.i ], [ %src.1.lcssa.i, %for.end.i.for.inc12.i_crit_edge ]
  %inc13.i = add nuw i32 %i.039.i, 1
  %exitcond40.not.i = icmp eq i32 %inc13.i, %3
  br i1 %exitcond40.not.i, label %for.inc12.i.write_pcm_s32.exit_crit_edge, label %for.inc12.i.for.cond4.preheader.i_crit_edge

for.inc12.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.i

for.inc12.i.write_pcm_s32.exit_crit_edge:         ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_pcm_s32.exit

write_pcm_s32.exit:                               ; preds = %for.inc12.i.write_pcm_s32.exit_crit_edge, %if.then.write_pcm_s32.exit_crit_edge
  %add = add i32 %3, %pcm_frames.040
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not.i = icmp eq i32 %3, 0
  br i1 %cmp15.not.i, label %if.else.write_midi_messages.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.else.write_midi_messages.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_midi_messages.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.else
  %incdec.ptr.i17 = getelementptr i32, ptr %1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp213.not.i = icmp eq i32 %7, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i23.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc5.i, %for.end.i23.for.cond1.preheader.i_crit_edge ]
  %buffer.addr.016.i = phi ptr [ %incdec.ptr.i17, %for.cond1.preheader.lr.ph.i ], [ %add.ptr.i22, %for.end.i23.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp213.not.i, label %for.cond1.preheader.i.for.end.i23_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.end.i23_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i23

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %c.014.i = phi i32 [ %inc.i20, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx.i19 = getelementptr i32, ptr %buffer.addr.016.i, i32 %c.014.i
  %50 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1073741824, ptr %arrayidx.i19, align 4
  %inc.i20 = add nuw i32 %c.014.i, 1
  %exitcond.not.i21 = icmp eq i32 %inc.i20, %7
  br i1 %exitcond.not.i21, label %for.body3.i.for.end.i23_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.body3.i.for.end.i23_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i23

for.end.i23:                                      ; preds = %for.body3.i.for.end.i23_crit_edge, %for.cond1.preheader.i.for.end.i23_crit_edge
  %51 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr.i22 = getelementptr i32, ptr %buffer.addr.016.i, i32 %52
  %inc5.i = add nuw i32 %i.017.i, 1
  %exitcond18.not.i = icmp eq i32 %inc5.i, %3
  br i1 %exitcond18.not.i, label %for.end.i23.if.end_crit_edge, label %for.end.i23.for.cond1.preheader.i_crit_edge

for.end.i23.for.cond1.preheader.i_crit_edge:      ; preds = %for.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

for.end.i23.if.end_crit_edge:                     ; preds = %for.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.end.i23.if.end_crit_edge, %write_pcm_s32.exit
  %pcm_frames.1 = phi i32 [ %add, %write_pcm_s32.exit ], [ %pcm_frames.040, %for.end.i23.if.end_crit_edge ]
  %data_block_counter = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.042, i32 3
  %53 = ptrtoint ptr %data_block_counter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_block_counter, align 4
  %55 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57.not.i = icmp eq i32 %3, 0
  br i1 %cmp57.not.i, label %if.end.write_midi_messages.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.write_midi_messages.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_midi_messages.exit

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %f.059.i = phi i32 [ %inc.i31, %if.end26.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %buffer.addr.058.i = phi ptr [ %add.ptr28.i, %if.end26.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %add.i26 = add i32 %f.059.i, %54
  %rem.i27 = and i32 %add.i26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i27)
  %cmp1.i = icmp ult i32 %rem.i27, 3
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.if.else22.i_crit_edge

for.body.i.if.else22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %57 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %protocol.i, align 4
  %arrayidx.i.i28 = getelementptr %struct.amdtp_dot, ptr %58, i32 0, i32 3, i32 %rem.i27
  %59 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.land.lhs.true2.i_crit_edge, label %midi_ratelimit_per_packet.exit.i

land.lhs.true.i.land.lhs.true2.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true2.i

midi_ratelimit_per_packet.exit.i:                 ; preds = %land.lhs.true.i
  %61 = ptrtoint ptr %syt_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syt_interval.i.i, align 4
  %mul.neg.i.i = mul i32 %62, -3093
  %sub.i.i = add i32 %mul.neg.i.i, %60
  %63 = tail call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #5
  %64 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx.i.i28, align 4
  %midi_fifo_limit.i.i = getelementptr inbounds %struct.amdtp_dot, ptr %58, i32 0, i32 4
  %65 = ptrtoint ptr %midi_fifo_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %midi_fifo_limit.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %66)
  %cmp4.i.i = icmp slt i32 %63, %66
  br i1 %cmp4.i.i, label %midi_ratelimit_per_packet.exit.i.land.lhs.true2.i_crit_edge, label %midi_ratelimit_per_packet.exit.i.if.else22.i_crit_edge

midi_ratelimit_per_packet.exit.i.if.else22.i_crit_edge: ; preds = %midi_ratelimit_per_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

midi_ratelimit_per_packet.exit.i.land.lhs.true2.i_crit_edge: ; preds = %midi_ratelimit_per_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %midi_ratelimit_per_packet.exit.i.land.lhs.true2.i_crit_edge, %land.lhs.true.i.land.lhs.true2.i_crit_edge
  %arrayidx3.i = getelementptr %struct.amdtp_dot, ptr %56, i32 0, i32 2, i32 %rem.i27
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx3.i, align 4
  %cmp4.not.i = icmp eq ptr %68, null
  br i1 %cmp4.not.i, label %land.lhs.true2.i.if.else22.i_crit_edge, label %if.end.i

land.lhs.true2.i.if.else22.i_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

if.end.i:                                         ; preds = %land.lhs.true2.i
  %add.ptr.i29 = getelementptr i8, ptr %buffer.addr.058.i, i32 1
  %call7.i = tail call i32 @snd_rawmidi_transmit(ptr noundef nonnull %68, ptr noundef %add.ptr.i29, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.else22.i_crit_edge

if.end.i.if.else22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i27)
  %switch.selectcmp.i = icmp eq i32 %rem.i27, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.i27)
  %switch.selectcmp60.i = icmp eq i32 %rem.i27, 2
  %switch.select61.i = select i1 %switch.selectcmp60.i, i8 -32, i8 %switch.select.i
  %arrayidx20.i = getelementptr i8, ptr %buffer.addr.058.i, i32 3
  %69 = trunc i32 %call7.i to i8
  %conv21.i = or i8 %switch.select61.i, %69
  %70 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv21.i, ptr %arrayidx20.i, align 1
  %71 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %protocol.i, align 4
  %73 = ptrtoint ptr %sfc.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sfc.i.i, align 4
  %arrayidx.i53.i = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i53.i, align 4
  %mul.i.i30 = mul i32 %76, %call7.i
  %arrayidx1.i.i = getelementptr %struct.amdtp_dot, ptr %72, i32 0, i32 3, i32 %rem.i27
  %77 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %78, %mul.i.i30
  store i32 %add.i.i, ptr %arrayidx1.i.i, align 4
  br label %if.end26.i

if.else22.i:                                      ; preds = %if.end.i.if.else22.i_crit_edge, %land.lhs.true2.i.if.else22.i_crit_edge, %midi_ratelimit_per_packet.exit.i.if.else22.i_crit_edge, %for.body.i.if.else22.i_crit_edge
  %arrayidx23.i = getelementptr i8, ptr %buffer.addr.058.i, i32 1
  %79 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %buffer.addr.058.i, i32 2
  %80 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx24.i, align 1
  %arrayidx25.i = getelementptr i8, ptr %buffer.addr.058.i, i32 3
  %81 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx25.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else22.i, %if.then9.i
  %82 = ptrtoint ptr %buffer.addr.058.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -128, ptr %buffer.addr.058.i, align 1
  %83 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr28.i = getelementptr i32, ptr %buffer.addr.058.i, i32 %84
  %inc.i31 = add nuw i32 %f.059.i, 1
  %exitcond.not.i32 = icmp eq i32 %inc.i31, %3
  br i1 %exitcond.not.i32, label %if.end26.i.write_midi_messages.exit_crit_edge, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end26.i.write_midi_messages.exit_crit_edge:    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_midi_messages.exit

write_midi_messages.exit:                         ; preds = %if.end26.i.write_midi_messages.exit_crit_edge, %if.end.write_midi_messages.exit_crit_edge, %if.else.write_midi_messages.exit_crit_edge
  %pcm_frames.138 = phi i32 [ %pcm_frames.1, %if.end.write_midi_messages.exit_crit_edge ], [ %pcm_frames.040, %if.else.write_midi_messages.exit_crit_edge ], [ %pcm_frames.1, %if.end26.i.write_midi_messages.exit_crit_edge ]
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %write_midi_messages.exit.for.end_crit_edge, label %write_midi_messages.exit.for.body_crit_edge

write_midi_messages.exit.for.body_crit_edge:      ; preds = %write_midi_messages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

write_midi_messages.exit.for.end_crit_edge:       ; preds = %write_midi_messages.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %write_midi_messages.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pcm_frames.138, %write_midi_messages.exit.for.end_crit_edge ]
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdtp_dot_reset(ptr nocapture noundef readonly %s) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol, align 4
  %state = getelementptr inbounds %struct.amdtp_dot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %state, align 4
  %idx = getelementptr inbounds %struct.amdtp_dot, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %idx, align 1
  %off = getelementptr inbounds %struct.amdtp_dot, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %off, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @dot_scrt.len, !1, !"len", i1 false, i1 false}
!1 = !{!"../sound/firewire/digi00x/amdtp-dot.c", i32 68, i32 18}
!2 = !{ptr @dot_scrt.nib, !3, !"nib", i1 false, i1 false}
!3 = !{!"../sound/firewire/digi00x/amdtp-dot.c", i32 75, i32 18}
!4 = !{ptr @dot_scrt.hir, !5, !"hir", i1 false, i1 false}
!5 = !{!"../sound/firewire/digi00x/amdtp-dot.c", i32 79, i32 18}
!6 = !{ptr @dot_scrt.hio, !7, !"hio", i1 false, i1 false}
!7 = !{!"../sound/firewire/digi00x/amdtp-dot.c", i32 88, i32 18}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
