; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-stream.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
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
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@snd_motu_stream_reserve_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to set sampling rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_motu_stream_reserve_duplex\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/firewire/motu/motu-stream.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_motu_stream_reserve_duplex._entry_ptr = internal global ptr @snd_motu_stream_reserve_duplex._entry, section ".printk_index", align 4
@snd_motu_stream_start_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fail to start isochronous comm: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_motu_stream_start_duplex\00", [35 x i8] zeroinitializer }, align 32
@snd_motu_stream_start_duplex._entry_ptr = internal global ptr @snd_motu_stream_start_duplex._entry, section ".printk_index", align 4
@snd_motu_stream_start_duplex._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to enable frame fetching: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_motu_stream_start_duplex._entry_ptr.9 = internal global ptr @snd_motu_stream_start_duplex._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/firewire/motu/../amdtp-stream.h\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 161, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 270, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private constant [37 x i8] c"../sound/firewire/motu/motu-stream.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 304, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [41 x i8] c"../sound/firewire/motu/../amdtp-stream.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 348, i32 7 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @snd_motu_stream_reserve_duplex._entry, ptr @snd_motu_stream_reserve_duplex._entry_ptr, ptr @snd_motu_stream_start_duplex._entry, ptr @snd_motu_stream_start_duplex._entry.7, ptr @snd_motu_stream_start_duplex._entry_ptr, ptr @snd_motu_stream_start_duplex._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_stream_reserve_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_stream_start_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_stream_start_duplex._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_stream_cache_packet_formats(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol_version.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then10.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit

snd_motu_protocol_cache_packet_formats.exit:      ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call11.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge, label %if.end

snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_cache_packet_formats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %snd_motu_protocol_cache_packet_formats.exit
  %5 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec.i, align 8
  %flags = getelementptr inbounds %struct.snd_motu_spec, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end13.sink.split_crit_edge

if.end.if.end13.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.end
  %and5 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end13_crit_edge, label %if.else.if.end13.sink.split_crit_edge

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13.sink.split:                              ; preds = %if.else.if.end13.sink.split_crit_edge, %if.end.if.end13.sink.split_crit_edge
  %.sink49 = phi i8 [ 4, %if.end.if.end13.sink.split_crit_edge ], [ 8, %if.else.if.end13.sink.split_crit_edge ]
  %.sink = phi i8 [ 6, %if.end.if.end13.sink.split_crit_edge ], [ 7, %if.else.if.end13.sink.split_crit_edge ]
  %tx_packet_formats8 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5
  %9 = ptrtoint ptr %tx_packet_formats8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink49, ptr %tx_packet_formats8, align 4
  %midi_byte_offset11 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %midi_byte_offset11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %midi_byte_offset11, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and16 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else22, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else22:                                        ; preds = %if.end13
  %and25 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else22.cleanup_crit_edge, label %if.else22.cleanup.sink.split_crit_edge

if.else22.cleanup.sink.split_crit_edge:           ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else22.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge
  %.sink51 = phi i8 [ 4, %if.end13.cleanup.sink.split_crit_edge ], [ 8, %if.else22.cleanup.sink.split_crit_edge ]
  %.sink50 = phi i8 [ 6, %if.end13.cleanup.sink.split_crit_edge ], [ 7, %if.else22.cleanup.sink.split_crit_edge ]
  %rx_packet_formats = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6
  %13 = ptrtoint ptr %rx_packet_formats to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink51, ptr %rx_packet_formats, align 1
  %midi_byte_offset21 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %midi_byte_offset21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink50, ptr %midi_byte_offset21, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else22.cleanup_crit_edge, %snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %snd_motu_protocol_cache_packet_formats.exit.cleanup_crit_edge ], [ 0, %if.else22.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_stream_reserve_duplex(ptr noundef %motu, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %curr_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #7
  %0 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_rate, align 4, !annotation !28
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %1 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %protocol_version.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then10.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef %motu, ptr noundef nonnull %curr_rate) #7
  br label %snd_motu_protocol_get_clock_rate.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef %motu, ptr noundef nonnull %curr_rate) #7
  br label %snd_motu_protocol_get_clock_rate.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef %motu, ptr noundef nonnull %curr_rate) #7
  br label %snd_motu_protocol_get_clock_rate.exit

