; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-register-dsp-message-parser.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-register-dsp-message-parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.msg_parser = type { %struct.spinlock, %struct.snd_firewire_motu_register_dsp_meter, i8, %struct.snd_firewire_motu_register_dsp_parameter, i8, i8, i8, i8, i8, [16 x i32], i32, i32 }
%struct.snd_firewire_motu_register_dsp_meter = type { [48 x i8] }
%struct.snd_firewire_motu_register_dsp_parameter = type { %struct.anon.94, %struct.anon.97, %struct.anon.98, %struct.anon.99, [64 x i8] }
%struct.anon.94 = type { [4 x %struct.anon.95], %struct.anon.96 }
%struct.anon.95 = type { [20 x i8], [20 x i8], [20 x i8], [20 x i8], [20 x i8] }
%struct.anon.96 = type { [4 x i8], [4 x i8] }
%struct.anon.97 = type { i8, i8, i8, [5 x i8] }
%struct.anon.98 = type { i8, i8, [6 x i8] }
%struct.anon.99 = type { [12 x i8], [12 x i8] }
%struct.pkt_desc = type { i32, i32, i32, i32, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@snd_motu_register_dsp_message_parser_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&parser->lock\00", [18 x i8] zeroinitializer }, align 32
@snd_motu_spec_4pre = external dso_local constant %struct.snd_motu_spec, align 4
@snd_motu_spec_audio_express = external dso_local constant %struct.snd_motu_spec, align 4
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 21, i64 22, i64 23, i64 24, i64 31]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 23, i64 24]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [58 x i8] c"../sound/firewire/motu/motu-register-dsp-message-parser.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 107, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @snd_motu_register_dsp_message_parser_new.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_register_dsp_message_parser_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_register_dsp_message_parser_new(ptr nocapture noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %motu, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef 684, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @snd_motu_register_dsp_message_parser_new.__key, i16 noundef signext 3) #4
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %3, @snd_motu_spec_4pre
  %cmp3 = icmp eq ptr %3, @snd_motu_spec_audio_express
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then4, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %meter_pos_quirk = getelementptr inbounds %struct.msg_parser, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %meter_pos_quirk to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %meter_pos_quirk, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body.if.end5_crit_edge
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %5 = ptrtoint ptr %message_parser to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %message_parser, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_motu_register_dsp_message_parser_init(ptr nocapture noundef readonly %motu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %prev_mixer_src_type = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %prev_mixer_src_type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %prev_mixer_src_type, align 1
  %mixer_ch = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %mixer_ch to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %mixer_ch, align 2
  %mixer_src_ch = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mixer_src_ch to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mixer_src_ch, align 1
  %prev_msg_type = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %prev_msg_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prev_msg_type, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_register_dsp_message_parser_parse(ptr noundef %motu, ptr nocapture noundef readonly %descs, i32 noundef %desc_count, i32 noundef %data_block_quadlets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %meter_pos_quirk1 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %meter_pos_quirk1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meter_pos_quirk1, align 4, !range !12
  %push_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %push_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %push_pos, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count)
  %cmp6806.not = icmp eq i32 %desc_count, 0
  br i1 %cmp6806.not, label %entry.for.end340_crit_edge, label %for.body.lr.ph

entry.for.end340_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end340

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %pos300.0.in.v = select i1 %tobool.not, i32 7, i32 6
  %meter324 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 1
  %input_ch252 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 7
  %prev_msg_type = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 8
  %hwdep.i772 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 17
  %input = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 3
  %nominal_level_flag = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 2, i32 1
  %line_input = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 2
  %hp_paired_assignment = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 1, i32 2
  %hp_paired_volume = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 1, i32 1
  %output192 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 1
  %mixer_ch150 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 5
  %output = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3, i32 0, i32 1
  %param25 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3
  %mixer_src_ch29 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 6
  %prev_mixer_src_type = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0807 = phi i32 [ 0, %for.body.lr.ph ], [ %inc339, %for.end.for.body_crit_edge ]
  %data_blocks8 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.0807, i32 2
  %6 = ptrtoint ptr %data_blocks8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_blocks8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10803.not = icmp eq i32 %7, 0
  br i1 %cmp10803.not, label %for.body.for.end_crit_edge, label %for.body12.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body12.preheader:                             ; preds = %for.body
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.0807, i32 4
  %8 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx_payload, align 4
  br label %for.body12

for.body12:                                       ; preds = %cleanup.for.body12_crit_edge, %for.body12.preheader
  %j.0805 = phi i32 [ %inc337, %cleanup.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %buffer.0804 = phi ptr [ %add.ptr16, %cleanup.for.body12_crit_edge ], [ %9, %for.body12.preheader ]
  %arrayidx = getelementptr i8, ptr %buffer.0804, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = lshr i8 %11, 3
  %arrayidx15 = getelementptr i8, ptr %buffer.0804, i32 5
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %add.ptr16 = getelementptr i32, ptr %buffer.0804, i32 %data_block_quadlets
  %conv17 = zext i8 %12 to i32
  %15 = zext i32 %conv17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv17, label %for.body12.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %for.body12.sw.bb24_crit_edge
    i32 3, label %for.body12.sw.bb24_crit_edge812
    i32 4, label %for.body12.sw.bb24_crit_edge813
    i32 23, label %for.body12.sw.bb24_crit_edge814
    i32 24, label %for.body12.sw.bb24_crit_edge815
    i32 5, label %for.body12.sw.bb146_crit_edge
    i32 6, label %for.body12.sw.bb146_crit_edge816
    i32 7, label %sw.bb190
    i32 8, label %sw.bb202
    i32 9, label %sw.bb214
    i32 13, label %sw.bb226
    i32 14, label %sw.bb237
    i32 21, label %for.body12.sw.bb249_crit_edge
    i32 22, label %for.body12.sw.bb249_crit_edge817
    i32 10, label %for.body12.sw.epilog333_crit_edge
    i32 12, label %for.body12.sw.epilog333_crit_edge818
    i32 31, label %sw.bb299
  ]

for.body12.sw.epilog333_crit_edge818:             ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

for.body12.sw.epilog333_crit_edge:                ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

for.body12.sw.bb249_crit_edge817:                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb249

for.body12.sw.bb249_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb249

for.body12.sw.bb146_crit_edge816:                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb146

for.body12.sw.bb146_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb146

for.body12.sw.bb24_crit_edge815:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

for.body12.sw.bb24_crit_edge814:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

for.body12.sw.bb24_crit_edge813:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

for.body12.sw.bb24_crit_edge812:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

for.body12.sw.bb24_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp21 = icmp sgt i8 %14, -1
  br i1 %cmp21, label %if.then, label %sw.bb.sw.epilog333_crit_edge

sw.bb.sw.epilog333_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %16 = lshr i8 %14, 5
  %17 = ptrtoint ptr %mixer_src_ch29 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mixer_src_ch29, align 1
  %18 = ptrtoint ptr %mixer_ch150 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %mixer_ch150, align 2
  br label %sw.epilog333

sw.bb24:                                          ; preds = %for.body12.sw.bb24_crit_edge, %for.body12.sw.bb24_crit_edge812, %for.body12.sw.bb24_crit_edge813, %for.body12.sw.bb24_crit_edge814, %for.body12.sw.bb24_crit_edge815
  %19 = ptrtoint ptr %mixer_ch150 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mixer_ch150, align 2
  %21 = ptrtoint ptr %prev_mixer_src_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prev_mixer_src_type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %22)
  %cmp32.not = icmp eq i8 %12, %22
  br i1 %cmp32.not, label %if.end35, label %if.end35.thread

