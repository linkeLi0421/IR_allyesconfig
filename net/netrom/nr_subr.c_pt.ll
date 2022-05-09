; ModuleID = '/llk/IR_all_yes/net/netrom/nr_subr.c_pt.bc'
source_filename = "../net/netrom/nr_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.nr_sock = type { %struct.sock, %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@nr_write_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013NET/ROM: nr_write_internal - invalid frame type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_write_internal\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/netrom/nr_subr.c\00", [43 x i8] zeroinitializer }, align 32
@nr_write_internal._entry_ptr = internal global ptr @nr_write_internal._entry, section ".printk_index", align 4
@sysctl_netrom_network_ttl_initialiser = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [24 x i8] c"../net/netrom/nr_subr.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 140, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nr_write_internal._entry, ptr @nr_write_internal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_write_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_clear_queues(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #4
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %ack_queue) #4
  %reseq_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %reseq_queue) #4
  %frag_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 30
  tail call void @skb_queue_purge(ptr noundef %frag_queue) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 15
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp.not = icmp eq i16 %1, %nr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  %2 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ack_queue, align 4
  %cmp.i23 = icmp eq ptr %3, %ack_queue
  %cmp3.not2224 = icmp eq ptr %3, null
  %cmp3.not25 = or i1 %cmp.i23, %cmp3.not2224
  br i1 %cmp3.not25, label %while.cond.preheader.if.end_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %va, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nr)
  %cmp8.not = icmp eq i16 %5, %nr
  br i1 %cmp8.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %call11 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #4
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #4
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %va, align 8
  %8 = add i16 %7, 1
  %9 = and i16 %8, 255
  store i16 %9, ptr %va, align 8
  %10 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %11, %ack_queue
  %cmp3.not22 = icmp eq ptr %11, null
  %cmp3.not = or i1 %cmp.i, %cmp3.not22
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_requeue_frames(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  %call8 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #4
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sk_write_queue2 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call11 = phi ptr [ %call8, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %skb_prev.010 = phi ptr [ null, %while.body.lr.ph ], [ %call11, %if.end.while.body_crit_edge ]
  %cmp1 = icmp eq ptr %skb_prev.010, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @skb_queue_head(ptr noundef %sk_write_queue2, ptr noundef nonnull %call11) #4
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @skb_append(ptr noundef nonnull %skb_prev.010, ptr noundef nonnull %call11, ptr noundef %sk_write_queue2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #4
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_validate_nr(ptr nocapture noundef readonly %sk, i16 noundef zeroext %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 15
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 8
  %vs = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 13
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not21 = icmp eq i16 %1, %3
  br i1 %cmp.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %vc.022 = phi i16 [ %5, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.022, i16 %nr)
  %cmp5 = icmp eq i16 %vc.022, %nr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = add i16 %vc.022, 1
  %5 = and i16 %4, 255
  %cmp.not = icmp eq i16 %5, %3
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp12 = icmp eq i16 %3, %nr
  %conv13 = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv13, %while.end ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_in_rx_window(ptr nocapture noundef readonly %sk, i16 noundef zeroext %ns) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %0 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vr, align 2
  %vl = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 16
  %2 = ptrtoint ptr %vl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vl, align 2
  %window = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %4 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %window, align 1
  %conv1 = zext i8 %5 to i16
  %add = add i16 %3, %conv1
  %rem = and i16 %add, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %rem)
  %cmp.not20 = icmp eq i16 %1, %rem
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %vc.021 = phi i16 [ %7, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.021, i16 %ns)
  %cmp8 = icmp eq i16 %vc.021, %ns
  br i1 %cmp8, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %6 = add i16 %vc.021, 1
  %7 = and i16 %6, 255
  %cmp.not = icmp eq i16 %7, %rem
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_write_internal(ptr noundef %sk, i32 noundef %frametype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %frametype, 15
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge150
    i32 6, label %entry.sw.epilog_crit_edge151
  ]

entry.sw.epilog_crit_edge151:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge150:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bpqext = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 11
  %1 = ptrtoint ptr %bpqext to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bpqext, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %add2 = select i1 %tobool.not, i32 21, i32 22
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %frametype) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge150, %entry.sw.epilog_crit_edge151
  %len.0 = phi i32 [ 20, %entry.sw.epilog_crit_edge ], [ 20, %entry.sw.epilog_crit_edge150 ], [ 20, %entry.sw.epilog_crit_edge151 ], [ %add2, %sw.bb1 ], [ 37, %sw.bb ]
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len.0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 15
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %6, i32 15
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %cond.i) #4
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %skb_tailroom.exit.sw.epilog80_crit_edge [
    i32 1, label %sw.bb9
    i32 2, label %sw.bb44
    i32 3, label %skb_tailroom.exit.sw.bb61_crit_edge
    i32 4, label %skb_tailroom.exit.sw.bb61_crit_edge152
    i32 6, label %sw.bb70
  ]

skb_tailroom.exit.sw.bb61_crit_edge152:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

skb_tailroom.exit.sw.bb61_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb61

skb_tailroom.exit.sw.epilog80_crit_edge:          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog80

sw.bb9:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #6
  %t1 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 19
  %12 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t1, align 8
  %div = udiv i32 %13, 100
  %my_index = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 5
  %14 = ptrtoint ptr %my_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %my_index, align 4
  %incdec.ptr = getelementptr i8, ptr %call7, i32 1
  %16 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %call7, align 1
  %my_id = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 6
  %17 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %my_id, align 1
  %incdec.ptr10 = getelementptr i8, ptr %call7, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %incdec.ptr, align 1
  %incdec.ptr11 = getelementptr i8, ptr %call7, i32 3
  %20 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %incdec.ptr10, align 1
  %incdec.ptr12 = getelementptr i8, ptr %call7, i32 4
  %21 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %incdec.ptr11, align 1
  %conv13 = trunc i32 %frametype to i8
  %incdec.ptr14 = getelementptr i8, ptr %call7, i32 5
  %22 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13, ptr %incdec.ptr12, align 1
  %window = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %23 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %window, align 1
  %incdec.ptr15 = getelementptr i8, ptr %call7, i32 6
  %25 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %incdec.ptr14, align 1
  %user_addr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %incdec.ptr15, ptr %user_addr, i32 7)
  %arrayidx = getelementptr i8, ptr %call7, i32 12
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %29 = and i8 %28, 30
  %30 = or i8 %29, 96
  store i8 %30, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %call7, i32 13
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %source_addr, i32 7)
  %arrayidx26 = getelementptr i8, ptr %call7, i32 19
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx26, align 1
  %34 = and i8 %33, 30
  %35 = or i8 %34, 96
  store i8 %35, ptr %arrayidx26, align 1
  %add.ptr38 = getelementptr i8, ptr %call7, i32 20
  %conv39 = trunc i32 %div to i8
  %incdec.ptr40 = getelementptr i8, ptr %call7, i32 21
  %36 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv39, ptr %add.ptr38, align 1
  %div41 = udiv i32 %13, 25600
  br label %sw.epilog80.sink.split