snd_motu_protocol_get_clock_rate.exit:            ; preds = %if.then10.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call11.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge, label %if.end

snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_get_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %snd_motu_protocol_get_clock_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1 = icmp eq i32 %rate, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_rate, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %rate.addr.0 = phi i32 [ %7, %if.then2 ], [ %rate, %if.end.if.end3_crit_edge ]
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 11
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.end3.if.then6_crit_edge, label %lor.lhs.false

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end3
  %10 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate.addr.0)
  %cmp5.not = icmp eq i32 %11, %rate.addr.0
  br i1 %cmp5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %domain = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  call void @amdtp_domain_stop(ptr noundef %domain) #7
  call fastcc void @finish_session(ptr noundef %motu)
  %tx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #7
  %rx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #7
  %cache = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 8
  call void @kfree(ptr noundef %13) #7
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cache, align 8
  %15 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spec.i, align 8
  %protocol_version.i91 = getelementptr inbounds %struct.snd_motu_spec, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %protocol_version.i91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol_version.i91, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %18, label %if.then6.do.end_crit_edge [
    i32 1, label %if.then.i93
    i32 2, label %if.then4.i95
    i32 0, label %if.then10.i97
  ]

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then.i93:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i92 = call i32 @snd_motu_protocol_v2_set_clock_rate(ptr noundef %motu, i32 noundef %rate.addr.0) #7
  br label %snd_motu_protocol_set_clock_rate.exit

if.then4.i95:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i94 = call i32 @snd_motu_protocol_v3_set_clock_rate(ptr noundef %motu, i32 noundef %rate.addr.0) #7
  br label %snd_motu_protocol_set_clock_rate.exit

if.then10.i97:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i96 = call i32 @snd_motu_protocol_v1_set_clock_rate(ptr noundef %motu, i32 noundef %rate.addr.0) #7
  br label %snd_motu_protocol_set_clock_rate.exit

snd_motu_protocol_set_clock_rate.exit:            ; preds = %if.then10.i97, %if.then4.i95, %if.then.i93
  %retval.0.i98 = phi i32 [ %call.i92, %if.then.i93 ], [ %call5.i94, %if.then4.i95 ], [ %call11.i96, %if.then10.i97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i98)
  %cmp10 = icmp slt i32 %retval.0.i98, 0
  br i1 %cmp10, label %snd_motu_protocol_set_clock_rate.exit.do.end_crit_edge, label %if.end12

snd_motu_protocol_set_clock_rate.exit.do.end_crit_edge: ; preds = %snd_motu_protocol_set_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %snd_motu_protocol_set_clock_rate.exit.do.end_crit_edge, %if.then6.do.end_crit_edge
  %retval.0.i98127 = phi i32 [ %retval.0.i98, %snd_motu_protocol_set_clock_rate.exit.do.end_crit_edge ], [ -6, %if.then6.do.end_crit_edge ]
  %unit = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %20 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %retval.0.i98127) #10
  br label %cleanup

if.end12:                                         ; preds = %snd_motu_protocol_set_clock_rate.exit
  %22 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spec.i, align 8
  %protocol_version.i.i = getelementptr inbounds %struct.snd_motu_spec, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %protocol_version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %protocol_version.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %25, label %if.end12.cleanup_crit_edge [
    i32 1, label %if.then.i.i
    i32 2, label %if.then4.i.i
    i32 0, label %if.then10.i.i
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit.i

if.then4.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit.i

if.then10.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef %motu) #7
  br label %snd_motu_protocol_cache_packet_formats.exit.i