if.end35:                                         ; preds = %sw.bb24
  %23 = ptrtoint ptr %mixer_src_ch29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mixer_src_ch29, align 1
  %inc = add i8 %24, 1
  %25 = ptrtoint ptr %prev_mixer_src_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %12, ptr %prev_mixer_src_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp38 = icmp ult i8 %20, 4
  %conv40 = zext i8 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %inc)
  %cmp41 = icmp ult i8 %inc, 20
  %or.cond = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.end35.if.then43_crit_edge, label %if.end35.sw.epilog333_crit_edge

if.end35.sw.epilog333_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.end35.if.then43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end35.thread:                                  ; preds = %sw.bb24
  %26 = ptrtoint ptr %prev_mixer_src_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %12, ptr %prev_mixer_src_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp38791 = icmp ult i8 %20, 4
  br i1 %cmp38791, label %if.end35.thread.if.then43_crit_edge, label %if.end35.thread.sw.epilog333_crit_edge

if.end35.thread.sw.epilog333_crit_edge:           ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.end35.thread.if.then43_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.then43:                                        ; preds = %if.end35.thread.if.then43_crit_edge, %if.end35.if.then43_crit_edge
  %conv40797 = phi i32 [ 0, %if.end35.thread.if.then43_crit_edge ], [ %conv40, %if.end35.if.then43_crit_edge ]
  %mixer_src_ch28.0792796 = phi i8 [ 0, %if.end35.thread.if.then43_crit_edge ], [ %inc, %if.end35.if.then43_crit_edge ]
  %27 = zext i32 %conv17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %conv17, label %if.then43.sw.epilog_crit_edge [
    i32 2, label %sw.bb47
    i32 3, label %sw.bb64
    i32 4, label %sw.bb84
    i32 23, label %sw.bb104
    i32 24, label %sw.bb124
  ]

if.then43.sw.epilog_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.then43
  %idxprom = zext i8 %20 to i32
  %arrayidx48 = getelementptr [4 x %struct.anon.95], ptr %param25, i32 0, i32 %idxprom
  %arrayidx50 = getelementptr [20 x i8], ptr %arrayidx48, i32 0, i32 %conv40797
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %14)
  %cmp53.not = icmp eq i8 %29, %14
  br i1 %cmp53.not, label %sw.bb47.sw.epilog_crit_edge, label %if.then55

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then55:                                        ; preds = %sw.bb47
  %30 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %message_parser, align 8
  %push_pos.i = getelementptr inbounds %struct.msg_parser, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %push_pos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %push_pos.i, align 4
  %34 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then55.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i

if.then55.sw.epilog.sink.split_crit_edge:         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

lor.lhs.false.i:                                  ; preds = %if.then55
  %used.i = getelementptr inbounds %struct.snd_hwdep, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  br i1 %cmp.i, label %lor.lhs.false.i.sw.epilog.sink.split_crit_edge, label %if.end.i

lor.lhs.false.i.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i = shl nuw nsw i32 %idxprom, 16
  %or.i = or i32 %shl4.i, 33554432
  %shl6.i = shl nuw nsw i32 %conv40797, 8
  %or7.i = or i32 %shl6.i, %or.i
  %conv8.i = zext i8 %14 to i32
  %or9.i = or i32 %or7.i, %conv8.i
  %arrayidx.i = getelementptr %struct.msg_parser, ptr %31, i32 0, i32 9, i32 %33
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or9.i, ptr %arrayidx.i, align 4
  br label %sw.epilog.sink.split.sink.split

sw.bb64:                                          ; preds = %if.then43
  %idxprom67 = zext i8 %20 to i32
  %arrayidx70 = getelementptr [4 x %struct.anon.95], ptr %param25, i32 0, i32 %idxprom67, i32 1, i32 %conv40797
  %39 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %14)
  %cmp73.not = icmp eq i8 %40, %14
  br i1 %cmp73.not, label %sw.bb64.sw.epilog_crit_edge, label %if.then75

sw.bb64.sw.epilog_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then75:                                        ; preds = %sw.bb64
  %41 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %message_parser, align 8
  %push_pos.i534 = getelementptr inbounds %struct.msg_parser, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %push_pos.i534 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %push_pos.i534, align 4
  %45 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i536 = icmp eq ptr %46, null
  br i1 %tobool.not.i536, label %if.then75.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i539

if.then75.sw.epilog.sink.split_crit_edge:         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

lor.lhs.false.i539:                               ; preds = %if.then75
  %used.i537 = getelementptr inbounds %struct.snd_hwdep, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %used.i537 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %used.i537, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i538 = icmp eq i32 %48, 0
  br i1 %cmp.i538, label %lor.lhs.false.i539.sw.epilog.sink.split_crit_edge, label %if.end.i554

lor.lhs.false.i539.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false.i539
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end.i554:                                      ; preds = %lor.lhs.false.i539
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i543 = shl nuw nsw i32 %idxprom67, 16
  %or.i544 = or i32 %shl4.i543, 50331648
  %shl6.i546 = shl nuw nsw i32 %conv40797, 8
  %or7.i547 = or i32 %shl6.i546, %or.i544
  %conv8.i548 = zext i8 %14 to i32
  %or9.i549 = or i32 %or7.i547, %conv8.i548
  %arrayidx.i550 = getelementptr %struct.msg_parser, ptr %42, i32 0, i32 9, i32 %44
  %49 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or9.i549, ptr %arrayidx.i550, align 4
  br label %sw.epilog.sink.split.sink.split

sw.bb84:                                          ; preds = %if.then43
  %idxprom87 = zext i8 %20 to i32
  %arrayidx90 = getelementptr [4 x %struct.anon.95], ptr %param25, i32 0, i32 %idxprom87, i32 2, i32 %conv40797
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %14)
  %cmp93.not = icmp eq i8 %51, %14
  br i1 %cmp93.not, label %sw.bb84.sw.epilog_crit_edge, label %if.then95

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then95:                                        ; preds = %sw.bb84
  %52 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %message_parser, align 8
  %push_pos.i557 = getelementptr inbounds %struct.msg_parser, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %push_pos.i557 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %push_pos.i557, align 4
  %56 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i559 = icmp eq ptr %57, null
  br i1 %tobool.not.i559, label %if.then95.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i562

