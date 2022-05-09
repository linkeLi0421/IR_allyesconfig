; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_midi.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.seq_oss_midi = type { i32, i32, i32, i32, i32, [30 x i8], ptr, ptr, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.snd_seq_port_subscribe = type { %struct.snd_seq_addr, %struct.snd_seq_addr, i32, i32, i8, [3 x i8], [64 x i8] }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.2 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.2 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%union.evrec = type { %struct.evrec_timer }
%struct.evrec_timer = type { i8, i8, i8, i8, i32 }
%struct.evrec_voice = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.evrec_long = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.midi_info = type { [30 x i8], i32, i32, i32, [18 x i32] }

@snd_seq_oss_midi_check_new_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ALSA: seq_oss: can't malloc midi coder\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_seq_oss_midi_check_new_port\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/core/seq/oss/seq_oss_midi.c\00", [62 x i8] zeroinitializer }, align 32
@snd_seq_oss_midi_check_new_port._entry_ptr = internal global ptr @snd_seq_oss_midi_check_new_port._entry, section ".printk_index", align 4
@register_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@max_midi_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@midi_devs = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ANumber of MIDI devices: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0Amidi %d: \00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*empty*\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%s] ALSA port %d:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  capability %s / opened %s\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read/write\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 33, i64 66, i64 99]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 33, i64 66, i64 99]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 181, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"register_lock\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"max_midi_devs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"midi_devs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 47, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 691, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 693, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 696, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 699, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 701, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 49, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 676, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 678, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 680, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [37 x i8] c"../sound/core/seq/oss/seq_oss_midi.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 682, i32 10 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @snd_seq_oss_midi_check_new_port._entry, ptr @snd_seq_oss_midi_check_new_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @register_lock, ptr @max_midi_devs, ptr @midi_devs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_midi_check_new_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_midi_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_devs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_lookup_ports(i32 noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 188) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 164) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i34, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %call7.i.i) #8
  tail call void @kfree(ptr noundef %call7.i.i34) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %call7.i.i, align 8
  %call437 = tail call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef -1061399727, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %cmp38 = icmp eq i32 %call437, 0
  br i1 %cmp38, label %while.body.lr.ph, label %if.end.while.end18_crit_edge

if.end.while.end18_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end18

while.body.lr.ph:                                 ; preds = %if.end
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i.i34, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %client)
  %cmp6 = icmp eq i32 %4, %client
  br i1 %cmp6, label %while.body.while.cond.backedge_crit_edge, label %if.end8

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body16.while.cond.backedge_crit_edge, %if.end8.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call4 = tail call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef -1061399727, ptr noundef nonnull %call7.i.i) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end18_crit_edge

while.cond.backedge.while.end18_crit_edge:        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end18

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end8:                                          ; preds = %while.body
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %call7.i.i34 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %call7.i.i34, align 8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %port, align 1
  %call1335 = tail call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef -1062972590, ptr noundef nonnull %call7.i.i34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1335)
  %cmp1436 = icmp eq i32 %call1335, 0
  br i1 %cmp1436, label %if.end8.while.body16_crit_edge, label %if.end8.while.cond.backedge_crit_edge

if.end8.while.cond.backedge_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end8.while.body16_crit_edge:                   ; preds = %if.end8
  br label %while.body16

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %if.end8.while.body16_crit_edge
  %call17 = tail call i32 @snd_seq_oss_midi_check_new_port(ptr noundef nonnull %call7.i.i34)
  %call13 = tail call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef -1062972590, ptr noundef nonnull %call7.i.i34) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %while.body16.while.body16_crit_edge, label %while.body16.while.cond.backedge_crit_edge

while.body16.while.cond.backedge_crit_edge:       ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