snd_motu_protocol_cache_packet_formats.exit.i:    ; preds = %if.then10.i.i, %if.then4.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call5.i.i, %if.then4.i.i ], [ %call11.i.i, %if.then10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %snd_motu_protocol_cache_packet_formats.exit.i.cleanup_crit_edge, label %if.end.i

snd_motu_protocol_cache_packet_formats.exit.i.cleanup_crit_edge: ; preds = %snd_motu_protocol_cache_packet_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %snd_motu_protocol_cache_packet_formats.exit.i
  %27 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spec.i, align 8
  %flags.i = getelementptr inbounds %struct.snd_motu_spec, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end13.sink.split.i_crit_edge

if.end.i.if.end13.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.if.end13.sink.split.i_crit_edge

if.else.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.sink.split.i:                            ; preds = %if.else.i.if.end13.sink.split.i_crit_edge, %if.end.i.if.end13.sink.split.i_crit_edge
  %.sink49.i = phi i8 [ 4, %if.end.i.if.end13.sink.split.i_crit_edge ], [ 8, %if.else.i.if.end13.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 6, %if.end.i.if.end13.sink.split.i_crit_edge ], [ 7, %if.else.i.if.end13.sink.split.i_crit_edge ]
  %tx_packet_formats8.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5
  %31 = ptrtoint ptr %tx_packet_formats8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink49.i, ptr %tx_packet_formats8.i, align 4
  %midi_byte_offset11.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %midi_byte_offset11.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink.i, ptr %midi_byte_offset11.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.sink.split.i, %if.else.i.if.end13.i_crit_edge
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and16.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else22.i, label %if.end13.i.cleanup.sink.split.i_crit_edge

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else22.i:                                      ; preds = %if.end13.i
  %and25.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else22.i.if.end16_crit_edge, label %if.else22.i.cleanup.sink.split.i_crit_edge

if.else22.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.else22.i.if.end16_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

cleanup.sink.split.i:                             ; preds = %if.else22.i.cleanup.sink.split.i_crit_edge, %if.end13.i.cleanup.sink.split.i_crit_edge
  %.sink51.i = phi i8 [ 4, %if.end13.i.cleanup.sink.split.i_crit_edge ], [ 8, %if.else22.i.cleanup.sink.split.i_crit_edge ]
  %.sink50.i = phi i8 [ 6, %if.end13.i.cleanup.sink.split.i_crit_edge ], [ 7, %if.else22.i.cleanup.sink.split.i_crit_edge ]
  %rx_packet_formats.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6
  %35 = ptrtoint ptr %rx_packet_formats.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink51.i, ptr %rx_packet_formats.i, align 1
  %midi_byte_offset21.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %midi_byte_offset21.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink50.i, ptr %midi_byte_offset21.i, align 1
  br label %if.end16

if.end16:                                         ; preds = %cleanup.sink.split.i, %if.else22.i.if.end16_crit_edge
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7
  %tx_packet_formats.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5
  %37 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spec.i, align 8
  %flags7.i = getelementptr inbounds %struct.snd_motu_spec, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags7.i, align 4
  %41 = and i32 %40, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %midi_ports.0.in.i = icmp ne i32 %41, 0
  %midi_ports.0.i = zext i1 %midi_ports.0.in.i to i32
  %call.i101 = call i32 @amdtp_motu_set_parameters(ptr noundef %tx_stream, i32 noundef %rate.addr.0, i32 noundef %midi_ports.0.i, ptr noundef %tx_packet_formats.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp18.i = icmp slt i32 %call.i101, 0
  br i1 %cmp18.i, label %if.end16.cleanup_crit_edge, label %keep_resources.exit

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

keep_resources.exit:                              ; preds = %if.end16
  %call21.i = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #7
  %unit.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %42 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i.i, align 8
  %max_speed.i = getelementptr i8, ptr %45, i32 -8
  %46 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_speed.i, align 8
  %call23.i = call i32 @fw_iso_resources_allocate(ptr noundef %tx_resources, i32 noundef %call21.i, i32 noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp18 = icmp slt i32 %call23.i, 0
  br i1 %cmp18, label %keep_resources.exit.cleanup_crit_edge, label %if.end20

keep_resources.exit.cleanup_crit_edge:            ; preds = %keep_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %keep_resources.exit
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8
  %rx_packet_formats.i105 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6
  %48 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec.i, align 8
  %flags7.i107 = getelementptr inbounds %struct.snd_motu_spec, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %flags7.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags7.i107, align 4
  %52 = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %midi_ports.0.in.i108 = icmp ne i32 %52, 0
  %midi_ports.0.i109 = zext i1 %midi_ports.0.in.i108 to i32
  %call.i110 = call i32 @amdtp_motu_set_parameters(ptr noundef %rx_stream, i32 noundef %rate.addr.0, i32 noundef %midi_ports.0.i109, ptr noundef %rx_packet_formats.i105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp18.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp18.i111, label %if.end20.if.then23_crit_edge, label %keep_resources.exit121

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

keep_resources.exit121:                           ; preds = %if.end20
  %call21.i114 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #7
  %53 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %unit.i, align 4
  %parent.i.i116 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %parent.i.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i.i116, align 8
  %max_speed.i117 = getelementptr i8, ptr %56, i32 -8
  %57 = ptrtoint ptr %max_speed.i117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_speed.i117, align 8
  %call23.i118 = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call21.i114, i32 noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i118)
  %cmp22 = icmp slt i32 %call23.i118, 0
  br i1 %cmp22, label %keep_resources.exit121.if.then23_crit_edge, label %if.end25

keep_resources.exit121.if.then23_crit_edge:       ; preds = %keep_resources.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %keep_resources.exit121.if.then23_crit_edge, %if.end20.if.then23_crit_edge
  %retval.0.i120134 = phi i32 [ %call23.i118, %keep_resources.exit121.if.then23_crit_edge ], [ %call.i110, %if.end20.if.then23_crit_edge ]
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #7
  br label %cleanup

if.end25:                                         ; preds = %keep_resources.exit121
  %events_per_period1.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18, i32 2
  %60 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  %syt_interval = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7, i32 18
  %61 = ptrtoint ptr %syt_interval to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syt_interval, align 4
  %mul = mul i32 %62, %frames_per_buffer
  %size = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19, i32 1
  %63 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul, ptr %size, align 4
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #7
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !29

kcalloc.exit.thread:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %cache, align 8
  br label %if.then42

if.end7.i.i:                                      ; preds = %if.end25
  %67 = extractvalue { i32, i1 } %64, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #11
  %68 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i.i, ptr %cache, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then42_crit_edge, label %if.end7.i.i.cleanup_crit_edge

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i.if.then42_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.then42:                                        ; preds = %if.end7.i.i.if.then42_crit_edge, %kcalloc.exit.thread
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #7
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end7.i.i.cleanup_crit_edge, %if.then23, %keep_resources.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %snd_motu_protocol_cache_packet_formats.exit.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i98127, %do.end ], [ %retval.0.i120134, %if.then23 ], [ -12, %if.then42 ], [ %retval.0.i, %snd_motu_protocol_get_clock_rate.exit.cleanup_crit_edge ], [ %call23.i, %keep_resources.exit.cleanup_crit_edge ], [ 0, %if.end7.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end12.cleanup_crit_edge ], [ %retval.0.i.i, %snd_motu_protocol_cache_packet_formats.exit.i.cleanup_crit_edge ], [ %call.i101, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_session(ptr noundef %motu) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !28
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %1 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec.i, align 8
  %protocol_version.i = getelementptr inbounds %struct.snd_motu_spec, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %protocol_version.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %protocol_version.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 0, label %if.then11.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @snd_motu_protocol_v2_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext false) #7
  br label %snd_motu_protocol_switch_fetching_mode.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @snd_motu_protocol_v3_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext false) #7
  br label %snd_motu_protocol_switch_fetching_mode.exit

if.then11.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 @snd_motu_protocol_v1_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext false) #7
  br label %snd_motu_protocol_switch_fetching_mode.exit

