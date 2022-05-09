; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-stream.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ff = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, ptr, [2 x ptr], %struct.fw_address_handler, [2 x ptr], [2 x i8], [2 x [9 x i32]], [2 x %struct.work_struct], [2 x %struct.fw_transaction], [2 x i64], [2 x i8], [2 x i32], i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, i8, %struct.wait_queue_head, %struct.amdtp_domain }
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
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_ff_spec = type { [3 x i32], [3 x i32], i32, i32, ptr, i64, i8, [2 x i64] }
%struct.snd_ff_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@snd_ff_stream_get_multiplier_mode.modes = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2], [36 x i8] zeroinitializer }, align 32
@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/firewire/fireface/ff-stream.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sound/firewire/fireface/../amdtp-stream.h\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 15, i32 39 }
@___asan_gen_.6 = private constant [39 x i8] c"../sound/firewire/fireface/ff-stream.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 279, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [45 x i8] c"../sound/firewire/fireface/../amdtp-stream.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 348, i32 7 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @snd_ff_stream_get_multiplier_mode.modes, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_stream_get_multiplier_mode.modes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_ff_stream_get_multiplier_mode(i32 noundef %sfc, ptr nocapture noundef writeonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sfc)
  %cmp = icmp ugt i32 %sfc, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [7 x i32], ptr @snd_ff_stream_get_multiplier_mode.modes, i32 0, i32 %sfc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mode, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_stream_init_duplex(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %rx_resources.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  %unit.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @fw_iso_resources_init(ptr noundef %rx_resources.i, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end3.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call5.i = tail call i32 @amdtp_ff_init(ptr noundef %rx_stream, ptr noundef %3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end3.i.cleanup.sink.split_crit_edge, label %if.end

if.end3.i.cleanup.sink.split_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end3.i
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  %tx_resources.i28 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %call.i31 = tail call i32 @fw_iso_resources_init(ptr noundef %tx_resources.i28, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp1.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp1.i32, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end3.i35

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end3.i35:                                      ; preds = %if.end
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call5.i33 = tail call i32 @amdtp_ff_init(ptr noundef %tx_stream, ptr noundef %7, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i33)
  %cmp6.i34 = icmp slt i32 %call5.i33, 0
  br i1 %cmp6.i34, label %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge, label %if.end5

if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end3.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.sink.split

if.end5:                                          ; preds = %if.end3.i35
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then8, %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge
  %tx_resources.i28.sink = phi ptr [ %rx_resources.i, %if.then8 ], [ %tx_resources.i28, %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %rx_stream.sink.ph = phi ptr [ %tx_stream, %if.then8 ], [ %rx_stream, %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %rx_resources.i.sink.ph.ph = phi ptr [ %tx_resources.i28, %if.then8 ], [ %rx_resources.i, %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %call6, %if.then8 ], [ %call5.i33, %if.end3.i35.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i28.sink) #4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %rx_stream.sink = phi ptr [ %rx_stream, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %rx_stream.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %rx_resources.i.sink.ph = phi ptr [ %rx_resources.i, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %rx_resources.i.sink.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i31, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream.sink) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end3.i.cleanup.sink.split_crit_edge
  %rx_resources.i.sink = phi ptr [ %rx_resources.i, %if.end3.i.cleanup.sink.split_crit_edge ], [ %rx_resources.i.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call5.i, %if.end3.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_stream_destroy_duplex(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #4
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  %rx_resources.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #4
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #4
  %tx_resources.i7 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_stream_reserve_duplex(ptr noundef %ff, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #1 align 64 {
entry:
  %curr_rate = alloca i32, align 4
  %src = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %0 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_rate, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src) #4
  %1 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %src, align 4, !annotation !15
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 4
  %protocol = getelementptr inbounds %struct.snd_ff_spec, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol, align 8
  %get_clock = getelementptr inbounds %struct.snd_ff_protocol, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %get_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_clock, align 4
  %call = call i32 %7(ptr noundef %ff, ptr noundef nonnull %curr_rate, ptr noundef nonnull %src) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end:                                           ; preds = %entry
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 16
  %8 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate)
  %cmp2.not = icmp eq i32 %11, %rate
  br i1 %cmp2.not, label %lor.lhs.false.cleanup42_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

lor.lhs.false.cleanup42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  call void @amdtp_domain_stop(ptr noundef %domain) #4
  %12 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec, align 4
  %protocol.i = getelementptr inbounds %struct.snd_ff_spec, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %protocol.i, align 8
  %finish_session.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %finish_session.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %finish_session.i, align 4
  call void %17(ptr noundef %ff) #4
  %18 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec, align 4
  %protocol2.i = getelementptr inbounds %struct.snd_ff_spec, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %protocol2.i, align 8
  %switch_fetching_mode.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %switch_fetching_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %switch_fetching_mode.i, align 4
  %call.i = call i32 %23(ptr noundef %ff, i1 noundef zeroext false) #4
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #4
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %24 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %rate)
  %cmp5 = icmp eq i32 %24, %rate
  br i1 %cmp5, label %if.then3.if.end14_crit_edge, label %for.inc

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc:                                          ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %25 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %rate)
  %cmp5.1 = icmp eq i32 %25, %rate
  br i1 %cmp5.1, label %for.inc.if.end14_crit_edge, label %for.inc.1

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %26 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %rate)
  %cmp5.2 = icmp eq i32 %26, %rate
  br i1 %cmp5.2, label %for.inc.1.if.end14_crit_edge, label %for.inc.2

for.inc.1.if.end14_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %27 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %rate)
  %cmp5.3 = icmp eq i32 %27, %rate
  br i1 %cmp5.3, label %for.inc.2.if.end14_crit_edge, label %for.inc.3

for.inc.2.if.end14_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %28 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %rate)
  %cmp5.4 = icmp eq i32 %28, %rate
  br i1 %cmp5.4, label %for.inc.3.if.end14_crit_edge, label %for.inc.4

for.inc.3.if.end14_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %29 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %rate)
  %cmp5.5 = icmp eq i32 %29, %rate
  br i1 %cmp5.5, label %for.inc.4.if.end14_crit_edge, label %for.inc.5

for.inc.4.if.end14_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %30 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %rate)
  %cmp5.6 = icmp eq i32 %30, %rate
  br i1 %cmp5.6, label %for.inc.5.if.end14_crit_edge, label %for.inc.5.cleanup42_crit_edge

