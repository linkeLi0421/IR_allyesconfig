; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_seq.c_pt.bc'
source_filename = "../sound/synth/emux/emux_seq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_midi_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_virmidi_dev = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.rwlock_t, %struct.rw_semaphore, %struct.list_head }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s WaveTable\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/synth/emux/emux_seq.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013can't create client\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014seqports must be greater than zero\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014too many ports.limited max. ports %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s Port %d\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013can't create port\0A\00", [43 x i8] zeroinitializer }, align 32
@emux_ops = internal constant { %struct.snd_midi_op, [36 x i8] } { %struct.snd_midi_op { ptr @snd_emux_note_on, ptr @snd_emux_note_off, ptr @snd_emux_key_press, ptr @snd_emux_terminate_note, ptr @snd_emux_control, ptr @snd_emux_nrpn, ptr @snd_emux_sysex }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s Synth MIDI\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 62, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 64, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 69, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 72, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 86, i32 20 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 90, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"emux_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 22, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [31 x i8] c"../sound/synth/emux/emux_seq.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 370, i32 24 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @emux_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emux_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_init_seq(ptr noundef %emu, ptr noundef %card, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %pinfo = alloca %struct.snd_seq_port_callback, align 4
  %tmpname = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pinfo) #7
  %0 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pinfo, i32 0, i32 4
  %1 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pinfo, i32 0, i32 5
  %2 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pinfo, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpname) #7
  %3 = call ptr @memset(ptr %tmpname, i32 255, i32 64)
  %name = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 23
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef %card, i32 noundef %index, ptr noundef nonnull @.str, ptr noundef %5) #7
  %client = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 19
  %6 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @.str.2) #7
  br label %cleanup20

if.end:                                           ; preds = %entry
  %num_ports = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 3
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @.str.3) #7
  br label %if.end10.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp6 = icmp ugt i32 %8, 31
  br i1 %cmp6, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 73, ptr noundef nonnull @.str.4, i32 noundef 32) #7
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %if.then3
  %.sink = phi i32 [ 32, %if.then7 ], [ 1, %if.then3 ]
  %9 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %num_ports, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %10 = phi i32 [ %8, %if.else.if.end10_crit_edge ], [ 1, %if.end10.sink.split ]
  %11 = call ptr @memset(ptr %pinfo, i32 0, i32 32)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_emux_use, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_emux_unuse, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_emux_event_input, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1242.not = icmp eq i32 %10, 0
  br i1 %cmp1242.not, label %if.end10.cleanup20_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup20_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

for.body:                                         ; preds = %snd_emux_init_port.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %snd_emux_init_port.exit.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmpname, ptr noundef nonnull @.str.5, ptr noundef %16, i32 noundef %i.043)
  %call16 = call ptr @snd_emux_create_port(ptr noundef %emu, ptr noundef nonnull %tmpname, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %pinfo)
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 90, ptr noundef nonnull @.str.6) #7
  br label %cleanup20

if.end18:                                         ; preds = %for.body
  %port_mode = getelementptr inbounds %struct.snd_emux_port, ptr %call16, i32 0, i32 2
  %17 = ptrtoint ptr %port_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %port_mode, align 4
  %drum_flags.i = getelementptr inbounds %struct.snd_emux_port, ptr %call16, i32 0, i32 4
  %18 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %drum_flags.i, align 4
  %volume_atten.i = getelementptr inbounds %struct.snd_emux_port, ptr %call16, i32 0, i32 3
  %19 = ptrtoint ptr %volume_atten.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %volume_atten.i, align 4
  call void @snd_emux_sounds_off_all(ptr noundef nonnull %call16) #7
  call void @snd_midi_channel_set_clear(ptr noundef nonnull %call16) #7
  call void @snd_emux_clear_effect(ptr noundef nonnull %call16) #7
  %arrayidx.i.i = getelementptr %struct.snd_emux_port, ptr %call16, i32 0, i32 5, i32 11
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_emux_port, ptr %call16, i32 0, i32 5, i32 12
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.snd_emux_port, ptr %call16, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx4.i.i, align 4
  %max_channels.i.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call16, i32 0, i32 3
  %23 = ptrtoint ptr %max_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.i.i = icmp sgt i32 %24, 0
  br i1 %cmp18.i.i, label %for.body.lr.ph.i.i, label %if.end18.snd_emux_init_port.exit_crit_edge