snd_motu_protocol_switch_fetching_mode.exit:      ; preds = %if.then11.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call6.i, %if.then4.i ], [ %call13.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_motu_protocol_switch_fetching_mode.exit.cleanup_crit_edge, label %if.end

snd_motu_protocol_switch_fetching_mode.exit.cleanup_crit_edge: ; preds = %snd_motu_protocol_switch_fetching_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %snd_motu_protocol_switch_fetching_mode.exit
  %call1 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %and = and i32 %7, 1061158911
  %or = or i32 %and, -2139095040
  store i32 %or, ptr %reg, align 4
  %call5 = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %snd_motu_protocol_switch_fetching_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_stream_start_duplex(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %reg.i147 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10
  %generation1 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 11
  %2 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8
  %packet_index.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i142 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7, i32 7
  %6 = ptrtoint ptr %packet_index.i142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_index.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i143 = icmp slt i32 %7, 0
  br i1 %cmp.i143, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %domain = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  tail call void @amdtp_domain_stop(ptr noundef %domain) #7
  tail call fastcc void @finish_session(ptr noundef %motu)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false.if.end4_crit_edge
  %unit = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %11, i32 -4
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %generation6 = getelementptr inbounds %struct.fw_card, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %generation6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %generation6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %15)
  %cmp7.not = icmp eq i32 %1, %15
  br i1 %cmp7.not, label %if.end4.if.end18_crit_edge, label %if.then8

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then8:                                         ; preds = %if.end4
  %call10 = tail call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then8.cleanup88_crit_edge, label %if.end13

if.then8.cleanup88_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end13:                                         ; preds = %if.then8
  %tx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9
  %call14 = tail call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup88_crit_edge, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end13.cleanup88_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end18:                                         ; preds = %if.end13.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %context.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then21, label %if.end18.cleanup88_crit_edge

if.end18.cleanup88_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.then21:                                        ; preds = %if.end18
  %18 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit, align 4
  %parent.i144 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i144 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i144, align 8
  %max_speed = getelementptr i8, ptr %21, i32 -8
  %22 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_speed, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %reg.i, align 4, !annotation !28
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2832, ptr noundef nonnull %reg.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i146 = icmp slt i32 %call.i, 0
  br i1 %cmp.i146, label %ensure_packet_formats.exit.thread, label %ensure_packet_formats.exit

ensure_packet_formats.exit.thread:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %cleanup88

ensure_packet_formats.exit:                       ; preds = %if.then21
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %26, -208
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %27 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spec.i, align 8
  %tx_fixed_pcm_chunks.i = getelementptr inbounds %struct.snd_motu_spec, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %tx_fixed_pcm_chunks.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tx_fixed_pcm_chunks.i, align 4
  %pcm_chunks.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4
  %31 = ptrtoint ptr %pcm_chunks.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pcm_chunks.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp3.i = icmp eq i8 %30, %32
  %or.i = or i32 %and.i, 128
  %spec.select.i = select i1 %cmp3.i, i32 %or.i, i32 %and.i
  %rx_fixed_pcm_chunks.i = getelementptr inbounds %struct.snd_motu_spec, ptr %28, i32 0, i32 4
  %33 = ptrtoint ptr %rx_fixed_pcm_chunks.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_fixed_pcm_chunks.i, align 1
  %pcm_chunks10.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %pcm_chunks10.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pcm_chunks10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp13.i = icmp eq i8 %34, %36
  %or16.i = or i32 %spec.select.i, 64
  %data.1.i = select i1 %cmp13.i, i32 %or16.i, i32 %spec.select.i
  %37 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unit, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i.i, align 8
  %max_speed.i = getelementptr i8, ptr %40, i32 -8
  %41 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_speed.i, align 8
  %or19.i = or i32 %42, %data.1.i
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or19.i, ptr %reg.i, align 4
  %call20.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2832, ptr noundef nonnull %reg.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp25 = icmp slt i32 %call20.i, 0
  br i1 %cmp25, label %ensure_packet_formats.exit.cleanup88_crit_edge, label %if.end27

ensure_packet_formats.exit.cleanup88_crit_edge:   ; preds = %ensure_packet_formats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end27:                                         ; preds = %ensure_packet_formats.exit
  %44 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spec.i, align 8
  %flags = getelementptr inbounds %struct.snd_motu_spec, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end27
  %call29 = call i32 @snd_motu_register_dsp_message_parser_init(ptr noundef %motu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then28.cleanup88_crit_edge, label %if.then28.if.end44_crit_edge

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then28.cleanup88_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.else:                                          ; preds = %if.end27
  %and35 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else.if.end44_crit_edge, label %if.then37

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then37:                                        ; preds = %if.else
  %sfc = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7, i32 17
  %48 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sfc, align 4
  %call39 = call i32 @snd_motu_command_dsp_message_parser_init(ptr noundef %motu, i32 noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then37.cleanup88_crit_edge, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then37.cleanup88_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.then28.if.end44_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i147) #7
  %50 = ptrtoint ptr %reg.i147 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %reg.i147, align 4, !annotation !28
  %call.i148 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i147, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.i149 = icmp slt i32 %call.i148, 0
  br i1 %cmp.i149, label %begin_session.exit.thread, label %begin_session.exit

begin_session.exit.thread:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i147) #7
  br label %do.end

begin_session.exit:                               ; preds = %if.end44
  %51 = ptrtoint ptr %reg.i147 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg.i147, align 4
  %and.i150 = and i32 %52, 65535
  %channel.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10, i32 3
  %53 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel.i, align 8
  %shl.i = shl i32 %54, 24
  %channel3.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9, i32 3
  %55 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel3.i, align 8
  %shl4.i = shl i32 %56, 16
  %or2.i = or i32 %shl.i, %and.i150
  %or5.i = or i32 %shl4.i, %or2.i
  %or6.i = or i32 %or5.i, -1061158912
  store i32 %or6.i, ptr %reg.i147, align 4
  %call7.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i147, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp46 = icmp slt i32 %call7.i, 0
  br i1 %cmp46, label %begin_session.exit.do.end_crit_edge, label %if.end49

begin_session.exit.do.end_crit_edge:              ; preds = %begin_session.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %begin_session.exit.do.end_crit_edge, %begin_session.exit.thread
  %retval.0.i152157 = phi i32 [ %call.i148, %begin_session.exit.thread ], [ %call7.i, %begin_session.exit.do.end_crit_edge ]
  %57 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i152157) #10
  br label %stop_streams

