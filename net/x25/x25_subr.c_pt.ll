; ModuleID = '/llk/IR_all_yes/net/x25/x25_subr.c_pt.bc'
source_filename = "../net/x25/x25_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.x25_sock = type { %struct.sock, %struct.x25_address, %struct.x25_address, ptr, i32, i32, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i16, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.x25_causediag, %struct.x25_facilities, %struct.x25_dte_facilities, %struct.x25_calluserdata, i32 }
%struct.x25_address = type { [16 x i8] }
%struct.x25_causediag = type { i8, i8 }
%struct.x25_facilities = type { i32, i32, i32, i32, i32, i32 }
%struct.x25_dte_facilities = type { i16, i16, i16, i8, i8, i8, i8, [20 x i8], [20 x i8] }
%struct.x25_calluserdata = type { i32, [128 x i8] }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
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

@x25_write_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013X25: invalid frame type %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x25_write_internal\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/x25/x25_subr.c\00", [45 x i8] zeroinitializer }, align 32
@x25_write_internal._entry_ptr = internal global ptr @x25_write_internal._entry, section ".printk_index", align 4
@x25_decode.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x25\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"x25_decode\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid PLP frame %3ph\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"X25: invalid PLP frame %3ph\0A\00", [35 x i8] zeroinitializer }, align 32
@x25_list_lock = external dso_local global %struct.rwlock_t, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 4, i64 5, i64 7, i64 9, i64 11, i64 13, i64 15, i64 19]
@__sancov_gen_cov_switch_values.7 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 4, i64 5, i64 7, i64 9, i64 11, i64 13, i64 15, i64 19]
@__sancov_gen_cov_switch_values.8 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 3, i64 5, i64 7, i64 13, i64 15, i64 17, i64 19, i64 21, i64 23, i64 25, i64 27]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 5, i64 9]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 5, i64 1, i64 5, i64 9]
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 148, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [22 x i8] c"../net/x25/x25_subr.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 333, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @x25_write_internal._entry, ptr @x25_write_internal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_write_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_clear_queues(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #8
  %ack_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 18
  tail call void @skb_queue_purge(ptr noundef %ack_queue) #8
  %interrupt_in_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %interrupt_in_queue) #8
  %interrupt_out_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %interrupt_out_queue) #8
  %fragment_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %fragment_queue) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_frames_acked(ptr noundef %sk, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %neighbour, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %va = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 10
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nr)
  %cmp.not = icmp eq i16 %5, %nr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %ack_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 18
  %6 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ack_queue, align 4
  %cmp.i24 = icmp eq ptr %7, %ack_queue
  %tobool4.not2325 = icmp eq ptr %7, null
  %tobool4.not26 = or i1 %cmp.i24, %tobool4.not2325
  br i1 %tobool4.not26, label %while.cond.preheader.if.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %8 = select i1 %tobool.not, i16 7, i16 127
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %9 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %nr)
  %cmp8.not = icmp eq i16 %10, %nr
  br i1 %cmp8.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %call11 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #8
  %11 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %va, align 2
  %add = add i16 %12, 1
  %rem = and i16 %add, %8
  store i16 %rem, ptr %va, align 2
  %13 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %14, %ack_queue
  %tobool4.not23 = icmp eq ptr %14, null
  %tobool4.not = or i1 %cmp.i, %tobool4.not23
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_requeue_frames(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 18
  %call18 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  %cmp.not9 = icmp eq ptr %call18, null
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sk_write_queue2 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call111 = phi ptr [ %call18, %while.body.lr.ph ], [ %call1, %if.end.while.body_crit_edge ]
  %skb_prev.010 = phi ptr [ null, %while.body.lr.ph ], [ %call111, %if.end.while.body_crit_edge ]
  %tobool.not = icmp eq ptr %skb_prev.010, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_queue_head(ptr noundef %sk_write_queue2, ptr noundef nonnull %call111) #8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_append(ptr noundef nonnull %skb_prev.010, ptr noundef nonnull %call111, ptr noundef %sk_write_queue2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call1 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_validate_nr(ptr nocapture noundef readonly %sk, i16 noundef zeroext %nr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 2
  %vs = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not24 = icmp eq i16 %1, %3
  br i1 %cmp.not24, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neighbour, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = select i1 %tobool.not, i16 7, i16 127
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %vc.025 = phi i16 [ %1, %while.body.lr.ph ], [ %rem, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.025, i16 %nr)
  %cmp5 = icmp eq i16 %vc.025, %nr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %add = add i16 %vc.025, 1
  %rem = and i16 %add, %8
  %cmp.not = icmp eq i16 %rem, %3
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp12 = icmp eq i16 %3, %nr
  %cond14 = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond14, %while.end ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_write_internal(ptr noundef %sk, i32 noundef %frametype) local_unnamed_addr #0 align 64 {
entry:
  %facilities = alloca [60 x i8], align 1
  %addresses = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %facilities) #8
  %0 = call ptr @memset(ptr %facilities, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %addresses) #8
  %1 = add i32 %frametype, -1
  %2 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 31)
  %3 = call ptr @memset(ptr %addresses, i32 255, i32 17)
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end [
    i32 5, label %sw.bb
    i32 7, label %sw.bb1
    i32 9, label %entry.sw.bb5_crit_edge
    i32 13, label %entry.sw.bb5_crit_edge196
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge197
    i32 4, label %entry.sw.epilog_crit_edge198
    i32 11, label %entry.sw.epilog_crit_edge199
    i32 19, label %entry.sw.epilog_crit_edge200
    i32 15, label %entry.sw.epilog_crit_edge201
  ]