if.then95.sw.epilog.sink.split_crit_edge:         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

lor.lhs.false.i562:                               ; preds = %if.then95
  %used.i560 = getelementptr inbounds %struct.snd_hwdep, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %used.i560 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %used.i560, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i561 = icmp eq i32 %59, 0
  br i1 %cmp.i561, label %lor.lhs.false.i562.sw.epilog.sink.split_crit_edge, label %if.end.i577

lor.lhs.false.i562.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false.i562
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end.i577:                                      ; preds = %lor.lhs.false.i562
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i566 = shl nuw nsw i32 %idxprom87, 16
  %or.i567 = or i32 %shl4.i566, 67108864
  %shl6.i569 = shl nuw nsw i32 %conv40797, 8
  %or7.i570 = or i32 %shl6.i569, %or.i567
  %conv8.i571 = zext i8 %14 to i32
  %or9.i572 = or i32 %or7.i570, %conv8.i571
  %arrayidx.i573 = getelementptr %struct.msg_parser, ptr %53, i32 0, i32 9, i32 %55
  %60 = ptrtoint ptr %arrayidx.i573 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or9.i572, ptr %arrayidx.i573, align 4
  br label %sw.epilog.sink.split.sink.split

sw.bb104:                                         ; preds = %if.then43
  %idxprom107 = zext i8 %20 to i32
  %arrayidx110 = getelementptr [4 x %struct.anon.95], ptr %param25, i32 0, i32 %idxprom107, i32 3, i32 %conv40797
  %61 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %14)
  %cmp113.not = icmp eq i8 %62, %14
  br i1 %cmp113.not, label %sw.bb104.sw.epilog_crit_edge, label %if.then115

sw.bb104.sw.epilog_crit_edge:                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then115:                                       ; preds = %sw.bb104
  %63 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %message_parser, align 8
  %push_pos.i580 = getelementptr inbounds %struct.msg_parser, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %push_pos.i580 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %push_pos.i580, align 4
  %67 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i582 = icmp eq ptr %68, null
  br i1 %tobool.not.i582, label %if.then115.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i585

if.then115.sw.epilog.sink.split_crit_edge:        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

lor.lhs.false.i585:                               ; preds = %if.then115
  %used.i583 = getelementptr inbounds %struct.snd_hwdep, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %used.i583 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %used.i583, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i584 = icmp eq i32 %70, 0
  br i1 %cmp.i584, label %lor.lhs.false.i585.sw.epilog.sink.split_crit_edge, label %if.end.i600

lor.lhs.false.i585.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false.i585
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end.i600:                                      ; preds = %lor.lhs.false.i585
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i589 = shl nuw nsw i32 %idxprom107, 16
  %or.i590 = or i32 %shl4.i589, 385875968
  %shl6.i592 = shl nuw nsw i32 %conv40797, 8
  %or7.i593 = or i32 %shl6.i592, %or.i590
  %conv8.i594 = zext i8 %14 to i32
  %or9.i595 = or i32 %or7.i593, %conv8.i594
  %arrayidx.i596 = getelementptr %struct.msg_parser, ptr %64, i32 0, i32 9, i32 %66
  %71 = ptrtoint ptr %arrayidx.i596 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or9.i595, ptr %arrayidx.i596, align 4
  br label %sw.epilog.sink.split.sink.split

sw.bb124:                                         ; preds = %if.then43
  %idxprom127 = zext i8 %20 to i32
  %arrayidx130 = getelementptr [4 x %struct.anon.95], ptr %param25, i32 0, i32 %idxprom127, i32 4, i32 %conv40797
  %72 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx130, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %14)
  %cmp133.not = icmp eq i8 %73, %14
  br i1 %cmp133.not, label %sw.bb124.sw.epilog_crit_edge, label %if.then135

sw.bb124.sw.epilog_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then135:                                       ; preds = %sw.bb124
  %74 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %message_parser, align 8
  %push_pos.i603 = getelementptr inbounds %struct.msg_parser, ptr %75, i32 0, i32 10
  %76 = ptrtoint ptr %push_pos.i603 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %push_pos.i603, align 4
  %78 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i605 = icmp eq ptr %79, null
  br i1 %tobool.not.i605, label %if.then135.sw.epilog.sink.split_crit_edge, label %lor.lhs.false.i608

if.then135.sw.epilog.sink.split_crit_edge:        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

lor.lhs.false.i608:                               ; preds = %if.then135
  %used.i606 = getelementptr inbounds %struct.snd_hwdep, ptr %79, i32 0, i32 14
  %80 = ptrtoint ptr %used.i606 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used.i606, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i607 = icmp eq i32 %81, 0
  br i1 %cmp.i607, label %lor.lhs.false.i608.sw.epilog.sink.split_crit_edge, label %if.end.i623

lor.lhs.false.i608.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false.i608
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.end.i623:                                      ; preds = %lor.lhs.false.i608
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i612 = shl nuw nsw i32 %idxprom127, 16
  %or.i613 = or i32 %shl4.i612, 402653184
  %shl6.i615 = shl nuw nsw i32 %conv40797, 8
  %or7.i616 = or i32 %shl6.i615, %or.i613
  %conv8.i617 = zext i8 %14 to i32
  %or9.i618 = or i32 %or7.i616, %conv8.i617
  %arrayidx.i619 = getelementptr %struct.msg_parser, ptr %75, i32 0, i32 9, i32 %77
  %82 = ptrtoint ptr %arrayidx.i619 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or9.i618, ptr %arrayidx.i619, align 4
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %if.end.i623, %if.end.i600, %if.end.i577, %if.end.i554, %if.end.i
  %.sink = phi i32 [ %33, %if.end.i ], [ %44, %if.end.i554 ], [ %55, %if.end.i577 ], [ %66, %if.end.i600 ], [ %77, %if.end.i623 ]
  %push_pos.i603.sink = phi ptr [ %push_pos.i, %if.end.i ], [ %push_pos.i534, %if.end.i554 ], [ %push_pos.i557, %if.end.i577 ], [ %push_pos.i580, %if.end.i600 ], [ %push_pos.i603, %if.end.i623 ]
  %arrayidx130.sink.ph = phi ptr [ %arrayidx50, %if.end.i ], [ %arrayidx70, %if.end.i554 ], [ %arrayidx90, %if.end.i577 ], [ %arrayidx110, %if.end.i600 ], [ %arrayidx130, %if.end.i623 ]
  %inc.i = add i32 %.sink, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i)
  %cmp10.i621 = icmp ugt i32 %inc.i, 15
  %spec.store.select.i622 = select i1 %cmp10.i621, i32 0, i32 %inc.i
  %83 = ptrtoint ptr %push_pos.i603.sink to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.store.select.i622, ptr %push_pos.i603.sink, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %lor.lhs.false.i608.sw.epilog.sink.split_crit_edge, %if.then135.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i585.sw.epilog.sink.split_crit_edge, %if.then115.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i562.sw.epilog.sink.split_crit_edge, %if.then95.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i539.sw.epilog.sink.split_crit_edge, %if.then75.sw.epilog.sink.split_crit_edge, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge, %if.then55.sw.epilog.sink.split_crit_edge
  %arrayidx130.sink = phi ptr [ %arrayidx50, %if.then55.sw.epilog.sink.split_crit_edge ], [ %arrayidx50, %lor.lhs.false.i.sw.epilog.sink.split_crit_edge ], [ %arrayidx70, %if.then75.sw.epilog.sink.split_crit_edge ], [ %arrayidx70, %lor.lhs.false.i539.sw.epilog.sink.split_crit_edge ], [ %arrayidx90, %if.then95.sw.epilog.sink.split_crit_edge ], [ %arrayidx90, %lor.lhs.false.i562.sw.epilog.sink.split_crit_edge ], [ %arrayidx110, %if.then115.sw.epilog.sink.split_crit_edge ], [ %arrayidx110, %lor.lhs.false.i585.sw.epilog.sink.split_crit_edge ], [ %arrayidx130, %if.then135.sw.epilog.sink.split_crit_edge ], [ %arrayidx130, %lor.lhs.false.i608.sw.epilog.sink.split_crit_edge ], [ %arrayidx130.sink.ph, %sw.epilog.sink.split.sink.split ]
  %84 = ptrtoint ptr %arrayidx130.sink to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %14, ptr %arrayidx130.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb124.sw.epilog_crit_edge, %sw.bb104.sw.epilog_crit_edge, %sw.bb84.sw.epilog_crit_edge, %sw.bb64.sw.epilog_crit_edge, %sw.bb47.sw.epilog_crit_edge, %if.then43.sw.epilog_crit_edge
  %85 = ptrtoint ptr %mixer_src_ch29 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %mixer_src_ch28.0792796, ptr %mixer_src_ch29, align 1
  br label %sw.epilog333

