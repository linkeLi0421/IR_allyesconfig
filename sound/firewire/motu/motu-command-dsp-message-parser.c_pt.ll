; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-command-dsp-message-parser.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-command-dsp-message-parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.msg_parser = type { %struct.spinlock, i32, i32, i32, i32, i32, i64, %struct.snd_firewire_motu_command_dsp_meter }
%struct.snd_firewire_motu_command_dsp_meter = type { [400 x i32] }
%struct.pkt_desc = type { i32, i32, i32, i32, ptr }

@snd_motu_command_dsp_message_parser_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&parser->lock\00", [18 x i8] zeroinitializer }, align 32
@switch.table.snd_motu_command_dsp_message_parser_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 2, i32 4, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [57 x i8] c"../sound/firewire/motu/motu-command-dsp-message-parser.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 43, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [54 x i8] c"switch.table.snd_motu_command_dsp_message_parser_init\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_motu_command_dsp_message_parser_new.__key, ptr @.str, ptr @switch.table.snd_motu_command_dsp_message_parser_init], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_command_dsp_message_parser_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_motu_command_dsp_message_parser_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_command_dsp_message_parser_new(ptr nocapture noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %motu, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef 1672, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str, ptr noundef nonnull @snd_motu_command_dsp_message_parser_new.__key, i16 noundef signext 3) #4
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %2 = ptrtoint ptr %message_parser to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %message_parser, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_motu_command_dsp_message_parser_init(ptr nocapture noundef readonly %motu, i32 noundef %sfc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %state = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %switch.tableidx = add i32 %sfc, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 4
  br i1 %3, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_motu_command_dsp_message_parser_init, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %entry.sw.epilog_crit_edge ]
  %interval4 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %interval4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %interval4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_command_dsp_message_parser_parse(ptr nocapture noundef readonly %motu, ptr nocapture noundef readonly %descs, i32 noundef %desc_count, i32 noundef %data_block_quadlets) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %interval1 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %interval1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval1, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count)
  %cmp6131.not = icmp eq i32 %desc_count, 0
  br i1 %cmp6131.not, label %entry.for.end86_crit_edge, label %for.body.lr.ph

entry.for.end86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 1
  %message_count20 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 3
  %value26 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 6
  %fragment_pos = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 4
  %value_index = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 5
  %meter = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc85, %for.end.for.body_crit_edge ]
  %data_blocks8 = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.0132, i32 2
  %4 = ptrtoint ptr %data_blocks8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_blocks8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10128.not = icmp eq i32 %5, 0
  br i1 %cmp10128.not, label %for.body.for.end_crit_edge, label %for.body12.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body12.preheader:                             ; preds = %for.body
  %ctx_payload = getelementptr %struct.pkt_desc, ptr %descs, i32 %i.0132, i32 4
  %6 = ptrtoint ptr %ctx_payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx_payload, align 4
  br label %for.body12

for.body12:                                       ; preds = %sw.epilog.for.body12_crit_edge, %for.body12.preheader
  %j.0130 = phi i32 [ %inc83, %sw.epilog.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %buffer.0129 = phi ptr [ %add.ptr13, %sw.epilog.for.body12_crit_edge ], [ %7, %for.body12.preheader ]
  %add.ptr13 = getelementptr i32, ptr %buffer.0129, i32 %data_block_quadlets
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %for.body12
  %arrayidx = getelementptr i8, ptr %buffer.0129, i32 6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp15.not = icmp eq i8 %12, 0
  br i1 %cmp15.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %conv17 = zext i8 %12 to i64
  %13 = ptrtoint ptr %value26 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv17, ptr %value26, align 8
  %14 = ptrtoint ptr %message_count20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %message_count20, align 4
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body12
  %16 = ptrtoint ptr %message_count20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %message_count20, align 4
  %rem = urem i32 %17, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then23, label %sw.bb19.if.end36_crit_edge

sw.bb19.if.end36_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then23:                                        ; preds = %sw.bb19
  %arrayidx25 = getelementptr i8, ptr %buffer.0129, i32 6
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %20 = ptrtoint ptr %value26 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %value26, align 8
  %conv27 = zext i8 %19 to i64
  %or = tail call i64 @llvm.fshl.i64(i64 %conv27, i64 %21, i64 56)
  %22 = ptrtoint ptr %value26 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or, ptr %value26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or)
  %cmp30 = icmp eq i64 %or, -1
  br i1 %cmp30, label %if.then32, label %if.then23.if.end36_crit_edge

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 4
  %24 = ptrtoint ptr %fragment_pos to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fragment_pos, align 8
  %25 = ptrtoint ptr %value_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %value_index, align 4
  %26 = ptrtoint ptr %message_count20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %message_count20, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then23.if.end36_crit_edge, %sw.bb19.if.end36_crit_edge
  %27 = ptrtoint ptr %message_count20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %message_count20, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %message_count20, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body12
  %29 = ptrtoint ptr %message_count20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %message_count20, align 4
  %rem40 = urem i32 %30, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40)
  %cmp41 = icmp eq i32 %rem40, 0
  br i1 %cmp41, label %if.then43, label %sw.default.if.end80_crit_edge