if.end49:                                         ; preds = %begin_session.exit
  %domain50 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  %tx_stream51 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7
  %59 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel3.i, align 8
  %call53 = call i32 @amdtp_domain_add_stream(ptr noundef %domain50, ptr noundef %tx_stream51, i32 noundef %60, i32 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end49.stop_streams_crit_edge, label %if.end56

if.end49.stop_streams_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams

if.end56:                                         ; preds = %if.end49
  %61 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel.i, align 8
  %call61 = call i32 @amdtp_domain_add_stream(ptr noundef %domain50, ptr noundef %rx_stream, i32 noundef %62, i32 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end56.stop_streams_crit_edge, label %if.end64

if.end56.stop_streams_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams

if.end64:                                         ; preds = %if.end56
  %tail = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19, i32 2
  %63 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tail, align 8
  %tx_cycle_count = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19, i32 3
  %64 = ptrtoint ptr %tx_cycle_count to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %tx_cycle_count, align 4
  %head = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19, i32 4
  %65 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %head, align 8
  %rx_cycle_count = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19, i32 5
  %66 = ptrtoint ptr %rx_cycle_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %rx_cycle_count, align 4
  %call69 = call i32 @amdtp_domain_start(ptr noundef %domain50, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end64.stop_streams_crit_edge, label %for.cond.i.preheader

if.end64.stop_streams_crit_edge:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams

for.cond.i.preheader:                             ; preds = %if.end64
  %67 = ptrtoint ptr %domain50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i173 = load ptr, ptr %domain50, align 4
  %cmp.not.i174 = icmp eq ptr %.pn.i173, %domain50
  br i1 %cmp.not.i174, label %for.cond.i.preheader.if.end76_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.if.end76_crit_edge:          ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i175 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i173, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 348) #7
  %ready_processing.i = getelementptr i8, ptr %.pn.i175, i32 -76
  %68 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ready_processing.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %70 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %ready_wait.i = getelementptr i8, ptr %.pn.i175, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %71 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ready_processing.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool18.not12.not.i = icmp eq i8 %72, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then12.i.if.end34.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then12.i.if.end34.i_crit_edge
  %__ret13.115.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 20, %if.then12.i.if.end34.i_crit_edge ]
  %call1514.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1511.i, %if.then12.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514.i)
  %tobool35.not.i = icmp eq i32 %call1514.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #7
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %73 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ready_processing.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool18.not.i = icmp eq i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %75 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %75, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 20, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.stop_streams_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.backedge