entry.sw.epilog_crit_edge201:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge200:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge199:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge198:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge197:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb5_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reverse = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 5
  %5 = ptrtoint ptr %reverse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reverse, align 4
  %and = and i32 %6, 128
  %7 = or i32 %and, 83
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge196
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %frametype) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge197, %entry.sw.epilog_crit_edge198, %entry.sw.epilog_crit_edge199, %entry.sw.epilog_crit_edge200, %entry.sw.epilog_crit_edge201
  %len.0 = phi i32 [ 22, %entry.sw.epilog_crit_edge ], [ 22, %entry.sw.epilog_crit_edge197 ], [ 22, %entry.sw.epilog_crit_edge198 ], [ 22, %entry.sw.epilog_crit_edge199 ], [ 22, %entry.sw.epilog_crit_edge200 ], [ 22, %entry.sw.epilog_crit_edge201 ], [ 24, %sw.bb5 ], [ 227, %sw.bb ], [ %7, %sw.bb1 ]
  %call.i = tail call ptr @__alloc_skb(i32 noundef %len.0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 18
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 18
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #8
  %lci = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lci, align 4
  %shr = lshr i32 %13, 8
  %14 = trunc i32 %shr to i8
  %conv = and i8 %14, 15
  %conv17 = trunc i32 %13 to i8
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %15 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %neighbour, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  %. = select i1 %tobool18.not, i8 16, i8 32
  %19 = or i8 %conv, %.
  %20 = ptrtoint ptr %call12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %call12, align 1
  %21 = getelementptr i8, ptr %call12, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv17, ptr %21, align 1
  %23 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %2, label %if.end11.sw.epilog111_crit_edge [
    i32 5, label %sw.bb30
    i32 7, label %sw.bb47
    i32 9, label %sw.bb71
    i32 13, label %sw.bb78
    i32 0, label %if.end11.sw.bb84_crit_edge
    i32 2, label %if.end11.sw.bb84_crit_edge202
    i32 4, label %if.end11.sw.bb84_crit_edge203
    i32 11, label %if.end11.sw.bb108_crit_edge
    i32 19, label %if.end11.sw.bb108_crit_edge204
    i32 15, label %if.end11.sw.bb108_crit_edge205
  ]

if.end11.sw.bb108_crit_edge205:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb108

if.end11.sw.bb108_crit_edge204:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb108

if.end11.sw.bb108_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb108

if.end11.sw.bb84_crit_edge203:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb84

if.end11.sw.bb84_crit_edge202:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb84

if.end11.sw.bb84_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb84

if.end11.sw.epilog111_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog111

sw.bb30:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %24 = ptrtoint ptr %call31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %call31, align 1
  %dest_addr = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 2
  %source_addr = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 1
  %call33 = call i32 @x25_addr_aton(ptr noundef nonnull %addresses, ptr noundef %dest_addr, ptr noundef %source_addr) #8
  %call.i191 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call33) #8
  %25 = call ptr @memcpy(ptr %call.i191, ptr %addresses, i32 %call33)
  %facilities37 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24
  %dte_facilities = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 25
  %26 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %neighbour, align 8
  %global_facil_mask = getelementptr inbounds %struct.x25_neigh, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %global_facil_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %global_facil_mask, align 4
  %call39 = call i32 @x25_create_facilities(ptr noundef nonnull %facilities, ptr noundef %facilities37, ptr noundef %dte_facilities, i32 noundef %29) #8
  %call.i192 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call39) #8
  %30 = call ptr @memcpy(ptr %call.i192, ptr %facilities, i32 %call39)
  %calluserdata = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26
  %cuddata = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26, i32 1
  %31 = ptrtoint ptr %calluserdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %calluserdata, align 8
  %call.i193 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %32) #8
  %33 = call ptr @memcpy(ptr %call.i193, ptr %cuddata, i32 %32)
  %34 = ptrtoint ptr %calluserdata to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %calluserdata, align 8
  br label %sw.epilog111

