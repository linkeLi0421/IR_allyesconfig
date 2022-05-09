; ModuleID = '/llk/IR_all_yes/sound/firewire/tascam/amdtp-tascam.c_pt.bc'
source_filename = "../sound/firewire/tascam/amdtp-tascam.c"
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
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_firewire_tascam_change = type { i32, i32, i32 }

@switch.table.process_ir_ctx_payloads = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -65536, i32 -65536, i32 -1, i32 -986881], [16 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [40 x i8] c"../sound/firewire/tascam/amdtp-tascam.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [37 x i8] c"switch.table.process_ir_ctx_payloads\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.process_ir_ctx_payloads], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.process_ir_ctx_payloads to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_tscm_set_parameters(ptr noundef %s, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %context.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %protocol, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %direction = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %add = add i32 %5, 2
  %spec.select = select i1 %cmp, i32 %add, i32 %5
  %call3 = tail call i32 @amdtp_stream_set_parameters(ptr noundef %s, i32 noundef %rate, i32 noundef %spec.select) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_set_parameters(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_tscm_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %runtime, i32 noundef 0, i32 noundef 32, i32 noundef 24) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef %s, ptr noundef %runtime) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_add_pcm_hw_constraints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdtp_tscm_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir, i32 noundef %pcm_channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %process_ir_ctx_payloads.process_it_ctx_payloads = select i1 %cmp, ptr @process_ir_ctx_payloads, ptr @process_it_ctx_payloads
  %. = select i1 %cmp, i32 30, i32 62
  %call = tail call i32 @amdtp_stream_init(ptr noundef %s, ptr noundef %unit, i32 noundef %dir, i32 noundef 1040, i32 noundef %., ptr noundef nonnull %process_ir_ctx_payloads.process_it_ctx_payloads, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp4 = icmp eq i32 %dir, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %ctx_data = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %ctx_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ctx_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %protocol = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %protocol, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pcm_channels, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_ir_ctx_payloads(ptr noundef %s, ptr nocapture noundef readonly %descs, i32 noundef %packets, ptr noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp19.not = icmp eq i32 %packets, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pcm, null
  %protocol.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %data_block_quadlets.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  %hwdep.i = getelementptr i8, ptr %s, i32 1936
  %state.i = getelementptr i8, ptr %s, i32 1680
  %queue.i = getelementptr i8, ptr %s, i32 1940
  %push_pos.i = getelementptr i8, ptr %s, i32 2136
  %lock.i = getelementptr i8, ptr %s, i32 -308
  %hwdep_wait.i = getelementptr i8, ptr %s, i32 652
  br label %for.body

for.body:                                         ; preds = %read_status_messages.exit.for.body_crit_edge, %for.body.lr.ph
  %pcm_frames.021 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.1, %read_status_messages.exit.for.body_crit_edge ]
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %read_status_messages.exit.for.body_crit_edge ]
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
  call void @__sanitizer_cov_trace_pc() #5
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
  br i1 %cmp31.not.i, label %if.then.read_pcm_s32.exit_crit_edge, label %for.cond5.preheader.lr.ph.i

if.then.read_pcm_s32.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %read_pcm_s32.exit

for.cond5.preheader.lr.ph.i:                      ; preds = %if.then
  %add.ptr4.i = getelementptr i32, ptr %1, i32 1
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
  %cmp628.not.i = icmp eq i32 %7, 0
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc11.i.for.cond5.preheader.i_crit_edge, %for.cond5.preheader.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.cond5.preheader.i_crit_edge ]
  %dst.034.i = phi ptr [ %add.ptr.i, %for.cond5.preheader.lr.ph.i ], [ %dst.2.i, %for.inc11.i.for.cond5.preheader.i_crit_edge ]
  %remaining_frames.033.i = phi i32 [ %sub.i, %for.cond5.preheader.lr.ph.i ], [ %dec.i, %for.inc11.i.for.cond5.preheader.i_crit_edge ]
  %buffer.addr.032.i = phi ptr [ %add.ptr4.i, %for.cond5.preheader.lr.ph.i ], [ %add.ptr8.i, %for.inc11.i.for.cond5.preheader.i_crit_edge ]
  br i1 %cmp628.not.i, label %for.cond5.preheader.i.for.end.i_crit_edge, label %for.cond5.preheader.i.for.body7.i_crit_edge