if.end41.i.stop_streams_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %76 = ptrtoint ptr %.pn.i175 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn.i = load ptr, ptr %.pn.i175, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain50
  br i1 %cmp.not.i, label %for.cond.i.backedge.if.end76_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.backedge.if.end76_crit_edge:           ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.end76:                                         ; preds = %for.cond.i.backedge.if.end76_crit_edge, %for.cond.i.preheader.if.end76_crit_edge
  %call77 = call fastcc i32 @snd_motu_protocol_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %if.end76.cleanup88_crit_edge

if.end76.cleanup88_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.8, i32 noundef %call77) #10
  br label %stop_streams

stop_streams:                                     ; preds = %do.end82, %if.end41.i.stop_streams_crit_edge, %if.end64.stop_streams_crit_edge, %if.end56.stop_streams_crit_edge, %if.end49.stop_streams_crit_edge, %do.end
  %err.0.ph = phi i32 [ %call69, %if.end64.stop_streams_crit_edge ], [ %call61, %if.end56.stop_streams_crit_edge ], [ %call53, %if.end49.stop_streams_crit_edge ], [ %call77, %do.end82 ], [ %retval.0.i152157, %do.end ], [ -110, %if.end41.i.stop_streams_crit_edge ]
  %domain87 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  call void @amdtp_domain_stop(ptr noundef %domain87) #7
  call fastcc void @finish_session(ptr noundef %motu)
  br label %cleanup88

