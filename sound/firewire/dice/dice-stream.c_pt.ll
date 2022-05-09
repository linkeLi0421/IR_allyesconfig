; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-stream.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
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
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.reg_params = type { i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@snd_dice_rates = dso_local constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@snd_dice_stream_get_rate_mode.modes = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [36 x i8] zeroinitializer }, align 32
@snd_dice_stream_start_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail to enable interface\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_dice_stream_start_duplex\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/firewire/dice/dice-stream.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_dice_stream_start_duplex._entry_ptr = internal global ptr @snd_dice_stream_start_duplex._entry, section ".printk_index", align 4
@keep_dual_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 241, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cache mismatch: pcm: %u:%u, midi: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keep_dual_resources\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@keep_dual_resources._entry_ptr = internal global ptr @keep_dual_resources._entry, section ".printk_index", align 4
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/firewire/dice/../amdtp-stream.h\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"snd_dice_rates\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 19, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 36, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 442, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private constant [37 x i8] c"../sound/firewire/dice/dice-stream.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 239, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [41 x i8] c"../sound/firewire/dice/../amdtp-stream.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 348, i32 7 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @keep_dual_resources._entry, ptr @keep_dual_resources._entry_ptr, ptr @snd_dice_stream_start_duplex._entry, ptr @snd_dice_stream_start_duplex._entry_ptr, ptr @snd_dice_rates, ptr @snd_dice_stream_get_rate_mode.modes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_rates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_stream_get_rate_mode.modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_stream_start_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keep_dual_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_get_rate_mode(ptr nocapture noundef readonly %dice, i32 noundef %rate, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_caps = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %0 = ptrtoint ptr %clock_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_caps, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %rate)
  %cmp1.not = icmp eq i32 %rate, 32000
  %or.cond = and i1 %tobool.not, %cmp1.not
  br i1 %or.cond, label %entry.if.end3_crit_edge, label %for.inc

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %for.inc.5.if.end3_crit_edge, %for.inc.4.if.end3_crit_edge, %for.inc.3.if.end3_crit_edge, %for.inc.2.if.end3_crit_edge, %for.inc.1.if.end3_crit_edge, %for.inc.if.end3_crit_edge, %entry.if.end3_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 1, %for.inc.if.end3_crit_edge ], [ 2, %for.inc.1.if.end3_crit_edge ], [ 3, %for.inc.2.if.end3_crit_edge ], [ 4, %for.inc.3.if.end3_crit_edge ], [ 5, %for.inc.4.if.end3_crit_edge ], [ 6, %for.inc.5.if.end3_crit_edge ]
  %arrayidx4 = getelementptr [7 x i32], ptr @snd_dice_stream_get_rate_mode.modes, i32 0, i32 %i.010.lcssa
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mode, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp ne i32 %and.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %rate)
  %cmp1.not.1 = icmp eq i32 %rate, 44100
  %or.cond13 = and i1 %tobool.not.1, %cmp1.not.1
  br i1 %or.cond13, label %for.inc.if.end3_crit_edge, label %for.inc.1

for.inc.if.end3_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp ne i32 %and.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp1.not.2 = icmp eq i32 %rate, 48000
  %or.cond14 = and i1 %tobool.not.2, %cmp1.not.2
  br i1 %or.cond14, label %for.inc.1.if.end3_crit_edge, label %for.inc.2

for.inc.1.if.end3_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp ne i32 %and.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %rate)
  %cmp1.not.3 = icmp eq i32 %rate, 88200
  %or.cond15 = and i1 %tobool.not.3, %cmp1.not.3
  br i1 %or.cond15, label %for.inc.2.if.end3_crit_edge, label %for.inc.3

for.inc.2.if.end3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp ne i32 %and.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp1.not.4 = icmp eq i32 %rate, 96000
  %or.cond16 = and i1 %tobool.not.4, %cmp1.not.4
  br i1 %or.cond16, label %for.inc.3.if.end3_crit_edge, label %for.inc.4

for.inc.3.if.end3_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp ne i32 %and.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %rate)
  %cmp1.not.5 = icmp eq i32 %rate, 176400
  %or.cond17 = and i1 %tobool.not.5, %cmp1.not.5
  br i1 %or.cond17, label %for.inc.4.if.end3_crit_edge, label %for.inc.5

for.inc.4.if.end3_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp ne i32 %and.6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %rate)
  %cmp1.not.6 = icmp eq i32 %rate, 192000
  %or.cond18 = and i1 %tobool.not.6, %cmp1.not.6
  br i1 %or.cond18, label %for.inc.5.if.end3_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5.if.end3_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

cleanup:                                          ; preds = %for.inc.5.cleanup_crit_edge, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_reserve_duplex(ptr noundef %dice, i32 noundef %rate, i32 noundef %events_per_period, i32 noundef %events_per_buffer) local_unnamed_addr #2 align 64 {
entry:
  %reg.i62 = alloca [2 x i32], align 4
  %reg.i3.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca [2 x i32], align 4
  %curr_rate = alloca i32, align 4
  %tx_params = alloca %struct.reg_params, align 4
  %rx_params = alloca %struct.reg_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #7
  %0 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_rate, align 4, !annotation !29
  %call = call i32 @snd_dice_transaction_get_rate(ptr noundef %dice, ptr noundef nonnull %curr_rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1 = icmp eq i32 %rate, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %curr_rate, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %rate.addr.0 = phi i32 [ %2, %if.then2 ], [ %rate, %if.end.if.end3_crit_edge ]
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 26
  %3 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.end3.if.then6_crit_edge, label %lor.lhs.false

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end3
  %5 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate.addr.0)
  %cmp5.not = icmp eq i32 %6, %rate.addr.0
  br i1 %cmp5.not, label %lor.lhs.false.cleanup34_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_params) #7
  %7 = getelementptr inbounds %struct.reg_params, ptr %tx_params, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_params) #7
  %8 = getelementptr inbounds %struct.reg_params, ptr %rx_params, i32 0, i32 1
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @amdtp_domain_stop(ptr noundef %domain) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #7
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %10 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !29
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then6.get_register_params.exit.thread_crit_edge, label %if.end.i

if.then6.get_register_params.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

if.end.i:                                         ; preds = %if.then6
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 2) #7
  %15 = ptrtoint ptr %tx_params to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_params, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %mul.i = shl i32 %17, 2
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.i, ptr %7, align 4
  %call.i32.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp5.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp5.i, label %if.end.i.get_register_params.exit.thread_crit_edge, label %if.end10

if.end.i.get_register_params.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

get_register_params.exit.thread:                  ; preds = %if.end.i.get_register_params.exit.thread_crit_edge, %if.then6.get_register_params.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i32.i, %if.end.i.get_register_params.exit.thread_crit_edge ], [ %call.i.i, %if.then6.get_register_params.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  br label %cleanup.thread

if.end10:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 2) #7
  %22 = ptrtoint ptr %rx_params to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rx_params, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %mul17.i = shl i32 %24, 2
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul17.i, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %26 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp13.not.i.i, label %if.end10.stop_streams.exit.i_crit_edge, label %for.body.i.i.preheader

if.end10.stop_streams.exit.i_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

for.body.i.i.preheader:                           ; preds = %if.end10
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.014.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %reg.i.i, align 4
  %mul.i.i = mul i32 %29, %i.014.i.i
  %add.i.i = add i32 %mul.i.i, 8
  %call.i.i.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add.i.i, ptr noundef nonnull %reg.i.i, i32 noundef 4) #7
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not = icmp eq i32 %inc.i.i, %27
  br i1 %exitcond.not, label %for.body.i.i.stop_streams.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.stop_streams.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

stop_streams.exit.i:                              ; preds = %for.body.i.i.stop_streams.exit.i_crit_edge, %if.end10.stop_streams.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i3.i) #7
  %31 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp13.not.i4.i = icmp eq i32 %32, 0
  br i1 %cmp13.not.i4.i, label %stop_streams.exit.i.finish_session.exit_crit_edge, label %for.body.i13.i.preheader

stop_streams.exit.i.finish_session.exit_crit_edge: ; preds = %stop_streams.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

for.body.i13.i.preheader:                         ; preds = %stop_streams.exit.i
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %8, align 4
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %for.body.i13.i.for.body.i13.i_crit_edge, %for.body.i13.i.preheader
  %i.014.i7.i = phi i32 [ %inc.i11.i, %for.body.i13.i.for.body.i13.i_crit_edge ], [ 0, %for.body.i13.i.preheader ]
  %35 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %reg.i3.i, align 4
  %mul.i8.i = mul i32 %34, %i.014.i7.i
  %add.i9.i = add i32 %mul.i8.i, 8
  %call.i.i10.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i9.i, ptr noundef nonnull %reg.i3.i, i32 noundef 4) #7
  %inc.i11.i = add nuw i32 %i.014.i7.i, 1
  %exitcond92.not = icmp eq i32 %inc.i11.i, %32
  br i1 %exitcond92.not, label %for.body.i13.i.finish_session.exit_crit_edge, label %for.body.i13.i.for.body.i13.i_crit_edge

for.body.i13.i.for.body.i13.i_crit_edge:          ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i13.i

for.body.i13.i.finish_session.exit_crit_edge:     ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

