; ModuleID = '/llk/IR_all_yes/sound/firewire/digi00x/digi00x-midi.c_pt.bc'
source_filename = "../sound/firewire/digi00x/digi00x-midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_dg00x = type { ptr, ptr, %struct.mutex, %struct.spinlock, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.fw_iso_resources, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, i32, i8, %struct.amdtp_domain }
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
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
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

@add_substream_pair.capture_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_open, ptr @midi_close, ptr @midi_capture_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@add_substream_pair.playback_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @midi_open, ptr @midi_close, ptr @midi_playback_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s control\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s MIDI %d\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"capture_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 119, i32 38 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"playback_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 124, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 141, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 143, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [41 x i8] c"../sound/firewire/digi00x/digi00x-midi.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 104, i32 7 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @add_substream_pair.capture_ops, ptr @add_substream_pair.playback_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_substream_pair.capture_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_substream_pair.playback_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_create_midi_devices(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @add_substream_pair(ptr noundef %dg00x, i32 noundef 2, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_console = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 14
  %0 = ptrtoint ptr %is_console to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_console, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call fastcc i32 @add_substream_pair(ptr noundef %dg00x, i32 noundef 1, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_substream_pair(ptr noundef %dg00x, i32 noundef %out_ports, i1 noundef zeroext %is_console) unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #4
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !20
  %1 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dg00x, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %conv = zext i1 %is_console to i32
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef %driver, i32 noundef %conv, i32 noundef %out_ports, i32 noundef 1, ptr noundef nonnull %rmidi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dg00x, ptr %private_data, align 4
  %.str.1..str = select i1 %is_console, ptr @.str.1, ptr @.str
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dg00x, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %call9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull %.str.1..str, ptr noundef %shortname)
  %8 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @add_substream_pair.playback_ops) #4
  %10 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @add_substream_pair.capture_ops) #4
  %12 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info_flags, align 8
  %or = or i32 %15, 7
  store i32 %or, ptr %info_flags, align 8
  %substreams.i = getelementptr %struct.snd_rawmidi, ptr %13, i32 0, i32 8, i32 0, i32 2
  %16 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %subs.027.i = load ptr, ptr %substreams.i, align 4
  %cmp3.not28.i = icmp eq ptr %subs.027.i, %substreams.i
  br i1 %cmp3.not28.i, label %if.end.for.inc17.i_crit_edge, label %if.end.for.body4.i_crit_edge

if.end.for.body4.i_crit_edge:                     ; preds = %if.end
  br label %for.body4.i

if.end.for.inc17.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %if.end.for.body4.i_crit_edge
  %subs.029.i = phi ptr [ %subs.0.i, %for.inc.i.for.body4.i_crit_edge ], [ %subs.027.i, %if.end.for.body4.i_crit_edge ]
  %name6.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.029.i, i32 0, i32 12
  %17 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dg00x, align 8
  %shortname9.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 3
  br i1 %is_console, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.029.i, i32 0, i32 2
  %19 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number.i, align 4
  %add.i = add i32 %20, 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.i, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %shortname9.i, i32 noundef %add.i) #4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.i, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %shortname9.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %21 = ptrtoint ptr %subs.029.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %subs.0.i = load ptr, ptr %subs.029.i, align 4
  %cmp3.not.i = icmp eq ptr %subs.0.i, %substreams.i
  br i1 %cmp3.not.i, label %for.inc.i.for.inc17.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4.i

for.inc.i.for.inc17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc.i.for.inc17.i_crit_edge, %if.end.for.inc17.i_crit_edge
  %substreams.1.i = getelementptr %struct.snd_rawmidi, ptr %13, i32 0, i32 8, i32 1, i32 2
  %22 = ptrtoint ptr %substreams.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %subs.027.1.i = load ptr, ptr %substreams.1.i, align 4
  %cmp3.not28.1.i = icmp eq ptr %subs.027.1.i, %substreams.1.i
  br i1 %cmp3.not28.1.i, label %for.inc17.i.cleanup_crit_edge, label %for.inc17.i.for.body4.1.i_crit_edge

for.inc17.i.for.body4.1.i_crit_edge:              ; preds = %for.inc17.i
  br label %for.body4.1.i