sw.bb47:                                          ; preds = %if.end11
  %call48 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #8
  %incdec.ptr49 = getelementptr i8, ptr %call48, i32 1
  %35 = ptrtoint ptr %call48 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %call48, align 1
  %36 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %incdec.ptr49, align 1
  %facilities52 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24
  %dte_facilities53 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 25
  %vc_facil_mask = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 27
  %37 = ptrtoint ptr %vc_facil_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vc_facil_mask, align 4
  %call54 = call i32 @x25_create_facilities(ptr noundef nonnull %facilities, ptr noundef %facilities52, ptr noundef %dte_facilities53, i32 noundef %38) #8
  %call.i194 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call54) #8
  %39 = call ptr @memcpy(ptr %call.i194, ptr %facilities, i32 %call54)
  %reverse58 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 5
  %40 = ptrtoint ptr %reverse58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reverse58, align 4
  %and59 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %sw.bb47.if.end68_crit_edge, label %if.then61

sw.bb47.if.end68_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then61:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %calluserdata62 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26
  %cuddata63 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26, i32 1
  %42 = ptrtoint ptr %calluserdata62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %calluserdata62, align 8
  %call.i195 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %43) #8
  %44 = call ptr @memcpy(ptr %call.i195, ptr %cuddata63, i32 %43)
  br label %if.end68

if.end68:                                         ; preds = %if.then61, %sw.bb47.if.end68_crit_edge
  %calluserdata69 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26
  %45 = ptrtoint ptr %calluserdata69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %calluserdata69, align 8
  br label %sw.epilog111

sw.bb71:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #8
  %conv73 = trunc i32 %frametype to i8
  %incdec.ptr74 = getelementptr i8, ptr %call72, i32 1
  %46 = ptrtoint ptr %call72 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv73, ptr %call72, align 1
  %causediag = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23
  %47 = ptrtoint ptr %causediag to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %causediag, align 8
  %incdec.ptr75 = getelementptr i8, ptr %call72, i32 2
  %49 = ptrtoint ptr %incdec.ptr74 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %incdec.ptr74, align 1
  %diagnostic = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23, i32 1
  %50 = ptrtoint ptr %diagnostic to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %diagnostic, align 1
  %52 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %incdec.ptr75, align 1
  br label %sw.epilog111

sw.bb78:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #8
  %conv80 = trunc i32 %frametype to i8
  %incdec.ptr81 = getelementptr i8, ptr %call79, i32 1
  %53 = ptrtoint ptr %call79 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv80, ptr %call79, align 1
  %incdec.ptr82 = getelementptr i8, ptr %call79, i32 2
  %54 = ptrtoint ptr %incdec.ptr81 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %incdec.ptr81, align 1
  %55 = ptrtoint ptr %incdec.ptr82 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %incdec.ptr82, align 1
  br label %sw.epilog111

sw.bb84:                                          ; preds = %if.end11.sw.bb84_crit_edge, %if.end11.sw.bb84_crit_edge202, %if.end11.sw.bb84_crit_edge203
  %56 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %neighbour, align 8
  %extended86 = getelementptr inbounds %struct.x25_neigh, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %extended86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %extended86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool87.not = icmp eq i32 %59, 0
  br i1 %tobool87.not, label %if.else96, label %if.then88

