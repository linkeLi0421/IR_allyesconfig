; ModuleID = '/llk/IR_all_yes/sound/firewire/tascam/tascam-midi.c_pt.bc'
source_filename = "../sound/firewire/tascam/tascam-midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_tscm = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, [4 x ptr], [4 x %struct.snd_fw_async_midi_port], [64 x i32], ptr, [16 x %struct.snd_firewire_tascam_change], i32, i32, %struct.amdtp_domain, i8 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.snd_fw_async_midi_port = type { ptr, %struct.work_struct, i8, i64, i8, %struct.fw_transaction, [4 x i8], i8, i8, ptr, i32 }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.snd_firewire_tascam_change = type { i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_tscm_spec = type { ptr, i8, i8, i32, i32, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@snd_tscm_create_midi_devices.capture_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_capture_open, ptr @midi_capture_close, ptr @midi_capture_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_tscm_create_midi_devices.playback_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_playback_open, ptr @midi_playback_close, ptr @midi_playback_trigger, ptr @midi_playback_drain }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s MIDI %d\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 74, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 79, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 98, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [39 x i8] c"../sound/firewire/tascam/tascam-midi.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 112, i32 6 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @snd_tscm_create_midi_devices.capture_ops, ptr @snd_tscm_create_midi_devices.playback_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_create_midi_devices.capture_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tscm_create_midi_devices.playback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_create_midi_devices(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #5
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !17
  %1 = ptrtoint ptr %tscm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tscm, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %spec = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 4
  %3 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec, align 8
  %midi_playback_ports = getelementptr inbounds %struct.snd_tscm_spec, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %midi_playback_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midi_playback_ports, align 4
  %midi_capture_ports = getelementptr inbounds %struct.snd_tscm_spec, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %midi_capture_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi_capture_ports, align 4
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, i32 noundef %6, i32 noundef %8, ptr noundef nonnull %rmidi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %tscm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tscm, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 3
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %13 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tscm, ptr %private_data, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info_flags, align 8
  %or = or i32 %17, 2
  store i32 %or, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @snd_tscm_create_midi_devices.capture_ops) #5
  %18 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmidi, align 4
  %substreams = getelementptr %struct.snd_rawmidi, ptr %19, i32 0, i32 8, i32 1, i32 2
  %20 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %20)
  %subs.090 = load ptr, ptr %substreams, align 4
  %cmp8.not91 = icmp eq ptr %subs.090, %substreams
  br i1 %cmp8.not91, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %subs.092 = phi ptr [ %subs.0, %for.inc.for.body_crit_edge ], [ %subs.090, %if.end.for.body_crit_edge ]
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.092, i32 0, i32 2
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  %23 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spec, align 8
  %midi_capture_ports10 = getelementptr inbounds %struct.snd_tscm_spec, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %midi_capture_ports10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %midi_capture_ports10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp11 = icmp ult i32 %22, %26
  br i1 %cmp11, label %if.then12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %name13 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.092, i32 0, i32 12
  %27 = ptrtoint ptr %tscm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tscm, align 8
  %shortname16 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 3
  %add = add nuw i32 %22, 1
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name13, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname16, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %subs.092 to i32
  call void @__asan_load4_noabort(i32 %29)
  %subs.0 = load ptr, ptr %subs.092, align 4
  %cmp8.not = icmp eq ptr %subs.0, %substreams
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %30 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmidi, align 4
  %info_flags26 = getelementptr inbounds %struct.snd_rawmidi, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %info_flags26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %info_flags26, align 8
  %or27 = or i32 %33, 1
  store i32 %or27, ptr %info_flags26, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @snd_tscm_create_midi_devices.playback_ops) #5
  %34 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmidi, align 4
  %substreams31 = getelementptr inbounds %struct.snd_rawmidi, ptr %35, i32 0, i32 8, i32 0, i32 2
  %36 = ptrtoint ptr %substreams31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %subs.193 = load ptr, ptr %substreams31, align 4
  %cmp38.not94 = icmp eq ptr %subs.193, %substreams31
  br i1 %cmp38.not94, label %for.end.for.end61_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.body40:                                       ; preds = %for.inc55.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %subs.195 = phi ptr [ %subs.1, %for.inc55.for.body40_crit_edge ], [ %subs.193, %for.end.for.body40_crit_edge ]
  %number41 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.195, i32 0, i32 2
  %37 = ptrtoint ptr %number41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number41, align 4
  %39 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spec, align 8
  %midi_playback_ports43 = getelementptr inbounds %struct.snd_tscm_spec, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %midi_playback_ports43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %midi_playback_ports43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp44 = icmp ult i32 %38, %42
  br i1 %cmp44, label %if.then45, label %for.body40.for.inc55_crit_edge

for.body40.for.inc55_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc55

if.then45:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  %name46 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.195, i32 0, i32 12
  %43 = ptrtoint ptr %tscm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tscm, align 8
  %shortname49 = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 3
  %add52 = add nuw i32 %38, 1
  %call53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name46, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname49, i32 noundef %add52)
  br label %for.inc55

for.inc55:                                        ; preds = %if.then45, %for.body40.for.inc55_crit_edge
  %45 = ptrtoint ptr %subs.195 to i32
  call void @__asan_load4_noabort(i32 %45)
  %subs.1 = load ptr, ptr %subs.195, align 4
  %cmp38.not = icmp eq ptr %subs.1, %substreams31
  br i1 %cmp38.not, label %for.inc55.for.end61_crit_edge, label %for.inc55.for.body40_crit_edge

for.inc55.for.body40_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

for.inc55.for.end61_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.end61:                                        ; preds = %for.inc55.for.end61_crit_edge, %for.end.for.end61_crit_edge
  %46 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmidi, align 4
  %info_flags62 = getelementptr inbounds %struct.snd_rawmidi, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %info_flags62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %info_flags62, align 8
  %or63 = or i32 %49, 4
  store i32 %or63, ptr %info_flags62, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end61 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_open(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_close(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_capture_trigger(ptr noundef %substrm, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_tscm, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 2
  %4 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number6, align 4
  %arrayidx7 = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 14, i32 %5
  %.substrm = select i1 %tobool.not, ptr null, ptr %substrm
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.substrm, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_playback_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5
  tail call void @snd_fw_async_midi_port_init(ptr noundef %arrayidx) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_playback_close(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_trigger(ptr noundef %substrm, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_tscm, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %error.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 4
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %error.i, align 8, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %substream1.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 9
  %8 = ptrtoint ptr %substream1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substrm, ptr %substream1.i, align 8
  %work.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_drain(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %substream.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 9
  %6 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %substream.i, align 8
  %work.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 1
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #5
  %error.i = getelementptr %struct.snd_tscm, ptr %3, i32 0, i32 15, i32 %5, i32 4
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %error.i, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_fw_async_midi_port_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

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
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_tscm_create_midi_devices.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/tascam/tascam-midi.c", i32 74, i32 38}
!2 = !{ptr @snd_tscm_create_midi_devices.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/tascam/tascam-midi.c", i32 79, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/tascam/tascam-midi.c", i32 98, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/tascam/tascam-midi.c", i32 112, i32 6}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