finish_session.exit:                              ; preds = %for.body.i13.i.finish_session.exit_crit_edge, %stop_streams.exit.i.finish_session.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i3.i) #7
  call void @snd_dice_transaction_clear_enable(ptr noundef %dice) #7
  %arrayidx.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 0
  call void @fw_iso_resources_free(ptr noundef %arrayidx.i) #7
  %arrayidx1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.i) #7
  %arrayidx.1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 1
  call void @fw_iso_resources_free(ptr noundef %arrayidx.1.i) #7
  %arrayidx1.1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.1.i) #7
  %call11 = call fastcc i32 @select_clock(ptr noundef %dice, i32 noundef %rate.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %finish_session.exit.cleanup.thread_crit_edge, label %if.end14

finish_session.exit.cleanup.thread_crit_edge:     ; preds = %finish_session.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end14:                                         ; preds = %finish_session.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i62) #7
  %36 = ptrtoint ptr %reg.i62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %reg.i62, align 4, !annotation !29
  %37 = getelementptr inbounds [2 x i32], ptr %reg.i62, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4, !annotation !29
  %call.i.i63 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i62, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %cmp.i64 = icmp slt i32 %call.i.i63, 0
  br i1 %cmp.i64, label %if.end14.get_register_params.exit74.thread_crit_edge, label %if.end.i69

if.end14.get_register_params.exit74.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit74.thread

if.end.i69:                                       ; preds = %if.end14
  %39 = ptrtoint ptr %reg.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i62, align 4
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 2) #7
  %42 = ptrtoint ptr %tx_params to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tx_params, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %37, align 4
  %mul.i65 = shl i32 %44, 2
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i65, ptr %7, align 4
  %call.i32.i67 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i62, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i67)
  %cmp5.i68 = icmp slt i32 %call.i32.i67, 0
  br i1 %cmp5.i68, label %if.end.i69.get_register_params.exit74.thread_crit_edge, label %if.end18

if.end.i69.get_register_params.exit74.thread_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit74.thread

get_register_params.exit74.thread:                ; preds = %if.end.i69.get_register_params.exit74.thread_crit_edge, %if.end14.get_register_params.exit74.thread_crit_edge
  %retval.0.i73.ph = phi i32 [ %call.i32.i67, %if.end.i69.get_register_params.exit74.thread_crit_edge ], [ %call.i.i63, %if.end14.get_register_params.exit74.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i62) #7
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end.i69
  %46 = ptrtoint ptr %reg.i62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg.i62, align 4
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 2) #7
  %49 = ptrtoint ptr %rx_params to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %rx_params, align 4
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %37, align 4
  %mul17.i70 = shl i32 %51, 2
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul17.i70, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i62) #7
  %call19 = call fastcc i32 @keep_dual_resources(ptr noundef %dice, i32 noundef %rate.addr.0, i32 noundef 1, ptr noundef nonnull %tx_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.error_crit_edge, label %if.end22

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @keep_dual_resources(ptr noundef %dice, i32 noundef %rate.addr.0, i32 noundef 0, ptr noundef nonnull %rx_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.error_crit_edge, label %cleanup

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup.thread:                                   ; preds = %get_register_params.exit74.thread, %finish_session.exit.cleanup.thread_crit_edge, %get_register_params.exit.thread
  %retval.0.ph = phi i32 [ %retval.0.i73.ph, %get_register_params.exit74.thread ], [ %retval.0.i.ph, %get_register_params.exit.thread ], [ %call11, %finish_session.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_params) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_params) #7
  br label %cleanup34

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %events_per_period1.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27, i32 1
  %53 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %events_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27, i32 2
  %54 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %events_per_buffer, ptr %events_per_buffer2.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_params) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_params) #7
  br label %cleanup34

error:                                            ; preds = %if.end22.error_crit_edge, %if.end18.error_crit_edge
  %err.0.ph = phi i32 [ %call23, %if.end22.error_crit_edge ], [ %call19, %if.end18.error_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_params) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_params) #7
  call void @fw_iso_resources_free(ptr noundef %arrayidx.i) #7
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.i) #7
  call void @fw_iso_resources_free(ptr noundef %arrayidx.1.i) #7
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.1.i) #7
  br label %cleanup34

cleanup34:                                        ; preds = %error, %cleanup, %cleanup.thread, %lor.lhs.false.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ %err.0.ph, %error ], [ %call, %entry.cleanup34_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %lor.lhs.false.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_get_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @select_clock(ptr noundef %dice, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 1, i32 noundef 76, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, -65281
  %3 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %if.end.cleanup_crit_edge [
    i32 32000, label %if.end.if.end7_crit_edge
    i32 44100, label %if.end7.fold.split
    i32 48000, label %if.end7.fold.split44
    i32 88200, label %if.end7.fold.split45
    i32 96000, label %if.end7.fold.split46
    i32 176400, label %if.end7.fold.split47
    i32 192000, label %if.end7.fold.split48
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.fold.split44:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.fold.split45:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.fold.split46:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.fold.split47:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.fold.split48:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split48, %if.end7.fold.split47, %if.end7.fold.split46, %if.end7.fold.split45, %if.end7.fold.split44, %if.end7.fold.split, %if.end.if.end7_crit_edge
  %i.042.lcssa = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ 256, %if.end7.fold.split ], [ 512, %if.end7.fold.split44 ], [ 768, %if.end7.fold.split45 ], [ 1024, %if.end7.fold.split46 ], [ 1280, %if.end7.fold.split47 ], [ 1536, %if.end7.fold.split48 ]
  %or = or i32 %i.042.lcssa, %and
  %clock_accepted = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 25
  %call8 = call zeroext i1 @completion_done(ptr noundef %clock_accepted) #7
  br i1 %call8, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clock_accepted to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %clock_accepted, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %reg, align 4
  %call.i38 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 1, i32 noundef 76, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp13 = icmp slt i32 %call.i38, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @wait_for_completion_timeout(ptr noundef %clock_accepted, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  %. = select i1 %cmp19, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i38, %if.end11.cleanup_crit_edge ], [ %., %if.end15 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keep_dual_resources(ptr noundef %dice, i32 noundef %rate, i32 noundef %dir, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %0 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_caps.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %rate)
  %cmp1.not.i = icmp eq i32 %rate, 32000
  %or.cond.i = and i1 %cmp1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.i

entry.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.i:                                        ; preds = %entry
  %and.1.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp ne i32 %and.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %rate)
  %cmp1.not.1.i = icmp eq i32 %rate, 44100
  %or.cond13.i = and i1 %cmp1.not.1.i, %tobool.not.1.i
  br i1 %or.cond13.i, label %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.1.i

for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp ne i32 %and.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp1.not.2.i = icmp eq i32 %rate, 48000
  %or.cond14.i = and i1 %cmp1.not.2.i, %tobool.not.2.i
  br i1 %or.cond14.i, label %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp ne i32 %and.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %rate)
  %cmp1.not.3.i = icmp eq i32 %rate, 88200
  %or.cond15.i = and i1 %cmp1.not.3.i, %tobool.not.3.i
  br i1 %or.cond15.i, label %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp ne i32 %and.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp1.not.4.i = icmp eq i32 %rate, 96000
  %or.cond16.i = and i1 %cmp1.not.4.i, %tobool.not.4.i
  br i1 %or.cond16.i, label %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp ne i32 %and.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %rate)
  %cmp1.not.5.i = icmp eq i32 %rate, 176400
  %or.cond17.i = and i1 %cmp1.not.5.i, %tobool.not.5.i
  br i1 %or.cond17.i, label %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp ne i32 %and.6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %rate)
  %cmp1.not.6.i = icmp eq i32 %rate, 192000
  %or.cond18.i = and i1 %cmp1.not.6.i, %tobool.not.6.i
  br i1 %or.cond18.i, label %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.5.i.cleanup35_crit_edge

for.inc.5.i.cleanup35_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

snd_dice_stream_get_rate_mode.exit:               ; preds = %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %entry.snd_dice_stream_get_rate_mode.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %entry.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 1, %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 2, %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 3, %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 4, %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 5, %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 6, %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge ]
  %arrayidx4.i = getelementptr [7 x i32], ptr @snd_dice_stream_get_rate_mode.modes, i32 0, i32 %i.010.lcssa.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4.i, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp191.not = icmp eq i32 %5, 0
  br i1 %cmp191.not, label %snd_dice_stream_get_rate_mode.exit.cleanup35_crit_edge, label %for.body.lr.ph

snd_dice_stream_get_rate_mode.exit.cleanup35_crit_edge: ; preds = %snd_dice_stream_get_rate_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.body.lr.ph:                                   ; preds = %snd_dice_stream_get_rate_mode.exit
  %6 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %size12 = getelementptr inbounds %struct.reg_params, ptr %params, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp.i = icmp ugt i32 %rate, 96000
  %disable_double_pcm_frames.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 24
  %div37.i = lshr i32 %rate, 1
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %i.093, 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %cmp1 = icmp ult i32 %inc, %8
  br i1 %cmp1, label %for.cond.for.body_crit_edge, label %for.cond.cleanup35_crit_edge

for.cond.cleanup35_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #7
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %6, align 4, !annotation !29
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 %i.093
  %arrayidx4 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 %i.093
  %arrayidx6 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 %i.093, i32 %3
  br label %if.end17

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 %i.093
  %arrayidx9 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 %i.093
  %arrayidx11 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 %i.093, i32 %3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then3
  %arrayidx11.sink = phi ptr [ %arrayidx11, %if.else ], [ %arrayidx6, %if.then3 ]
  %.sink118 = phi i32 [ 16, %if.else ], [ 12, %if.then3 ]
  %.sink = phi i32 [ 3, %if.else ], [ 2, %if.then3 ]
  %stream.0 = phi ptr [ %arrayidx8, %if.else ], [ %arrayidx, %if.then3 ]
  %resources.0 = phi ptr [ %arrayidx9, %if.else ], [ %arrayidx4, %if.then3 ]
  %11 = ptrtoint ptr %arrayidx11.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11.sink, align 4
  %13 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size12, align 4
  %mul13 = mul i32 %14, %i.093
  %add14 = add i32 %mul13, %.sink118
  %call.i69 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef %.sink, i32 noundef %add14, ptr noundef nonnull %reg, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp18 = icmp slt i32 %call.i69, 0
  br i1 %cmp18, label %if.end17.cleanup.thread_crit_edge, label %if.end20

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end20:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp23.not = icmp eq i32 %16, %12
  br i1 %cmp23.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unit.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %16, i32 noundef %12, i32 noundef %18) #10
  br label %cleanup.thread

