; ModuleID = '/llk/IR_all_yes/sound/firewire/digi00x/digi00x-stream.c_pt.bc'
source_filename = "../sound/firewire/digi00x/digi00x-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@snd_dg00x_stream_rates = dso_local constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@snd_dg00x_stream_pcm_channels = dso_local constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 18, i32 18, i32 10, i32 10], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sound/firewire/digi00x/digi00x-stream.c\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sound/firewire/digi00x/../amdtp-stream.h\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.5 = private unnamed_addr constant [23 x i8] c"snd_dg00x_stream_rates\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 12, i32 20 }
@___asan_gen_.8 = private unnamed_addr constant [30 x i8] c"snd_dg00x_stream_pcm_channels\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 21, i32 1 }
@___asan_gen_.12 = private constant [43 x i8] c"../sound/firewire/digi00x/digi00x-stream.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 451, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [44 x i8] c"../sound/firewire/digi00x/../amdtp-stream.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 348, i32 7 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @snd_dg00x_stream_rates, ptr @snd_dg00x_stream_pcm_channels, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dg00x_stream_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dg00x_stream_pcm_channels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_get_local_rate(ptr nocapture noundef readonly %dg00x, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281474439840016, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1 = icmp ult i32 %and, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_set_local_rate(ptr nocapture noundef readonly %dg00x, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 44100, label %entry.if.end4_crit_edge
    i32 48000, label %if.end4.fold.split
    i32 88200, label %if.end4.fold.split15
    i32 96000, label %if.end4.fold.split16
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %if.end4.fold.split16, %if.end4.fold.split15, %if.end4.fold.split, %entry.if.end4_crit_edge
  %i.013.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %if.end4.fold.split ], [ 2, %if.end4.fold.split15 ], [ 3, %if.end4.fold.split16 ]
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.013.lcssa, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 0, i64 noundef 281474439840016, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_get_clock(ptr nocapture noundef readonly %dg00x, ptr nocapture noundef writeonly %clock) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281474439840024, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 15
  %5 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp1 = icmp ugt i32 %and, 3
  %spec.select = select i1 %cmp1, i32 -5, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_check_external_clock(ptr nocapture noundef readonly %dg00x, ptr nocapture noundef writeonly %detect) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281474439840044, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp ne i32 %4, 0
  %frombool = zext i1 %cmp1 to i8
  %5 = ptrtoint ptr %detect to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %detect, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_get_external_rate(ptr nocapture noundef readonly %dg00x, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !17
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281474439840020, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1 = icmp ult i32 %and, 4
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call, %if.then2 ], [ -16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_init_duplex(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6
  %rx_resources.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  %unit.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @fw_iso_resources_init(ptr noundef %rx_resources.i, ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end3.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call5.i = tail call i32 @amdtp_dot_init(ptr noundef %rx_stream, ptr noundef %3, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end3.i.cleanup.sink.split_crit_edge, label %if.end

if.end3.i.cleanup.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end3.i
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4
  %tx_resources.i27 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %call.i30 = tail call i32 @fw_iso_resources_init(ptr noundef %tx_resources.i27, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp1.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp1.i31, label %if.end.if.then3_crit_edge, label %if.end3.i34

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.end3.i34:                                      ; preds = %if.end
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call5.i32 = tail call i32 @amdtp_dot_init(ptr noundef %tx_stream, ptr noundef %7, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i32)
  %cmp6.i33 = icmp slt i32 %call5.i32, 0
  br i1 %cmp6.i33, label %if.then7.i35, label %if.end3.i34.if.end5_crit_edge

if.end3.i34.if.end5_crit_edge:                    ; preds = %if.end3.i34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then7.i35:                                     ; preds = %if.end3.i34
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i27) #3
  br label %if.then3

if.then3:                                         ; preds = %if.then7.i35, %if.end.if.then3_crit_edge
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #3
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end3.i34.if.end5_crit_edge
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #3
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #3
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end3.i.cleanup.sink.split_crit_edge
  %rx_resources.i.sink = phi ptr [ %tx_resources.i27, %if.then8 ], [ %rx_resources.i, %if.end3.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call6, %if.then8 ], [ %call5.i, %if.end3.i.cleanup.sink.split_crit_edge ]
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i.sink) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dg00x_stream_destroy_duplex(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #3
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #3
  %rx_resources.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #3
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #3
  %tx_resources.i7 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_reserve_duplex(ptr noundef %dg00x, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %reg.i58 = alloca i32, align 4
  %data.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %unit.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281474439840016, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge, label %if.end.i

entry.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_get_local_rate.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp1.i = icmp ult i32 %and.i, 4
  br i1 %cmp1.i, label %if.end, label %if.end.i.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge

if.end.i.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_get_local_rate.exit.thread

snd_dg00x_stream_get_local_rate.exit.thread:      ; preds = %if.end.i.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge, %entry.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge ], [ %call.i, %entry.snd_dg00x_stream_get_local_rate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx.i = getelementptr [4 x i32], ptr @snd_dg00x_stream_rates, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1 = icmp eq i32 %rate, 0
  %spec.select = select i1 %cmp1, i32 %6, i32 %rate
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 8
  %7 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %spec.select)
  %cmp5.not = icmp eq i32 %6, %spec.select
  %or.cond = select i1 %cmp4, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %data.i, align 4
  %10 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unit.i, align 4
  %call.i57 = call i32 @snd_fw_transaction(ptr noundef %11, i32 noundef 0, i64 noundef 281474439839748, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data.i, align 4
  %13 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %14, i32 noundef 0, i64 noundef 281474439840000, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @msleep(i32 noundef 50) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  %tx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #3
  %rx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i58) #3
  %15 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %spec.select, label %snd_dg00x_stream_set_local_rate.exit.thread [
    i32 44100, label %if.then6.snd_dg00x_stream_set_local_rate.exit_crit_edge
    i32 48000, label %if.end4.fold.split.i
    i32 88200, label %if.end4.fold.split15.i
    i32 96000, label %if.end4.fold.split16.i
  ]

if.then6.snd_dg00x_stream_set_local_rate.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_set_local_rate.exit

snd_dg00x_stream_set_local_rate.exit.thread:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i58) #3
  br label %cleanup

if.end4.fold.split.i:                             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_set_local_rate.exit

if.end4.fold.split15.i:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_set_local_rate.exit

if.end4.fold.split16.i:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_dg00x_stream_set_local_rate.exit

snd_dg00x_stream_set_local_rate.exit:             ; preds = %if.end4.fold.split16.i, %if.end4.fold.split15.i, %if.end4.fold.split.i, %if.then6.snd_dg00x_stream_set_local_rate.exit_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %if.then6.snd_dg00x_stream_set_local_rate.exit_crit_edge ], [ 1, %if.end4.fold.split.i ], [ 2, %if.end4.fold.split15.i ], [ 3, %if.end4.fold.split16.i ]
  %16 = ptrtoint ptr %reg.i58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.013.lcssa.i, ptr %reg.i58, align 4
  %17 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit.i, align 4
  %call.i60 = call i32 @snd_fw_transaction(ptr noundef %18, i32 noundef 0, i64 noundef 281474439840016, ptr noundef nonnull %reg.i58, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i58) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp8 = icmp slt i32 %call.i60, 0
  br i1 %cmp8, label %snd_dg00x_stream_set_local_rate.exit.cleanup_crit_edge, label %if.end10

snd_dg00x_stream_set_local_rate.exit.cleanup_crit_edge: ; preds = %snd_dg00x_stream_set_local_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %snd_dg00x_stream_set_local_rate.exit
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6
  %19 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %spec.select, label %if.end10.cleanup_crit_edge [
    i32 44100, label %if.end10.if.end4.i64_crit_edge
    i32 48000, label %if.end4.fold.split.i62
    i32 88200, label %if.end4.fold.split33.i
    i32 96000, label %if.end4.fold.split34.i
  ]

if.end10.if.end4.i64_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i64

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.fold.split.i62:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i64

if.end4.fold.split33.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i64

if.end4.fold.split34.i:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i64

if.end4.i64:                                      ; preds = %if.end4.fold.split34.i, %if.end4.fold.split33.i, %if.end4.fold.split.i62, %if.end10.if.end4.i64_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %if.end10.if.end4.i64_crit_edge ], [ 1, %if.end4.fold.split.i62 ], [ 2, %if.end4.fold.split33.i ], [ 3, %if.end4.fold.split34.i ]
  %arrayidx8.i = getelementptr [4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 %i.031.lcssa.i
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.i, align 4
  %call.i63 = call i32 @amdtp_dot_set_parameters(ptr noundef %rx_stream, i32 noundef %spec.select, i32 noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp9.i = icmp slt i32 %call.i63, 0
  br i1 %cmp9.i, label %if.end4.i64.cleanup_crit_edge, label %keep_resources.exit

if.end4.i64.cleanup_crit_edge:                    ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

keep_resources.exit:                              ; preds = %if.end4.i64
  %call12.i = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #3
  %22 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %max_speed.i = getelementptr i8, ptr %25, i32 -8
  %26 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_speed.i, align 8
  %call14.i = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call12.i, i32 noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp12 = icmp slt i32 %call14.i, 0
  br i1 %cmp12, label %keep_resources.exit.cleanup_crit_edge, label %if.end14

keep_resources.exit.cleanup_crit_edge:            ; preds = %keep_resources.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %keep_resources.exit
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4
  %28 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %spec.select, label %if.end14.if.then17_crit_edge [
    i32 44100, label %if.end14.if.end4.i74_crit_edge
    i32 48000, label %if.end4.fold.split.i67
    i32 88200, label %if.end4.fold.split33.i68
    i32 96000, label %if.end4.fold.split34.i69
  ]

if.end14.if.end4.i74_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i74

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

if.end4.fold.split.i67:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i74

if.end4.fold.split33.i68:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i74

if.end4.fold.split34.i69:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i74

if.end4.i74:                                      ; preds = %if.end4.fold.split34.i69, %if.end4.fold.split33.i68, %if.end4.fold.split.i67, %if.end14.if.end4.i74_crit_edge
  %i.031.lcssa.i70 = phi i32 [ 0, %if.end14.if.end4.i74_crit_edge ], [ 1, %if.end4.fold.split.i67 ], [ 2, %if.end4.fold.split33.i68 ], [ 3, %if.end4.fold.split34.i69 ]
  %arrayidx8.i71 = getelementptr [4 x i32], ptr @snd_dg00x_stream_pcm_channels, i32 0, i32 %i.031.lcssa.i70
  %29 = ptrtoint ptr %arrayidx8.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx8.i71, align 4
  %call.i72 = call i32 @amdtp_dot_set_parameters(ptr noundef %tx_stream, i32 noundef %spec.select, i32 noundef %30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp9.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp9.i73, label %if.end4.i74.if.then17_crit_edge, label %keep_resources.exit85

if.end4.i74.if.then17_crit_edge:                  ; preds = %if.end4.i74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

keep_resources.exit85:                            ; preds = %if.end4.i74
  %call12.i78 = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #3
  %31 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unit.i, align 4
  %parent.i.i80 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %parent.i.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i.i80, align 8
  %max_speed.i81 = getelementptr i8, ptr %34, i32 -8
  %35 = ptrtoint ptr %max_speed.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_speed.i81, align 8
  %call14.i82 = call i32 @fw_iso_resources_allocate(ptr noundef %tx_resources, i32 noundef %call12.i78, i32 noundef %36) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i82)
  %cmp16 = icmp slt i32 %call14.i82, 0
  br i1 %cmp16, label %keep_resources.exit85.if.then17_crit_edge, label %if.end19

keep_resources.exit85.if.then17_crit_edge:        ; preds = %keep_resources.exit85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then17

if.then17:                                        ; preds = %keep_resources.exit85.if.then17_crit_edge, %if.end4.i74.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %retval.0.i8497 = phi i32 [ %call14.i82, %keep_resources.exit85.if.then17_crit_edge ], [ -22, %if.end14.if.then17_crit_edge ], [ %call.i72, %if.end4.i74.if.then17_crit_edge ]
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #3
  br label %cleanup

if.end19:                                         ; preds = %keep_resources.exit85
  call void @__sanitizer_cov_trace_pc() #5
  %events_per_period1.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15, i32 1
  %37 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15, i32 2
  %38 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17, %keep_resources.exit.cleanup_crit_edge, %if.end4.i64.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %snd_dg00x_stream_set_local_rate.exit.cleanup_crit_edge, %snd_dg00x_stream_set_local_rate.exit.thread, %if.end.cleanup_crit_edge, %snd_dg00x_stream_get_local_rate.exit.thread
  %retval.0 = phi i32 [ %retval.0.i8497, %if.then17 ], [ %call.i60, %snd_dg00x_stream_set_local_rate.exit.cleanup_crit_edge ], [ %call14.i, %keep_resources.exit.cleanup_crit_edge ], [ 0, %if.end19 ], [ %retval.0.i.ph, %snd_dg00x_stream_get_local_rate.exit.thread ], [ -22, %snd_dg00x_stream_set_local_rate.exit.thread ], [ -22, %if.end10.cleanup_crit_edge ], [ %call.i63, %if.end4.i64.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_start_duplex(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  %data.i93 = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %data.i89 = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  %generation1 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 8
  %2 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup54

if.end:                                           ; preds = %entry
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4
  %packet_index.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i85 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %packet_index.i85 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_index.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i86 = icmp slt i32 %7, 0
  br i1 %cmp.i86, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %data.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef 281474439839748, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data.i, align 4
  %12 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef 281474439840000, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @msleep(i32 noundef 50) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false.if.end4_crit_edge
  %unit = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %14 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %17, i32 -4
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %generation6 = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %generation6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %21)
  %cmp7.not = icmp eq i32 %1, %21
  br i1 %cmp7.not, label %if.end4.if.end18_crit_edge, label %if.then8

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then8:                                         ; preds = %if.end4
  %tx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  %call9 = call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.error_crit_edge, label %if.end12

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end12:                                         ; preds = %if.then8
  %call14 = call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.error_crit_edge, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %rx_stream19 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6
  %context.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then21, label %if.end18.cleanup54_crit_edge

if.end18.cleanup54_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup54

if.then21:                                        ; preds = %if.end18
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unit, align 4
  %parent.i87 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i87, align 8
  %max_speed = getelementptr i8, ptr %27, i32 -8
  %28 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_speed, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i89) #3
  %channel.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel.i, align 8
  %shl.i = shl i32 %31, 16
  %channel1.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel1.i, align 8
  %or.i = or i32 %shl.i, %33
  %34 = ptrtoint ptr %data.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %data.i89, align 4
  %call.i91 = call i32 @snd_fw_transaction(ptr noundef %25, i32 noundef 0, i64 noundef 281474439840000, ptr noundef nonnull %data.i89, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %if.then21.begin_session.exit.thread_crit_edge, label %if.end.i

if.then21.begin_session.exit.thread_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end.i:                                         ; preds = %if.then21
  %35 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unit, align 4
  %call3.i = call i32 @snd_fw_transaction(ptr noundef %36, i32 noundef 4, i64 noundef 281474439839744, ptr noundef nonnull %data.i89, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.begin_session.exit.thread_crit_edge, label %if.end6.i

if.end.i.begin_session.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %data.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp7.i = icmp eq i32 %38, 0
  %.op.i = add i32 %38, -1
  %spec.select.i = select i1 %cmp7.i, i32 1, i32 %.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp10.not32.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp10.not32.i, label %if.end6.i.if.end27_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.body.i

if.end6.i.if.end27_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %if.end6.i.while.body.i_crit_edge
  %curr.033.i = phi i32 [ %dec16.i, %if.end15.i.while.body.i_crit_edge ], [ %spec.select.i, %if.end6.i.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %data.i89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %curr.033.i, ptr %data.i89, align 4
  %40 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %unit, align 4
  %call12.i = call i32 @snd_fw_transaction(ptr noundef %41, i32 noundef 0, i64 noundef 281474439839748, ptr noundef nonnull %data.i89, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %while.body.i.begin_session.exit.thread_crit_edge, label %if.end15.i

while.body.i.begin_session.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end15.i:                                       ; preds = %while.body.i
  call void @msleep(i32 noundef 20) #3
  %dec16.i = add i32 %curr.033.i, -1
  %cmp10.not.i = icmp eq i32 %dec16.i, 0
  br i1 %cmp10.not.i, label %if.end15.i.if.end27_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end15.i.if.end27_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

begin_session.exit.thread:                        ; preds = %while.body.i.begin_session.exit.thread_crit_edge, %if.end.i.begin_session.exit.thread_crit_edge, %if.then21.begin_session.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.begin_session.exit.thread_crit_edge ], [ %call.i91, %if.then21.begin_session.exit.thread_crit_edge ], [ %call12.i, %while.body.i.begin_session.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i89) #3
  br label %error

if.end27:                                         ; preds = %if.end15.i.if.end27_crit_edge, %if.end6.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i89) #3
  %domain28 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  %42 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel1.i, align 8
  %call31 = call i32 @amdtp_domain_add_stream(ptr noundef %domain28, ptr noundef %rx_stream19, i32 noundef %43, i32 noundef %29) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end27.error_crit_edge, label %if.end34

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end34:                                         ; preds = %if.end27
  %44 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel.i, align 8
  %call39 = call i32 @amdtp_domain_add_stream(ptr noundef %domain28, ptr noundef %tx_stream, i32 noundef %45, i32 noundef %29) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end34.error_crit_edge, label %if.end42

if.end34.error_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end42:                                         ; preds = %if.end34
  %call44 = call i32 @amdtp_domain_start(ptr noundef %domain28, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.error_crit_edge, label %for.cond.i.preheader

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

for.cond.i.preheader:                             ; preds = %if.end42
  %46 = ptrtoint ptr %domain28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i110 = load ptr, ptr %domain28, align 4
  %cmp.not.i111 = icmp eq ptr %.pn.i110, %domain28
  br i1 %cmp.not.i111, label %for.cond.i.preheader.cleanup54_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.cleanup54_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup54

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i112 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i110, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 348) #3
  %ready_processing.i = getelementptr i8, ptr %.pn.i112, i32 -76
  %47 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ready_processing.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #3
  %49 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #3
  %ready_wait.i = getelementptr i8, ptr %.pn.i112, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #3
  %50 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ready_processing.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool18.not12.not.i = icmp eq i8 %51, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #3
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #3
  %52 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ready_processing.i, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool18.not.i = icmp eq i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %54 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %54, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 20, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #3
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %55 = ptrtoint ptr %.pn.i112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn.i112, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain28
  br i1 %cmp.not.i, label %for.cond.i.backedge.cleanup54_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.backedge.cleanup54_crit_edge:          ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup54

error:                                            ; preds = %if.end41.i.error_crit_edge, %if.end42.error_crit_edge, %if.end34.error_crit_edge, %if.end27.error_crit_edge, %begin_session.exit.thread, %if.end12.error_crit_edge, %if.then8.error_crit_edge
  %err.1 = phi i32 [ %call9, %if.then8.error_crit_edge ], [ %call14, %if.end12.error_crit_edge ], [ %retval.0.i.ph, %begin_session.exit.thread ], [ %call44, %if.end42.error_crit_edge ], [ %call39, %if.end34.error_crit_edge ], [ %call31, %if.end27.error_crit_edge ], [ -110, %if.end41.i.error_crit_edge ]
  %domain53 = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  call void @amdtp_domain_stop(ptr noundef %domain53) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i93) #3
  %56 = ptrtoint ptr %data.i93 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %data.i93, align 4
  %57 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %unit, align 4
  %call.i95 = call i32 @snd_fw_transaction(ptr noundef %58, i32 noundef 0, i64 noundef 281474439839748, ptr noundef nonnull %data.i93, i32 noundef 4, i32 noundef 0) #3
  %59 = ptrtoint ptr %data.i93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %data.i93, align 4
  %60 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %unit, align 4
  %call2.i96 = call i32 @snd_fw_transaction(ptr noundef %61, i32 noundef 0, i64 noundef 281474439840000, ptr noundef nonnull %data.i93, i32 noundef 4, i32 noundef 0) #3
  call void @msleep(i32 noundef 50) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i93) #3
  br label %cleanup54

cleanup54:                                        ; preds = %error, %for.cond.i.backedge.cleanup54_crit_edge, %for.cond.i.preheader.cleanup54_crit_edge, %if.end18.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ %err.1, %error ], [ 0, %entry.cleanup54_crit_edge ], [ 0, %if.end18.cleanup54_crit_edge ], [ 0, %for.cond.i.preheader.cleanup54_crit_edge ], [ 0, %for.cond.i.backedge.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dg00x_stream_stop_duplex(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 8
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %domain = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 15
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %data.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 0, i64 noundef 281474439839748, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data.i, align 4
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 0, i64 noundef 281474439840000, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @msleep(i32 noundef 50) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  %tx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #3
  %rx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dg00x_stream_update_duplex(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 5
  %call = tail call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #3
  %rx_resources = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 7
  %call1 = tail call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #3
  %tx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 4
  tail call void @amdtp_stream_update(ptr noundef %tx_stream) #3
  %rx_stream = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 6
  tail call void @amdtp_stream_update(ptr noundef %rx_stream) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dg00x_stream_lock_changed(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 10
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 8
  %hwdep_wait = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dg00x_stream_lock_try(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %dev_lock_count = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 9
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 10
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dg00x_stream_lock_release(ptr noundef %dg00x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %dev_lock_count = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 9
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 9, ptr noundef null) #3
  br label %end

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.end_crit_edge

if.end21.critedge.end_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #5
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 10
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_dg00x, ptr %dg00x, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_dot_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_dot_set_parameters(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_dg00x_stream_rates, !1, !"snd_dg00x_stream_rates", i1 false, i1 false}
!1 = !{!"../sound/firewire/digi00x/digi00x-stream.c", i32 12, i32 20}
!2 = !{ptr @snd_dg00x_stream_pcm_channels, !3, !"snd_dg00x_stream_pcm_channels", i1 false, i1 false}
!3 = !{!"../sound/firewire/digi00x/digi00x-stream.c", i32 21, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/digi00x/digi00x-stream.c", i32 451, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/firewire/digi00x/../amdtp-stream.h", i32 348, i32 7}
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
!19 = !{!"branch_weights", i32 1, i32 2000}