cleanup88:                                        ; preds = %stop_streams, %if.end76.cleanup88_crit_edge, %if.then37.cleanup88_crit_edge, %if.then28.cleanup88_crit_edge, %ensure_packet_formats.exit.cleanup88_crit_edge, %ensure_packet_formats.exit.thread, %if.end18.cleanup88_crit_edge, %if.end13.cleanup88_crit_edge, %if.then8.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.1 = phi i32 [ %err.0.ph, %stop_streams ], [ 0, %entry.cleanup88_crit_edge ], [ %call10, %if.then8.cleanup88_crit_edge ], [ %call14, %if.end13.cleanup88_crit_edge ], [ 0, %if.end76.cleanup88_crit_edge ], [ 0, %if.end18.cleanup88_crit_edge ], [ %call.i, %ensure_packet_formats.exit.thread ], [ %call39, %if.then37.cleanup88_crit_edge ], [ %call29, %if.then28.cleanup88_crit_edge ], [ %call20.i, %ensure_packet_formats.exit.cleanup88_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_register_dsp_message_parser_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_command_dsp_message_parser_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_motu_protocol_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %protocol_version = getelementptr inbounds %struct.snd_motu_spec, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol_version, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %entry.return_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then4
    i32 0, label %if.then11
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_motu_protocol_v2_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) #7
  br label %return

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @snd_motu_protocol_v3_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) #7
  br label %return

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @snd_motu_protocol_v1_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) #7
  br label %return