if.end25:                                         ; preds = %if.end20
  br i1 %cmp.i, label %land.end.i, label %if.end25..thread44.i_crit_edge

if.end25..thread44.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread44.i

land.end.i:                                       ; preds = %if.end25
  %21 = ptrtoint ptr %disable_double_pcm_frames.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %disable_double_pcm_frames.i, align 8
  %22 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast.not.i = icmp eq i8 %22, 0
  %mul.i = shl i32 %12, 1
  br i1 %bf.cast.not.i, label %23, label %land.end.i..thread44.i_crit_edge

land.end.i..thread44.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread44.i

23:                                               ; preds = %land.end.i
  %call.i70 = call i32 @amdtp_am824_set_parameters(ptr noundef %stream.0, i32 noundef %div37.i, i32 noundef %mul.i, i32 noundef %18, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp2.i = icmp slt i32 %call.i70, 0
  br i1 %cmp2.i, label %.cleanup.thread79_crit_edge, label %if.then6.i

.cleanup.thread79_crit_edge:                      ; preds = %23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread79

.thread44.i:                                      ; preds = %land.end.i..thread44.i_crit_edge, %if.end25..thread44.i_crit_edge
  %call45.i = call i32 @amdtp_am824_set_parameters(ptr noundef %stream.0, i32 noundef %rate, i32 noundef %12, i32 noundef %18, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp246.i = icmp slt i32 %call45.i, 0
  br i1 %cmp246.i, label %.thread44.i.cleanup.thread79_crit_edge, label %.thread44.i.cleanup_crit_edge

.thread44.i.cleanup_crit_edge:                    ; preds = %.thread44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

.thread44.i.cleanup.thread79_crit_edge:           ; preds = %.thread44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread79

if.then6.i:                                       ; preds = %23
  %div736.i = and i32 %12, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp842.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp842.not.i, label %if.then6.i.cleanup_crit_edge, label %for.body.preheader.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.then6.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div736.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul9.i = shl nuw i32 %i.043.i, 1
  call void @amdtp_am824_set_pcm_position(ptr noundef %stream.0, i32 noundef %i.043.i, i32 noundef %mul9.i) #7
  %add.i = add nuw i32 %i.043.i, %div736.i
  %add11.i = or i32 %mul9.i, 1
  call void @amdtp_am824_set_pcm_position(ptr noundef %stream.0, i32 noundef %add.i, i32 noundef %add11.i) #7
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread:                                   ; preds = %do.end, %if.end17.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ -71, %do.end ], [ %call.i69, %if.end17.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #7
  br label %cleanup35

cleanup.thread79:                                 ; preds = %.thread44.i.cleanup.thread79_crit_edge, %.cleanup.thread79_crit_edge
  %retval.0.i71.ph = phi i32 [ %call45.i, %.thread44.i.cleanup.thread79_crit_edge ], [ %call.i70, %.cleanup.thread79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #7
  br label %cleanup35

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %.thread44.i.cleanup_crit_edge
  %call13.i = call i32 @amdtp_stream_get_max_payload(ptr noundef %stream.0) #7
  %24 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 8
  %max_speed.i = getelementptr i8, ptr %27, i32 -8
  %28 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_speed.i, align 8
  %call15.i = call i32 @fw_iso_resources_allocate(ptr noundef %resources.0, i32 noundef %call13.i, i32 noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp27 = icmp slt i32 %call15.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #7
  br i1 %cmp27, label %cleanup.cleanup35_crit_edge, label %for.cond

cleanup.cleanup35_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup.cleanup35_crit_edge, %cleanup.thread79, %cleanup.thread, %for.cond.cleanup35_crit_edge, %snd_dice_stream_get_rate_mode.exit.cleanup35_crit_edge, %for.inc.5.i.cleanup35_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %retval.0.i71.ph, %cleanup.thread79 ], [ -22, %for.inc.5.i.cleanup35_crit_edge ], [ 0, %snd_dice_stream_get_rate_mode.exit.cleanup35_crit_edge ], [ %call15.i, %cleanup.cleanup35_crit_edge ], [ 0, %for.cond.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_start_duplex(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  %reg.i3.i158 = alloca i32, align 4
  %reg.i.i159 = alloca i32, align 4
  %reg.i155 = alloca i32, align 4
  %reg.i3.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca [2 x i32], align 4
  %tx_params = alloca %struct.reg_params, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 21
  %generation1 = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_params) #7
  %2 = getelementptr inbounds %struct.reg_params, ptr %tx_params, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rate, align 4, !annotation !29
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 26
  %4 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #7
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %7 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !29
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.get_register_params.exit.thread_crit_edge, label %if.end.i

if.end.get_register_params.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 2) #7
  %12 = ptrtoint ptr %tx_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_params, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 4
  %mul.i = shl i32 %14, 2
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %2, align 4
  %call.i32.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp5.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp5.i, label %if.end.i.get_register_params.exit.thread_crit_edge, label %get_register_params.exit

if.end.i.get_register_params.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

get_register_params.exit.thread:                  ; preds = %if.end.i.get_register_params.exit.thread_crit_edge, %if.end.get_register_params.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i32.i, %if.end.i.get_register_params.exit.thread_crit_edge ], [ %call.i.i, %if.end.get_register_params.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  br label %cleanup

get_register_params.exit:                         ; preds = %if.end.i
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 2) #7
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %mul17.i = shl i32 %20, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  %packet_index.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 0, i32 7
  %21 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i148 = icmp slt i32 %22, 0
  br i1 %cmp.i148, label %get_register_params.exit.if.then10_crit_edge, label %lor.lhs.false

get_register_params.exit.if.then10_crit_edge:     ; preds = %get_register_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

for.cond:                                         ; preds = %lor.lhs.false
  %packet_index.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 1, i32 7
  %23 = ptrtoint ptr %packet_index.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packet_index.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i148.1 = icmp slt i32 %24, 0
  br i1 %cmp.i148.1, label %for.cond.if.then10_crit_edge, label %lor.lhs.false.1

for.cond.if.then10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false.1:                                  ; preds = %for.cond
  %packet_index.i149.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 1, i32 7
  %25 = ptrtoint ptr %packet_index.i149.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packet_index.i149.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i150.1 = icmp slt i32 %26, 0
  br i1 %cmp.i150.1, label %lor.lhs.false.1.if.then10_crit_edge, label %lor.lhs.false.1.for.end_crit_edge

lor.lhs.false.1.for.end_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false.1.if.then10_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false:                                    ; preds = %get_register_params.exit
  %packet_index.i149 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 0, i32 7
  %27 = ptrtoint ptr %packet_index.i149 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %packet_index.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i150 = icmp slt i32 %28, 0
  br i1 %cmp.i150, label %lor.lhs.false.if.then10_crit_edge, label %for.cond

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %lor.lhs.false.1.if.then10_crit_edge, %for.cond.if.then10_crit_edge, %get_register_params.exit.if.then10_crit_edge
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @amdtp_domain_stop(ptr noundef %domain) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %29 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp13.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp13.not.i.i, label %if.then10.stop_streams.exit.i_crit_edge, label %for.body.i.i.preheader

if.then10.stop_streams.exit.i_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

for.body.i.i.preheader:                           ; preds = %if.then10
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.014.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %33 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %reg.i.i, align 4
  %mul.i.i = mul i32 %32, %i.014.i.i
  %add.i.i = add i32 %mul.i.i, 8
  %call.i.i.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add.i.i, ptr noundef nonnull %reg.i.i, i32 noundef 4) #7
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not = icmp eq i32 %inc.i.i, %30
  br i1 %exitcond.not, label %for.body.i.i.stop_streams.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.stop_streams.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

stop_streams.exit.i:                              ; preds = %for.body.i.i.stop_streams.exit.i_crit_edge, %if.then10.stop_streams.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13.not.i4.i = icmp eq i32 %18, 0
  br i1 %cmp13.not.i4.i, label %stop_streams.exit.i.finish_session.exit_crit_edge, label %for.body.i13.i

stop_streams.exit.i.finish_session.exit_crit_edge: ; preds = %stop_streams.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

for.body.i13.i:                                   ; preds = %stop_streams.exit.i
  %34 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %reg.i3.i, align 4
  %call.i.i10.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reg.i3.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %exitcond212.not = icmp eq i32 %18, 1
  br i1 %exitcond212.not, label %for.body.i13.i.finish_session.exit_crit_edge, label %for.body.i13.i.1

for.body.i13.i.finish_session.exit_crit_edge:     ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

for.body.i13.i.1:                                 ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %reg.i3.i, align 4
  %add.i9.i.1 = add i32 %mul17.i, 8
  %call.i.i10.i.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i9.i.1, ptr noundef nonnull %reg.i3.i, i32 noundef 4) #7
  br label %finish_session.exit

finish_session.exit:                              ; preds = %for.body.i13.i.1, %for.body.i13.i.finish_session.exit_crit_edge, %stop_streams.exit.i.finish_session.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i3.i) #7
  call void @snd_dice_transaction_clear_enable(ptr noundef %dice) #7
  br label %for.end