sw.bb44:                                          ; preds = %skb_tailroom.exit
  %your_index = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 7
  %37 = ptrtoint ptr %your_index to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %your_index, align 2
  %incdec.ptr45 = getelementptr i8, ptr %call7, i32 1
  %39 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %call7, align 1
  %your_id = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 8
  %40 = ptrtoint ptr %your_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %your_id, align 1
  %incdec.ptr46 = getelementptr i8, ptr %call7, i32 2
  %42 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %incdec.ptr45, align 1
  %my_index47 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 5
  %43 = ptrtoint ptr %my_index47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %my_index47, align 4
  %incdec.ptr48 = getelementptr i8, ptr %call7, i32 3
  %45 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %incdec.ptr46, align 1
  %my_id49 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 6
  %46 = ptrtoint ptr %my_id49 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %my_id49, align 1
  %incdec.ptr50 = getelementptr i8, ptr %call7, i32 4
  %48 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %incdec.ptr48, align 1
  %conv51 = trunc i32 %frametype to i8
  %incdec.ptr52 = getelementptr i8, ptr %call7, i32 5
  %49 = ptrtoint ptr %incdec.ptr50 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv51, ptr %incdec.ptr50, align 1
  %window53 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %50 = ptrtoint ptr %window53 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %window53, align 1
  %52 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %incdec.ptr52, align 1
  %bpqext55 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 11
  %53 = ptrtoint ptr %bpqext55 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bpqext55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool56.not = icmp eq i8 %54, 0
  br i1 %tobool56.not, label %sw.bb44.sw.epilog80_crit_edge, label %if.then57