for.cond5.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body7.i

for.cond5.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond5.preheader.i.for.body7.i_crit_edge
  %c.030.i = phi i32 [ %inc.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond5.preheader.i.for.body7.i_crit_edge ]
  %dst.129.i = phi ptr [ %incdec.ptr.i, %for.body7.i.for.body7.i_crit_edge ], [ %dst.034.i, %for.cond5.preheader.i.for.body7.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %buffer.addr.032.i, i32 %c.030.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %dst.129.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dst.129.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %dst.129.i, i32 1
  %inc.i = add nuw i32 %c.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body7.i.for.end.i_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body7.i

for.body7.i.for.end.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body7.i.for.end.i_crit_edge, %for.cond5.preheader.i.for.end.i_crit_edge
  %dst.1.lcssa.i = phi ptr [ %dst.034.i, %for.cond5.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body7.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr8.i = getelementptr i32, ptr %buffer.addr.032.i, i32 %22
  %dec.i = add i32 %remaining_frames.033.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.i, label %if.then.i, label %for.end.i.for.inc11.i_crit_edge

for.end.i.for.inc11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc11.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %if.then.i, %for.end.i.for.inc11.i_crit_edge
  %dst.2.i = phi ptr [ %24, %if.then.i ], [ %dst.1.lcssa.i, %for.end.i.for.inc11.i_crit_edge ]
  %inc12.i = add nuw i32 %i.035.i, 1
  %exitcond36.not.i = icmp eq i32 %inc12.i, %3
  br i1 %exitcond36.not.i, label %for.inc11.i.read_pcm_s32.exit_crit_edge, label %for.inc11.i.for.cond5.preheader.i_crit_edge

for.inc11.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond5.preheader.i

for.inc11.i.read_pcm_s32.exit_crit_edge:          ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %read_pcm_s32.exit

read_pcm_s32.exit:                                ; preds = %for.inc11.i.read_pcm_s32.exit_crit_edge, %if.then.read_pcm_s32.exit_crit_edge
  %add = add i32 %3, %pcm_frames.021
  br label %if.end

if.end:                                           ; preds = %read_pcm_s32.exit, %for.body.if.end_crit_edge
  %pcm_frames.1 = phi i32 [ %add, %read_pcm_s32.exit ], [ %pcm_frames.021, %for.body.if.end_crit_edge ]
  %25 = ptrtoint ptr %hwdep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwdep.i, align 8
  %used2.i = getelementptr inbounds %struct.snd_hwdep, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %used2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp76.not.i = icmp eq i32 %3, 0
  br i1 %cmp76.not.i, label %if.end.read_status_messages.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.read_status_messages.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %read_status_messages.exit

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %buffer.addr.078.i = phi ptr [ %add.ptr47.i, %if.end43.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %i.077.i = phi i32 [ %inc48.i, %if.end43.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %buffer.addr.078.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer.addr.078.i, align 4
  %rem.i13 = and i32 %30, 63
  %arrayidx3.i = getelementptr [64 x i32], ptr %state.i, i32 0, i32 %rem.i13
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i, align 4
  %33 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_block_quadlets.i, align 4
  %sub.i14 = add i32 %34, -1
  %arrayidx4.i = getelementptr i32, ptr %buffer.addr.078.i, i32 %sub.i14
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem.i13)
  %cmp6.i = icmp ugt i32 %rem.i13, 4
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp6.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rem.i13)
  %cmp8.i = icmp ult i32 %rem.i13, 16
  %or.cond75.i = select i1 %or.cond.i, i1 %cmp8.i, i1 false
  br i1 %or.cond75.i, label %if.then.i15, label %for.body.i.if.end43.i_crit_edge

for.body.i.if.end43.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43.i

if.then.i15:                                      ; preds = %for.body.i
  %switch.tableidx = add nsw i32 %rem.i13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %37 = icmp ult i32 %switch.tableidx, 4
  br i1 %37, label %switch.lookup, label %if.then.i15.if.end18.i_crit_edge

if.then.i15.if.end18.i_crit_edge:                 ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

switch.lookup:                                    ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.process_ir_ctx_payloads, i32 0, i32 %switch.tableidx
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %switch.lookup, %if.then.i15.if.end18.i_crit_edge
  %mask.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.then.i15.if.end18.i_crit_edge ]
  %xor.i = xor i32 %36, %32
  %and.i = and i32 %mask.0.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.end18.i.if.end43.i_crit_edge, label %if.then20.i

if.end18.i.if.end43.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %push_pos.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %push_pos.i, align 8
  %arrayidx22.i = getelementptr [16 x %struct.snd_firewire_tascam_change], ptr %queue.i, i32 0, i32 %40
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %41 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rem.i13, ptr %arrayidx22.i, align 4
  %before33.i = getelementptr inbounds %struct.snd_firewire_tascam_change, ptr %arrayidx22.i, i32 0, i32 1
  %42 = ptrtoint ptr %before33.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %32, ptr %before33.i, align 4
  %after34.i = getelementptr inbounds %struct.snd_firewire_tascam_change, ptr %arrayidx22.i, i32 0, i32 2
  %43 = ptrtoint ptr %after34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %36, ptr %after34.i, align 4
  %44 = ptrtoint ptr %push_pos.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %push_pos.i, align 8
  %inc.i16 = add i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i16)
  %cmp36.i = icmp ugt i32 %inc.i16, 15
  %spec.select.i = select i1 %cmp36.i, i32 0, i32 %inc.i16
  %46 = ptrtoint ptr %push_pos.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i, ptr %push_pos.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call27.i) #3
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end43.i_crit_edge, %for.body.i.if.end43.i_crit_edge
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %36, ptr %arrayidx3.i, align 4
  %48 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr47.i = getelementptr i32, ptr %buffer.addr.078.i, i32 %49
  %inc48.i = add nuw i32 %i.077.i, 1
  %exitcond.not.i17 = icmp eq i32 %inc48.i, %3
  br i1 %exitcond.not.i17, label %if.end43.i.read_status_messages.exit_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end43.i.read_status_messages.exit_crit_edge:   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %read_status_messages.exit