for.end:                                          ; preds = %finish_session.exit, %lor.lhs.false.1.for.end_crit_edge
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %36 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %39, i32 -4
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %generation13 = getelementptr inbounds %struct.fw_card, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %generation13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %generation13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %43)
  %cmp14.not = icmp eq i32 %1, %43
  br i1 %cmp14.not, label %for.end.if.end34_crit_edge, label %for.cond16.preheader

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.cond16.preheader:                             ; preds = %for.end
  %44 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp19.not = icmp eq i32 %45, 0
  br i1 %cmp19.not, label %for.cond16.preheader.if.end22_crit_edge, label %if.then20

for.cond16.preheader.if.end22_crit_edge:          ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %tx_resources = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 20
  %call21 = call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.cond16.preheader.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp24.not = icmp eq i32 %18, 0
  br i1 %cmp24.not, label %if.end22.for.inc31_crit_edge, label %if.then25

if.end22.for.inc31_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #7
  br label %for.inc31

for.inc31:                                        ; preds = %if.then25, %if.end22.for.inc31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp19.1 = icmp ugt i32 %45, 1
  br i1 %cmp19.1, label %if.then20.1, label %for.inc31.if.end22.1_crit_edge

for.inc31.if.end22.1_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.1

if.then20.1:                                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 1
  %call21.1 = call i32 @fw_iso_resources_update(ptr noundef %add.ptr.1) #7
  br label %if.end22.1

if.end22.1:                                       ; preds = %if.then20.1, %for.inc31.if.end22.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp24.1 = icmp ugt i32 %18, 1
  br i1 %cmp24.1, label %if.then25.1, label %if.end22.1.if.end34_crit_edge

if.end22.1.if.end34_crit_edge:                    ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then25.1:                                      ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1
  %call29.1 = call i32 @fw_iso_resources_update(ptr noundef %add.ptr28.1) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then25.1, %if.end22.1.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %call35 = call i32 @snd_dice_transaction_get_rate(ptr noundef %dice, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate, align 4
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %48 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clock_caps.i, align 4
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %47)
  %cmp1.not.i = icmp eq i32 %47, 32000
  %or.cond.i = and i1 %cmp1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end38.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.i

if.end38.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.i:                                        ; preds = %if.end38
  %and.1.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp ne i32 %and.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %47)
  %cmp1.not.1.i = icmp eq i32 %47, 44100
  %or.cond13.i = and i1 %cmp1.not.1.i, %tobool.not.1.i
  br i1 %or.cond13.i, label %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.1.i

for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp ne i32 %and.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %47)
  %cmp1.not.2.i = icmp eq i32 %47, 48000
  %or.cond14.i = and i1 %cmp1.not.2.i, %tobool.not.2.i
  br i1 %or.cond14.i, label %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp ne i32 %and.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %47)
  %cmp1.not.3.i = icmp eq i32 %47, 88200
  %or.cond15.i = and i1 %cmp1.not.3.i, %tobool.not.3.i
  br i1 %or.cond15.i, label %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp ne i32 %and.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %47)
  %cmp1.not.4.i = icmp eq i32 %47, 96000
  %or.cond16.i = and i1 %cmp1.not.4.i, %tobool.not.4.i
  br i1 %or.cond16.i, label %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp ne i32 %and.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %47)
  %cmp1.not.5.i = icmp eq i32 %47, 176400
  %or.cond17.i = and i1 %cmp1.not.5.i, %tobool.not.5.i
  br i1 %or.cond17.i, label %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp ne i32 %and.6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %47)
  %cmp1.not.6.i = icmp eq i32 %47, 192000
  %or.cond18.i = and i1 %cmp1.not.6.i, %tobool.not.6.i
  br i1 %or.cond18.i, label %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge, label %for.inc.5.i.cleanup_crit_edge

for.inc.5.i.cleanup_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_dice_stream_get_rate_mode.exit

snd_dice_stream_get_rate_mode.exit:               ; preds = %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge, %if.end38.snd_dice_stream_get_rate_mode.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %if.end38.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 1, %for.inc.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 2, %for.inc.1.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 3, %for.inc.2.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 4, %for.inc.3.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 5, %for.inc.4.i.snd_dice_stream_get_rate_mode.exit_crit_edge ], [ 6, %for.inc.5.i.snd_dice_stream_get_rate_mode.exit_crit_edge ]
  %arrayidx4.i = getelementptr [7 x i32], ptr @snd_dice_stream_get_rate_mode.modes, i32 0, i32 %i.010.lcssa.i
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx47 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp48.not = icmp eq i32 %53, 0
  br i1 %cmp48.not, label %snd_dice_stream_get_rate_mode.exit.if.end53_crit_edge, label %land.lhs.true

snd_dice_stream_get_rate_mode.exit.if.end53_crit_edge: ; preds = %snd_dice_stream_get_rate_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true:                                    ; preds = %snd_dice_stream_get_rate_mode.exit
  %context.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 0, i32 4
  %54 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %context.i, align 4
  %cmp.i.i152.not = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152.not, label %land.lhs.true.if.then67_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true.if.then67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %snd_dice_stream_get_rate_mode.exit.if.end53_crit_edge
  %arrayidx55 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 %51
  %56 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp56.not = icmp eq i32 %57, 0
  br i1 %cmp56.not, label %if.end53.for.inc63_crit_edge, label %land.lhs.true57

if.end53.for.inc63_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

land.lhs.true57:                                  ; preds = %if.end53
  %context.i153 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 0, i32 4
  %58 = ptrtoint ptr %context.i153 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %context.i153, align 4
  %cmp.i.i154.not = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i154.not, label %land.lhs.true57.if.then67_crit_edge, label %land.lhs.true57.for.inc63_crit_edge

land.lhs.true57.for.inc63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

land.lhs.true57.if.then67_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

for.inc63:                                        ; preds = %land.lhs.true57.for.inc63_crit_edge, %if.end53.for.inc63_crit_edge
  %arrayidx47.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 %51
  %60 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx47.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp48.not.1 = icmp eq i32 %61, 0
  br i1 %cmp48.not.1, label %for.inc63.if.end53.1_crit_edge, label %land.lhs.true.1

for.inc63.if.end53.1_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.1

land.lhs.true.1:                                  ; preds = %for.inc63
  %context.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 1, i32 4
  %62 = ptrtoint ptr %context.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %context.i.1, align 4
  %cmp.i.i152.not.1 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152.not.1, label %land.lhs.true.1.if.then67_crit_edge, label %land.lhs.true.1.if.end53.1_crit_edge

land.lhs.true.1.if.end53.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.1

land.lhs.true.1.if.then67_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.end53.1:                                       ; preds = %land.lhs.true.1.if.end53.1_crit_edge, %for.inc63.if.end53.1_crit_edge
  %arrayidx55.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 %51
  %64 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx55.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp56.not.1 = icmp eq i32 %65, 0
  br i1 %cmp56.not.1, label %if.end53.1.cleanup_crit_edge, label %land.lhs.true57.1

if.end53.1.cleanup_crit_edge:                     ; preds = %if.end53.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true57.1:                                ; preds = %if.end53.1
  %context.i153.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 1, i32 4
  %66 = ptrtoint ptr %context.i153.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context.i153.1, align 4
  %cmp.i.i154.not.1 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i154.not.1, label %land.lhs.true57.1.if.then67_crit_edge, label %land.lhs.true57.1.cleanup_crit_edge

land.lhs.true57.1.cleanup_crit_edge:              ; preds = %land.lhs.true57.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true57.1.if.then67_crit_edge:            ; preds = %land.lhs.true57.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.then67:                                        ; preds = %land.lhs.true57.1.if.then67_crit_edge, %land.lhs.true.1.if.then67_crit_edge, %land.lhs.true57.if.then67_crit_edge, %land.lhs.true.if.then67_crit_edge
  %call68 = call fastcc i32 @start_streams(ptr noundef %dice, i32 noundef 1, ptr noundef nonnull %tx_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then67.error_crit_edge, label %if.end71

if.then67.error_crit_edge:                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end71:                                         ; preds = %if.then67
  %68 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unit, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i, align 8
  %max_speed1.i = getelementptr i8, ptr %71, i32 -8
  %72 = ptrtoint ptr %max_speed1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_speed1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i = icmp eq i32 %18, 0
  br i1 %cmp7.not.i, label %if.end71.if.end75_crit_edge, label %for.body.lr.ph.i

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body.lr.ph.i:                                 ; preds = %if.end71
  %rx_stream.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 23
  %domain.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i155) #7
  %channel.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0, i32 3
  %74 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel.i, align 8
  %76 = ptrtoint ptr %reg.i155 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %reg.i155, align 4
  %call.i1.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reg.i155, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp184.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp184.i, label %for.body.lr.ph.i.cleanup.thread.i_crit_edge, label %cleanup.i

for.body.lr.ph.i.cleanup.thread.i_crit_edge:      ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

for.cond.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %exitcond213.not = icmp eq i32 %18, 1
  br i1 %exitcond213.not, label %for.cond.i.if.end75_crit_edge, label %for.body.i.1

for.cond.i.if.end75_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

for.body.i.1:                                     ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i155) #7
  %channel.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1, i32 3
  %77 = ptrtoint ptr %channel.i.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %channel.i.1, align 8
  %79 = ptrtoint ptr %reg.i155 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %reg.i155, align 4
  %add.i.1 = add i32 %mul17.i, 8
  %call.i1.i.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i.1, ptr noundef nonnull %reg.i155, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.1)
  %cmp184.i.1 = icmp slt i32 %call.i1.i.1, 0
  br i1 %cmp184.i.1, label %for.body.i.1.cleanup.thread.i_crit_edge, label %cleanup.i.1

for.body.i.1.cleanup.thread.i_crit_edge:          ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

cleanup.i.1:                                      ; preds = %for.body.i.1
  %stream.0.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 1
  %80 = ptrtoint ptr %channel.i.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel.i.1, align 8
  %call32.i.1 = call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %stream.0.i.1, i32 noundef %81, i32 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.1)
  %cmp33.i.1 = icmp slt i32 %call32.i.1, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i155) #7
  br i1 %cmp33.i.1, label %cleanup.i.1.error_crit_edge, label %cleanup.i.1.if.end75_crit_edge