while.end18:                                      ; preds = %while.cond.backedge.while.end18_crit_edge, %if.end.while.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i34) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end18, %if.then
  %retval.0 = phi i32 [ 0, %while.end18 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_check_new_port(ptr noundef %pinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %and1 = and i32 %3, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 66
  %and3 = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and3)
  %cmp4.not = icmp eq i32 %and3, 33
  %or.cond = or i1 %cmp.not, %cmp4.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pinfo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pinfo, align 4
  %conv = zext i8 %5 to i32
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %pinfo, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port, align 1
  %conv8 = zext i8 %7 to i32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %8 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp523.i = icmp sgt i32 %8, 0
  br i1 %cmp523.i, label %if.end6.for.body.i_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.024.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %client7.i = getelementptr inbounds %struct.seq_oss_midi, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %client7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %client7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp8.i = icmp eq i32 %12, %conv
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %port11.i = getelementptr inbounds %struct.seq_oss_midi, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv8)
  %cmp12.i = icmp eq i32 %14, %conv8
  br i1 %cmp12.i, label %if.then10, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i = getelementptr inbounds %struct.seq_oss_midi, ptr %10, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !41
  br label %cleanup

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #11
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %pinfo to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pinfo, align 4
  %conv18 = zext i8 %19 to i32
  %client19 = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %client19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %client19, align 4
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port, align 1
  %conv22 = zext i8 %22 to i32
  %port23 = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %port23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv22, ptr %port23, align 8
  %24 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capability, align 4
  %flags25 = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags25, align 4
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %opened, align 8
  %use_lock26 = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 8
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock26, i32 noundef 4) #8
  %28 = ptrtoint ptr %use_lock26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %use_lock26, align 4
  %name = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 5
  %name27 = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 1
  %call29 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name27, i32 noundef 30) #8
  %coder = getelementptr inbounds %struct.seq_oss_midi, ptr %call7.i.i, i32 0, i32 6
  %call30 = tail call i32 @snd_midi_event_new(i32 noundef 256, ptr noundef %coder) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end15
  %29 = ptrtoint ptr %coder to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %coder, align 4
  tail call void @snd_midi_event_no_status(ptr noundef %30, i32 noundef 1) #8
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %31 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp48105 = icmp sgt i32 %31, 0
  br i1 %cmp48105, label %if.end35.for.body_crit_edge, label %if.end35.if.end61_crit_edge

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0106 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.0106
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %cmp50 = icmp eq ptr %33, null
  br i1 %cmp50, label %for.body.if.end63_crit_edge, label %for.inc

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %31
  br i1 %exitcond.not, label %if.then56, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then56:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %31)
  %cmp57 = icmp sgt i32 %31, 31
  br i1 %cmp57, label %if.then59, label %if.then56.if.end61_crit_edge

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call43) #8
  %34 = ptrtoint ptr %coder to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %coder, align 4
  tail call void @snd_midi_event_free(ptr noundef %35) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end61:                                         ; preds = %if.then56.if.end61_crit_edge, %if.end35.if.end61_crit_edge
  %i.0.lcssa112 = phi i32 [ %31, %if.then56.if.end61_crit_edge ], [ 0, %if.end35.if.end61_crit_edge ]
  %inc62 = add nsw i32 %31, 1
  store i32 %inc62, ptr @max_midi_devs, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %for.body.if.end63_crit_edge
  %i.0102 = phi i32 [ %i.0.lcssa112, %if.end61 ], [ %i.0106, %for.body.if.end63_crit_edge ]
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.0102, ptr %call7.i.i, align 8
  %arrayidx65 = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.0102
  %37 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %arrayidx65, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then59, %do.end, %if.end11.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -12, %do.end ], [ -12, %if.then59 ], [ 0, %if.end63 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_new(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_no_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_check_exit_port(i32 noundef %client, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %0 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp523.i = icmp sgt i32 %0, 0
  br i1 %cmp523.i, label %entry.for.body.i_crit_edge, label %entry.find_slot.exit.thread_crit_edge

entry.find_slot.exit.thread_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_slot.exit.thread

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.024.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %client7.i = getelementptr inbounds %struct.seq_oss_midi, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %client7.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %client7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %client)
  %cmp8.i = icmp eq i32 %4, %client
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %port11.i = getelementptr inbounds %struct.seq_oss_midi, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp12.i = icmp eq i32 %6, %port
  br i1 %cmp12.i, label %do.body1, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.inc.i.find_slot.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.find_slot.exit.thread_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_slot.exit.thread

find_slot.exit.thread:                            ; preds = %for.inc.i.find_slot.exit.thread_crit_edge, %entry.find_slot.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  br label %do.body8

do.body1:                                         ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i = getelementptr inbounds %struct.seq_oss_midi, ptr %2, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call3) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !41
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock.i, ptr noundef nonnull @.str.2, i32 noundef 228) #8
  %coder = getelementptr inbounds %struct.seq_oss_midi, ptr %2, i32 0, i32 6
  %12 = ptrtoint ptr %coder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %coder, align 4
  tail call void @snd_midi_event_free(ptr noundef %13) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %do.body8