if.then88:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #8
  %conv90 = trunc i32 %frametype to i8
  %incdec.ptr91 = getelementptr i8, ptr %call89, i32 1
  %60 = ptrtoint ptr %call89 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv90, ptr %call89, align 1
  %vr = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  %61 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vr, align 8
  %conv92 = trunc i16 %62 to i8
  %shl = shl i8 %conv92, 1
  %63 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %shl, ptr %incdec.ptr91, align 1
  br label %sw.epilog111

if.else96:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %conv98 = trunc i32 %frametype to i8
  %64 = ptrtoint ptr %call97 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv98, ptr %call97, align 1
  %vr99 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  %65 = ptrtoint ptr %vr99 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vr99, align 8
  %conv100 = zext i16 %66 to i32
  %shl101 = shl nuw nsw i32 %conv100, 5
  %or105 = or i32 %shl101, %frametype
  %conv106 = trunc i32 %or105 to i8
  store i8 %conv106, ptr %call97, align 1
  br label %sw.epilog111

sw.bb108:                                         ; preds = %if.end11.sw.bb108_crit_edge, %if.end11.sw.bb108_crit_edge204, %if.end11.sw.bb108_crit_edge205
  %call109 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %conv110 = trunc i32 %frametype to i8
  %67 = ptrtoint ptr %call109 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv110, ptr %call109, align 1
  br label %sw.epilog111

sw.epilog111:                                     ; preds = %sw.bb108, %if.else96, %if.then88, %sw.bb78, %sw.bb71, %if.end68, %sw.bb30, %if.end11.sw.epilog111_crit_edge
  %68 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %neighbour, align 8
  call void @x25_transmit_link(ptr noundef nonnull %call.i, ptr noundef %69) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog111, %sw.epilog.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %addresses) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %facilities) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_addr_aton(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_create_facilities(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_decode(ptr nocapture noundef readonly %sk, ptr noundef %skb, ptr nocapture noundef writeonly %ns, ptr nocapture noundef writeonly %nr, ptr nocapture noundef writeonly %q, ptr nocapture noundef writeonly %d, ptr nocapture noundef writeonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp3.i = icmp ult i32 %1, 3
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !21

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 3, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %m, align 4
  %7 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %d, align 4
  %8 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %q, align 4
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nr, align 4
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ns, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = add i8 %12, 15
  %14 = tail call i8 @llvm.fshl.i8(i8 %13, i8 %13, i8 7)
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %14, label %sw.epilog [
    i8 13, label %if.end.cleanup_crit_edge
    i8 15, label %if.end.cleanup_crit_edge182
    i8 17, label %if.end.cleanup_crit_edge183
    i8 19, label %if.end.cleanup_crit_edge184
    i8 25, label %if.end.cleanup_crit_edge185
    i8 27, label %if.end.cleanup_crit_edge186
    i8 21, label %if.end.cleanup_crit_edge187
    i8 23, label %if.end.cleanup_crit_edge188
    i8 5, label %if.end.cleanup_crit_edge189
    i8 7, label %if.end.cleanup_crit_edge190
    i8 1, label %if.end.cleanup_crit_edge191
    i8 3, label %if.end.cleanup_crit_edge192
    i8 0, label %if.end.cleanup_crit_edge193
  ]

if.end.cleanup_crit_edge193:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge192:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge191:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge190:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge189:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge188:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge187:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge186:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge185:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge184:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge183:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge182:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %16 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %neighbour, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.epilog
  %20 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %12, label %if.then57 [
    i8 1, label %if.then4.if.then17_crit_edge
    i8 5, label %if.then4.if.then17_crit_edge194
    i8 9, label %if.then4.if.then17_crit_edge195
  ]

if.then4.if.then17_crit_edge195:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then4.if.then17_crit_edge194:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then4.if.then17_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.then4.if.then17_crit_edge, %if.then4.if.then17_crit_edge194, %if.then4.if.then17_crit_edge195
  %call18 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 4)
  br i1 %call18, label %if.end20, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %arrayidx22 = getelementptr i8, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22, align 1
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i32
  %27 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %nr, align 4
  %arrayidx24 = getelementptr i8, ptr %22, i32 2
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx24, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %trunc = trunc i8 %12 to i5
  %30 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.10)
  switch i5 %trunc, label %if.else92 [
    i5 1, label %if.else.if.then44_crit_edge
    i5 5, label %if.else.if.then44_crit_edge196
    i5 9, label %if.else.if.then44_crit_edge197
  ]

if.else.if.then44_crit_edge197:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else.if.then44_crit_edge196:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else.if.then44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %if.else.if.then44_crit_edge, %if.else.if.then44_crit_edge196, %if.else.if.then44_crit_edge197
  %31 = lshr i8 %12, 5
  %32 = zext i8 %31 to i32
  %33 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %nr, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = and i8 %35, 31
  br label %cleanup

if.then57:                                        ; preds = %if.then4
  %37 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp61 = icmp eq i8 %37, 0
  br i1 %cmp61, label %if.then63, label %if.then57.do.body_crit_edge

if.then57.do.body_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then63:                                        ; preds = %if.then57
  %call64 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 4)
  br i1 %call64, label %if.end66, label %if.then63.cleanup_crit_edge

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %.lobit175 = lshr i8 %41, 7
  %42 = zext i8 %.lobit175 to i32
  %43 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %q, align 4
  %44 = load i8, ptr %39, align 1
  %45 = lshr i8 %44, 6
  %.lobit176 = and i8 %45, 1
  %46 = zext i8 %.lobit176 to i32
  %47 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %d, align 4
  %arrayidx78 = getelementptr i8, ptr %39, i32 3
  %48 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx78, align 1
  %50 = and i8 %49, 1
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %m, align 4
  %53 = load i8, ptr %arrayidx78, align 1
  %54 = lshr i8 %53, 1
  %55 = zext i8 %54 to i32
  %56 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %nr, align 4
  %arrayidx87 = getelementptr i8, ptr %39, i32 2
  %57 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx87, align 1
  %59 = lshr i8 %58, 1
  %60 = zext i8 %59 to i32
  %61 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ns, align 4
  br label %cleanup