cleanup.i.1.if.end75_crit_edge:                   ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

cleanup.i.1.error_crit_edge:                      ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

cleanup.thread.i:                                 ; preds = %for.body.i.1.cleanup.thread.i_crit_edge, %for.body.lr.ph.i.cleanup.thread.i_crit_edge
  %call.i1.i.lcssa = phi i32 [ %call.i1.i, %for.body.lr.ph.i.cleanup.thread.i_crit_edge ], [ %call.i1.i.1, %for.body.i.1.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i155) #7
  br label %error

cleanup.i:                                        ; preds = %for.body.lr.ph.i
  %82 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %channel.i, align 8
  %call32.i = call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %rx_stream.i, i32 noundef %83, i32 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i155) #7
  br i1 %cmp33.i, label %cleanup.i.error_crit_edge, label %for.cond.i

cleanup.i.error_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end75:                                         ; preds = %cleanup.i.1.if.end75_crit_edge, %for.cond.i.if.end75_crit_edge, %if.end71.if.end75_crit_edge
  %call76 = call i32 @snd_dice_transaction_set_enable(ptr noundef %dice) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end, label %if.end80

do.end:                                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str) #10
  br label %error

if.end80:                                         ; preds = %if.end75
  %domain81 = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  %call82 = call i32 @amdtp_domain_start(ptr noundef %domain81, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end80.error_crit_edge, label %if.end85

if.end80.error_crit_edge:                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end85:                                         ; preds = %if.end80
  %call87 = call fastcc zeroext i1 @amdtp_domain_wait_ready(ptr noundef %domain81)
  br i1 %call87, label %if.end85.cleanup_crit_edge, label %if.end85.error_crit_edge

if.end85.error_crit_edge:                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %if.end85.error_crit_edge, %if.end80.error_crit_edge, %do.end, %cleanup.i.error_crit_edge, %cleanup.thread.i, %cleanup.i.1.error_crit_edge, %if.then67.error_crit_edge
  %err.0 = phi i32 [ %call68, %if.then67.error_crit_edge ], [ %call76, %do.end ], [ %call82, %if.end80.error_crit_edge ], [ -110, %if.end85.error_crit_edge ], [ %call.i1.i.lcssa, %cleanup.thread.i ], [ %call32.i, %cleanup.i.error_crit_edge ], [ %call32.i.1, %cleanup.i.1.error_crit_edge ]
  %domain91 = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @amdtp_domain_stop(ptr noundef %domain91) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i159) #7
  %86 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp13.not.i.i160 = icmp eq i32 %87, 0
  br i1 %cmp13.not.i.i160, label %error.stop_streams.exit.i171_crit_edge, label %for.body.i.i169.preheader

error.stop_streams.exit.i171_crit_edge:           ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i171

for.body.i.i169.preheader:                        ; preds = %error
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %2, align 4
  br label %for.body.i.i169

for.body.i.i169:                                  ; preds = %for.body.i.i169.for.body.i.i169_crit_edge, %for.body.i.i169.preheader
  %i.014.i.i163 = phi i32 [ %inc.i.i167, %for.body.i.i169.for.body.i.i169_crit_edge ], [ 0, %for.body.i.i169.preheader ]
  %90 = ptrtoint ptr %reg.i.i159 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %reg.i.i159, align 4
  %mul.i.i164 = mul i32 %89, %i.014.i.i163
  %add.i.i165 = add i32 %mul.i.i164, 8
  %call.i.i.i166 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add.i.i165, ptr noundef nonnull %reg.i.i159, i32 noundef 4) #7
  %inc.i.i167 = add nuw i32 %i.014.i.i163, 1
  %exitcond214.not = icmp eq i32 %inc.i.i167, %87
  br i1 %exitcond214.not, label %for.body.i.i169.stop_streams.exit.i171_crit_edge, label %for.body.i.i169.for.body.i.i169_crit_edge

for.body.i.i169.for.body.i.i169_crit_edge:        ; preds = %for.body.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i169

for.body.i.i169.stop_streams.exit.i171_crit_edge: ; preds = %for.body.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i171

stop_streams.exit.i171:                           ; preds = %for.body.i.i169.stop_streams.exit.i171_crit_edge, %error.stop_streams.exit.i171_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i159) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i3.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13.not.i4.i170 = icmp eq i32 %18, 0
  br i1 %cmp13.not.i4.i170, label %stop_streams.exit.i171.finish_session.exit181_crit_edge, label %for.body.i13.i180

stop_streams.exit.i171.finish_session.exit181_crit_edge: ; preds = %stop_streams.exit.i171
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit181

for.body.i13.i180:                                ; preds = %stop_streams.exit.i171
  %91 = ptrtoint ptr %reg.i3.i158 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %reg.i3.i158, align 4
  %call.i.i10.i177 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reg.i3.i158, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %exitcond215.not = icmp eq i32 %18, 1
  br i1 %exitcond215.not, label %for.body.i13.i180.finish_session.exit181_crit_edge, label %for.body.i13.i180.1

for.body.i13.i180.finish_session.exit181_crit_edge: ; preds = %for.body.i13.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit181

for.body.i13.i180.1:                              ; preds = %for.body.i13.i180
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %reg.i3.i158 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %reg.i3.i158, align 4
  %add.i9.i176.1 = add i32 %mul17.i, 8
  %call.i.i10.i177.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i9.i176.1, ptr noundef nonnull %reg.i3.i158, i32 noundef 4) #7
  br label %finish_session.exit181

finish_session.exit181:                           ; preds = %for.body.i13.i180.1, %for.body.i13.i180.finish_session.exit181_crit_edge, %stop_streams.exit.i171.finish_session.exit181_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i3.i158) #7
  call void @snd_dice_transaction_clear_enable(ptr noundef %dice) #7
  br label %cleanup