sw.bb44.sw.epilog80_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog80

if.then57:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr54 = getelementptr i8, ptr %call7, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32))
  %55 = load i32, ptr @sysctl_netrom_network_ttl_initialiser, align 4
  br label %sw.epilog80.sink.split

sw.bb61:                                          ; preds = %skb_tailroom.exit.sw.bb61_crit_edge, %skb_tailroom.exit.sw.bb61_crit_edge152
  %your_index62 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 7
  %56 = ptrtoint ptr %your_index62 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %your_index62, align 2
  %incdec.ptr63 = getelementptr i8, ptr %call7, i32 1
  %58 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %call7, align 1
  %your_id64 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 8
  %59 = ptrtoint ptr %your_id64 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %your_id64, align 1
  %incdec.ptr65 = getelementptr i8, ptr %call7, i32 2
  %61 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %incdec.ptr63, align 1
  %incdec.ptr66 = getelementptr i8, ptr %call7, i32 3
  %62 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %incdec.ptr65, align 1
  %incdec.ptr67 = getelementptr i8, ptr %call7, i32 4
  %63 = ptrtoint ptr %incdec.ptr66 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %incdec.ptr66, align 1
  br label %sw.epilog80.sink.split

sw.bb70:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #6
  %your_index71 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 7
  %64 = ptrtoint ptr %your_index71 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %your_index71, align 2
  %incdec.ptr72 = getelementptr i8, ptr %call7, i32 1
  %66 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %call7, align 1
  %your_id73 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 8
  %67 = ptrtoint ptr %your_id73 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %your_id73, align 1
  %incdec.ptr74 = getelementptr i8, ptr %call7, i32 2
  %69 = ptrtoint ptr %incdec.ptr72 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %incdec.ptr72, align 1
  %incdec.ptr75 = getelementptr i8, ptr %call7, i32 3
  %70 = ptrtoint ptr %incdec.ptr74 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %incdec.ptr74, align 1
  %vr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %71 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vr, align 2
  %conv76 = trunc i16 %72 to i8
  %incdec.ptr77 = getelementptr i8, ptr %call7, i32 4
  %73 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv76, ptr %incdec.ptr75, align 1
  br label %sw.epilog80.sink.split