sw.default.if.end80_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then43:                                        ; preds = %sw.default
  %arrayidx45 = getelementptr i8, ptr %buffer.0129, i32 6
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx45, align 1
  %33 = ptrtoint ptr %value26 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %value26, align 8
  %conv48 = zext i8 %32 to i64
  %or51 = tail call i64 @llvm.fshl.i64(i64 %conv48, i64 %34, i64 56)
  %35 = ptrtoint ptr %value26 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or51, ptr %value26, align 8
  %36 = ptrtoint ptr %fragment_pos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fragment_pos, align 8
  %inc53 = add i32 %37, 1
  store i32 %inc53, ptr %fragment_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc53)
  %cmp55 = icmp eq i32 %inc53, 4
  br i1 %cmp55, label %if.then57, label %if.then43.if.end71_crit_edge

if.then43.if.end71_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then57:                                        ; preds = %if.then43
  %38 = ptrtoint ptr %value_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 398, i32 %39)
  %cmp59 = icmp ult i32 %39, 398
  br i1 %cmp59, label %if.then61, label %if.then57.if.end67_crit_edge

if.then57.if.end67_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  %shr63 = lshr i64 %or51, 32
  %conv64 = trunc i64 %shr63 to i32
  %arrayidx66 = getelementptr [400 x i32], ptr %meter, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv64, ptr %arrayidx66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.then57.if.end67_crit_edge
  %41 = ptrtoint ptr %value_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value_index, align 4
  %inc69 = add i32 %42, 1
  store i32 %inc69, ptr %value_index, align 4
  %43 = ptrtoint ptr %fragment_pos to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %fragment_pos, align 8
  %44 = ptrtoint ptr %value26 to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %value26, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end67, %if.then43.if.end71_crit_edge
  %45 = phi i64 [ %.pr, %if.end67 ], [ %or51, %if.then43.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp73 = icmp eq i64 %45, -1
  br i1 %cmp73, label %if.then75, label %if.end71.if.end80_crit_edge

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %value_index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %value_index, align 4
  %47 = ptrtoint ptr %fragment_pos to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %fragment_pos, align 8
  %48 = ptrtoint ptr %message_count20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %message_count20, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end71.if.end80_crit_edge, %sw.default.if.end80_crit_edge
  %49 = ptrtoint ptr %message_count20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %message_count20, align 4
  %inc82 = add i32 %50, 1
  store i32 %inc82, ptr %message_count20, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end80, %if.end36, %if.then, %sw.bb.sw.epilog_crit_edge
  %inc83 = add nuw i32 %j.0130, 1
  %exitcond.not = icmp eq i32 %inc83, %5
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body12_crit_edge

sw.epilog.for.body12_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc85 = add nuw i32 %i.0132, 1
  %exitcond133.not = icmp eq i32 %inc85, %desc_count
  br i1 %exitcond133.not, label %for.end.for.end86_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.for.end86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86

for.end86:                                        ; preds = %for.end.for.end86_crit_edge, %entry.for.end86_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_command_dsp_message_parser_copy_meter(ptr nocapture noundef readonly %motu, ptr nocapture noundef writeonly %meter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %message_parser = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 20
  %0 = ptrtoint ptr %message_parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message_parser, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #4
  %meter5 = getelementptr inbounds %struct.msg_parser, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %meter, ptr %meter5, i32 1600)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @snd_motu_command_dsp_message_parser_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-command-dsp-message-parser.c", i32 43, i32 2}
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