cleanup:                                          ; preds = %finish_session.exit181, %if.end85.cleanup_crit_edge, %land.lhs.true57.1.cleanup_crit_edge, %if.end53.1.cleanup_crit_edge, %for.inc.5.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %get_register_params.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %finish_session.exit181 ], [ -5, %entry.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ %retval.0.i.ph, %get_register_params.exit.thread ], [ -22, %for.inc.5.i.cleanup_crit_edge ], [ 0, %land.lhs.true57.1.cleanup_crit_edge ], [ 0, %if.end53.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_streams(ptr noundef %dice, i32 noundef %dir, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %max_speed1 = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %max_speed1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed1, align 8
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not = icmp eq i32 %7, 0
  br i1 %cmp7.not, label %entry.cleanup38_crit_edge, label %for.body.lr.ph

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 1
  %tx_stream = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 22
  %tx_resources = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 20
  %rx_stream = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 23
  %rx_resources = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 21
  %tx_stream.pn = select i1 %cmp2, ptr %tx_stream, ptr %rx_stream
  %tx_resources.pn = select i1 %cmp2, ptr %tx_resources, ptr %rx_resources
  %size13 = getelementptr inbounds %struct.reg_params, ptr %params, i32 0, i32 1
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %i.09, 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup38_crit_edge

for.cond.cleanup38_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %stream.0 = getelementptr %struct.amdtp_stream, ptr %tx_stream.pn, i32 %i.09
  %channel = getelementptr %struct.fw_iso_resources, ptr %tx_resources.pn, i32 %i.09, i32 3
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 8
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reg, align 4
  %13 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size13, align 4
  %mul = mul i32 %14, %i.09
  %add = add i32 %mul, 8
  br i1 %cmp2, label %if.end17, label %if.end17.thread

if.end17:                                         ; preds = %for.body
  %call.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18 = icmp slt i32 %call.i, 0
  br i1 %cmp18, label %if.end17.cleanup.thread_crit_edge, label %if.then22

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end17.thread:                                  ; preds = %for.body
  %call.i1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp184 = icmp slt i32 %call.i1, 0
  br i1 %cmp184, label %if.end17.thread.cleanup.thread_crit_edge, label %if.end17.thread.cleanup_crit_edge

if.end17.thread.cleanup_crit_edge:                ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.thread.cleanup.thread_crit_edge:         ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then22:                                        ; preds = %if.end17
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %reg, align 4
  %16 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size13, align 4
  %mul24 = mul i32 %17, %i.09
  %add25 = add i32 %mul24, 20
  %call.i2 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add25, ptr noundef nonnull %reg, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp27 = icmp slt i32 %call.i2, 0
  br i1 %cmp27, label %if.then22.cleanup.thread_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22.cleanup.thread_crit_edge:               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then22.cleanup.thread_crit_edge, %if.end17.thread.cleanup.thread_crit_edge, %if.end17.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call.i1, %if.end17.thread.cleanup.thread_crit_edge ], [ %call.i2, %if.then22.cleanup.thread_crit_edge ], [ %call.i, %if.end17.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  br label %cleanup38

cleanup:                                          ; preds = %if.then22.cleanup_crit_edge, %if.end17.thread.cleanup_crit_edge
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 8
  %call32 = call i32 @amdtp_domain_add_stream(ptr noundef %domain, ptr noundef %stream.0, i32 noundef %19, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  br i1 %cmp33, label %cleanup.cleanup38_crit_edge, label %for.cond

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup.cleanup38_crit_edge, %cleanup.thread, %for.cond.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup38_crit_edge ], [ %call32, %cleanup.cleanup38_crit_edge ], [ 0, %for.cond.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_set_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amdtp_domain_wait_ready(ptr noundef readonly %d) unnamed_addr #5 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.cond:                                         ; preds = %if.end41.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %d, %entry ], [ %.pn, %if.end41.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %d
  br i1 %cmp.not, label %for.cond.cleanup55_crit_edge, label %for.body

for.cond.cleanup55_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

for.body:                                         ; preds = %for.cond
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 348) #7
  %ready_processing = getelementptr i8, ptr %.pn, i32 -76
  %1 = ptrtoint ptr %ready_processing to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ready_processing, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.not = icmp eq i8 %2, 0
  br i1 %tobool.not.not, label %if.then12, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then12:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %ready_wait = getelementptr i8, ptr %.pn, i32 -72
  %call1511 = call i32 @prepare_to_wait_event(ptr noundef %ready_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %4 = ptrtoint ptr %ready_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready_processing, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool18.not12.not = icmp eq i8 %5, 0
  br i1 %tobool18.not12.not, label %if.then12.if.end34_crit_edge, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then12.if.end34_crit_edge:                     ; preds = %if.then12
  br label %if.end34

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %if.then12.if.end34_crit_edge
  %__ret13.115 = phi i32 [ %__ret13.1, %cleanup.if.end34_crit_edge ], [ 20, %if.then12.if.end34_crit_edge ]
  %call1514 = phi i32 [ %call15, %cleanup.if.end34_crit_edge ], [ %call1511, %if.then12.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514)
  %tobool35.not = icmp eq i32 %call1514, 0
  br i1 %tobool35.not, label %cleanup, label %if.end34.__out_crit_edge

if.end34.__out_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end34
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret13.115) #7
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %ready_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %6 = ptrtoint ptr %ready_processing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready_processing, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool18.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool22.not = icmp eq i32 %call38, 0
  %spec.store.select56 = select i1 %tobool22.not, i32 1, i32 %call38
  %__ret13.1 = select i1 %tobool18.not, i32 %call38, i32 %spec.store.select56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool28.not = icmp eq i32 %__ret13.1, 0
  %not.tobool18.not = xor i1 %tobool18.not, true
  %8 = select i1 %not.tobool18.not, i1 true, i1 %tobool28.not
  br i1 %8, label %cleanup.for.end_crit_edge, label %cleanup.if.end34_crit_edge

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  %__ret13.1.lcssa = phi i32 [ 20, %if.then12.for.end_crit_edge ], [ %__ret13.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end34.__out_crit_edge
  %__ret13.23 = phi i32 [ %__ret13.1.lcssa, %for.end ], [ %call1514, %if.end34.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end41

if.end41:                                         ; preds = %__out, %for.body.if.end41_crit_edge
  %__ret.1 = phi i32 [ 20, %for.body.if.end41_crit_edge ], [ %__ret13.23, %__out ]
  %cmp43 = icmp slt i32 %__ret.1, 1
  br i1 %cmp43, label %if.end41.cleanup55_crit_edge, label %if.end41.for.cond_crit_edge

if.end41.for.cond_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end41.cleanup55_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

cleanup55:                                        ; preds = %if.end41.cleanup55_crit_edge, %for.cond.cleanup55_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_stream_stop_duplex(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  %reg.i3.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 26
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #7
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %3 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !29
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.get_register_params.exit.thread_crit_edge, label %if.end.i

if.then.get_register_params.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 2) #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %mul.i = shl i32 %9, 2
  %call.i32.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp5.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp5.i, label %if.end.i.get_register_params.exit.thread_crit_edge, label %if.then2

if.end.i.get_register_params.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

get_register_params.exit.thread:                  ; preds = %if.end.i.get_register_params.exit.thread_crit_edge, %if.then.get_register_params.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  br label %if.end

if.then2:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 2) #7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %mul17.i = shl i32 %14, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i.i, label %if.then2.stop_streams.exit.i_crit_edge, label %for.body.i.i

if.then2.stop_streams.exit.i_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

for.body.i.i:                                     ; preds = %if.then2
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg.i.i, align 4
  %call.i.i.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %reg.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %exitcond.not = icmp eq i32 %7, 1
  br i1 %exitcond.not, label %for.body.i.i.stop_streams.exit.i_crit_edge, label %for.body.i.i.1

for.body.i.i.stop_streams.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i.i, align 4
  %add.i.i.1 = add i32 %mul.i, 8
  %call.i.i.i.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add.i.i.1, ptr noundef nonnull %reg.i.i, i32 noundef 4) #7
  br label %stop_streams.exit.i

stop_streams.exit.i:                              ; preds = %for.body.i.i.1, %for.body.i.i.stop_streams.exit.i_crit_edge, %if.then2.stop_streams.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.not.i4.i = icmp eq i32 %12, 0
  br i1 %cmp13.not.i4.i, label %stop_streams.exit.i.finish_session.exit_crit_edge, label %for.body.i13.i

stop_streams.exit.i.finish_session.exit_crit_edge: ; preds = %stop_streams.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

for.body.i13.i:                                   ; preds = %stop_streams.exit.i
  %17 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %reg.i3.i, align 4
  %call.i.i10.i = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reg.i3.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %exitcond16.not = icmp eq i32 %12, 1
  br i1 %exitcond16.not, label %for.body.i13.i.finish_session.exit_crit_edge, label %for.body.i13.i.1

for.body.i13.i.finish_session.exit_crit_edge:     ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %finish_session.exit

for.body.i13.i.1:                                 ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %reg.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg.i3.i, align 4
  %add.i9.i.1 = add i32 %mul17.i, 8
  %call.i.i10.i.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i9.i.1, ptr noundef nonnull %reg.i3.i, i32 noundef 4) #7
  br label %finish_session.exit

finish_session.exit:                              ; preds = %for.body.i13.i.1, %for.body.i13.i.finish_session.exit_crit_edge, %stop_streams.exit.i.finish_session.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i3.i) #7
  call void @snd_dice_transaction_clear_enable(ptr noundef %dice) #7
  br label %if.end

if.end:                                           ; preds = %finish_session.exit, %get_register_params.exit.thread
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @amdtp_domain_stop(ptr noundef %domain) #7
  %arrayidx.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 0
  call void @fw_iso_resources_free(ptr noundef %arrayidx.i) #7
  %arrayidx1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.i) #7
  %arrayidx.1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 1
  call void @fw_iso_resources_free(ptr noundef %arrayidx.1.i) #7
  %arrayidx1.1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1
  call void @fw_iso_resources_free(ptr noundef %arrayidx1.1.i) #7
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_init_duplex(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %arrayidx1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 0
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @fw_iso_resources_init(ptr noundef %arrayidx1.i, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %entry.for.body4_crit_edge, label %if.end6.i

entry.for.body4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

if.end6.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 0
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4294967295, ptr %arrayidx1.i, align 8
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %call8.i = tail call i32 @amdtp_am824_init(ptr noundef %arrayidx.i, ptr noundef %4, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.if.then10.i_crit_edge, label %for.inc5

if.end6.i.if.then10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i.1.if.then10.i_crit_edge, %if.end6.i.if.then10.i_crit_edge
  %arrayidx.i.lcssa = phi ptr [ %arrayidx.i, %if.end6.i.if.then10.i_crit_edge ], [ %arrayidx.i.1, %if.end6.i.1.if.then10.i_crit_edge ]
  %call8.i.lcssa = phi i32 [ %call8.i, %if.end6.i.if.then10.i_crit_edge ], [ %call8.i.1, %if.end6.i.1.if.then10.i_crit_edge ]
  %i.0118.lcssa141 = phi i32 [ 0, %if.end6.i.if.then10.i_crit_edge ], [ 1, %if.end6.i.1.if.then10.i_crit_edge ]
  %arrayidx1.i.lcssa139 = phi ptr [ %arrayidx1.i, %if.end6.i.if.then10.i_crit_edge ], [ %arrayidx1.i.1, %if.end6.i.1.if.then10.i_crit_edge ]
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i.lcssa) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i.lcssa139) #7
  br label %for.body4

for.body4:                                        ; preds = %for.inc5.for.body4_crit_edge, %if.then10.i, %entry.for.body4_crit_edge
  %i.0118143 = phi i32 [ %i.0118.lcssa141, %if.then10.i ], [ 0, %entry.for.body4_crit_edge ], [ 1, %for.inc5.for.body4_crit_edge ]
  %err.0.i = phi i32 [ %call8.i.lcssa, %if.then10.i ], [ %call.i, %entry.for.body4_crit_edge ], [ %call.i.1, %for.inc5.for.body4_crit_edge ]
  %arrayidx.i67 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 %i.0118143
  %arrayidx1.i68 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 %i.0118143
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i67) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0118143)
  %cmp3.not = icmp eq i32 %i.0118143, 0
  br i1 %cmp3.not, label %for.body4.end_crit_edge, label %for.body4.1

for.body4.end_crit_edge:                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

for.body4.1:                                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %i.0118143, -1
  %arrayidx.i67.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 %dec
  %arrayidx1.i68.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 %dec
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i67.1) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i68.1) #7
  br label %end