do.body8:                                         ; preds = %do.body1, %find_slot.exit.thread
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %14 = load i32, ptr @max_midi_devs, align 4
  %15 = add i32 %14, -1
  %smin = call i32 @llvm.smin.i32(i32 %15, i32 -1)
  %16 = add nsw i32 %smin, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body8
  %index.0.in = phi i32 [ %14, %do.body8 ], [ %index.0, %for.body.for.cond_crit_edge ]
  %index.0 = add i32 %index.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index.0)
  %cmp20 = icmp sgt i32 %index.0, -1
  br i1 %cmp20, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx22 = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %index.0
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %index.0.in.lcssa = phi i32 [ %index.0.in, %for.body.for.end_crit_edge ], [ %16, %for.cond.for.end_crit_edge ]
  store i32 %index.0.in.lcssa, ptr @max_midi_devs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call15) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_clear_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %0 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp513 = icmp sgt i32 %0, 0
  br i1 %cmp513, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.014
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %coder = getelementptr inbounds %struct.seq_oss_midi, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %coder to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %coder, align 4
  tail call void @snd_midi_event_free(ptr noundef %4) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %6 = load i32, ptr @max_midi_devs, align 4
  %cmp5 = icmp slt i32 %inc, %6
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  store i32 0, ptr @max_midi_devs, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_seq_oss_midi_setup(ptr nocapture noundef writeonly %dp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_midi_devs, align 4
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %1 = ptrtoint ptr %max_mididev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %max_mididev, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_cleanup(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @snd_seq_oss_midi_close(ptr noundef %dp, i32 noundef %i.07)
  %inc = add nuw nsw i32 %i.07, 1
  %2 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_mididev, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %4 = ptrtoint ptr %max_mididev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_mididev, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_close(ptr noundef readonly %dp, i32 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %subs = alloca %struct.snd_seq_port_subscribe, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %subs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread57, label %if.end

get_mididev.exit.thread57:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %devinfo = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %devinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devinfo, align 4
  %cmp.not = icmp eq ptr %9, %dp
  br i1 %cmp.not, label %if.end3, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %11 = call ptr @memset(ptr %subs, i32 0, i32 80)
  %12 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opened, align 4
  %and = and i32 %13, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.if.end12_crit_edge, label %if.then6

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 4
  %16 = ptrtoint ptr %subs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %subs, align 4
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %client, align 4
  %conv = trunc i32 %18 to i8
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %19 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %dest, align 2
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %conv8 = trunc i32 %21 to i8
  %port10 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %port10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8, ptr %port10, align 1
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %23 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cseq, align 4
  %call11 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %24, i32 noundef 1079006001, ptr noundef nonnull %subs) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end3.if.end12_crit_edge
  %25 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opened, align 4
  %and14 = and i32 %26, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end29_crit_edge, label %if.then16

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %client17 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %27 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %client17, align 4
  %conv18 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %subs to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv18, ptr %subs, align 4
  %port21 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %30 = ptrtoint ptr %port21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port21, align 4
  %conv22 = trunc i32 %31 to i8
  %port24 = getelementptr inbounds %struct.snd_seq_addr, ptr %subs, i32 0, i32 1
  %32 = ptrtoint ptr %port24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv22, ptr %port24, align 1
  %dest25 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %addr26 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %33 = ptrtoint ptr %addr26 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr26, align 4
  %35 = ptrtoint ptr %dest25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %dest25, align 2
  %cseq27 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %36 = ptrtoint ptr %cseq27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cseq27, align 4
  %call28 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %37, i32 noundef 1079006001, ptr noundef nonnull %subs) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then16, %if.end12.if.end29_crit_edge
  %38 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %opened, align 4
  %39 = ptrtoint ptr %devinfo to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %devinfo, align 4
  %call.i.i51 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then2, %get_mididev.exit.thread57, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end29 ], [ -19, %get_mididev.exit.thread57 ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %subs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_open_all(ptr noundef %dp, i32 noundef %file_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %i.05, i32 noundef %file_mode)
  %inc = add nuw nsw i32 %i.05, 1
  %2 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_mididev, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %dev, i32 noundef %fmode) local_unnamed_addr #0 align 64 {