sw.epilog80.sink.split:                           ; preds = %sw.bb70, %sw.bb61, %if.then57, %sw.bb9
  %.sink = phi i32 [ %55, %if.then57 ], [ %frametype, %sw.bb70 ], [ %frametype, %sw.bb61 ], [ %div41, %sw.bb9 ]
  %incdec.ptr54.sink = phi ptr [ %incdec.ptr54, %if.then57 ], [ %incdec.ptr77, %sw.bb70 ], [ %incdec.ptr67, %sw.bb61 ], [ %incdec.ptr40, %sw.bb9 ]
  %conv58 = trunc i32 %.sink to i8
  %74 = ptrtoint ptr %incdec.ptr54.sink to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv58, ptr %incdec.ptr54.sink, align 1
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %sw.epilog80.sink.split, %sw.bb44.sw.epilog80_crit_edge, %skb_tailroom.exit.sw.epilog80_crit_edge
  tail call void @nr_transmit_buffer(ptr noundef %sk, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog80, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_transmit_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__nr_transmit_reply(ptr nocapture noundef readonly %skb, i32 noundef %mine, i8 noundef zeroext %cmdflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 21, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #4
  %data.i77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i77 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i77, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 7
  %2 = call ptr @memcpy(ptr %call1, ptr %add.ptr.i, i32 7)
  %arrayidx = getelementptr i8, ptr %call1, i32 6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 30
  %6 = or i8 %5, 96
  store i8 %6, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %call1, i32 7
  %7 = load ptr, ptr %data.i77, align 4
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %7, i32 7)
  %arrayidx10 = getelementptr i8, ptr %call1, i32 13
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %11 = and i8 %10, 30
  %12 = or i8 %11, 97
  store i8 %12, ptr %arrayidx10, align 1
  %add.ptr22 = getelementptr i8, ptr %call1, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32))
  %13 = load i32, ptr @sysctl_netrom_network_ttl_initialiser, align 4
  %conv23 = trunc i32 %13 to i8
  %incdec.ptr = getelementptr i8, ptr %call1, i32 15
  %14 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23, ptr %add.ptr22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mine)
  %tobool.not = icmp eq i32 %mine, 0
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr25 = getelementptr i8, ptr %call1, i32 16
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %incdec.ptr, align 1
  %incdec.ptr26 = getelementptr i8, ptr %call1, i32 17
  %16 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %incdec.ptr25, align 1
  %17 = ptrtoint ptr %data.i77 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i77, align 4
  %arrayidx27 = getelementptr i8, ptr %18, i32 15
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27, align 1
  %21 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %incdec.ptr26, align 1
  %22 = load ptr, ptr %data.i77, align 4
  %arrayidx30 = getelementptr i8, ptr %22, i32 16
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx30, align 1
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %data.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i77, align 4
  %arrayidx33 = getelementptr i8, ptr %26, i32 15
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx33, align 1
  %incdec.ptr34 = getelementptr i8, ptr %call1, i32 16
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %incdec.ptr, align 1
  %30 = load ptr, ptr %data.i77, align 4
  %arrayidx36 = getelementptr i8, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx36, align 1
  %incdec.ptr37 = getelementptr i8, ptr %call1, i32 17
  %33 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %incdec.ptr34, align 1
  %34 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %incdec.ptr37, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then24
  %.sink = phi i8 [ 0, %if.else ], [ %24, %if.then24 ]
  %35 = getelementptr i8, ptr %call1, i32 18
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %35, align 1
  %dptr.0 = getelementptr i8, ptr %call1, i32 19
  %incdec.ptr41 = getelementptr i8, ptr %call1, i32 20
  %37 = ptrtoint ptr %dptr.0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cmdflags, ptr %dptr.0, align 1
  %38 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %incdec.ptr41, align 1
  %call43 = tail call i32 @nr_route_frame(ptr noundef nonnull %call.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_route_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_disconnect(ptr noundef %sk, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nr_stop_t1timer(ptr noundef %sk) #4
  tail call void @nr_stop_t2timer(ptr noundef %sk) #4
  tail call void @nr_stop_t4timer(ptr noundef %sk) #4
  tail call void @nr_stop_idletimer(ptr noundef %sk) #4
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue.i) #4
  %ack_queue.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %ack_queue.i) #4
  %reseq_queue.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 29
  tail call void @skb_queue_purge(ptr noundef %reseq_queue.i) #4
  %frag_queue.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 30
  tail call void @skb_queue_purge(ptr noundef %frag_queue.i) #4
  %state = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %state, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reason, ptr %sk_err, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %3 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sk_shutdown, align 2
  %5 = or i8 %4, 2
  store i8 %5, ptr %sk_shutdown, align 2
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %9 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_state_change, align 4
  tail call void %10(ptr noundef %sk) #4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %or.i.i = or i32 %12, 1
  store i32 %or.i.i, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t4timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netrom/nr_subr.c", i32 140, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nr_write_internal._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nr_write_internal._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