for.inc5:                                         ; preds = %if.end6.i
  %arrayidx1.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit.i, align 4
  %call.i.1 = tail call i32 @fw_iso_resources_init(ptr noundef %arrayidx1.i.1, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp4.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp4.i.1, label %for.inc5.for.body4_crit_edge, label %if.end6.i.1

for.inc5.for.body4_crit_edge:                     ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

if.end6.i.1:                                      ; preds = %for.inc5
  %arrayidx.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4294967295, ptr %arrayidx1.i.1, align 8
  %8 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unit.i, align 4
  %call8.i.1 = tail call i32 @amdtp_am824_init(ptr noundef %arrayidx.i.1, ptr noundef %9, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %cmp9.i.1 = icmp slt i32 %call8.i.1, 0
  br i1 %cmp9.i.1, label %if.end6.i.1.if.then10.i_crit_edge, label %for.inc5.1

if.end6.i.1.if.then10.i_crit_edge:                ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

for.inc5.1:                                       ; preds = %if.end6.i.1
  %arrayidx3.i74 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0
  %10 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unit.i, align 4
  %call.i76 = tail call i32 @fw_iso_resources_init(ptr noundef %arrayidx3.i74, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp4.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp4.i77, label %for.inc5.1.for.body15_crit_edge, label %if.end6.i80

for.inc5.1.for.body15_crit_edge:                  ; preds = %for.inc5.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

if.end6.i80:                                      ; preds = %for.inc5.1
  %arrayidx2.i73 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 0
  %12 = ptrtoint ptr %arrayidx3.i74 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %arrayidx3.i74, align 8
  %13 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit.i, align 4
  %call8.i78 = tail call i32 @amdtp_am824_init(ptr noundef %arrayidx2.i73, ptr noundef %14, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i78)
  %cmp9.i79 = icmp slt i32 %call8.i78, 0
  br i1 %cmp9.i79, label %if.end6.i80.if.then10.i81_crit_edge, label %for.inc26

if.end6.i80.if.then10.i81_crit_edge:              ; preds = %if.end6.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i81

if.then10.i81:                                    ; preds = %if.end6.i80.1.if.then10.i81_crit_edge, %if.end6.i80.if.then10.i81_crit_edge
  %arrayidx2.i73.lcssa = phi ptr [ %arrayidx2.i73, %if.end6.i80.if.then10.i81_crit_edge ], [ %arrayidx2.i73.1, %if.end6.i80.1.if.then10.i81_crit_edge ]
  %call8.i78.lcssa = phi i32 [ %call8.i78, %if.end6.i80.if.then10.i81_crit_edge ], [ %call8.i78.1, %if.end6.i80.1.if.then10.i81_crit_edge ]
  %i.2119.lcssa132 = phi i32 [ 0, %if.end6.i80.if.then10.i81_crit_edge ], [ 1, %if.end6.i80.1.if.then10.i81_crit_edge ]
  %arrayidx3.i74.lcssa130 = phi ptr [ %arrayidx3.i74, %if.end6.i80.if.then10.i81_crit_edge ], [ %arrayidx3.i74.1, %if.end6.i80.1.if.then10.i81_crit_edge ]
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i73.lcssa) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i74.lcssa130) #7
  br label %for.body15

for.body15:                                       ; preds = %for.inc26.for.body15_crit_edge, %if.then10.i81, %for.inc5.1.for.body15_crit_edge
  %i.2119134 = phi i32 [ %i.2119.lcssa132, %if.then10.i81 ], [ 0, %for.inc5.1.for.body15_crit_edge ], [ 1, %for.inc26.for.body15_crit_edge ]
  %err.0.i82 = phi i32 [ %call8.i78.lcssa, %if.then10.i81 ], [ %call.i76, %for.inc5.1.for.body15_crit_edge ], [ %call.i76.1, %for.inc26.for.body15_crit_edge ]
  %arrayidx2.i86 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 %i.2119134
  %arrayidx3.i87 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 %i.2119134
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i86) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2119134)
  %cmp14.not = icmp eq i32 %i.2119134, 0
  br i1 %cmp14.not, label %for.body15.end.sink.split_crit_edge, label %for.body15.1

for.body15.end.sink.split_crit_edge:              ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %end.sink.split

for.body15.1:                                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %dec17 = add nsw i32 %i.2119134, -1
  %arrayidx2.i86.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 %dec17
  %arrayidx3.i87.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 %dec17
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i86.1) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i87.1) #7
  br label %end.sink.split

for.inc26:                                        ; preds = %if.end6.i80
  %arrayidx3.i74.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %call.i76.1 = tail call i32 @fw_iso_resources_init(ptr noundef %arrayidx3.i74.1, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.1)
  %cmp4.i77.1 = icmp slt i32 %call.i76.1, 0
  br i1 %cmp4.i77.1, label %for.inc26.for.body15_crit_edge, label %if.end6.i80.1

for.inc26.for.body15_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

if.end6.i80.1:                                    ; preds = %for.inc26
  %arrayidx2.i73.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 1
  %17 = ptrtoint ptr %arrayidx3.i74.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 4294967295, ptr %arrayidx3.i74.1, align 8
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit.i, align 4
  %call8.i78.1 = tail call i32 @amdtp_am824_init(ptr noundef %arrayidx2.i73.1, ptr noundef %19, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i78.1)
  %cmp9.i79.1 = icmp slt i32 %call8.i78.1, 0
  br i1 %cmp9.i79.1, label %if.end6.i80.1.if.then10.i81_crit_edge, label %for.inc26.1

if.end6.i80.1.if.then10.i81_crit_edge:            ; preds = %if.end6.i80.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i81

for.inc26.1:                                      ; preds = %if.end6.i80.1
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  %call29 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.body34.preheader, label %for.inc26.1.end_crit_edge

for.inc26.1.end_crit_edge:                        ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

for.body34.preheader:                             ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i73) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i74) #7
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i) #7
  br label %end.sink.split

end.sink.split:                                   ; preds = %for.body34.preheader, %for.body15.1, %for.body15.end.sink.split_crit_edge
  %arrayidx2.i73.1.sink = phi ptr [ %arrayidx2.i73.1, %for.body34.preheader ], [ %arrayidx.i, %for.body15.1 ], [ %arrayidx.i, %for.body15.end.sink.split_crit_edge ]
  %arrayidx3.i74.1.sink = phi ptr [ %arrayidx3.i74.1, %for.body34.preheader ], [ %arrayidx1.i, %for.body15.1 ], [ %arrayidx1.i, %for.body15.end.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call29, %for.body34.preheader ], [ %err.0.i82, %for.body15.1 ], [ %err.0.i82, %for.body15.end.sink.split_crit_edge ]
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i73.1.sink) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i74.1.sink) #7
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i.1) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i.1) #7
  br label %end

end:                                              ; preds = %end.sink.split, %for.inc26.1.end_crit_edge, %for.body4.1, %for.body4.end_crit_edge
  %err.0 = phi i32 [ %call29, %for.inc26.1.end_crit_edge ], [ %err.0.ph, %end.sink.split ], [ %err.0.i, %for.body4.1 ], [ %err.0.i, %for.body4.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_stream_destroy_duplex(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 0
  %arrayidx1.i = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 0
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i) #7
  %arrayidx2.i8 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 0
  %arrayidx3.i9 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 0
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i8) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i9) #7
  %arrayidx.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 22, i32 1
  %arrayidx1.i.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 20, i32 1
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx.i.1) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx1.i.1) #7
  %arrayidx2.i8.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 23, i32 1
  %arrayidx3.i9.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 21, i32 1
  tail call void @amdtp_stream_destroy(ptr noundef %arrayidx2.i8.1) #7
  tail call void @fw_iso_resources_destroy(ptr noundef %arrayidx3.i9.1) #7
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_stream_update_duplex(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  %reg.i9 = alloca i32, align 4
  %reg.i5 = alloca i32, align 4
  %reg.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %global_enabled = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 24
  %0 = ptrtoint ptr %global_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %global_enabled, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %global_enabled, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #7
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %2 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !29
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.get_register_params.exit.thread_crit_edge, label %if.end.i

entry.get_register_params.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg.i, align 4
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 2) #7
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %mul.i = shl i32 %8, 2
  %call.i32.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp5.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp5.i, label %if.end.i.get_register_params.exit.thread_crit_edge, label %if.then

if.end.i.get_register_params.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

get_register_params.exit.thread:                  ; preds = %if.end.i.get_register_params.exit.thread_crit_edge, %entry.get_register_params.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  br label %if.end

if.then:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 2) #7
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  %mul17.i = shl i32 %13, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  %domain = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 27
  call void @amdtp_domain_stop(ptr noundef %domain) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp13.not.i = icmp eq i32 %6, 0
  br i1 %cmp13.not.i, label %if.then.stop_streams.exit_crit_edge, label %for.body.i

if.then.stop_streams.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit

for.body.i:                                       ; preds = %if.then
  %14 = ptrtoint ptr %reg.i5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %reg.i5, align 4
  %call.i.i7 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %reg.i5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %exitcond.not = icmp eq i32 %6, 1
  br i1 %exitcond.not, label %for.body.i.stop_streams.exit_crit_edge, label %for.body.i.1

for.body.i.stop_streams.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %reg.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %reg.i5, align 4
  %add.i.1 = add i32 %mul.i, 8
  %call.i.i7.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 2, i32 noundef %add.i.1, ptr noundef nonnull %reg.i5, i32 noundef 4) #7
  br label %stop_streams.exit

stop_streams.exit:                                ; preds = %for.body.i.1, %for.body.i.stop_streams.exit_crit_edge, %if.then.stop_streams.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.not.i10 = icmp eq i32 %11, 0
  br i1 %cmp13.not.i10, label %stop_streams.exit.stop_streams.exit20_crit_edge, label %for.body.i19

stop_streams.exit.stop_streams.exit20_crit_edge:  ; preds = %stop_streams.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit20

for.body.i19:                                     ; preds = %stop_streams.exit
  %16 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i9, align 4
  %call.i.i16 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %reg.i9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond29.not = icmp eq i32 %11, 1
  br i1 %exitcond29.not, label %for.body.i19.stop_streams.exit20_crit_edge, label %for.body.i19.1

for.body.i19.stop_streams.exit20_crit_edge:       ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %stop_streams.exit20

for.body.i19.1:                                   ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %reg.i9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %reg.i9, align 4
  %add.i15.1 = add i32 %mul17.i, 8
  %call.i.i16.1 = call i32 @snd_dice_transaction_write(ptr noundef %dice, i32 noundef 3, i32 noundef %add.i15.1, ptr noundef nonnull %reg.i9, i32 noundef 4) #7
  br label %stop_streams.exit20