entry:
  %subs = alloca %struct.snd_seq_port_subscribe, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %subs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread117, label %if.end

get_mididev.exit.thread117:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %devinfo = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %devinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devinfo, align 4
  %cmp.not = icmp eq ptr %9, %dp
  br i1 %cmp.not, label %land.lhs.true.if.end3_crit_edge, label %if.then2

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %and = and i32 %fmode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 66
  %and7 = and i32 %fmode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or10 = or i32 %spec.select, 33
  %perm.1 = select i1 %tobool8.not, i32 %spec.select, i32 %or10
  %flags = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and12 = and i32 %12, %perm.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  %and18 = and i32 %and12, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %and12)
  %cmp19 = icmp eq i32 %and18, %and12
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %neg = xor i32 %7, -1
  %and24 = and i32 %and12, %neg
  %15 = call ptr @memset(ptr %subs, i32 0, i32 80)
  %and25 = and i32 %and24, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end22.if.end39_crit_edge, label %if.then27

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then27:                                        ; preds = %if.end22
  %addr = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 4
  %18 = ptrtoint ptr %subs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %subs, align 4
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %client, align 4
  %conv = trunc i32 %20 to i8
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %dest, align 2
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %conv29 = trunc i32 %23 to i8
  %port31 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %port31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv29, ptr %port31, align 1
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %25 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cseq, align 4
  %call32 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %26, i32 noundef 1079006000, ptr noundef nonnull %subs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp33 = icmp sgt i32 %call32, -1
  br i1 %cmp33, label %if.then35, label %if.then27.if.end39_crit_edge

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %opened, align 4
  %or37 = or i32 %28, 66
  store i32 %or37, ptr %opened, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then27.if.end39_crit_edge, %if.end22.if.end39_crit_edge
  %and40 = and i32 %and24, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end64_crit_edge, label %if.then42

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then42:                                        ; preds = %if.end39
  %client43 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %29 = ptrtoint ptr %client43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %client43, align 4
  %conv44 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %subs to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv44, ptr %subs, align 4
  %port47 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %32 = ptrtoint ptr %port47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port47, align 4
  %conv48 = trunc i32 %33 to i8
  %port50 = getelementptr inbounds %struct.snd_seq_addr, ptr %subs, i32 0, i32 1
  %34 = ptrtoint ptr %port50 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv48, ptr %port50, align 1
  %dest51 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %addr52 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %35 = ptrtoint ptr %addr52 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr52, align 4
  %37 = ptrtoint ptr %dest51 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %dest51, align 2
  %flags53 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 3
  %38 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %flags53, align 4
  %queue = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %queue, align 4
  %conv54 = trunc i32 %40 to i8
  %queue55 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 4
  %41 = ptrtoint ptr %queue55 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv54, ptr %queue55, align 4
  %cseq56 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %42 = ptrtoint ptr %cseq56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cseq56, align 4
  %call57 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %43, i32 noundef 1079006000, ptr noundef nonnull %subs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, -1
  br i1 %cmp58, label %if.end64.thread, label %if.then42.if.end64_crit_edge

if.then42.if.end64_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64.thread:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %opened, align 4
  %or62 = or i32 %45, 33
  store i32 %or62, ptr %opened, align 4
  br label %if.end69