sw.bb146:                                         ; preds = %for.body12.sw.bb146_crit_edge, %for.body12.sw.bb146_crit_edge816
  %86 = ptrtoint ptr %mixer_ch150 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mixer_ch150, align 2
  %conv151 = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %87)
  %cmp152 = icmp ult i8 %87, 4
  br i1 %cmp152, label %if.then154, label %sw.bb146.sw.epilog333_crit_edge

sw.bb146.sw.epilog333_crit_edge:                  ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then154:                                       ; preds = %sw.bb146
  %88 = zext i32 %conv17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv17, label %if.then154.sw.epilog333_crit_edge [
    i32 5, label %sw.bb156
    i32 6, label %sw.bb171
  ]

if.then154.sw.epilog333_crit_edge:                ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

sw.bb156:                                         ; preds = %if.then154
  %arrayidx159 = getelementptr [4 x i8], ptr %output, i32 0, i32 %conv151
  %89 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx159, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %14)
  %cmp162.not = icmp eq i8 %90, %14
  br i1 %cmp162.not, label %sw.bb156.sw.epilog333_crit_edge, label %if.then164

sw.bb156.sw.epilog333_crit_edge:                  ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then164:                                       ; preds = %sw.bb156
  %91 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %message_parser, align 8
  %push_pos.i626 = getelementptr inbounds %struct.msg_parser, ptr %92, i32 0, i32 10
  %93 = ptrtoint ptr %push_pos.i626 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %push_pos.i626, align 4
  %95 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i628 = icmp eq ptr %96, null
  br i1 %tobool.not.i628, label %if.then164.queue_event.exit644_crit_edge, label %lor.lhs.false.i631

if.then164.queue_event.exit644_crit_edge:         ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit644

lor.lhs.false.i631:                               ; preds = %if.then164
  %used.i629 = getelementptr inbounds %struct.snd_hwdep, ptr %96, i32 0, i32 14
  %97 = ptrtoint ptr %used.i629 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %used.i629, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i630 = icmp eq i32 %98, 0
  br i1 %cmp.i630, label %lor.lhs.false.i631.queue_event.exit644_crit_edge, label %if.end.i643

lor.lhs.false.i631.queue_event.exit644_crit_edge: ; preds = %lor.lhs.false.i631
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit644

if.end.i643:                                      ; preds = %lor.lhs.false.i631
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i635 = shl nuw nsw i32 %conv151, 16
  %conv8.i637 = zext i8 %14 to i32
  %or.i636 = or i32 %shl4.i635, %conv8.i637
  %or9.i638 = or i32 %or.i636, 83886080
  %arrayidx.i639 = getelementptr %struct.msg_parser, ptr %92, i32 0, i32 9, i32 %94
  %99 = ptrtoint ptr %arrayidx.i639 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or9.i638, ptr %arrayidx.i639, align 4
  %inc.i640 = add i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i640)
  %cmp10.i641 = icmp ugt i32 %inc.i640, 15
  %spec.store.select.i642 = select i1 %cmp10.i641, i32 0, i32 %inc.i640
  %100 = ptrtoint ptr %push_pos.i626 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.store.select.i642, ptr %push_pos.i626, align 4
  br label %queue_event.exit644

queue_event.exit644:                              ; preds = %if.end.i643, %lor.lhs.false.i631.queue_event.exit644_crit_edge, %if.then164.queue_event.exit644_crit_edge
  %101 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %14, ptr %arrayidx159, align 1
  br label %sw.epilog333

sw.bb171:                                         ; preds = %if.then154
  %arrayidx175 = getelementptr %struct.msg_parser, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 1, i32 %conv151
  %102 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx175, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %14)
  %cmp178.not = icmp eq i8 %103, %14
  br i1 %cmp178.not, label %sw.bb171.sw.epilog333_crit_edge, label %if.then180

sw.bb171.sw.epilog333_crit_edge:                  ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then180:                                       ; preds = %sw.bb171
  %104 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %message_parser, align 8
  %push_pos.i646 = getelementptr inbounds %struct.msg_parser, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %push_pos.i646 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %push_pos.i646, align 4
  %108 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i648 = icmp eq ptr %109, null
  br i1 %tobool.not.i648, label %if.then180.queue_event.exit664_crit_edge, label %lor.lhs.false.i651

if.then180.queue_event.exit664_crit_edge:         ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit664

lor.lhs.false.i651:                               ; preds = %if.then180
  %used.i649 = getelementptr inbounds %struct.snd_hwdep, ptr %109, i32 0, i32 14
  %110 = ptrtoint ptr %used.i649 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %used.i649, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i650 = icmp eq i32 %111, 0
  br i1 %cmp.i650, label %lor.lhs.false.i651.queue_event.exit664_crit_edge, label %if.end.i663

lor.lhs.false.i651.queue_event.exit664_crit_edge: ; preds = %lor.lhs.false.i651
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit664