if.end18.snd_emux_init_port.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emux_init_port.exit

for.body.lr.ph.i.i:                               ; preds = %if.end18
  %channels.i.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call16, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channels.i.i, align 4
  %27 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drum_flags.i, align 4
  %29 = shl nuw i32 1, %i.019.i.i
  %30 = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.not.i.i = icmp eq i32 %30, 0
  %drum_channel.i.i = getelementptr %struct.snd_midi_channel, ptr %26, i32 %i.019.i.i, i32 5
  %31 = ptrtoint ptr %drum_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %drum_channel.i.i, align 1
  %bf.shl.i.i = select i1 %tobool.not.not.i.i, i8 0, i8 -128
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.shl.i.i, %bf.clear.i.i
  store i8 %bf.set.i.i, ptr %drum_channel.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %32 = ptrtoint ptr %max_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_channels.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %33
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.snd_emux_init_port.exit_crit_edge

for.body.i.i.snd_emux_init_port.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emux_init_port.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

snd_emux_init_port.exit:                          ; preds = %for.body.i.i.snd_emux_init_port.exit_crit_edge, %if.end18.snd_emux_init_port.exit_crit_edge
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call16, i32 0, i32 2
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.snd_emux, ptr %emu, i32 0, i32 20, i32 %i.043
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx, align 4
  %arrayidx19 = getelementptr %struct.snd_emux, ptr %emu, i32 0, i32 21, i32 %i.043
  %37 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call16, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %38 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_ports, align 4
  %cmp12 = icmp slt i32 %inc, %39
  br i1 %cmp12, label %snd_emux_init_port.exit.for.body_crit_edge, label %snd_emux_init_port.exit.cleanup20_crit_edge

snd_emux_init_port.exit.cleanup20_crit_edge:      ; preds = %snd_emux_init_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

snd_emux_init_port.exit.for.body_crit_edge:       ; preds = %snd_emux_init_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup20:                                        ; preds = %snd_emux_init_port.exit.cleanup20_crit_edge, %if.then17, %if.end10.cleanup20_crit_edge, %if.then
  %retval.2 = phi i32 [ -19, %if.then ], [ -12, %if.then17 ], [ 0, %if.end10.cleanup20_crit_edge ], [ 0, %snd_emux_init_port.exit.cleanup20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpname) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pinfo) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_use(ptr noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private_data, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 312, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %emu24 = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 1
  %0 = ptrtoint ptr %emu24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu24, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !26

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 315, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %register_mutex = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #7
  %drum_flags.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 4
  %2 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %drum_flags.i, align 4
  %volume_atten.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 3
  %3 = ptrtoint ptr %volume_atten.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %volume_atten.i, align 4
  tail call void @snd_emux_sounds_off_all(ptr noundef nonnull %private_data) #7
  tail call void @snd_midi_channel_set_clear(ptr noundef nonnull %private_data) #7
  tail call void @snd_emux_clear_effect(ptr noundef nonnull %private_data) #7
  %arrayidx.i.i = getelementptr %struct.snd_emux_port, ptr %private_data, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_emux_port, ptr %private_data, i32 0, i32 5, i32 12
  %5 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.snd_emux_port, ptr %private_data, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx4.i.i, align 4
  %max_channels.i.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 3
  %7 = ptrtoint ptr %max_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp18.i.i = icmp sgt i32 %8, 0
  br i1 %cmp18.i.i, label %for.body.lr.ph.i.i, label %if.end60.snd_emux_init_port.exit_crit_edge

if.end60.snd_emux_init_port.exit_crit_edge:       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emux_init_port.exit

for.body.lr.ph.i.i:                               ; preds = %if.end60
  %channels.i.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels.i.i, align 4
  %11 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drum_flags.i, align 4
  %13 = shl nuw i32 1, %i.019.i.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.not.i.i = icmp eq i32 %14, 0
  %drum_channel.i.i = getelementptr %struct.snd_midi_channel, ptr %10, i32 %i.019.i.i, i32 5
  %15 = ptrtoint ptr %drum_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %drum_channel.i.i, align 1
  %bf.shl.i.i = select i1 %tobool.not.not.i.i, i8 0, i8 -128
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.shl.i.i, %bf.clear.i.i
  store i8 %bf.set.i.i, ptr %drum_channel.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %16 = ptrtoint ptr %max_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_channels.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.snd_emux_init_port.exit_crit_edge

for.body.i.i.snd_emux_init_port.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_emux_init_port.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

snd_emux_init_port.exit:                          ; preds = %for.body.i.i.snd_emux_init_port.exit_crit_edge, %if.end60.snd_emux_init_port.exit_crit_edge
  %used.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %used.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %21) #7
  br i1 %call.i, label %if.end.i, label %snd_emux_init_port.exit.__error.i_crit_edge