if.end64:                                         ; preds = %if.then42.if.end64_crit_edge, %if.end39.if.end64_crit_edge
  %46 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool66.not = icmp eq i32 %.pr, 0
  br i1 %tobool66.not, label %if.then67, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i110 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end69:                                         ; preds = %if.end64.if.end69_crit_edge, %if.end64.thread
  %devinfo70 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 7
  %48 = ptrtoint ptr %devinfo70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dp, ptr %devinfo70, align 4
  %call.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then67, %if.then20, %if.then14, %if.then2, %get_mididev.exit.thread117, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ -6, %if.then14 ], [ 0, %if.then20 ], [ 0, %if.end69 ], [ -6, %if.then67 ], [ -19, %get_mididev.exit.thread117 ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %subs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_filemode(ptr nocapture noundef readonly %dp, i32 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread18, label %if.end

get_mididev.exit.thread18:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  %and = and i32 %7, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 2
  %and5 = and i32 %7, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp ne i32 %and5, 0
  %or8 = zext i1 %tobool6.not to i32
  %mode.1 = or i32 %spec.select, %or8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_mididev.exit.thread18, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mode.1, %if.end ], [ 0, %get_mididev.exit.thread18 ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_reset(ptr nocapture noundef readonly %dp, i32 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %ev = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread65, label %if.end

get_mididev.exit.thread65:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %7, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.if.end37_crit_edge, label %if.then6

if.end3.if.end37_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #8
  %9 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %10 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5, i32 1
  %11 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %12 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %13 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %14 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %15 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %16 = call ptr @memset(ptr %ev, i32 0, i32 28)
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %client, align 4
  %conv = trunc i32 %18 to i8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %11, align 2
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %conv8 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8, ptr %12, align 1
  %queue = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %queue, align 4
  %conv11 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv11, ptr %9, align 1
  %port13 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 2
  %26 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port13, align 4
  %conv14 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv14, ptr %10, align 1
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %29 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then17, label %if.then6.if.end19_crit_edge

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 42, ptr %ev, align 4
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %32 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cseq.i, align 4
  %call.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %33, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then6.if.end19_crit_edge
  %cseq.i56 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %c.067 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 10, ptr %ev, align 4
  %conv23 = trunc i32 %c.067 to i8
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv23, ptr %13, align 4
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 123, ptr %14, align 4
  %37 = ptrtoint ptr %cseq.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cseq.i56, align 4
  %call.i57 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %38, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #8
  %39 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp27 = icmp eq i32 %40, 1
  br i1 %cmp27, label %if.then29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 121, ptr %14, align 4
  %42 = ptrtoint ptr %cseq.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cseq.i56, align 4
  %call.i59 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %43, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #8
  %44 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 13, ptr %ev, align 4
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %15, align 4
  %46 = ptrtoint ptr %cseq.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cseq.i56, align 4
  %call.i61 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %47, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %c.067, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #8
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end3.if.end37_crit_edge
  %call.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then2, %get_mididev.exit.thread65, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_get_addr(ptr nocapture noundef readonly %dp, i32 noundef %dev, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread10, label %if.end

get_mididev.exit.thread10:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %client, align 4
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %addr, align 1
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %conv2 = trunc i32 %10 to i8
  %port3 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %port3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2, ptr %port3, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_mididev.exit.thread10, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_input(ptr noundef %ev, i32 noundef %direct, ptr nocapture noundef readonly %private_data) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [32 x i8], align 1
  %ossev.i = alloca %union.evrec, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 12
  %0 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %readq, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %source, align 4
  %conv = zext i8 %3 to i32
  %port = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 1
  %conv2 = zext i8 %5 to i32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %6 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp523.i = icmp sgt i32 %6, 0
  br i1 %cmp523.i, label %if.end.for.body.i_crit_edge, label %if.end.find_slot.exit.thread_crit_edge

if.end.find_slot.exit.thread_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_slot.exit.thread

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.024.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %client7.i = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %client7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %client7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp8.i = icmp eq i32 %10, %conv
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %port11.i = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %port11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv2)
  %cmp12.i = icmp eq i32 %12, %conv2
  br i1 %cmp12.i, label %if.end4, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.find_slot.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.find_slot.exit.thread_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %find_slot.exit.thread

find_slot.exit.thread:                            ; preds = %for.inc.i.find_slot.exit.thread_crit_edge, %if.end.find_slot.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true10.i
  %use_lock.i = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 4
  %14 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opened, align 4
  %and = and i32 %15, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !41
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 5
  %17 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp8 = icmp eq i32 %18, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ossev.i) #8
  %21 = getelementptr inbounds %struct.evrec_timer, ptr %ossev.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.evrec_timer, ptr %ossev.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.evrec_timer, ptr %ossev.i, i32 0, i32 3
  %24 = getelementptr inbounds %struct.evrec_timer, ptr %ossev.i, i32 0, i32 4
  %25 = ptrtoint ptr %ossev.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %ossev.i, align 8
  %26 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ev, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %if.then10.send_synth_event.exit_crit_edge [
    i8 6, label %if.then10.sw.bb17.i_crit_edge
    i8 7, label %sw.bb1.i
    i8 8, label %sw.bb3.i
    i8 10, label %if.then10.sw.bb21.i_crit_edge
    i8 11, label %sw.bb7.i
    i8 12, label %sw.bb9.i
    i8 13, label %sw.bb30.i
  ]

if.then10.sw.bb21.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i

if.then10.sw.bb17.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then10.send_synth_event.exit_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %send_synth_event.exit

sw.bb1.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

sw.bb3.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

sw.bb7.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i

sw.bb9.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i

sw.bb17.i:                                        ; preds = %sw.bb3.i, %sw.bb1.i, %if.then10.sw.bb17.i_crit_edge
  %.sink.i = phi i8 [ -96, %sw.bb3.i ], [ -128, %sw.bb1.i ], [ -112, %if.then10.sw.bb17.i_crit_edge ]
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %22, align 2
  %conv131.i = trunc i32 %20 to i8
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv131.i, ptr %21, align 1
  %31 = ptrtoint ptr %ossev.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -109, ptr %ossev.i, align 8
  %note.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %32 = ptrtoint ptr %note.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %note.i, align 1
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %24, align 4
  %velocity.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %35 = ptrtoint ptr %velocity.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %velocity.i, align 2
  %parm.i = getelementptr inbounds %struct.evrec_voice, ptr %ossev.i, i32 0, i32 5
  %37 = ptrtoint ptr %parm.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %parm.i, align 1
  br label %sw.epilog39.i

sw.bb21.i:                                        ; preds = %sw.bb9.i, %sw.bb7.i, %if.then10.sw.bb21.i_crit_edge
  %.sink7.i = phi i8 [ -48, %sw.bb9.i ], [ -64, %sw.bb7.i ], [ -80, %if.then10.sw.bb21.i_crit_edge ]
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink7.i, ptr %22, align 2
  %conv135.i = trunc i32 %20 to i8
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv135.i, ptr %21, align 1
  %40 = ptrtoint ptr %ossev.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -110, ptr %ossev.i, align 8
  %param.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %41 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %param.i, align 4
  %conv24.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv24.i, ptr %24, align 4
  %value.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i, align 4
  %conv26.i = trunc i32 %45 to i16
  %val.i = getelementptr inbounds %struct.evrec_long, ptr %ossev.i, i32 0, i32 6
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv26.i, ptr %val.i, align 2
  br label %sw.epilog39.i

sw.bb30.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -32, ptr %22, align 2
  %conv13.i = trunc i32 %20 to i8
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv13.i, ptr %21, align 1
  %49 = ptrtoint ptr %ossev.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -110, ptr %ossev.i, align 8
  %value33.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 5
  %50 = ptrtoint ptr %value33.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value33.i, align 4
  %52 = trunc i32 %51 to i16
  %conv34.i = add i16 %52, 8192
  %val35.i = getelementptr inbounds %struct.evrec_long, ptr %ossev.i, i32 0, i32 6
  %53 = ptrtoint ptr %val35.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv34.i, ptr %val35.i, align 2
  br label %sw.epilog39.i

sw.epilog39.i:                                    ; preds = %sw.bb30.i, %sw.bb21.i, %sw.bb17.i
  %data32.sink.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %54 = ptrtoint ptr %data32.sink.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data32.sink.i, align 4
  %56 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %23, align 1
  %57 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %readq, align 4
  %time.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 4
  %59 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %time.i, align 4
  %call.i = tail call i32 @snd_seq_oss_readq_put_timestamp(ptr noundef %58, i32 noundef %60, i32 noundef 1) #8
  %61 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %readq, align 4
  %call41.i = call i32 @snd_seq_oss_readq_put_event(ptr noundef %62, ptr noundef nonnull %ossev.i) #8
  br label %send_synth_event.exit

send_synth_event.exit:                            ; preds = %sw.epilog39.i, %if.then10.send_synth_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ossev.i) #8
  br label %if.end13

if.else:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg.i) #8
  %63 = call ptr @memset(ptr %msg.i, i32 255, i32 32)
  %64 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %readq, align 4
  %time.i30 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 4
  %66 = ptrtoint ptr %time.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %time.i30, align 4
  %call.i32 = tail call i32 @snd_seq_oss_readq_put_timestamp(ptr noundef %65, i32 noundef %67, i32 noundef %18) #8
  %timer.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private_data, i32 0, i32 13
  %68 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %timer.i, align 4
  %running.i = getelementptr inbounds %struct.seq_oss_timer, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i33 = icmp eq i32 %71, 0
  br i1 %tobool.not.i33, label %if.then.i35, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i35:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i34 = tail call i32 @snd_seq_oss_timer_start(ptr noundef %69) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i35, %if.else.if.end.i_crit_edge
  %72 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %73)
  %cmp.i = icmp eq i8 %73, -126
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %readq, align 4
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %8, align 4
  %call6.i = tail call i32 @snd_seq_oss_readq_sysex(ptr noundef %75, i32 noundef %77, ptr noundef %ev) #8
  %coder.i = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 6
  %78 = ptrtoint ptr %coder.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %coder.i, align 4
  tail call void @snd_midi_event_reset_decode(ptr noundef %79) #8
  br label %send_midi_event.exit