if.end.i663:                                      ; preds = %lor.lhs.false.i651
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i655 = shl nuw nsw i32 %conv151, 16
  %conv8.i657 = zext i8 %14 to i32
  %or.i656 = or i32 %shl4.i655, %conv8.i657
  %or9.i658 = or i32 %or.i656, 100663296
  %arrayidx.i659 = getelementptr %struct.msg_parser, ptr %105, i32 0, i32 9, i32 %107
  %112 = ptrtoint ptr %arrayidx.i659 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or9.i658, ptr %arrayidx.i659, align 4
  %inc.i660 = add i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i660)
  %cmp10.i661 = icmp ugt i32 %inc.i660, 15
  %spec.store.select.i662 = select i1 %cmp10.i661, i32 0, i32 %inc.i660
  %113 = ptrtoint ptr %push_pos.i646 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.store.select.i662, ptr %push_pos.i646, align 4
  br label %queue_event.exit664

queue_event.exit664:                              ; preds = %if.end.i663, %lor.lhs.false.i651.queue_event.exit664_crit_edge, %if.then180.queue_event.exit664_crit_edge
  %114 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %14, ptr %arrayidx175, align 1
  br label %sw.epilog333

sw.bb190:                                         ; preds = %for.body12
  %115 = ptrtoint ptr %output192 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %output192, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %14)
  %cmp195.not = icmp eq i8 %116, %14
  br i1 %cmp195.not, label %sw.bb190.sw.epilog333_crit_edge, label %if.then197

sw.bb190.sw.epilog333_crit_edge:                  ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then197:                                       ; preds = %sw.bb190
  %117 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %message_parser, align 8
  %push_pos.i666 = getelementptr inbounds %struct.msg_parser, ptr %118, i32 0, i32 10
  %119 = ptrtoint ptr %push_pos.i666 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %push_pos.i666, align 4
  %121 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i668 = icmp eq ptr %122, null
  br i1 %tobool.not.i668, label %if.then197.queue_event.exit681_crit_edge, label %lor.lhs.false.i671

if.then197.queue_event.exit681_crit_edge:         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit681

lor.lhs.false.i671:                               ; preds = %if.then197
  %used.i669 = getelementptr inbounds %struct.snd_hwdep, ptr %122, i32 0, i32 14
  %123 = ptrtoint ptr %used.i669 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %used.i669, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i670 = icmp eq i32 %124, 0
  br i1 %cmp.i670, label %lor.lhs.false.i671.queue_event.exit681_crit_edge, label %if.end.i680

lor.lhs.false.i671.queue_event.exit681_crit_edge: ; preds = %lor.lhs.false.i671
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit681

if.end.i680:                                      ; preds = %lor.lhs.false.i671
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i674 = zext i8 %14 to i32
  %or9.i675 = or i32 %conv8.i674, 117440512
  %arrayidx.i676 = getelementptr %struct.msg_parser, ptr %118, i32 0, i32 9, i32 %120
  %125 = ptrtoint ptr %arrayidx.i676 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or9.i675, ptr %arrayidx.i676, align 4
  %inc.i677 = add i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i677)
  %cmp10.i678 = icmp ugt i32 %inc.i677, 15
  %spec.store.select.i679 = select i1 %cmp10.i678, i32 0, i32 %inc.i677
  %126 = ptrtoint ptr %push_pos.i666 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %spec.store.select.i679, ptr %push_pos.i666, align 4
  br label %queue_event.exit681

queue_event.exit681:                              ; preds = %if.end.i680, %lor.lhs.false.i671.queue_event.exit681_crit_edge, %if.then197.queue_event.exit681_crit_edge
  %127 = ptrtoint ptr %output192 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %14, ptr %output192, align 1
  br label %sw.epilog333

sw.bb202:                                         ; preds = %for.body12
  %128 = ptrtoint ptr %hp_paired_volume to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %hp_paired_volume, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %129, i8 %14)
  %cmp207.not = icmp eq i8 %129, %14
  br i1 %cmp207.not, label %sw.bb202.sw.epilog333_crit_edge, label %if.then209

sw.bb202.sw.epilog333_crit_edge:                  ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then209:                                       ; preds = %sw.bb202
  %130 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %message_parser, align 8
  %push_pos.i683 = getelementptr inbounds %struct.msg_parser, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %push_pos.i683 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %push_pos.i683, align 4
  %134 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i685 = icmp eq ptr %135, null
  br i1 %tobool.not.i685, label %if.then209.queue_event.exit698_crit_edge, label %lor.lhs.false.i688

if.then209.queue_event.exit698_crit_edge:         ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit698

lor.lhs.false.i688:                               ; preds = %if.then209
  %used.i686 = getelementptr inbounds %struct.snd_hwdep, ptr %135, i32 0, i32 14
  %136 = ptrtoint ptr %used.i686 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %used.i686, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i687 = icmp eq i32 %137, 0
  br i1 %cmp.i687, label %lor.lhs.false.i688.queue_event.exit698_crit_edge, label %if.end.i697

lor.lhs.false.i688.queue_event.exit698_crit_edge: ; preds = %lor.lhs.false.i688
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit698

if.end.i697:                                      ; preds = %lor.lhs.false.i688
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i691 = zext i8 %14 to i32
  %or9.i692 = or i32 %conv8.i691, 134217728
  %arrayidx.i693 = getelementptr %struct.msg_parser, ptr %131, i32 0, i32 9, i32 %133
  %138 = ptrtoint ptr %arrayidx.i693 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or9.i692, ptr %arrayidx.i693, align 4
  %inc.i694 = add i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i694)
  %cmp10.i695 = icmp ugt i32 %inc.i694, 15
  %spec.store.select.i696 = select i1 %cmp10.i695, i32 0, i32 %inc.i694
  %139 = ptrtoint ptr %push_pos.i683 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %spec.store.select.i696, ptr %push_pos.i683, align 4
  br label %queue_event.exit698

queue_event.exit698:                              ; preds = %if.end.i697, %lor.lhs.false.i688.queue_event.exit698_crit_edge, %if.then209.queue_event.exit698_crit_edge
  %140 = ptrtoint ptr %hp_paired_volume to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %14, ptr %hp_paired_volume, align 1
  br label %sw.epilog333

sw.bb214:                                         ; preds = %for.body12
  %141 = ptrtoint ptr %hp_paired_assignment to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hp_paired_assignment, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %14)
  %cmp219.not = icmp eq i8 %142, %14
  br i1 %cmp219.not, label %sw.bb214.sw.epilog333_crit_edge, label %if.then221

sw.bb214.sw.epilog333_crit_edge:                  ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then221:                                       ; preds = %sw.bb214
  %143 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %message_parser, align 8
  %push_pos.i700 = getelementptr inbounds %struct.msg_parser, ptr %144, i32 0, i32 10
  %145 = ptrtoint ptr %push_pos.i700 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %push_pos.i700, align 4
  %147 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i702 = icmp eq ptr %148, null
  br i1 %tobool.not.i702, label %if.then221.queue_event.exit715_crit_edge, label %lor.lhs.false.i705

if.then221.queue_event.exit715_crit_edge:         ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit715