snd_emux_init_port.exit.__error.i_crit_edge:      ; preds = %snd_emux_init_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__error.i

if.end.i:                                         ; preds = %snd_emux_init_port.exit
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %module.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %25) #7
  br i1 %call1.i, label %if.end.i.__snd_emux_inc_count.exit_crit_edge, label %if.then2.i

if.end.i.__snd_emux_inc_count.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__snd_emux_inc_count.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  tail call void @module_put(ptr noundef %27) #7
  br label %__error.i

__error.i:                                        ; preds = %if.then2.i, %snd_emux_init_port.exit.__error.i_crit_edge
  %28 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %used.i, align 4
  br label %__snd_emux_inc_count.exit

__snd_emux_inc_count.exit:                        ; preds = %__error.i, %if.end.i.__snd_emux_inc_count.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %register_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %__snd_emux_inc_count.exit, %do.end44, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end44 ], [ 0, %__snd_emux_inc_count.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_unuse(ptr noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private_data, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %emu24 = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 1
  %0 = ptrtoint ptr %emu24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu24, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !26

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %register_mutex = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #7
  tail call void @snd_emux_sounds_off_all(ptr noundef nonnull %private_data) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %5) #7
  %used.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end60.__snd_emux_dec_count.exit_crit_edge

if.end60.__snd_emux_dec_count.exit_crit_edge:     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %__snd_emux_dec_count.exit

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emux_terminate_all(ptr noundef nonnull %1) #7
  br label %__snd_emux_dec_count.exit

__snd_emux_dec_count.exit:                        ; preds = %if.then.i, %if.end60.__snd_emux_dec_count.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  tail call void @module_put(ptr noundef %9) #7
  tail call void @mutex_unlock(ptr noundef %register_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %__snd_emux_dec_count.exit, %do.end44, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end44 ], [ 0, %__snd_emux_dec_count.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_event_input(ptr noundef %ev, i32 %direct, ptr noundef %private_data, i32 %atomic, i32 %hop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private_data, null
  %tobool1.not = icmp eq ptr %ev, null
  %spec.select = or i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_midi_process_event(ptr noundef nonnull @emux_ops, ptr noundef nonnull %ev, ptr noundef nonnull %private_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_emux_create_port(ptr noundef %emu, ptr noundef %name, i32 noundef %max_channels, i32 noundef %oss_port, ptr noundef %callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_channels, i32 288) #7
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !26

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %channels52 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %channels52 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %channels52, align 8
  br label %if.then5

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %channels, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.if.then5_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then5_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_channels)
  %cmp54.not = icmp eq i32 %max_channels, 0
  br i1 %cmp54.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then5:                                         ; preds = %if.end7.i.i.if.then5_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 8
  %number = getelementptr %struct.snd_midi_channel, ptr %7, i32 %i.055, i32 1
  %8 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.055, ptr %number, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %max_channels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %call7.i.i, align 8
  %max_channels11 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %max_channels11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %max_channels, ptr %max_channels11, align 4
  %emu12 = getelementptr inbounds %struct.snd_emux_port, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %emu12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %emu, ptr %emu12, align 8
  %client = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 19
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %client, align 4
  %client14 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %client14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %client14, align 4
  tail call void @snd_emux_create_effect(ptr noundef nonnull %call7.i.i) #7
  %private_free = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback, i32 0, i32 7
  %15 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @free_port, ptr %private_free, align 4
  %private_data15 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback, i32 0, i32 1
  %16 = ptrtoint ptr %private_data15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oss_port)
  %tobool16.not = icmp eq i32 %oss_port, 0
  %. = select i1 %tobool16.not, i32 327710, i32 1
  %.50 = select i1 %tobool16.not, i32 66, i32 2
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %client, align 4
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %19 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_voices, align 4
  %call20 = tail call i32 @snd_seq_event_port_attach(i32 noundef %18, ptr noundef %callback, i32 noundef %.50, i32 noundef %., i32 noundef %max_channels, i32 noundef %20, ptr noundef %name) #7
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call20, ptr %port, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %for.end ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_detach_seq(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 15
  %0 = ptrtoint ptr %voices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %voices, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emux_terminate_all(ptr noundef %emu) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %client = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 19
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %3) #7
  %4 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %client, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_terminate_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_create_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_port(ptr noundef %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private_data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emux_delete_effect(ptr noundef nonnull %private_data) #7
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 4
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef nonnull %private_data) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_attach(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_reset_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_emux_sounds_off_all(ptr noundef %port) #7
  tail call void @snd_midi_channel_set_clear(ptr noundef %port) #7
  tail call void @snd_emux_clear_effect(ptr noundef %port) #7
  %arrayidx = getelementptr %struct.snd_emux_port, ptr %port, i32 0, i32 5, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.snd_emux_port, ptr %port, i32 0, i32 5, i32 12
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.snd_emux_port, ptr %port, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx4, align 4
  %max_channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp18 = icmp sgt i32 %4, 0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_midi_channel_set, ptr %port, i32 0, i32 4
  %drum_flags = getelementptr inbounds %struct.snd_emux_port, ptr %port, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channels, align 4
  %7 = ptrtoint ptr %drum_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drum_flags, align 4
  %9 = shl nuw i32 1, %i.019
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.not = icmp eq i32 %10, 0
  %drum_channel = getelementptr %struct.snd_midi_channel, ptr %6, i32 %i.019, i32 5
  %11 = ptrtoint ptr %drum_channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %drum_channel, align 1
  %bf.shl = select i1 %tobool.not.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %drum_channel, align 1
  %inc = add nuw nsw i32 %i.019, 1
  %12 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_channels, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_sounds_off_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_channel_set_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_clear_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_process_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_inc_count(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %register_mutex = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #7
  %used.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 22
  %0 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %used.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %3) #7
  br i1 %call.i, label %if.end.i, label %entry.__error.i_crit_edge

entry.__error.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__error.i

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emu, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %7) #7
  br i1 %call1.i, label %if.end.i.__snd_emux_inc_count.exit_crit_edge, label %if.then2.i

if.end.i.__snd_emux_inc_count.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__snd_emux_inc_count.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  tail call void @module_put(ptr noundef %9) #7
  br label %__error.i

__error.i:                                        ; preds = %if.then2.i, %entry.__error.i_crit_edge
  %10 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %used.i, align 4
  br label %__snd_emux_inc_count.exit

__snd_emux_inc_count.exit:                        ; preds = %__error.i, %if.end.i.__snd_emux_inc_count.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %__error.i ], [ 1, %if.end.i.__snd_emux_inc_count.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %register_mutex) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_dec_count(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %register_mutex = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %register_mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %3) #7
  %used.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 22
  %4 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.__snd_emux_dec_count.exit_crit_edge

entry.__snd_emux_dec_count.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__snd_emux_dec_count.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_emux_terminate_all(ptr noundef %emu) #7
  br label %__snd_emux_dec_count.exit

__snd_emux_dec_count.exit:                        ; preds = %if.then.i, %entry.__snd_emux_dec_count.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  tail call void @module_put(ptr noundef %7) #7
  tail call void @mutex_unlock(ptr noundef %register_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_init_virmidi(ptr nocapture noundef %emu, ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vmidi = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 24
  %0 = ptrtoint ptr %vmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vmidi, align 4
  %midi_ports = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 8
  %1 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

if.end:                                           ; preds = %entry
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #7
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end.cleanup23_crit_edge, label %if.end7.i.i, !prof !26

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

if.end7.i.i:                                      ; preds = %if.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %6 = ptrtoint ptr %vmidi to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %vmidi, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup23_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup23_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp746 = icmp sgt i32 %8, 0
  br i1 %cmp746, label %for.body.lr.ph, label %for.cond.preheader.cleanup23_crit_edge

for.cond.preheader.cleanup23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %midi_devidx = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 9
  %name12 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 23
  %client = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #7
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !27
  %10 = ptrtoint ptr %midi_devidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %midi_devidx, align 4
  %add = add i32 %11, %i.047
  %call8 = call i32 @snd_virmidi_new(ptr noundef %card, i32 noundef %add, ptr noundef nonnull %rmidi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body.__error_crit_edge, label %if.end11

for.body.__error_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__error

if.end11:                                         ; preds = %for.body
  %12 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name12, align 4
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.7, ptr noundef %17)
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %seq_mode, align 4
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %client, align 4
  %client14 = getelementptr inbounds %struct.snd_virmidi_dev, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %client14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %client14, align 4
  %arrayidx = getelementptr %struct.snd_emux, ptr %emu, i32 0, i32 20, i32 %i.047
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.snd_virmidi_dev, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %port, align 4
  %25 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmidi, align 4
  %call15 = call i32 @snd_device_register(ptr noundef %card, ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %27 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmidi, align 4
  br i1 %cmp16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @snd_device_free(ptr noundef %card, ptr noundef %28) #7
  br label %__error

for.inc:                                          ; preds = %if.end11
  %29 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vmidi, align 4
  %arrayidx20 = getelementptr ptr, ptr %30, i32 %i.047
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %arrayidx20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #7
  %inc = add nuw nsw i32 %i.047, 1
  %32 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %midi_ports, align 4
  %cmp7 = icmp slt i32 %inc, %33
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.cleanup23_crit_edge

for.inc.cleanup23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

__error:                                          ; preds = %if.then17, %for.body.__error_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #7
  %34 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vmidi, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %__error.cleanup23_crit_edge, label %for.cond.preheader.i

__error.cleanup23_crit_edge:                      ; preds = %__error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup23

for.cond.preheader.i:                             ; preds = %__error
  %36 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp18.i = icmp sgt i32 %37, 0
  br i1 %cmp18.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vmidi, align 4
  %arrayidx.i = getelementptr ptr, ptr %39, i32 %i.019.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %emu, align 4
  call void @snd_device_free(ptr noundef %43, ptr noundef nonnull %41) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %44 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %midi_ports, align 4
  %cmp.i = icmp slt i32 %inc.i, %45
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %46 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vmidi, align 4
  call void @kfree(ptr noundef %47) #7
  %48 = ptrtoint ptr %vmidi to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %vmidi, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end.i, %__error.cleanup23_crit_edge, %for.inc.cleanup23_crit_edge, %for.cond.preheader.cleanup23_crit_edge, %if.end7.i.i.cleanup23_crit_edge, %if.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup23_crit_edge ], [ -12, %if.end7.i.i.cleanup23_crit_edge ], [ -12, %__error.cleanup23_crit_edge ], [ -12, %for.end.i ], [ 0, %for.cond.preheader.cleanup23_crit_edge ], [ -12, %if.end.cleanup23_crit_edge ], [ 0, %for.inc.cleanup23_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_virmidi_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emux_delete_virmidi(ptr nocapture noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vmidi = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 24
  %0 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmidi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %midi_ports = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 8
  %2 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %midi_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18 = icmp sgt i32 %3, 0
  br i1 %cmp18, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmidi, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emu, align 4
  tail call void @snd_device_free(ptr noundef %9, ptr noundef nonnull %7) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %10 = ptrtoint ptr %midi_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %midi_ports, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %12 = ptrtoint ptr %vmidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vmidi, align 4
  tail call void @kfree(ptr noundef %13) #7
  %14 = ptrtoint ptr %vmidi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vmidi, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_delete_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_note_on(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_note_off(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_key_press(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_terminate_note(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_control(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_nrpn(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_sysex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_seq.c", i32 62, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux_seq.c", i32 64, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/synth/emux/emux_seq.c", i32 69, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/synth/emux/emux_seq.c", i32 72, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/synth/emux/emux_seq.c", i32 86, i32 20}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/synth/emux/emux_seq.c", i32 90, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/synth/emux/emux_seq.c", i32 370, i32 24}
!15 = !{ptr @emux_ops, !16, !"emux_ops", i1 false, i1 false}
!16 = !{!"../sound/synth/emux/emux_seq.c", i32 22, i32 33}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"auto-init"}