if.else.i:                                        ; preds = %if.end.i
  %coder7.i = getelementptr inbounds %struct.seq_oss_midi, ptr %8, i32 0, i32 6
  %80 = ptrtoint ptr %coder7.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %coder7.i, align 4
  %call8.i = call i32 @snd_midi_event_decode(ptr noundef %81, ptr noundef nonnull %msg.i, i32 noundef 32, ptr noundef %ev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i.send_midi_event.exit_crit_edge

if.else.i.send_midi_event.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %send_midi_event.exit

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %readq, align 4
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %8, align 4
  %call15.i = call i32 @snd_seq_oss_readq_puts(ptr noundef %83, i32 noundef %85, ptr noundef nonnull %msg.i, i32 noundef %call8.i) #8
  br label %send_midi_event.exit

send_midi_event.exit:                             ; preds = %if.then11.i, %if.else.i.send_midi_event.exit_crit_edge, %if.then4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg.i) #8
  br label %if.end13

if.end13:                                         ; preds = %send_midi_event.exit, %send_synth_event.exit
  %call.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %86 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then6, %find_slot.exit.thread, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_putc(ptr nocapture noundef readonly %dp, i32 noundef %dev, i8 noundef zeroext %c, ptr noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread15, label %if.end

get_mididev.exit.thread15:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %coder = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %coder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %coder, align 4
  %call1 = tail call zeroext i1 @snd_midi_event_encode_byte(ptr noundef %7, i8 noundef zeroext %c, ptr noundef %ev) #8
  br i1 %call1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %client, align 4
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %queue.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue.i, align 4
  %conv.i = trunc i32 %13 to i8
  %queue1.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 3
  %14 = ptrtoint ptr %queue1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %queue1.i, align 1
  %source.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 4
  %17 = ptrtoint ptr %source.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %source.i, align 4
  %conv2.i = trunc i32 %9 to i8
  %dest.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %18 = ptrtoint ptr %dest.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i, ptr %dest.i, align 2
  %conv3.i = trunc i32 %11 to i8
  %port.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i, ptr %port.i, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %get_mididev.exit.thread15, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -22, %if.end3 ], [ -19, %get_mididev.exit.thread15 ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_midi_event_encode_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_midi_make_info(ptr nocapture noundef readonly %dp, i32 noundef %dev, ptr noundef %inf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %cmp.i = icmp slt i32 %dev, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %max_mididev.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_mididev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_mididev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dev)
  %cmp1.not.i = icmp sgt i32 %1, %dev
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %dev, i32 %1) #8, !srcloc !42
  %and.i = and i32 %2, %dev
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %get_mididev.exit.thread12, label %if.end