lor.lhs.false.i705:                               ; preds = %if.then221
  %used.i703 = getelementptr inbounds %struct.snd_hwdep, ptr %148, i32 0, i32 14
  %149 = ptrtoint ptr %used.i703 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %used.i703, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i704 = icmp eq i32 %150, 0
  br i1 %cmp.i704, label %lor.lhs.false.i705.queue_event.exit715_crit_edge, label %if.end.i714

lor.lhs.false.i705.queue_event.exit715_crit_edge: ; preds = %lor.lhs.false.i705
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit715

if.end.i714:                                      ; preds = %lor.lhs.false.i705
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i708 = zext i8 %14 to i32
  %or9.i709 = or i32 %conv8.i708, 150994944
  %arrayidx.i710 = getelementptr %struct.msg_parser, ptr %144, i32 0, i32 9, i32 %146
  %151 = ptrtoint ptr %arrayidx.i710 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or9.i709, ptr %arrayidx.i710, align 4
  %inc.i711 = add i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i711)
  %cmp10.i712 = icmp ugt i32 %inc.i711, 15
  %spec.store.select.i713 = select i1 %cmp10.i712, i32 0, i32 %inc.i711
  %152 = ptrtoint ptr %push_pos.i700 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %spec.store.select.i713, ptr %push_pos.i700, align 4
  br label %queue_event.exit715

queue_event.exit715:                              ; preds = %if.end.i714, %lor.lhs.false.i705.queue_event.exit715_crit_edge, %if.then221.queue_event.exit715_crit_edge
  %153 = ptrtoint ptr %hp_paired_assignment to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %14, ptr %hp_paired_assignment, align 1
  br label %sw.epilog333

sw.bb226:                                         ; preds = %for.body12
  %154 = ptrtoint ptr %line_input to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %line_input, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %14)
  %cmp230.not = icmp eq i8 %155, %14
  br i1 %cmp230.not, label %sw.bb226.sw.epilog333_crit_edge, label %if.then232

sw.bb226.sw.epilog333_crit_edge:                  ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then232:                                       ; preds = %sw.bb226
  %156 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %message_parser, align 8
  %push_pos.i717 = getelementptr inbounds %struct.msg_parser, ptr %157, i32 0, i32 10
  %158 = ptrtoint ptr %push_pos.i717 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %push_pos.i717, align 4
  %160 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i719 = icmp eq ptr %161, null
  br i1 %tobool.not.i719, label %if.then232.queue_event.exit732_crit_edge, label %lor.lhs.false.i722

if.then232.queue_event.exit732_crit_edge:         ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit732

lor.lhs.false.i722:                               ; preds = %if.then232
  %used.i720 = getelementptr inbounds %struct.snd_hwdep, ptr %161, i32 0, i32 14
  %162 = ptrtoint ptr %used.i720 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %used.i720, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i721 = icmp eq i32 %163, 0
  br i1 %cmp.i721, label %lor.lhs.false.i722.queue_event.exit732_crit_edge, label %if.end.i731

lor.lhs.false.i722.queue_event.exit732_crit_edge: ; preds = %lor.lhs.false.i722
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit732

if.end.i731:                                      ; preds = %lor.lhs.false.i722
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i725 = zext i8 %14 to i32
  %or9.i726 = or i32 %conv8.i725, 218103808
  %arrayidx.i727 = getelementptr %struct.msg_parser, ptr %157, i32 0, i32 9, i32 %159
  %164 = ptrtoint ptr %arrayidx.i727 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or9.i726, ptr %arrayidx.i727, align 4
  %inc.i728 = add i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i728)
  %cmp10.i729 = icmp ugt i32 %inc.i728, 15
  %spec.store.select.i730 = select i1 %cmp10.i729, i32 0, i32 %inc.i728
  %165 = ptrtoint ptr %push_pos.i717 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %spec.store.select.i730, ptr %push_pos.i717, align 4
  br label %queue_event.exit732

queue_event.exit732:                              ; preds = %if.end.i731, %lor.lhs.false.i722.queue_event.exit732_crit_edge, %if.then232.queue_event.exit732_crit_edge
  %166 = ptrtoint ptr %line_input to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %14, ptr %line_input, align 1
  br label %sw.epilog333

sw.bb237:                                         ; preds = %for.body12
  %167 = ptrtoint ptr %nominal_level_flag to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %nominal_level_flag, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %168, i8 %14)
  %cmp242.not = icmp eq i8 %168, %14
  br i1 %cmp242.not, label %sw.bb237.sw.epilog333_crit_edge, label %if.then244

sw.bb237.sw.epilog333_crit_edge:                  ; preds = %sw.bb237
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.then244:                                       ; preds = %sw.bb237
  %169 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %message_parser, align 8
  %push_pos.i734 = getelementptr inbounds %struct.msg_parser, ptr %170, i32 0, i32 10
  %171 = ptrtoint ptr %push_pos.i734 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %push_pos.i734, align 4
  %173 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i736 = icmp eq ptr %174, null
  br i1 %tobool.not.i736, label %if.then244.queue_event.exit749_crit_edge, label %lor.lhs.false.i739

if.then244.queue_event.exit749_crit_edge:         ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit749

lor.lhs.false.i739:                               ; preds = %if.then244
  %used.i737 = getelementptr inbounds %struct.snd_hwdep, ptr %174, i32 0, i32 14
  %175 = ptrtoint ptr %used.i737 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %used.i737, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i738 = icmp eq i32 %176, 0
  br i1 %cmp.i738, label %lor.lhs.false.i739.queue_event.exit749_crit_edge, label %if.end.i748

lor.lhs.false.i739.queue_event.exit749_crit_edge: ; preds = %lor.lhs.false.i739
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue_event.exit749

if.end.i748:                                      ; preds = %lor.lhs.false.i739
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i742 = zext i8 %14 to i32
  %or9.i743 = or i32 %conv8.i742, 234881024
  %arrayidx.i744 = getelementptr %struct.msg_parser, ptr %170, i32 0, i32 9, i32 %172
  %177 = ptrtoint ptr %arrayidx.i744 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %or9.i743, ptr %arrayidx.i744, align 4
  %inc.i745 = add i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i745)
  %cmp10.i746 = icmp ugt i32 %inc.i745, 15
  %spec.store.select.i747 = select i1 %cmp10.i746, i32 0, i32 %inc.i745
  %178 = ptrtoint ptr %push_pos.i734 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %spec.store.select.i747, ptr %push_pos.i734, align 4
  br label %queue_event.exit749

queue_event.exit749:                              ; preds = %if.end.i748, %lor.lhs.false.i739.queue_event.exit749_crit_edge, %if.then244.queue_event.exit749_crit_edge
  %179 = ptrtoint ptr %nominal_level_flag to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %14, ptr %nominal_level_flag, align 1
  br label %sw.epilog333