if.else92:                                        ; preds = %if.else
  %62 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp96 = icmp eq i8 %62, 0
  br i1 %cmp96, label %if.then98, label %if.else92.do.body_crit_edge

if.else92.do.body_crit_edge:                      ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then98:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %5, align 1
  %.lobit = lshr i8 %64, 7
  %65 = zext i8 %.lobit to i32
  %66 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %q, align 4
  %67 = load i8, ptr %5, align 1
  %68 = lshr i8 %67, 6
  %.lobit173 = and i8 %68, 1
  %69 = zext i8 %.lobit173 to i32
  %70 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %d, align 4
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 1
  %73 = lshr i8 %72, 4
  %.lobit174 = and i8 %73, 1
  %74 = zext i8 %.lobit174 to i32
  %75 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %m, align 4
  %76 = load i8, ptr %arrayidx, align 1
  %77 = lshr i8 %76, 5
  %78 = zext i8 %77 to i32
  %79 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %nr, align 4
  %80 = load i8, ptr %arrayidx, align 1
  %81 = lshr i8 %80, 1
  %82 = and i8 %81, 7
  %and121 = zext i8 %82 to i32
  %83 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and121, ptr %ns, align 4
  br label %cleanup

do.body:                                          ; preds = %if.else92.do.body_crit_edge, %if.then57.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @x25_decode.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@x25_decode, %if.then128)) #8
          to label %cleanup [label %if.then128], !srcloc !22