get_mididev.exit.thread12:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock.i.i = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i.i) #8
  %device = getelementptr inbounds %struct.midi_info, ptr %inf, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dev, ptr %device, align 4
  %dev_type = getelementptr inbounds %struct.midi_info, ptr %inf, i32 0, i32 3
  %7 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dev_type, align 4
  %capabilities = getelementptr inbounds %struct.midi_info, ptr %inf, i32 0, i32 2
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %capabilities, align 4
  %name1 = getelementptr inbounds %struct.seq_oss_midi, ptr %4, i32 0, i32 5
  %call3 = tail call i32 @strscpy(ptr noundef %inf, ptr noundef %name1, i32 noundef 30) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i.i, ptr %use_lock.i.i, i32 1, ptr elementtype(i32) %use_lock.i.i) #8, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_mididev.exit.thread12, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %get_mididev.exit.thread12 ], [ -6, %lor.lhs.false.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_midi_info_read(ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = load i32, ptr @max_midi_devs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %2) #8
  %3 = load i32, ptr @max_midi_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27 = icmp sgt i32 %3, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %i.028) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @register_lock) #8
  %arrayidx.i = getelementptr [32 x ptr], ptr @midi_devs, i32 0, i32 %i.028
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.5) #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %use_lock.i = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @register_lock, i32 noundef %call2.i) #8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %name = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 5
  %client = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %client, align 4
  %port = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %14, i32 noundef %16) #8
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and.i = and i32 %20, 99
  %21 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i, label %if.else6.i [
    i32 99, label %if.end.capmode_str.exit_crit_edge
    i32 33, label %if.then2.i
    i32 66, label %if.then5.i
  ]