stop_streams.exit20:                              ; preds = %for.body.i19.1, %for.body.i19.stop_streams.exit20_crit_edge, %stop_streams.exit.stop_streams.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i9) #7
  br label %if.end

if.end:                                           ; preds = %stop_streams.exit20, %get_register_params.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_detect_current_formats(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  %reg.i = alloca [2 x i32], align 4
  %rate = alloca i32, align 4
  %reg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #7
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %2 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !29
  %call = tail call i32 @snd_dice_detect_extension_formats(ptr noundef %dice) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @snd_dice_transaction_get_rate(ptr noundef %dice, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %6 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock_caps.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 32000
  %or.cond.i = and i1 %cmp1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end4.if.end8_crit_edge, label %for.inc.i

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.i:                                        ; preds = %if.end4
  %and.1.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp ne i32 %and.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %5)
  %cmp1.not.1.i = icmp eq i32 %5, 44100
  %or.cond13.i = and i1 %cmp1.not.1.i, %tobool.not.1.i
  br i1 %or.cond13.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.1.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp ne i32 %and.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %5)
  %cmp1.not.2.i = icmp eq i32 %5, 48000
  %or.cond14.i = and i1 %cmp1.not.2.i, %tobool.not.2.i
  br i1 %or.cond14.i, label %for.inc.1.i.if.end8_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end8_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp ne i32 %and.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %5)
  %cmp1.not.3.i = icmp eq i32 %5, 88200
  %or.cond15.i = and i1 %cmp1.not.3.i, %tobool.not.3.i
  br i1 %or.cond15.i, label %for.inc.2.i.if.end8_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp ne i32 %and.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %5)
  %cmp1.not.4.i = icmp eq i32 %5, 96000
  %or.cond16.i = and i1 %cmp1.not.4.i, %tobool.not.4.i
  br i1 %or.cond16.i, label %for.inc.3.i.if.end8_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end8_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp ne i32 %and.5.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %5)
  %cmp1.not.5.i = icmp eq i32 %5, 176400
  %or.cond17.i = and i1 %cmp1.not.5.i, %tobool.not.5.i
  br i1 %or.cond17.i, label %for.inc.4.i.if.end8_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end8_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %and.6.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp ne i32 %and.6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %5)
  %cmp1.not.6.i = icmp eq i32 %5, 192000
  %or.cond18.i = and i1 %cmp1.not.6.i, %tobool.not.6.i
  br i1 %or.cond18.i, label %for.inc.5.i.if.end8_crit_edge, label %for.inc.5.i.cleanup_crit_edge

for.inc.5.i.cleanup_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5.i.if.end8_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %for.inc.5.i.if.end8_crit_edge, %for.inc.4.i.if.end8_crit_edge, %for.inc.3.i.if.end8_crit_edge, %for.inc.2.i.if.end8_crit_edge, %for.inc.1.i.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %if.end4.if.end8_crit_edge ], [ 1, %for.inc.i.if.end8_crit_edge ], [ 2, %for.inc.1.i.if.end8_crit_edge ], [ 3, %for.inc.2.i.if.end8_crit_edge ], [ 4, %for.inc.3.i.if.end8_crit_edge ], [ 5, %for.inc.4.i.if.end8_crit_edge ], [ 6, %for.inc.5.i.if.end8_crit_edge ]
  %arrayidx4.i = getelementptr [7 x i32], ptr @snd_dice_stream_get_rate_mode.modes, i32 0, i32 %i.010.lcssa.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %call9 = call fastcc i32 @select_clock(ptr noundef %dice, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #7
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %11 = getelementptr inbounds [2 x i32], ptr %reg.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !29
  %call.i.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end12.get_register_params.exit.thread_crit_edge, label %if.end.i

if.end12.get_register_params.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

if.end.i:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 2) #7
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %mul.i = shl i32 %17, 2
  %call.i32.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp5.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp5.i, label %if.end.i.get_register_params.exit.thread_crit_edge, label %get_register_params.exit

if.end.i.get_register_params.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_register_params.exit.thread

get_register_params.exit.thread:                  ; preds = %if.end.i.get_register_params.exit.thread_crit_edge, %if.end12.get_register_params.exit.thread_crit_edge
  %retval.0.i107.ph = phi i32 [ %call.i32.i, %if.end.i.get_register_params.exit.thread_crit_edge ], [ %call.i.i, %if.end12.get_register_params.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  br label %cleanup

get_register_params.exit:                         ; preds = %if.end.i
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i, align 4
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 2) #7
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  %mul17.i = shl i32 %22, 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17120.not = icmp eq i32 %15, 0
  br i1 %cmp17120.not, label %get_register_params.exit.for.cond29.preheader_crit_edge, label %for.body

get_register_params.exit.for.cond29.preheader_crit_edge: ; preds = %get_register_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %if.end21.1, %if.end21.for.cond29.preheader_crit_edge, %get_register_params.exit.for.cond29.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31122.not = icmp eq i32 %20, 0
  br i1 %cmp31122.not, label %for.cond29.preheader.cleanup_crit_edge, label %for.body32

for.cond29.preheader.cleanup_crit_edge:           ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %get_register_params.exit
  %call.i = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %reg, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %for.body.cleanup_crit_edge, label %if.end21

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %arrayidx23 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 0, i32 %9
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx23, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %2, align 4
  %arrayidx25 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 12, i32 0
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25, align 4
  %30 = call i32 @llvm.umax.i32(i32 %27, i32 %29)
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %exitcond.not = icmp eq i32 %15, 1
  br i1 %exitcond.not, label %if.end21.for.cond29.preheader_crit_edge, label %for.body.1

if.end21.for.cond29.preheader_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond29.preheader

for.body.1:                                       ; preds = %if.end21
  %add.1 = add i32 %mul.i, 12
  %call.i.1 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 2, i32 noundef %add.1, ptr noundef nonnull %reg, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp19.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp19.1, label %for.body.1.cleanup_crit_edge, label %if.end21.1

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg, align 4
  %arrayidx23.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 10, i32 1, i32 %9
  %34 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx23.1, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %arrayidx25.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx25.1, align 4
  %39 = call i32 @llvm.umax.i32(i32 %36, i32 %38)
  %40 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx25.1, align 4
  br label %for.cond29.preheader

for.body32:                                       ; preds = %for.cond29.preheader
  %call.i108 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef 16, ptr noundef nonnull %reg, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp38 = icmp slt i32 %call.i108, 0
  br i1 %cmp38, label %for.body32.cleanup_crit_edge, label %if.end40

for.body32.cleanup_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %for.body32
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  %arrayidx43 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 0, i32 %9
  %43 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx43, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  %arrayidx45 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 13, i32 0
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45, align 4
  %48 = call i32 @llvm.umax.i32(i32 %45, i32 %47)
  %49 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %exitcond127.not = icmp eq i32 %20, 1
  br i1 %exitcond127.not, label %if.end40.cleanup_crit_edge, label %for.body32.1

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body32.1:                                     ; preds = %if.end40
  %add35.1 = add i32 %mul17.i, 16
  %call.i108.1 = call i32 @snd_dice_transaction_read(ptr noundef %dice, i32 noundef 3, i32 noundef %add35.1, ptr noundef nonnull %reg, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.1)
  %cmp38.1 = icmp slt i32 %call.i108.1, 0
  br i1 %cmp38.1, label %for.body32.1.cleanup_crit_edge, label %if.end40.1

for.body32.1.cleanup_crit_edge:                   ; preds = %for.body32.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.1:                                       ; preds = %for.body32.1
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg, align 4
  %arrayidx43.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 11, i32 1, i32 %9
  %52 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx43.1, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  %arrayidx45.1 = getelementptr %struct.snd_dice, ptr %dice, i32 0, i32 13, i32 1
  %55 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx45.1, align 4
  %57 = call i32 @llvm.umax.i32(i32 %54, i32 %56)
  %58 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx45.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40.1, %for.body32.1.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.body32.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond29.preheader.cleanup_crit_edge, %get_register_params.exit.thread, %if.end8.cleanup_crit_edge, %for.inc.5.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %retval.0.i107.ph, %get_register_params.exit.thread ], [ -22, %for.inc.5.i.cleanup_crit_edge ], [ 0, %for.cond29.preheader.cleanup_crit_edge ], [ %call.i108, %for.body32.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %call.i108.1, %for.body32.1.cleanup_crit_edge ], [ 0, %if.end40.1 ], [ %call.i, %for.body.cleanup_crit_edge ], [ %call.i.1, %for.body.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_detect_extension_formats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_stream_lock_try(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %dev_lock_count = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
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
  store i32 %inc, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -16, %entry.out_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_stream_lock_release(ptr noundef %dice) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %dev_lock_count = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 699, i32 noundef 9, ptr noundef null) #7
  br label %out

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.out_crit_edge

if.end21.critedge.out_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %out

out:                                              ; preds = %if.then24, %if.end21.critedge.out_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dice_transaction_clear_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dice_transaction_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_set_parameters(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_am824_set_pcm_position(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @snd_dice_rates, !1, !"snd_dice_rates", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-stream.c", i32 19, i32 20}
!2 = !{ptr @snd_dice_stream_get_rate_mode.modes, !3, !"modes", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-stream.c", i32 36, i32 39}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice-stream.c", i32 442, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_dice_stream_start_duplex._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_dice_stream_start_duplex._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/dice/dice-stream.c", i32 239, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @keep_dual_resources._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @keep_dual_resources._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/dice/../amdtp-stream.h", i32 348, i32 7}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 1, i32 2000}