sw.bb249:                                         ; preds = %for.body12.sw.bb249_crit_edge, %for.body12.sw.bb249_crit_edge817
  %180 = ptrtoint ptr %prev_msg_type to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %prev_msg_type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %181, i8 %12)
  %cmp255.not = icmp eq i8 %181, %12
  br i1 %cmp255.not, label %if.end260, label %sw.bb249.if.then264_crit_edge

sw.bb249.if.then264_crit_edge:                    ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then264

if.end260:                                        ; preds = %sw.bb249
  %182 = ptrtoint ptr %input_ch252 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %input_ch252, align 4
  %inc259 = add i8 %183, 1
  %conv261 = zext i8 %inc259 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc259)
  %cmp262 = icmp ult i8 %inc259, 10
  br i1 %cmp262, label %if.end260.if.then264_crit_edge, label %if.end260.sw.epilog333_crit_edge

if.end260.sw.epilog333_crit_edge:                 ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog333

if.end260.if.then264_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then264

if.then264:                                       ; preds = %if.end260.if.then264_crit_edge, %sw.bb249.if.then264_crit_edge
  %conv261802 = phi i32 [ %conv261, %if.end260.if.then264_crit_edge ], [ 0, %sw.bb249.if.then264_crit_edge ]
  %input_ch.0801 = phi i8 [ %inc259, %if.end260.if.then264_crit_edge ], [ 0, %sw.bb249.if.then264_crit_edge ]
  %184 = zext i32 %conv17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv17, label %if.then264.sw.epilog295_crit_edge [
    i32 21, label %sw.bb266
    i32 22, label %sw.bb279
  ]

if.then264.sw.epilog295_crit_edge:                ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295

sw.bb266:                                         ; preds = %if.then264
  %arrayidx268 = getelementptr [12 x i8], ptr %input, i32 0, i32 %conv261802
  %185 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx268, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %186, i8 %14)
  %cmp271.not = icmp eq i8 %186, %14
  br i1 %cmp271.not, label %sw.bb266.sw.epilog295_crit_edge, label %if.then273

sw.bb266.sw.epilog295_crit_edge:                  ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295

if.then273:                                       ; preds = %sw.bb266
  %187 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %message_parser, align 8
  %push_pos.i751 = getelementptr inbounds %struct.msg_parser, ptr %188, i32 0, i32 10
  %189 = ptrtoint ptr %push_pos.i751 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %push_pos.i751, align 4
  %191 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i753 = icmp eq ptr %192, null
  br i1 %tobool.not.i753, label %if.then273.sw.epilog295.sink.split_crit_edge, label %lor.lhs.false.i756

if.then273.sw.epilog295.sink.split_crit_edge:     ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295.sink.split

lor.lhs.false.i756:                               ; preds = %if.then273
  %used.i754 = getelementptr inbounds %struct.snd_hwdep, ptr %192, i32 0, i32 14
  %193 = ptrtoint ptr %used.i754 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %used.i754, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i755 = icmp eq i32 %194, 0
  br i1 %cmp.i755, label %lor.lhs.false.i756.sw.epilog295.sink.split_crit_edge, label %if.end.i768

lor.lhs.false.i756.sw.epilog295.sink.split_crit_edge: ; preds = %lor.lhs.false.i756
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295.sink.split

if.end.i768:                                      ; preds = %lor.lhs.false.i756
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i760 = shl nuw nsw i32 %conv261802, 16
  %conv8.i762 = zext i8 %14 to i32
  %or.i761 = or i32 %shl4.i760, %conv8.i762
  %or9.i763 = or i32 %or.i761, 352321536
  %arrayidx.i764 = getelementptr %struct.msg_parser, ptr %188, i32 0, i32 9, i32 %190
  %195 = ptrtoint ptr %arrayidx.i764 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or9.i763, ptr %arrayidx.i764, align 4
  br label %sw.epilog295.sink.split.sink.split

sw.bb279:                                         ; preds = %if.then264
  %arrayidx283 = getelementptr %struct.msg_parser, ptr %1, i32 0, i32 3, i32 3, i32 1, i32 %conv261802
  %196 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx283, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %197, i8 %14)
  %cmp286.not = icmp eq i8 %197, %14
  br i1 %cmp286.not, label %sw.bb279.sw.epilog295_crit_edge, label %if.then288

sw.bb279.sw.epilog295_crit_edge:                  ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295

if.then288:                                       ; preds = %sw.bb279
  %198 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %message_parser, align 8
  %push_pos.i771 = getelementptr inbounds %struct.msg_parser, ptr %199, i32 0, i32 10
  %200 = ptrtoint ptr %push_pos.i771 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %push_pos.i771, align 4
  %202 = ptrtoint ptr %hwdep.i772 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hwdep.i772, align 8
  %tobool.not.i773 = icmp eq ptr %203, null
  br i1 %tobool.not.i773, label %if.then288.sw.epilog295.sink.split_crit_edge, label %lor.lhs.false.i776

if.then288.sw.epilog295.sink.split_crit_edge:     ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295.sink.split

lor.lhs.false.i776:                               ; preds = %if.then288
  %used.i774 = getelementptr inbounds %struct.snd_hwdep, ptr %203, i32 0, i32 14
  %204 = ptrtoint ptr %used.i774 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %used.i774, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp.i775 = icmp eq i32 %205, 0
  br i1 %cmp.i775, label %lor.lhs.false.i776.sw.epilog295.sink.split_crit_edge, label %if.end.i788

lor.lhs.false.i776.sw.epilog295.sink.split_crit_edge: ; preds = %lor.lhs.false.i776
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog295.sink.split

if.end.i788:                                      ; preds = %lor.lhs.false.i776
  call void @__sanitizer_cov_trace_pc() #6
  %shl4.i780 = shl nuw nsw i32 %conv261802, 16
  %conv8.i782 = zext i8 %14 to i32
  %or.i781 = or i32 %shl4.i780, %conv8.i782
  %or9.i783 = or i32 %or.i781, 369098752
  %arrayidx.i784 = getelementptr %struct.msg_parser, ptr %199, i32 0, i32 9, i32 %201
  %206 = ptrtoint ptr %arrayidx.i784 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or9.i783, ptr %arrayidx.i784, align 4
  br label %sw.epilog295.sink.split.sink.split

sw.epilog295.sink.split.sink.split:               ; preds = %if.end.i788, %if.end.i768
  %.sink811 = phi i32 [ %190, %if.end.i768 ], [ %201, %if.end.i788 ]
  %push_pos.i771.sink = phi ptr [ %push_pos.i751, %if.end.i768 ], [ %push_pos.i771, %if.end.i788 ]
  %arrayidx283.sink.ph = phi ptr [ %arrayidx268, %if.end.i768 ], [ %arrayidx283, %if.end.i788 ]
  %inc.i765 = add i32 %.sink811, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i765)
  %cmp10.i786 = icmp ugt i32 %inc.i765, 15
  %spec.store.select.i787 = select i1 %cmp10.i786, i32 0, i32 %inc.i765
  %207 = ptrtoint ptr %push_pos.i771.sink to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.store.select.i787, ptr %push_pos.i771.sink, align 4
  br label %sw.epilog295.sink.split