read_status_messages.exit:                        ; preds = %if.end43.i.read_status_messages.exit_crit_edge, %if.end.read_status_messages.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %read_status_messages.exit.for.end_crit_edge, label %read_status_messages.exit.for.body_crit_edge

read_status_messages.exit.for.body_crit_edge:     ; preds = %read_status_messages.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

read_status_messages.exit.for.end_crit_edge:      ; preds = %read_status_messages.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %read_status_messages.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pcm_frames.1, %read_status_messages.exit.for.end_crit_edge ]
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_it_ctx_payloads(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %descs, i32 noundef %packets, ptr noundef readonly %pcm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packets)
  %cmp17.not = icmp eq i32 %packets, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pcm, null
  %protocol.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 25
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %pcm, i32 0, i32 11
  %pcm_buffer_pointer2.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 20
  %data_block_quadlets.i = getelementptr inbounds %struct.amdtp_stream, ptr %s, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %pcm_frames.019 = phi i32 [ 0, %for.body.lr.ph ], [ %pcm_frames.1, %if.end.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.018, i32 4
  %0 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx_payload, align 4
  %data_blocks1 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.018, i32 2
  %2 = ptrtoint ptr %data_blocks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_blocks1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

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
  %cmp29.not.i = icmp eq i32 %3, 0
  br i1 %cmp29.not.i, label %if.then.write_pcm_s32.exit_crit_edge, label %for.cond4.preheader.lr.ph.i

if.then.write_pcm_s32.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %write_pcm_s32.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %if.then
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %12 = ptrtoint ptr %pcm_buffer_pointer2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_buffer_pointer2.i, align 4
  %add.i = add i32 %13, %pcm_frames.019
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
  %cmp526.not.i = icmp eq i32 %7, 0
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc10.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  %src.032.i = phi ptr [ %add.ptr.i, %for.cond4.preheader.lr.ph.i ], [ %src.2.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  %remaining_frames.031.i = phi i32 [ %sub.i, %for.cond4.preheader.lr.ph.i ], [ %dec.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  %buffer.addr.030.i = phi ptr [ %1, %for.cond4.preheader.lr.ph.i ], [ %add.ptr7.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp526.not.i, label %for.cond4.preheader.i.for.end.i_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %c.028.i = phi i32 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %src.127.i = phi ptr [ %incdec.ptr.i, %for.body6.i.for.body6.i_crit_edge ], [ %src.032.i, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %18 = ptrtoint ptr %src.127.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src.127.i, align 4
  %arrayidx.i = getelementptr i32, ptr %buffer.addr.030.i, i32 %c.028.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %src.127.i, i32 1
  %inc.i = add nuw i32 %c.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body6.i.for.end.i_crit_edge, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body6.i

for.body6.i.for.end.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body6.i.for.end.i_crit_edge, %for.cond4.preheader.i.for.end.i_crit_edge
  %src.1.lcssa.i = phi ptr [ %src.032.i, %for.cond4.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body6.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr7.i = getelementptr i32, ptr %buffer.addr.030.i, i32 %22
  %dec.i = add i32 %remaining_frames.031.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp8.i = icmp eq i32 %dec.i, 0
  br i1 %cmp8.i, label %if.then.i, label %for.end.i.for.inc10.i_crit_edge

for.end.i.for.inc10.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc10.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %if.then.i, %for.end.i.for.inc10.i_crit_edge
  %src.2.i = phi ptr [ %24, %if.then.i ], [ %src.1.lcssa.i, %for.end.i.for.inc10.i_crit_edge ]
  %inc11.i = add nuw i32 %i.033.i, 1
  %exitcond34.not.i = icmp eq i32 %inc11.i, %3
  br i1 %exitcond34.not.i, label %for.inc10.i.write_pcm_s32.exit_crit_edge, label %for.inc10.i.for.cond4.preheader.i_crit_edge

for.inc10.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond4.preheader.i

for.inc10.i.write_pcm_s32.exit_crit_edge:         ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %write_pcm_s32.exit

write_pcm_s32.exit:                               ; preds = %for.inc10.i.write_pcm_s32.exit_crit_edge, %if.then.write_pcm_s32.exit_crit_edge
  %add = add i32 %3, %pcm_frames.019
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %if.else.if.end_crit_edge, label %for.cond1.preheader.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.cond1.preheader.lr.ph.i:                      ; preds = %if.else
  %25 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %protocol.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp212.not.i = icmp eq i32 %28, 0
  %29 = shl nuw i32 %28, 2
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i16.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc5.i, %for.end.i16.for.cond1.preheader.i_crit_edge ]
  %buffer.addr.015.i = phi ptr [ %1, %for.cond1.preheader.lr.ph.i ], [ %add.ptr.i14, %for.end.i16.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp212.not.i, label %for.cond1.preheader.i.for.end.i16_crit_edge, label %for.body3.preheader.i

for.cond1.preheader.i.for.end.i16_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i16

for.body3.preheader.i:                            ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = call ptr @memset(ptr %buffer.addr.015.i, i32 0, i32 %29)
  br label %for.end.i16

for.end.i16:                                      ; preds = %for.body3.preheader.i, %for.cond1.preheader.i.for.end.i16_crit_edge
  %31 = ptrtoint ptr %data_block_quadlets.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_block_quadlets.i, align 4
  %add.ptr.i14 = getelementptr i32, ptr %buffer.addr.015.i, i32 %32
  %inc5.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc5.i, %3
  br i1 %exitcond.not.i15, label %for.end.i16.if.end_crit_edge, label %for.end.i16.for.cond1.preheader.i_crit_edge

for.end.i16.for.cond1.preheader.i_crit_edge:      ; preds = %for.end.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

for.end.i16.if.end_crit_edge:                     ; preds = %for.end.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.end.i16.if.end_crit_edge, %if.else.if.end_crit_edge, %write_pcm_s32.exit
  %pcm_frames.1 = phi i32 [ %add, %write_pcm_s32.exit ], [ %pcm_frames.019, %if.else.if.end_crit_edge ], [ %pcm_frames.019, %for.end.i16.if.end_crit_edge ]
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %packets
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %pcm_frames.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pcm_frames.1, %if.end.for.end_crit_edge ]
  ret i32 %pcm_frames.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
