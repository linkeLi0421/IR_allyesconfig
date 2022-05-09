; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-midi.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
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
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@snd_oxfw_create_midi.capture_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_capture_open, ptr @midi_capture_close, ptr @midi_capture_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_oxfw_create_midi.playback_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_playback_open, ptr @midi_playback_close, ptr @midi_playback_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s MIDI %d\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 140, i32 38 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 145, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 165, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [35 x i8] c"../sound/firewire/oxfw/oxfw-midi.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 133, i32 5 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @snd_oxfw_create_midi.capture_ops, ptr @snd_oxfw_create_midi.playback_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_create_midi.capture_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_create_midi.playback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_create_midi(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #4
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !17
  %midi_input_ports = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 15
  %1 = ptrtoint ptr %midi_input_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %midi_input_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %midi_output_ports = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 16
  %3 = ptrtoint ptr %midi_output_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %midi_output_ports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oxfw, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 2
  %midi_output_ports3 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 16
  %7 = ptrtoint ptr %midi_output_ports3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi_output_ports3, align 8
  %call = call i32 @snd_rawmidi_new(ptr noundef %6, ptr noundef %driver, i32 noundef 0, i32 noundef %8, i32 noundef %2, ptr noundef nonnull %rmidi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oxfw, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 3
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str, ptr noundef %shortname)
  %13 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %oxfw, ptr %private_data, align 4
  %16 = ptrtoint ptr %midi_input_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %midi_input_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13.not = icmp eq i32 %17, 0
  br i1 %cmp13.not, label %if.end7.if.end15_crit_edge, label %if.then14

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %if.end7
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info_flags, align 8
  %or = or i32 %19, 2
  store i32 %or, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @snd_oxfw_create_midi.capture_ops) #4
  %20 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmidi, align 4
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %21, i32 0, i32 8, i32 1, i32 2
  %22 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %subs.012.i = load ptr, ptr %substreams.i, align 4
  %cmp.not13.i = icmp eq ptr %subs.012.i, %substreams.i
  br i1 %cmp.not13.i, label %if.then14.if.end15_crit_edge, label %if.then14.for.body.i_crit_edge

if.then14.for.body.i_crit_edge:                   ; preds = %if.then14
  br label %for.body.i

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then14.for.body.i_crit_edge
  %subs.014.i = phi ptr [ %subs.0.i, %for.body.i.for.body.i_crit_edge ], [ %subs.012.i, %if.then14.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.014.i, i32 0, i32 12
  %23 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oxfw, align 8
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 3
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.014.i, i32 0, i32 2
  %25 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number.i, align 4
  %add.i = add i32 %26, 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname.i, i32 noundef %add.i) #4
  %27 = ptrtoint ptr %subs.014.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %subs.0.i = load ptr, ptr %subs.014.i, align 4
  %cmp.not.i = icmp eq ptr %subs.0.i, %substreams.i
  br i1 %cmp.not.i, label %for.body.i.if.end15_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.if.end15_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %for.body.i.if.end15_crit_edge, %if.then14.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %28 = ptrtoint ptr %midi_output_ports3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %midi_output_ports3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp17.not = icmp eq i32 %29, 0
  br i1 %cmp17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %30 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmidi, align 4
  %info_flags19 = getelementptr inbounds %struct.snd_rawmidi, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %info_flags19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %info_flags19, align 8
  %or20 = or i32 %33, 1
  store i32 %or20, ptr %info_flags19, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @snd_oxfw_create_midi.playback_ops) #4
  %34 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmidi, align 4
  %substreams.i50 = getelementptr inbounds %struct.snd_rawmidi, ptr %35, i32 0, i32 8, i32 0, i32 2
  %36 = ptrtoint ptr %substreams.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %subs.012.i51 = load ptr, ptr %substreams.i50, align 4
  %cmp.not13.i52 = icmp eq ptr %subs.012.i51, %substreams.i50
  br i1 %cmp.not13.i52, label %if.then18.if.end23_crit_edge, label %if.then18.for.body.i61_crit_edge

if.then18.for.body.i61_crit_edge:                 ; preds = %if.then18
  br label %for.body.i61

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