sw.epilog295.sink.split:                          ; preds = %sw.epilog295.sink.split.sink.split, %lor.lhs.false.i776.sw.epilog295.sink.split_crit_edge, %if.then288.sw.epilog295.sink.split_crit_edge, %lor.lhs.false.i756.sw.epilog295.sink.split_crit_edge, %if.then273.sw.epilog295.sink.split_crit_edge
  %arrayidx283.sink = phi ptr [ %arrayidx268, %if.then273.sw.epilog295.sink.split_crit_edge ], [ %arrayidx268, %lor.lhs.false.i756.sw.epilog295.sink.split_crit_edge ], [ %arrayidx283, %if.then288.sw.epilog295.sink.split_crit_edge ], [ %arrayidx283, %lor.lhs.false.i776.sw.epilog295.sink.split_crit_edge ], [ %arrayidx283.sink.ph, %sw.epilog295.sink.split.sink.split ]
  %208 = ptrtoint ptr %arrayidx283.sink to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %14, ptr %arrayidx283.sink, align 1
  br label %sw.epilog295

sw.epilog295:                                     ; preds = %sw.epilog295.sink.split, %sw.bb279.sw.epilog295_crit_edge, %sw.bb266.sw.epilog295_crit_edge, %if.then264.sw.epilog295_crit_edge
  %209 = ptrtoint ptr %input_ch252 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %input_ch.0801, ptr %input_ch252, align 4
  br label %sw.epilog333

sw.bb299:                                         ; preds = %for.body12
  %pos300.0.in = getelementptr i8, ptr %buffer.0804, i32 %pos300.0.in.v
  %210 = ptrtoint ptr %pos300.0.in to i32
  call void @__asan_load1_noabort(i32 %210)
  %pos300.0 = load i8, ptr %pos300.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %pos300.0)
  %cmp308 = icmp ult i8 %pos300.0, 24
  br i1 %cmp308, label %if.then310, label %if.else313

if.then310:                                       ; preds = %sw.bb299
  call void @__sanitizer_cov_trace_pc() #6
  %conv307 = zext i8 %pos300.0 to i32
  %arrayidx312 = getelementptr [48 x i8], ptr %meter324, i32 0, i32 %conv307
  %211 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %14, ptr %arrayidx312, align 1
  br label %cleanup

if.else313:                                       ; preds = %sw.bb299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pos300.0)
  %cmp315 = icmp slt i8 %pos300.0, 0
  br i1 %cmp315, label %if.then317, label %if.else313.cleanup_crit_edge

if.else313.cleanup_crit_edge:                     ; preds = %if.else313
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then317:                                       ; preds = %if.else313
  %sub = add i8 %pos300.0, -104
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %sub)
  %cmp321 = icmp ult i8 %sub, 48
  br i1 %cmp321, label %if.then323, label %if.then317.cleanup_crit_edge

if.then317.cleanup_crit_edge:                     ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then323:                                       ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #6
  %conv320 = zext i8 %sub to i32
  %arrayidx327 = getelementptr [48 x i8], ptr %meter324, i32 0, i32 %conv320
  %212 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %14, ptr %arrayidx327, align 1
  br label %cleanup

sw.epilog333:                                     ; preds = %sw.epilog295, %if.end260.sw.epilog333_crit_edge, %queue_event.exit749, %sw.bb237.sw.epilog333_crit_edge, %queue_event.exit732, %sw.bb226.sw.epilog333_crit_edge, %queue_event.exit715, %sw.bb214.sw.epilog333_crit_edge, %queue_event.exit698, %sw.bb202.sw.epilog333_crit_edge, %queue_event.exit681, %sw.bb190.sw.epilog333_crit_edge, %queue_event.exit664, %sw.bb171.sw.epilog333_crit_edge, %queue_event.exit644, %sw.bb156.sw.epilog333_crit_edge, %if.then154.sw.epilog333_crit_edge, %sw.bb146.sw.epilog333_crit_edge, %sw.epilog, %if.end35.thread.sw.epilog333_crit_edge, %if.end35.sw.epilog333_crit_edge, %if.then, %sw.bb.sw.epilog333_crit_edge, %for.body12.sw.epilog333_crit_edge, %for.body12.sw.epilog333_crit_edge818
  %213 = ptrtoint ptr %prev_msg_type to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %12, ptr %prev_msg_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog333, %if.then323, %if.then317.cleanup_crit_edge, %if.else313.cleanup_crit_edge, %if.then310, %for.body12.cleanup_crit_edge
  %inc337 = add nuw i32 %j.0805, 1
  %exitcond.not = icmp eq i32 %inc337, %7
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body12_crit_edge

cleanup.for.body12_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc339 = add nuw i32 %i.0807, 1
  %exitcond808.not = icmp eq i32 %inc339, %desc_count
  br i1 %exitcond808.not, label %for.end.for.end340_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.for.end340_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end340

for.end340:                                       ; preds = %for.end.for.end340_crit_edge, %entry.for.end340_crit_edge
  %214 = ptrtoint ptr %push_pos to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %push_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %215)
  %cmp342.not = icmp eq i32 %5, %215
  br i1 %cmp342.not, label %for.end340.if.end345_crit_edge, label %if.then344

for.end340.if.end345_crit_edge:                   ; preds = %for.end340
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end345

if.then344:                                       ; preds = %for.end340
  call void @__sanitizer_cov_trace_pc() #6
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %for.end340.if.end345_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_register_dsp_message_parser_copy_meter(ptr nocapture noundef readonly %motu, ptr nocapture noundef writeonly %meter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  %meter5 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %meter, ptr %meter5, i32 48)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_register_dsp_message_parser_copy_parameter(ptr nocapture noundef readonly %motu, ptr nocapture noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  %param5 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %param, ptr %param5, i32 512)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_motu_register_dsp_message_parser_count_event(ptr nocapture noundef readonly %motu) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %pull_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pull_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pull_pos, align 4
  %push_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %push_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %push_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp ult i32 %5, %3
  %retval.0.p.v = select i1 %cmp, i32 16, i32 0
  %retval.0.p = sub i32 %5, %3
  %retval.0 = add i32 %retval.0.p, %retval.0.p.v
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_motu_register_dsp_message_parser_copy_event(ptr nocapture noundef readonly %motu, ptr nocapture noundef writeonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %pull_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pull_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pull_pos, align 4
  %push_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %push_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %push_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  %arrayidx = getelementptr %struct.msg_parser, ptr %1, i32 0, i32 9, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %event, align 4
  %inc = add i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp6 = icmp ugt i32 %inc, 15
  %spec.store.select = select i1 %cmp6, i32 0, i32 %inc
  %9 = ptrtoint ptr %pull_pos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %pull_pos, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %10 = xor i1 %cmp, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @snd_motu_register_dsp_message_parser_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-register-dsp-message-parser.c", i32 107, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