if.then128:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @x25_decode.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.6, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %do.body, %if.then98, %if.end66, %if.then63.cleanup_crit_edge, %if.then44, %if.end20, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge182, %if.end.cleanup_crit_edge183, %if.end.cleanup_crit_edge184, %if.end.cleanup_crit_edge185, %if.end.cleanup_crit_edge186, %if.end.cleanup_crit_edge187, %if.end.cleanup_crit_edge188, %if.end.cleanup_crit_edge189, %if.end.cleanup_crit_edge190, %if.end.cleanup_crit_edge191, %if.end.cleanup_crit_edge192, %if.end.cleanup_crit_edge193, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0.shrunk = phi i8 [ %29, %if.end20 ], [ 0, %if.end66 ], [ 0, %if.then98 ], [ %36, %if.then44 ], [ -3, %pskb_may_pull.exit.cleanup_crit_edge ], [ -3, %if.then17.cleanup_crit_edge ], [ -3, %if.then63.cleanup_crit_edge ], [ -3, %if.then128 ], [ %12, %if.end.cleanup_crit_edge ], [ %12, %if.end.cleanup_crit_edge182 ], [ %12, %if.end.cleanup_crit_edge183 ], [ %12, %if.end.cleanup_crit_edge184 ], [ %12, %if.end.cleanup_crit_edge185 ], [ %12, %if.end.cleanup_crit_edge186 ], [ %12, %if.end.cleanup_crit_edge187 ], [ %12, %if.end.cleanup_crit_edge188 ], [ %12, %if.end.cleanup_crit_edge189 ], [ %12, %if.end.cleanup_crit_edge190 ], [ %12, %if.end.cleanup_crit_edge191 ], [ %12, %if.end.cleanup_crit_edge192 ], [ %12, %if.end.cleanup_crit_edge193 ], [ -3, %do.body ], [ -3, %if.end.i.cleanup_crit_edge ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !21

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !21

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #8
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_disconnect(ptr noundef %sk, i32 noundef %reason, i8 noundef zeroext %cause, i8 noundef zeroext %diagnostic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue.i) #8
  %ack_queue.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 18
  tail call void @skb_queue_purge(ptr noundef %ack_queue.i) #8
  %interrupt_in_queue.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %interrupt_in_queue.i) #8
  %interrupt_out_queue.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %interrupt_out_queue.i) #8
  %fragment_queue.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %fragment_queue.i) #8
  tail call void @x25_stop_timer(ptr noundef %sk) #8
  %lci = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %lci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lci, align 4
  %state = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 6
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %state, align 4
  %causediag = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23
  %2 = ptrtoint ptr %causediag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cause, ptr %causediag, align 8
  %diagnostic3 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %diagnostic3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %diagnostic, ptr %diagnostic3, align 1
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %5 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reason, ptr %sk_err, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sk_shutdown, align 2
  %8 = or i8 %7, 2
  store i8 %8, ptr %sk_shutdown, align 2
  %9 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %12 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_state_change, align 4
  tail call void %13(ptr noundef %sk) #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %or.i.i = or i32 %15, 1
  store i32 %or.i.i, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %16 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %neighbour, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @x25_list_lock) #8
  %18 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %neighbour, align 8
  %refcnt.i = getelementptr inbounds %struct.x25_neigh, ptr %19, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.x25_neigh_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end5.i.i.i.i.x25_neigh_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %x25_neigh_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %x25_neigh_put.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @kfree(ptr noundef %19) #8
  br label %x25_neigh_put.exit

x25_neigh_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.x25_neigh_put.exit_crit_edge
  %21 = ptrtoint ptr %neighbour to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %neighbour, align 8
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @x25_list_lock) #8
  br label %if.end9

if.end9:                                          ; preds = %x25_neigh_put.exit, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_stop_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_check_rbuf(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #8
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf, align 8
  %shr = ashr i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %shr)
  %cmp = icmp slt i32 %1, %shr
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %condition = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %4 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %condition, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = and i8 %5, -4
  %8 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %condition, align 1
  %vr = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  %9 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vr, align 8
  %vl = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 11
  %11 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vl, align 4
  tail call void @x25_write_internal(ptr noundef %sk, i32 noundef 1)
  tail call void @x25_stop_timer(ptr noundef %sk) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/x25/x25_subr.c", i32 148, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @x25_write_internal._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @x25_write_internal._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/x25/x25_subr.c", i32 333, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @x25_decode.__UNIQUE_ID_ddebug457, !7, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2148208695, i64 2148208700, i64 2148208713, i64 2148208757, i64 2148208791, i64 2148208812}
!23 = !{i64 2148677524}
!24 = !{i64 2148591964, i64 2148591996, i64 2148592025, i64 2148592059, i64 2148592090, i64 2148592113}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2149875297}
