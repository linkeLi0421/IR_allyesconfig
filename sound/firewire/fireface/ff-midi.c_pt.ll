; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-midi.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-midi.c"
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
%struct.snd_ff = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, ptr, [2 x ptr], %struct.fw_address_handler, [2 x ptr], [2 x i8], [2 x [9 x i32]], [2 x %struct.work_struct], [2 x %struct.fw_transaction], [2 x i64], [2 x i8], [2 x i32], i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, i8, %struct.wait_queue_head, %struct.amdtp_domain }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_ff_spec = type { [3 x i32], [3 x i32], i32, i32, ptr, i64, i8, [2 x i64] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@snd_ff_create_midi_devices.midi_capture_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_capture_open, ptr @midi_capture_close, ptr @midi_capture_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_ff_create_midi_devices.midi_playback_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_playback_open, ptr @midi_playback_close, ptr @midi_playback_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s MIDI %d\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"midi_capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 89, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"midi_playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 94, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 110, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [37 x i8] c"../sound/firewire/fireface/ff-midi.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 83, i32 5 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @snd_ff_create_midi_devices.midi_capture_ops, ptr @snd_ff_create_midi_devices.midi_playback_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_create_midi_devices.midi_capture_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_create_midi_devices.midi_playback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_create_midi_devices(ptr noundef %ff) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #6
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !17
  %1 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ff, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %3 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spec, align 4
  %midi_out_ports = getelementptr inbounds %struct.snd_ff_spec, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %midi_out_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midi_out_ports, align 4
  %midi_in_ports = getelementptr inbounds %struct.snd_ff_spec, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %midi_in_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi_in_ports, align 8
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, i32 noundef %6, i32 noundef %8, ptr noundef nonnull %rmidi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ff, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 3
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %13 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ff, ptr %private_data, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info_flags, align 8
  %or = or i32 %17, 2
  store i32 %or, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @snd_ff_create_midi_devices.midi_capture_ops) #6
  %18 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmidi, align 4
  %20 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ff, align 8
  %shortname8 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %19, i32 0, i32 8, i32 1, i32 2
  %22 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %substream.012.i = load ptr, ptr %substreams.i, align 4
  %cmp.not13.i = icmp eq ptr %substream.012.i, %substreams.i
  br i1 %cmp.not13.i, label %if.end.set_midi_substream_names.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.set_midi_substream_names.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_midi_substream_names.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %substream.014.i = phi ptr [ %substream.0.i, %for.body.i.for.body.i_crit_edge ], [ %substream.012.i, %if.end.for.body.i_crit_edge ]
  %name2.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.014.i, i32 0, i32 12
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.014.i, i32 0, i32 2
  %23 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number.i, align 4
  %add.i = add i32 %24, 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name2.i, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname8, i32 noundef %add.i) #6
  %25 = ptrtoint ptr %substream.014.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %substream.0.i = load ptr, ptr %substream.014.i, align 4
  %cmp.not.i = icmp eq ptr %substream.0.i, %substreams.i
  br i1 %cmp.not.i, label %for.body.i.set_midi_substream_names.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.set_midi_substream_names.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_midi_substream_names.exit

set_midi_substream_names.exit:                    ; preds = %for.body.i.set_midi_substream_names.exit_crit_edge, %if.end.set_midi_substream_names.exit_crit_edge
  %26 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmidi, align 4
  %info_flags10 = getelementptr inbounds %struct.snd_rawmidi, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %info_flags10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info_flags10, align 8
  %or11 = or i32 %29, 1
  store i32 %or11, ptr %info_flags10, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @snd_ff_create_midi_devices.midi_playback_ops) #6
  %30 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmidi, align 4
  %32 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ff, align 8
  %shortname15 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 3
  %substreams.i30 = getelementptr inbounds %struct.snd_rawmidi, ptr %31, i32 0, i32 8, i32 0, i32 2
  %34 = ptrtoint ptr %substreams.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %substream.012.i31 = load ptr, ptr %substreams.i30, align 4
  %cmp.not13.i32 = icmp eq ptr %substream.012.i31, %substreams.i30
  br i1 %cmp.not13.i32, label %set_midi_substream_names.exit.set_midi_substream_names.exit41_crit_edge, label %set_midi_substream_names.exit.for.body.i40_crit_edge

set_midi_substream_names.exit.for.body.i40_crit_edge: ; preds = %set_midi_substream_names.exit
  br label %for.body.i40

set_midi_substream_names.exit.set_midi_substream_names.exit41_crit_edge: ; preds = %set_midi_substream_names.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_midi_substream_names.exit41

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %set_midi_substream_names.exit.for.body.i40_crit_edge
  %substream.014.i33 = phi ptr [ %substream.0.i38, %for.body.i40.for.body.i40_crit_edge ], [ %substream.012.i31, %set_midi_substream_names.exit.for.body.i40_crit_edge ]
  %name2.i34 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.014.i33, i32 0, i32 12
  %number.i35 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.014.i33, i32 0, i32 2
  %35 = ptrtoint ptr %number.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number.i35, align 4
  %add.i36 = add i32 %36, 1
  %call.i37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name2.i34, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname15, i32 noundef %add.i36) #6
  %37 = ptrtoint ptr %substream.014.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %substream.0.i38 = load ptr, ptr %substream.014.i33, align 4
  %cmp.not.i39 = icmp eq ptr %substream.0.i38, %substreams.i30
  br i1 %cmp.not.i39, label %for.body.i40.set_midi_substream_names.exit41_crit_edge, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i40

for.body.i40.set_midi_substream_names.exit41_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_midi_substream_names.exit41

set_midi_substream_names.exit41:                  ; preds = %for.body.i40.set_midi_substream_names.exit41_crit_edge, %set_midi_substream_names.exit.set_midi_substream_names.exit41_crit_edge
  %38 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmidi, align 4
  %info_flags17 = getelementptr inbounds %struct.snd_rawmidi, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %info_flags17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info_flags17, align 8
  %or18 = or i32 %41, 4
  store i32 %or18, ptr %info_flags17, align 8
  br label %cleanup

cleanup:                                          ; preds = %set_midi_substream_names.exit41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_midi_substream_names.exit41 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_open(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @midi_capture_close(ptr nocapture noundef readnone %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_capture_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_ff, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %number20 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number20, align 4
  %arrayidx21 = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 6, i32 %5
  %.substream = select i1 %tobool.not, ptr null, ptr %substream
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %.substream, ptr %arrayidx21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %arrayidx = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 9, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %7 = load i32, ptr %number, align 4
  %arrayidx2 = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 14, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx2, align 1
  %9 = load i32, ptr %number, align 4
  %arrayidx6 = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 8, i32 %9
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %substream, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %arrayidx = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 11, i32 %5
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %arrayidx) #6
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx4 = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 8, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_ff, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 14, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %8 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number6, align 4
  %arrayidx7 = getelementptr %struct.snd_ff, ptr %3, i32 0, i32 11, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %arrayidx7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_ff_create_midi_devices.midi_capture_ops, !1, !"midi_capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-midi.c", i32 89, i32 38}
!2 = !{ptr @snd_ff_create_midi_devices.midi_playback_ops, !3, !"midi_playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireface/ff-midi.c", i32 94, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireface/ff-midi.c", i32 110, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/fireface/ff-midi.c", i32 83, i32 5}
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