for.inc17.i.cleanup_crit_edge:                    ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body4.1.i:                                    ; preds = %for.inc.1.i.for.body4.1.i_crit_edge, %for.inc17.i.for.body4.1.i_crit_edge
  %subs.029.1.i = phi ptr [ %subs.0.1.i, %for.inc.1.i.for.body4.1.i_crit_edge ], [ %subs.027.1.i, %for.inc17.i.for.body4.1.i_crit_edge ]
  %name6.1.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.029.1.i, i32 0, i32 12
  %23 = ptrtoint ptr %dg00x to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dg00x, align 8
  %shortname9.1.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 3
  br i1 %is_console, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %number.1.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %subs.029.1.i, i32 0, i32 2
  %25 = ptrtoint ptr %number.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number.1.i, align 4
  %add.1.i = add i32 %26, 1
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.1.i, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %shortname9.1.i, i32 noundef %add.1.i) #4
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.1.i, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %shortname9.1.i) #4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then.1.i
  %27 = ptrtoint ptr %subs.029.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %subs.0.1.i = load ptr, ptr %subs.029.1.i, align 4
  %cmp3.not.1.i = icmp eq ptr %subs.0.1.i, %substreams.1.i
  br i1 %cmp3.not.1.i, label %for.inc.1.i.cleanup_crit_edge, label %for.inc.1.i.for.body4.1.i_crit_edge

for.inc.1.i.for.body4.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4.1.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1.i.cleanup_crit_edge, %for.inc17.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.inc17.i.cleanup_crit_edge ], [ 0, %for.inc.1.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_open(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %call = tail call i32 @snd_dg00x_stream_lock_try(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %call1 = tail call i32 @snd_dg00x_stream_reserve_duplex(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then3:                                         ; preds = %if.end
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_counter, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %substreams_counter, align 8
  %call4 = tail call i32 @snd_dg00x_stream_start_duplex(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %substreams_counter, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %substreams_counter, align 8
  br label %if.then12

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

if.then12:                                        ; preds = %if.then6, %if.end.if.then12_crit_edge
  %err.0.ph = phi i32 [ %call1, %if.end.if.then12_crit_edge ], [ %call4, %if.then6 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @snd_dg00x_stream_lock_release(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.0.ph, %if.then12 ], [ %call4, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midi_close(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %mutex = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_counter, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %substreams_counter, align 8
  tail call void @snd_dg00x_stream_stop_duplex(ptr noundef %3) #4
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @snd_dg00x_stream_lock_release(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_capture_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
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
  %device = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %port.0 = phi i32 [ %7, %if.then ], [ 2, %entry.do.body2_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %tx_stream9 = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 4
  %.substream = select i1 %tobool.not, ptr null, ptr %substream
  tail call void @amdtp_dot_midi_trigger(ptr noundef %tx_stream9, i32 noundef %port.0, ptr noundef %.substream) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_playback_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
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
  %device = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %port.0 = phi i32 [ %7, %if.then ], [ 2, %entry.do.body2_crit_edge ]
  %lock = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %rx_stream9 = getelementptr inbounds %struct.snd_dg00x, ptr %3, i32 0, i32 6
  %.substream = select i1 %tobool.not, ptr null, ptr %substream
  tail call void @amdtp_dot_midi_trigger(ptr noundef %rx_stream9, i32 noundef %port.0, ptr noundef %.substream) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_lock_try(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_reserve_duplex(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dg00x_stream_start_duplex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dg00x_stream_lock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dg00x_stream_stop_duplex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_dot_midi_trigger(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @add_substream_pair.capture_ops, !1, !"capture_ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/digi00x/digi00x-midi.c", i32 119, i32 38}
!2 = !{ptr @add_substream_pair.playback_ops, !3, !"playback_ops", i1 false, i1 false}
!3 = !{!"../sound/firewire/digi00x/digi00x-midi.c", i32 124, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/digi00x/digi00x-midi.c", i32 141, i32 11}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/digi00x/digi00x-midi.c", i32 143, i32 11}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/digi00x/digi00x-midi.c", i32 104, i32 7}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