for.inc.5.cleanup42_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

for.inc.5.if.end14_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %for.inc.5.if.end14_crit_edge, %for.inc.4.if.end14_crit_edge, %for.inc.3.if.end14_crit_edge, %for.inc.2.if.end14_crit_edge, %for.inc.1.if.end14_crit_edge, %for.inc.if.end14_crit_edge, %if.then3.if.end14_crit_edge
  %i.087.lcssa = phi i32 [ 0, %if.then3.if.end14_crit_edge ], [ 1, %for.inc.if.end14_crit_edge ], [ 2, %for.inc.1.if.end14_crit_edge ], [ 3, %for.inc.2.if.end14_crit_edge ], [ 4, %for.inc.3.if.end14_crit_edge ], [ 5, %for.inc.4.if.end14_crit_edge ], [ 6, %for.inc.5.if.end14_crit_edge ]
  %arrayidx.i = getelementptr [7 x i32], ptr @snd_ff_stream_get_multiplier_mode.modes, i32 0, i32 %i.087.lcssa
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  %33 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spec, align 4
  %arrayidx16 = getelementptr [3 x i32], ptr %34, i32 0, i32 %32
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx16, align 4
  %call17 = call i32 @amdtp_ff_set_parameters(ptr noundef %tx_stream, i32 noundef %rate, i32 noundef %36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.cleanup42_crit_edge, label %if.end20

if.end14.cleanup42_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end20:                                         ; preds = %if.end14
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %37 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spec, align 4
  %arrayidx22 = getelementptr %struct.snd_ff_spec, ptr %38, i32 0, i32 1, i32 %32
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx22, align 4
  %call23 = call i32 @amdtp_ff_set_parameters(ptr noundef %rx_stream, i32 noundef %rate, i32 noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.cleanup42_crit_edge, label %if.end26

if.end20.cleanup42_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end26:                                         ; preds = %if.end20
  %41 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spec, align 4
  %protocol28 = getelementptr inbounds %struct.snd_ff_spec, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %protocol28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %protocol28, align 8
  %allocate_resources = getelementptr inbounds %struct.snd_ff_protocol, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %allocate_resources to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %allocate_resources, align 4
  %call29 = call i32 %46(ptr noundef %ff, i32 noundef %rate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end26.cleanup42_crit_edge, label %cleanup

if.end26.cleanup42_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

cleanup:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %events_per_period1.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24, i32 1
  %47 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24, i32 2
  %48 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup, %if.end26.cleanup42_crit_edge, %if.end20.cleanup42_crit_edge, %if.end14.cleanup42_crit_edge, %for.inc.5.cleanup42_crit_edge, %lor.lhs.false.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup42_crit_edge ], [ 0, %cleanup ], [ 0, %lor.lhs.false.cleanup42_crit_edge ], [ %call29, %if.end26.cleanup42_crit_edge ], [ %call23, %if.end20.cleanup42_crit_edge ], [ %call17, %if.end14.cleanup42_crit_edge ], [ -22, %for.inc.5.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_ff_set_parameters(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_stream_start_duplex(ptr noundef %ff, i32 noundef %rate) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 16
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %if.end

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end:                                           ; preds = %entry
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  %packet_index.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17, i32 7
  %2 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i70 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18, i32 7
  %4 = ptrtoint ptr %packet_index.i70 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i71 = icmp slt i32 %5, 0
  br i1 %cmp.i71, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end3_crit_edge

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %spec.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %6 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec.i, align 4
  %protocol.i = getelementptr inbounds %struct.snd_ff_spec, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %protocol.i, align 8
  %finish_session.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %finish_session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %finish_session.i, align 4
  tail call void %11(ptr noundef %ff) #4
  %12 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.i, align 4
  %protocol2.i = getelementptr inbounds %struct.snd_ff_spec, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %protocol2.i, align 8
  %switch_fetching_mode.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %switch_fetching_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %switch_fetching_mode.i, align 4
  %call.i = tail call i32 %17(ptr noundef %ff, i1 noundef zeroext false) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %rx_stream4 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  %context.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18, i32 4
  %18 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then6, label %if.end3.cleanup42_crit_edge

if.end3.cleanup42_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.then6:                                         ; preds = %if.end3
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %20 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %max_speed = getelementptr i8, ptr %23, i32 -8
  %24 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_speed, align 8
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %26 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec, align 4
  %protocol = getelementptr inbounds %struct.snd_ff_spec, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %protocol, align 8
  %begin_session = getelementptr inbounds %struct.snd_ff_protocol, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %begin_session to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %begin_session, align 4
  %call8 = tail call i32 %31(ptr noundef %ff, i32 noundef %rate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.error_crit_edge, label %if.end11

if.then6.error_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end11:                                         ; preds = %if.then6
  %domain12 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  %channel = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20, i32 3
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 8
  %call14 = tail call i32 @amdtp_domain_add_stream(ptr noundef %domain12, ptr noundef %rx_stream4, i32 noundef %33, i32 noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end11.error_crit_edge, label %if.end17

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end17:                                         ; preds = %if.end11
  %channel20 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19, i32 3
  %34 = ptrtoint ptr %channel20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel20, align 8
  %call21 = tail call i32 @amdtp_domain_add_stream(ptr noundef %domain12, ptr noundef %tx_stream, i32 noundef %35, i32 noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end17.error_crit_edge, label %if.end24

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end24:                                         ; preds = %if.end17
  %call26 = tail call i32 @amdtp_domain_start(ptr noundef %domain12, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.error_crit_edge, label %for.cond.i.preheader

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.i.preheader:                             ; preds = %if.end24
  %36 = ptrtoint ptr %domain12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i87 = load ptr, ptr %domain12, align 4
  %cmp.not.i88 = icmp eq ptr %.pn.i87, %domain12
  br i1 %cmp.not.i88, label %for.cond.i.preheader.if.end33_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.if.end33_crit_edge:          ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i89 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i87, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 348) #4
  %ready_processing.i = getelementptr i8, ptr %.pn.i89, i32 -76
  %37 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ready_processing.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  %39 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #4
  %ready_wait.i = getelementptr i8, ptr %.pn.i89, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #4
  %40 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ready_processing.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool18.not12.not.i = icmp eq i8 %41, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #4
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #4
  %42 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ready_processing.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool18.not.i = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %44 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %44, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 20, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #4
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %45 = ptrtoint ptr %.pn.i89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn.i89, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain12
  br i1 %cmp.not.i, label %for.cond.i.backedge.if.end33_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.backedge.if.end33_crit_edge:           ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.end33:                                         ; preds = %for.cond.i.backedge.if.end33_crit_edge, %for.cond.i.preheader.if.end33_crit_edge
  %46 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spec, align 4
  %protocol35 = getelementptr inbounds %struct.snd_ff_spec, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %protocol35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %protocol35, align 8
  %switch_fetching_mode = getelementptr inbounds %struct.snd_ff_protocol, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %switch_fetching_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %switch_fetching_mode, align 4
  %call36 = call i32 %51(ptr noundef %ff, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end33.error_crit_edge, label %if.end33.cleanup42_crit_edge

if.end33.cleanup42_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end33.error_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

error:                                            ; preds = %if.end33.error_crit_edge, %if.end41.i.error_crit_edge, %if.end24.error_crit_edge, %if.end17.error_crit_edge, %if.end11.error_crit_edge, %if.then6.error_crit_edge
  %err.0.ph = phi i32 [ %call26, %if.end24.error_crit_edge ], [ %call21, %if.end17.error_crit_edge ], [ %call14, %if.end11.error_crit_edge ], [ %call8, %if.then6.error_crit_edge ], [ %call36, %if.end33.error_crit_edge ], [ -110, %if.end41.i.error_crit_edge ]
  %domain41 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  call void @amdtp_domain_stop(ptr noundef %domain41) #4
  %52 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spec, align 4
  %protocol.i73 = getelementptr inbounds %struct.snd_ff_spec, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %protocol.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %protocol.i73, align 8
  %finish_session.i74 = getelementptr inbounds %struct.snd_ff_protocol, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %finish_session.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %finish_session.i74, align 4
  call void %57(ptr noundef %ff) #4
  %58 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spec, align 4
  %protocol2.i75 = getelementptr inbounds %struct.snd_ff_spec, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %protocol2.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %protocol2.i75, align 8
  %switch_fetching_mode.i76 = getelementptr inbounds %struct.snd_ff_protocol, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %switch_fetching_mode.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %switch_fetching_mode.i76, align 4
  %call.i77 = call i32 %63(ptr noundef %ff, i1 noundef zeroext false) #4
  br label %cleanup42

cleanup42:                                        ; preds = %error, %if.end33.cleanup42_crit_edge, %if.end3.cleanup42_crit_edge, %entry.cleanup42_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %error ], [ 0, %entry.cleanup42_crit_edge ], [ 0, %if.end3.cleanup42_crit_edge ], [ 0, %if.end33.cleanup42_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_stream_stop_duplex(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 16
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %spec.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %2 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec.i, align 4
  %protocol.i = getelementptr inbounds %struct.snd_ff_spec, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol.i, align 8
  %finish_session.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %finish_session.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %finish_session.i, align 4
  tail call void %7(ptr noundef %ff) #4
  %8 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.i, align 4
  %protocol2.i = getelementptr inbounds %struct.snd_ff_spec, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %protocol2.i, align 8
  %switch_fetching_mode.i = getelementptr inbounds %struct.snd_ff_protocol, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %switch_fetching_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %switch_fetching_mode.i, align 4
  %call.i = tail call i32 %13(ptr noundef %ff, i1 noundef zeroext false) #4
  %tx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 19
  tail call void @fw_iso_resources_free(ptr noundef %tx_resources) #4
  %rx_resources = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 20
  tail call void @fw_iso_resources_free(ptr noundef %rx_resources) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_stream_update_duplex(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 24
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %tx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 17
  tail call void @amdtp_stream_pcm_abort(ptr noundef %tx_stream) #4
  %rx_stream = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 18
  tail call void @amdtp_stream_pcm_abort(ptr noundef %rx_stream) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_stream_lock_changed(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 22
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 4
  %hwdep_wait = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_stream_lock_try(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %dev_lock_count = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 21
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 22
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_stream_lock_release(ptr noundef %ff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %dev_lock_count = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 21
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #4
  br label %end

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.end_crit_edge

if.end21.critedge.end_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 22
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 4
  %hwdep_wait.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_ff_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #3

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
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @snd_ff_stream_get_multiplier_mode.modes, !1, !"modes", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-stream.c", i32 15, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireface/ff-stream.c", i32 279, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/fireface/../amdtp-stream.h", i32 348, i32 7}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 1, i32 2000}