return:                                           ; preds = %if.then11, %if.then4, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then4 ], [ %call13, %if.then11 ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_stream_stop_duplex(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 11
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domain = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  tail call void @amdtp_domain_stop(ptr noundef %domain) #7
  tail call fastcc void @finish_session(ptr noundef %motu)
  %tx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9
  tail call void @fw_iso_resources_free(ptr noundef %tx_resources) #7
  %rx_resources = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10
  tail call void @fw_iso_resources_free(ptr noundef %rx_resources) #7
  %cache = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_stream_init_duplex(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7
  %tx_resources.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9
  %unit.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @fw_iso_resources_init(ptr noundef %tx_resources.i, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end3.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %4 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.i, align 8
  %cache.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 19
  %call5.i = tail call i32 @amdtp_motu_init(ptr noundef %tx_stream, ptr noundef %3, i32 noundef 1, ptr noundef %5, ptr noundef %cache.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end3.i.cleanup.sink.split_crit_edge, label %if.end

if.end3.i.cleanup.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end3.i
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8
  %rx_resources.i29 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call.i31 = tail call i32 @fw_iso_resources_init(ptr noundef %rx_resources.i29, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp1.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp1.i32, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end3.i37

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split

if.end3.i37:                                      ; preds = %if.end
  %8 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit.i, align 4
  %10 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec.i, align 8
  %call5.i35 = tail call i32 @amdtp_motu_init(ptr noundef %rx_stream, ptr noundef %9, i32 noundef 0, ptr noundef %11, ptr noundef %cache.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i35)
  %cmp6.i36 = icmp slt i32 %call5.i35, 0
  br i1 %cmp6.i36, label %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge, label %if.end5

if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end3.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.sink.split

if.end5:                                          ; preds = %if.end3.i37
  %domain = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #7
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then8, %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge
  %rx_resources.i29.sink = phi ptr [ %tx_resources.i, %if.then8 ], [ %rx_resources.i29, %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %tx_stream.sink.ph = phi ptr [ %rx_stream, %if.then8 ], [ %tx_stream, %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %tx_resources.i.sink.ph.ph = phi ptr [ %rx_resources.i29, %if.then8 ], [ %tx_resources.i, %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %call6, %if.then8 ], [ %call5.i35, %if.end3.i37.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i29.sink) #7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %tx_stream.sink = phi ptr [ %tx_stream, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %tx_stream.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %tx_resources.i.sink.ph = phi ptr [ %tx_resources.i, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %tx_resources.i.sink.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i31, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream.sink) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end3.i.cleanup.sink.split_crit_edge
  %tx_resources.i.sink = phi ptr [ %tx_resources.i, %if.end3.i.cleanup.sink.split_crit_edge ], [ %tx_resources.i.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call5.i, %if.end3.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_stream_destroy_duplex(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 18
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #7
  %rx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 8
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #7
  %rx_resources.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 10
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #7
  %tx_stream = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 7
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #7
  %tx_resources.i8 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 9
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i8) #7
  %substreams_counter = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 11
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %substreams_counter, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_stream_lock_try(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %dev_lock_count = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 14
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 15
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -16, %entry.out_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_stream_lock_release(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %dev_lock_count = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 14
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #7
  br label %out

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.out_crit_edge

if.end21.critedge.out_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 15
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %out

out:                                              ; preds = %if.then24, %if.end21.critedge.out_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_set_clock_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_set_clock_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_set_clock_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_motu_set_parameters(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v2_switch_fetching_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v3_switch_fetching_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_protocol_v1_switch_fetching_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_motu_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-stream.c", i32 161, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_motu_stream_reserve_duplex._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_motu_stream_reserve_duplex._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/motu/motu-stream.c", i32 270, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_motu_stream_start_duplex._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_motu_stream_start_duplex._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/firewire/motu/motu-stream.c", i32 304, i32 4}
!15 = !{ptr @snd_motu_stream_start_duplex._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_motu_stream_start_duplex._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/firewire/motu/../amdtp-stream.h", i32 348, i32 7}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i8 0, i8 2}