for.body.i61:                                     ; preds = %for.body.i61.for.body.i61_crit_edge, %if.then18.for.body.i61_crit_edge
  %subs.014.i53 = phi ptr [ %subs.0.i59, %for.body.i61.for.body.i61_crit_edge ], [ %subs.012.i51, %if.then18.for.body.i61_crit_edge ]
  %name.i54 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.014.i53, i32 0, i32 12
  %37 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %oxfw, align 8
  %shortname.i55 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 3
  %number.i56 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.014.i53, i32 0, i32 2
  %39 = ptrtoint ptr %number.i56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %number.i56, align 4
  %add.i57 = add i32 %40, 1
  %call.i58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i54, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %shortname.i55, i32 noundef %add.i57) #4
  %41 = ptrtoint ptr %subs.014.i53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %subs.0.i59 = load ptr, ptr %subs.014.i53, align 4
  %cmp.not.i60 = icmp eq ptr %subs.0.i59, %substreams.i50
  br i1 %cmp.not.i60, label %for.body.i61.if.end23_crit_edge, label %for.body.i61.for.body.i61_crit_edge

for.body.i61.for.body.i61_crit_edge:              ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i61

for.body.i61.if.end23_crit_edge:                  ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23:                                         ; preds = %for.body.i61.if.end23_crit_edge, %if.then18.if.end23_crit_edge
  %42 = ptrtoint ptr %midi_output_ports3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %midi_output_ports3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp25.not = icmp eq i32 %.pr, 0
  br i1 %cmp25.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end23
  %43 = ptrtoint ptr %midi_input_ports to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %midi_input_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp28.not = icmp eq i32 %44, 0
  br i1 %cmp28.not, label %land.lhs.true26.cleanup_crit_edge, label %if.then29

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmidi, align 4
  %info_flags30 = getelementptr inbounds %struct.snd_rawmidi, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %info_flags30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %info_flags30, align 8
  %or31 = or i32 %48, 4
  store i32 %or31, ptr %info_flags30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %land.lhs.true26.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_capture_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_oxfw_stream_lock_try(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 12
  %call1 = tail call i32 @snd_oxfw_stream_reserve_duplex(ptr noundef %3, ptr noundef %tx_stream, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then3:                                         ; preds = %if.end
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %substreams_count, align 8
  %call4 = tail call i32 @snd_oxfw_stream_start_duplex(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %substreams_count, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %substreams_count, align 8
  br label %if.then12

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

if.then12:                                        ; preds = %if.then6, %if.end.if.then12_crit_edge
  %err.0.ph = phi i32 [ %call1, %if.end.if.then12_crit_edge ], [ %call4, %if.then6 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @snd_oxfw_stream_lock_release(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.0.ph, %if.then12 ], [ %call4, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_count, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %substreams_count, align 8
  tail call void @snd_oxfw_stream_stop_duplex(ptr noundef %3) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @snd_oxfw_stream_lock_release(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_capture_trigger(ptr noundef %substrm, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %tx_stream5 = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 12
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 2
  %4 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number6, align 4
  %.substrm = select i1 %tobool.not, ptr null, ptr %substrm
  tail call void @amdtp_am824_midi_trigger(ptr noundef %tx_stream5, i32 noundef %5, ptr noundef %.substrm) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_playback_open(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_oxfw_stream_lock_try(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 13
  %call1 = tail call i32 @snd_oxfw_stream_reserve_duplex(ptr noundef %3, ptr noundef %rx_stream, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %if.then8

if.end5:                                          ; preds = %if.end
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_count, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %substreams_count, align 8
  %call4 = tail call i32 @snd_oxfw_stream_start_duplex(ptr noundef %3) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp7 = icmp slt i32 %call4, 0
  br i1 %cmp7, label %if.end5.if.then8_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.end5.thread
  %err.024 = phi i32 [ %call1, %if.end5.thread ], [ %call4, %if.end5.if.then8_crit_edge ]
  tail call void @snd_oxfw_stream_lock_release(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.024, %if.then8 ], [ %call4, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_count, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %substreams_count, align 8
  tail call void @snd_oxfw_stream_stop_duplex(ptr noundef %3) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @snd_oxfw_stream_lock_release(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_trigger(ptr noundef %substrm, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %rx_stream5 = getelementptr inbounds %struct.snd_oxfw, ptr %3, i32 0, i32 13
  %number6 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substrm, i32 0, i32 2
  %4 = ptrtoint ptr %number6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number6, align 4
  %.substrm = select i1 %tobool.not, ptr null, ptr %substrm
  tail call void @amdtp_am824_midi_trigger(ptr noundef %rx_stream5, i32 noundef %5, ptr noundef %.substrm) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_lock_try(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_reserve_duplex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oxfw_stream_start_duplex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_lock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_oxfw_stream_stop_duplex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_am824_midi_trigger(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_oxfw_create_midi.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw-midi.c", i32 140, i32 38}
!2 = !{ptr @snd_oxfw_create_midi.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/oxfw/oxfw-midi.c", i32 145, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/oxfw/oxfw-midi.c", i32 165, i32 4}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/oxfw/oxfw-midi.c", i32 133, i32 5}
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