if.end.capmode_str.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit

if.else6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit

capmode_str.exit:                                 ; preds = %if.else6.i, %if.then5.i, %if.then2.i, %if.end.capmode_str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.10, %if.then2.i ], [ @.str.11, %if.then5.i ], [ @.str.12, %if.else6.i ], [ @.str.9, %if.end.capmode_str.exit_crit_edge ]
  %opened = getelementptr inbounds %struct.seq_oss_midi, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opened, align 4
  %and.i21 = and i32 %23, 99
  %24 = zext i32 %and.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and.i21, label %if.else6.i24 [
    i32 99, label %capmode_str.exit.capmode_str.exit26_crit_edge
    i32 33, label %if.then2.i22
    i32 66, label %if.then5.i23
  ]

capmode_str.exit.capmode_str.exit26_crit_edge:    ; preds = %capmode_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit26

if.then2.i22:                                     ; preds = %capmode_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit26

if.then5.i23:                                     ; preds = %capmode_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit26

if.else6.i24:                                     ; preds = %capmode_str.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %capmode_str.exit26

capmode_str.exit26:                               ; preds = %if.else6.i24, %if.then5.i23, %if.then2.i22, %capmode_str.exit.capmode_str.exit26_crit_edge
  %retval.0.i25 = phi ptr [ @.str.10, %if.then2.i22 ], [ @.str.11, %if.then5.i23 ], [ @.str.12, %if.else6.i24 ], [ @.str.9, %capmode_str.exit.capmode_str.exit26_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i25) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !41
  br label %for.inc

for.inc:                                          ; preds = %capmode_str.exit26, %if.then
  %inc = add nuw nsw i32 %i.028, 1
  %26 = load i32, ptr @max_midi_devs, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_put_timestamp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_put_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_sysex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_reset_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_puts(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 181, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snd_seq_oss_midi_check_new_port._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snd_seq_oss_midi_check_new_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 691, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 693, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 696, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 699, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 701, i32 3}
!16 = !{ptr @max_midi_devs, !17, !"max_midi_devs", i1 false, i1 false}
!17 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 46, i32 12}
!18 = !{ptr @midi_devs, !19, !"midi_devs", i1 false, i1 false}
!19 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 47, i32 29}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 49, i32 8}
!22 = !{ptr @register_lock, !21, !"register_lock", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 676, i32 10}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 678, i32 10}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 680, i32 10}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/core/seq/oss/seq_oss_midi.c", i32 682, i32 10}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148236119, i64 2148236145, i64 2148236174, i64 2148236208, i64 2148236239, i64 2148236262}
!41 = !{i64 2148238584, i64 2148238610, i64 2148238639, i64 2148238673, i64 2148238704, i64 2148238727}
!42 = !{i64 684921, i64 684938}
