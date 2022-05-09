; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_subr.c_pt.bc'
source_filename = "../net/ax25/ax25_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.hlist_node = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_clear_queues(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %write_queue) #7
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  tail call void @skb_queue_purge(ptr noundef %ack_queue) #7
  %reseq_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %reseq_queue) #7
  %frag_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 31
  tail call void @skb_queue_purge(ptr noundef %frag_queue) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp.not = icmp eq i16 %1, %nr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  %2 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ack_queue, align 4
  %cmp.i25 = icmp eq ptr %3, %ack_queue
  %cmp3.not2426 = icmp eq ptr %3, null
  %cmp3.not27 = or i1 %cmp.i25, %cmp3.not2426
  br i1 %cmp3.not27, label %while.cond.preheader.if.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nr)
  %cmp8.not = icmp eq i16 %5, %nr
  br i1 %cmp8.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %call11 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #7
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #7
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %va, align 4
  %conv13 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv13, 1
  %8 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %modulus, align 2
  %conv14 = zext i8 %9 to i32
  %rem = urem i32 %add, %conv14
  %conv15 = trunc i32 %rem to i16
  store i16 %conv15, ptr %va, align 4
  %10 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %11, %ack_queue
  %cmp3.not24 = icmp eq ptr %11, null
  %cmp3.not = or i1 %cmp.i, %cmp3.not24
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_requeue_frames(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  %call2 = tail call ptr @skb_dequeue_tail(ptr noundef %ack_queue) #7
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %write_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call4 = phi ptr [ %call2, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  tail call void @skb_queue_head(ptr noundef %write_queue, ptr noundef nonnull %call4) #7
  %call = tail call ptr @skb_dequeue_tail(ptr noundef %ack_queue) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_validate_nr(ptr nocapture noundef readonly %ax25, i16 noundef zeroext %nr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 4
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not25 = icmp eq i16 %1, %3
  br i1 %cmp.not25, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %vc.026 = phi i16 [ %1, %while.body.lr.ph ], [ %conv9, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.026, i16 %nr)
  %cmp5 = icmp eq i16 %vc.026, %nr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %conv27 = zext i16 %vc.026 to i32
  %add = add nuw nsw i32 %conv27, 1
  %4 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %modulus, align 2
  %conv8 = zext i8 %5 to i32
  %rem = urem i32 %add, %conv8
  %conv9 = trunc i32 %rem to i16
  %cmp.not = icmp eq i16 %3, %conv9
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp13 = icmp eq i16 %3, %nr
  %. = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %while.end ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_decode(ptr nocapture noundef readonly %ax25, ptr noundef %skb, ptr nocapture noundef writeonly %ns, ptr nocapture noundef writeonly %nr, ptr nocapture noundef writeonly %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pf, align 4
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nr, align 4
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ns, align 4
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %5 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp = icmp eq i8 %6, 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv2 = zext i8 %8 to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else47

if.then:                                          ; preds = %entry
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = lshr i32 %conv2, 1
  %and8 = and i32 %9, 7
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and8, ptr %ns, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %13 = lshr i8 %12, 5
  %14 = zext i8 %13 to i32
  %15 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nr, align 4
  %16 = load i8, ptr %1, align 1
  %17 = and i8 %16, 16
  %and15 = zext i8 %17 to i32
  br label %if.end101.sink.split.sink.split

if.else:                                          ; preds = %if.then
  %and18 = and i32 %conv2, 3
  %18 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and18, label %if.else.if.end101.sink.split_crit_edge [
    i32 1, label %if.then21
    i32 3, label %if.then38
  ]

if.else.if.end101.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.sink.split

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and24 = and i32 %conv2, 15
  %19 = lshr i32 %conv2, 5
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nr, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %23 = and i8 %22, 16
  %and31 = zext i8 %23 to i32
  br label %if.end101.sink.split.sink.split

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and41 = and i32 %conv2, 239
  %and44 = and i32 %conv2, 16
  br label %if.end101.sink.split.sink.split

if.else47:                                        ; preds = %entry
  br i1 %cmp3, label %if.then53, label %if.else66

if.then53:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  %24 = lshr i32 %conv2, 1
  %25 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ns, align 4
  %arrayidx58 = getelementptr i8, ptr %1, i32 1
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx58, align 1
  %28 = lshr i8 %27, 1
  %29 = zext i8 %28 to i32
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nr, align 4
  %31 = load i8, ptr %arrayidx58, align 1
  %32 = and i8 %31, 1
  %and64 = zext i8 %32 to i32
  br label %if.end101.sink.split.sink.split

if.else66:                                        ; preds = %if.else47
  %and69 = and i32 %conv2, 3
  %33 = zext i32 %and69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and69, label %if.else66.if.end101_crit_edge [
    i32 1, label %if.then72
    i32 3, label %if.then90
  ]

if.else66.if.end101_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then72:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %and75 = and i32 %conv2, 15
  %arrayidx76 = getelementptr i8, ptr %1, i32 1
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx76, align 1
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i32
  %38 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %nr, align 4
  %39 = load i8, ptr %arrayidx76, align 1
  %40 = and i8 %39, 1
  %and82 = zext i8 %40 to i32
  br label %if.end101.sink.split.sink.split

if.then90:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %and93 = and i32 %conv2, 239
  %and96 = and i32 %conv2, 16
  br label %if.end101.sink.split.sink.split

if.end101.sink.split.sink.split:                  ; preds = %if.then90, %if.then72, %if.then53, %if.then38, %if.then21, %if.then5
  %and31.sink.sink = phi i32 [ %and82, %if.then72 ], [ %and96, %if.then90 ], [ %and64, %if.then53 ], [ %and31, %if.then21 ], [ %and44, %if.then38 ], [ %and15, %if.then5 ]
  %.sink.ph = phi i32 [ 2, %if.then72 ], [ 1, %if.then90 ], [ 2, %if.then53 ], [ 1, %if.then21 ], [ 1, %if.then38 ], [ 1, %if.then5 ]
  %frametype.1.ph.ph = phi i32 [ %and75, %if.then72 ], [ %and93, %if.then90 ], [ 0, %if.then53 ], [ %and24, %if.then21 ], [ %and41, %if.then38 ], [ 0, %if.then5 ]
  %41 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and31.sink.sink, ptr %pf, align 4
  br label %if.end101.sink.split

if.end101.sink.split:                             ; preds = %if.end101.sink.split.sink.split, %if.else.if.end101.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.else.if.end101.sink.split_crit_edge ], [ %.sink.ph, %if.end101.sink.split.sink.split ]
  %frametype.1.ph = phi i32 [ 256, %if.else.if.end101.sink.split_crit_edge ], [ %frametype.1.ph.ph, %if.end101.sink.split.sink.split ]
  %call65 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %.sink) #7
  br label %if.end101

if.end101:                                        ; preds = %if.end101.sink.split, %if.else66.if.end101_crit_edge
  %frametype.1 = phi i32 [ 256, %if.else66.if.end101_crit_edge ], [ %frametype.1.ph, %if.end101.sink.split ]
  ret i32 %frametype.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_send_control(ptr noundef %ax25, i32 noundef %frametype, i32 noundef %poll_bit, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 2
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ax25_dev, align 4
  %dev3 = getelementptr inbounds %struct.ax25_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %hard_header_len4 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len4, align 2
  %conv5 = zext i16 %11 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 %conv5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %network_header.i, align 4
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %19 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp7 = icmp eq i8 %20, 8
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %call10 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool.not = icmp eq i32 %poll_bit, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %or = or i32 %cond, %frametype
  %conv13 = trunc i32 %or to i8
  %21 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13, ptr %call10, align 1
  %and = and i32 %frametype, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp14 = icmp eq i32 %and, 1
  br i1 %cmp14, label %if.then16, label %if.then9.if.end48_crit_edge

if.then9.if.end48_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %vr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %22 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vr, align 2
  %conv17 = zext i16 %23 to i32
  %shl = shl nuw nsw i32 %conv17, 5
  %or19 = or i32 %shl, %or
  %conv20 = trunc i32 %or19 to i8
  %24 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv20, ptr %call10, align 1
  br label %if.end48

if.else:                                          ; preds = %if.end
  %and22 = and i32 %frametype, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 3
  br i1 %cmp23, label %if.then25, label %if.else33

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool28.not = icmp eq i32 %poll_bit, 0
  %cond29 = select i1 %tobool28.not, i32 0, i32 16
  %or31 = or i32 %cond29, %frametype
  %conv32 = trunc i32 %or31 to i8
  %25 = ptrtoint ptr %call26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv32, ptr %call26, align 1
  br label %if.end48

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %conv35 = trunc i32 %frametype to i8
  %26 = ptrtoint ptr %call34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %call34, align 1
  %vr36 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %27 = ptrtoint ptr %vr36 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vr36, align 2
  %conv37 = trunc i16 %28 to i8
  %shl38 = shl i8 %conv37, 1
  %arrayidx40 = getelementptr i8, ptr %call34, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool41.not = icmp ne i32 %poll_bit, 0
  %cond42 = zext i1 %tobool41.not to i8
  %or45 = or i8 %shl38, %cond42
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or45, ptr %arrayidx40, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.else33, %if.then25, %if.then16, %if.then9.if.end48_crit_edge
  tail call void @ax25_transmit_buffer(ptr noundef %ax25, ptr noundef nonnull %call.i, i32 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_transmit_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_return_dm(ptr noundef %dev, ptr noundef %src, ptr noundef %dest, ptr noundef %digi) local_unnamed_addr #0 align 64 {
entry:
  %retdigi = alloca %struct.ax25_digi, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %retdigi) #7
  %0 = call ptr @memset(ptr %retdigi, i32 255, i32 66)
  %cmp = icmp eq ptr %dev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %2 to i32
  %add = add nuw nsw i32 %conv, 1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %cmp1 = icmp eq ptr %call.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %conv6 = zext i16 %4 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv6
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 %conv6
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %network_header.i, align 4
  call void @ax25_digi_invert(ptr noundef %digi, ptr noundef nonnull %retdigi) #7
  %call7 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 31, ptr %call7, align 1
  %call8 = call i32 @ax25_addr_size(ptr noundef %digi) #7
  %call9 = call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef %call8) #7
  %call10 = call i32 @ax25_addr_build(ptr noundef %call9, ptr noundef %dest, ptr noundef %src, ptr noundef nonnull %retdigi, i32 noundef 2, i32 noundef 8) #7
  call void @ax25_queue_xmit(ptr noundef nonnull %call.i, ptr noundef nonnull %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %retdigi) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_digi_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_calculate_t1(ptr nocapture noundef %ax25) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 13
  %0 = ptrtoint ptr %backoff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %backoff, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %for.cond.preheader
    i8 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %n2count3 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %3 = ptrtoint ptr %n2count3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %n2count3, align 1
  %conv4 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp18.not = icmp eq i8 %4, 0
  br i1 %cmp18.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %5 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n2count, align 1
  %conv1 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv1, 1
  %add = add nuw nsw i32 %mul, 2
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %t.020 = phi i32 [ %mul6, %for.body.for.body_crit_edge ], [ 2, %for.cond.preheader.for.body_crit_edge ]
  %n.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul6 = shl i32 %t.020, 1
  %inc = add nuw nsw i32 %n.019, 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %t.0.lcssa = phi i32 [ 2, %for.cond.preheader.for.end_crit_edge ], [ %mul6, %for.body.for.end_crit_edge ]
  %7 = tail call i32 @llvm.smin.i32(i32 %t.0.lcssa, i32 8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb, %entry.sw.epilog_crit_edge
  %t.1 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ %add, %sw.bb ], [ %7, %for.end ]
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 24
  %8 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rtt, align 4
  %mul9 = mul i32 %9, %t.1
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 20
  %10 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul9, ptr %t1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_calculate_rtt(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %backoff = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 13
  %0 = ptrtoint ptr %backoff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %backoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end:                                           ; preds = %entry
  %call = tail call i32 @ax25_t1timer_running(ptr noundef %ax25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %2 = ptrtoint ptr %n2count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n2count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp eq i8 %3, 0
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %rtt = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 24
  %4 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtt, align 4
  %mul = mul i32 %5, 9
  %t1 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 20
  %6 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t1, align 4
  %add = add i32 %mul, %7
  %t1timer = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 16
  %call6 = tail call i32 @ax25_display_timer(ptr noundef %t1timer) #7
  %sub = sub i32 %add, %call6
  %div = udiv i32 %sub, 10
  %8 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %rtt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rtt9 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 24
  %9 = ptrtoint ptr %rtt9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtt9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.end8.if.end20.sink.split_crit_edge, label %if.end14

if.end8.if.end20.sink.split_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %10)
  %cmp16 = icmp ugt i32 %10, 3000
  br i1 %cmp16, label %if.end14.if.end20.sink.split_crit_edge, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end14.if.end20.sink.split_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.end14.if.end20.sink.split_crit_edge, %if.end8.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end8.if.end20.sink.split_crit_edge ], [ 3000, %if.end14.if.end20.sink.split_crit_edge ]
  %11 = ptrtoint ptr %rtt9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %rtt9, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end14.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_t1timer_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_display_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_disconnect(ptr noundef %ax25, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write_queue.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %write_queue.i) #7
  %ack_queue.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  tail call void @skb_queue_purge(ptr noundef %ack_queue.i) #7
  %reseq_queue.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %reseq_queue.i) #7
  %frag_queue.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 31
  tail call void @skb_queue_purge(ptr noundef %frag_queue.i) #7
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ax25_stop_heartbeat(ptr noundef %ax25) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @ax25_stop_t1timer(ptr noundef %ax25) #7
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #7
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #7
  tail call void @ax25_stop_idletimer(ptr noundef %ax25) #7
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %state, align 1
  tail call void @ax25_link_failed(ptr noundef %ax25, i32 noundef %reason) #7
  %7 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %if.then3

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then3:                                         ; preds = %if.end
  tail call fastcc void @local_bh_disable()
  %9 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #7
  %11 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 7, ptr %skc_state, align 2
  %14 = load ptr, ptr %sk, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %reason, ptr %sk_err, align 4
  %16 = load ptr, ptr %sk, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 66
  %17 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sk_shutdown, align 2
  %19 = or i8 %18, 2
  store i8 %19, ptr %sk_shutdown, align 2
  %20 = load ptr, ptr %sk, align 4
  %21 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i40.not = icmp eq i32 %24, 0
  br i1 %tobool.i40.not, label %if.then11, label %if.then3.if.end15_crit_edge

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 76
  %25 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk_state_change, align 4
  tail call void %26(ptr noundef %20) #7
  %27 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk, align 4
  %29 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or.i.i = or i32 %31, 1
  store i32 %or.i.i, ptr %29, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then3.if.end15_crit_edge
  %32 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk, align 4
  %sk_lock17 = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock17) #7
  tail call fastcc void @local_bh_enable()
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_heartbeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_link_failed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
