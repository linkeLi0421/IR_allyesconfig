; ModuleID = '/llk/IR_all_yes/net/rose/rose_subr.c_pt.bc'
source_filename = "../net/rose/rose_subr.c"
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
%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.rose_address = type { [5 x i8] }
%struct.ax25_address = type { [7 x i8] }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
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

@rose_write_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ROSE: rose_write_internal - invalid frametype %02X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rose_write_internal\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/rose/rose_subr.c\00", [43 x i8] zeroinitializer }, align 32
@rose_write_internal._entry_ptr = internal global ptr @rose_write_internal._entry, section ".printk_index", align 4
@rose_parse_facilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017ROSE: rose_parse_facilities - unknown facilities family %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rose_parse_facilities\00", [42 x i8] zeroinitializer }, align 32
@rose_parse_facilities._entry_ptr = internal global ptr @rose_parse_facilities._entry, section ".printk_index", align 4
@switch.table.rose_write_internal = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.rose_write_internal.5 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 14, i32 5, i32 5, i32 3, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 5, i64 7, i64 9, i64 11, i64 13, i64 15]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 15]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 8, i64 233, i64 235, i64 237, i64 238, i64 239]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 193, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [24 x i8] c"../net/rose/rose_subr.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 419, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [33 x i8] c"switch.table.rose_write_internal\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [35 x i8] c"switch.table.rose_write_internal.5\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @rose_parse_facilities._entry, ptr @rose_parse_facilities._entry_ptr, ptr @rose_write_internal._entry, ptr @rose_write_internal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.rose_write_internal, ptr @switch.table.rose_write_internal.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_write_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_parse_facilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rose_write_internal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rose_write_internal.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_clear_queues(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #8
  %ack_queue = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %ack_queue) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_frames_acked(ptr noundef %sk, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 21
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp.not = icmp eq i16 %1, %nr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %ack_queue = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 28
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %nr)
  %cmp8.not = icmp eq i16 %5, %nr
  br i1 %cmp8.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %call11 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  tail call void @kfree_skb_reason(ptr noundef %call11, i32 noundef 0) #8
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %va, align 2
  %8 = add i16 %7, 1
  %9 = and i16 %8, 7
  store i16 %9, ptr %va, align 2
  %10 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %11, %ack_queue
  %cmp3.not22 = icmp eq ptr %11, null
  %cmp3.not = or i1 %cmp.i, %cmp3.not22
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
define dso_local void @rose_requeue_frames(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 28
  %call8 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  %cmp.not9 = icmp eq ptr %call8, null
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_queue_head(ptr noundef %sk_write_queue2, ptr noundef nonnull %call11) #8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_append(ptr noundef nonnull %skb_prev.010, ptr noundef nonnull %call11, ptr noundef %sk_write_queue2) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #8
  %cmp.not = icmp eq ptr %call, null
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
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_validate_nr(ptr nocapture noundef readonly %sk, i16 noundef zeroext %nr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 21
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 2
  %vs = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not21 = icmp eq i16 %1, %3
  br i1 %cmp.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %vc.022 = phi i16 [ %5, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.022, i16 %nr)
  %cmp5 = icmp eq i16 %vc.022, %nr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = add i16 %vc.022, 1
  %5 = and i16 %4, 7
  %cmp.not = icmp eq i16 %5, %3
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
  %conv13 = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv13, %while.end ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_write_internal(ptr noundef %sk, i32 noundef %frametype) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %frametype, -11
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rose_write_internal, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep151 = getelementptr inbounds [5 x i32], ptr @switch.table.rose_write_internal.5, i32 0, i32 %1
  %4 = ptrtoint ptr %switch.gep151 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load152 = load i32, ptr %switch.gep151, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %maxfaclen.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %len.0 = phi i32 [ 3, %entry.sw.epilog_crit_edge ], [ %switch.load152, %switch.lookup ]
  %add3 = add nuw nsw i32 %len.0, 90
  %add4 = or i32 %add3, %maxfaclen.0
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add4, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 90
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 90
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len.0) #8
  %lci = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 11
  %9 = ptrtoint ptr %lci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lci, align 8
  %shr = lshr i32 %10, 8
  %11 = trunc i32 %shr to i8
  %conv = and i8 %11, 15
  %conv9 = trunc i32 %10 to i8
  %12 = add i32 %frametype, -1
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 31)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end [
    i32 5, label %sw.bb10
    i32 7, label %sw.bb21
    i32 9, label %sw.bb31
    i32 13, label %sw.bb41
    i32 0, label %if.end.sw.bb51_crit_edge
    i32 2, label %if.end.sw.bb51_crit_edge157
    i32 11, label %if.end.sw.bb64_crit_edge
    i32 15, label %if.end.sw.bb64_crit_edge158
  ]

if.end.sw.bb64_crit_edge158:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

if.end.sw.bb64_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb64

if.end.sw.bb51_crit_edge157:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb51

sw.bb10:                                          ; preds = %if.end
  %15 = or i8 %conv, 16
  %incdec.ptr = getelementptr i8, ptr %call5, i32 1
  %16 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %call5, align 1
  %incdec.ptr13 = getelementptr i8, ptr %call5, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9, ptr %incdec.ptr, align 1
  %conv14 = trunc i32 %frametype to i8
  %incdec.ptr15 = getelementptr i8, ptr %call5, i32 3
  %18 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14, ptr %incdec.ptr13, align 1
  %incdec.ptr16 = getelementptr i8, ptr %call5, i32 4
  %19 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -86, ptr %incdec.ptr15, align 1
  %dest_addr = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %incdec.ptr16, ptr %dest_addr, i32 5)
  %add.ptr = getelementptr i8, ptr %call5, i32 9
  %source_addr = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %source_addr, i32 5)
  %add.ptr17 = getelementptr i8, ptr %call5, i32 14
  %add.ptr.i149 = getelementptr i8, ptr %call5, i32 15
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf.i) #8
  %rand.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 12
  %22 = call ptr @memset(ptr %buf.i, i32 255, i32 11)
  %23 = ptrtoint ptr %rand.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb10.if.then.i_crit_edge

sw.bb10.if.then.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb10
  %source_ndigis.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 5
  %25 = ptrtoint ptr %source_ndigis.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %source_ndigis.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp1.i = icmp eq i8 %26, 1
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %dest_ndigis.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 6
  %27 = ptrtoint ptr %dest_ndigis.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dest_ndigis.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp5.i = icmp eq i8 %28, 1
  br i1 %cmp5.i, label %lor.lhs.false3.i.if.then.i_crit_edge, label %lor.lhs.false3.i.rose_create_facilities.exit_crit_edge

lor.lhs.false3.i.rose_create_facilities.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rose_create_facilities.exit

lor.lhs.false3.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false3.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb10.if.then.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %call5, i32 16
  %29 = ptrtoint ptr %add.ptr.i149 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr.i149, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %call5, i32 17
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %incdec.ptr.i, align 1
  %31 = ptrtoint ptr %rand.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp9.not.i = icmp eq i32 %32, 0
  br i1 %cmp9.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then11.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr12.i = getelementptr i8, ptr %call5, i32 18
  %33 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 127, ptr %incdec.ptr7.i, align 1
  %34 = ptrtoint ptr %rand.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rand.i, align 4
  %shr.i = lshr i32 %35, 8
  %conv14.i = trunc i32 %shr.i to i8
  %incdec.ptr15.i = getelementptr i8, ptr %call5, i32 19
  %36 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv14.i, ptr %incdec.ptr12.i, align 1
  %37 = load i32, ptr %rand.i, align 4
  %conv19.i = trunc i32 %37 to i8
  %incdec.ptr20.i = getelementptr i8, ptr %call5, i32 20
  %38 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv19.i, ptr %incdec.ptr15.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i, %if.then.i.if.end.i_crit_edge
  %p.0.i = phi ptr [ %incdec.ptr20.i, %if.then11.i ], [ %incdec.ptr7.i, %if.then.i.if.end.i_crit_edge ]
  %source_ndigis21.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 5
  %39 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp23.not.i = icmp eq i8 %40, 0
  br i1 %cmp23.not.i, label %lor.lhs.false25.i, label %if.end.i.if.then30.i_crit_edge

if.end.i.if.then30.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

lor.lhs.false25.i:                                ; preds = %if.end.i
  %dest_ndigis26.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 6
  %41 = ptrtoint ptr %dest_ndigis26.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dest_ndigis26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp28.not.i = icmp eq i8 %42, 0
  br i1 %cmp28.not.i, label %lor.lhs.false25.i.if.end71.i_crit_edge, label %lor.lhs.false25.i.if.then30.i_crit_edge

lor.lhs.false25.i.if.then30.i_crit_edge:          ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

lor.lhs.false25.i.if.end71.i_crit_edge:           ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.then30.i:                                      ; preds = %lor.lhs.false25.i.if.then30.i_crit_edge, %if.end.i.if.then30.i_crit_edge
  %incdec.ptr31.i = getelementptr i8, ptr %p.0.i, i32 1
  %43 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -17, ptr %p.0.i, align 1
  %44 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %source_ndigis21.i, align 8
  %dest_ndigis34.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 6
  %46 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dest_ndigis34.i, align 1
  %add.i = add i8 %47, %45
  %mul.i = mul i8 %add.i, 7
  %incdec.ptr37.i = getelementptr i8, ptr %p.0.i, i32 2
  %48 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %mul.i, ptr %incdec.ptr31.i, align 1
  %49 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp40222.not.i = icmp eq i8 %49, 0
  br i1 %cmp40222.not.i, label %if.then30.i.for.end.i_crit_edge, label %for.body.preheader.i

if.then30.i.for.end.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then30.i
  %arrayidx.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 7, i32 0
  %50 = call ptr @memcpy(ptr %incdec.ptr37.i, ptr %arrayidx.i, i32 7)
  %arrayidx46.i = getelementptr i8, ptr %p.0.i, i32 8
  %51 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx46.i, align 1
  %53 = or i8 %52, -128
  store i8 %53, ptr %arrayidx46.i, align 1
  %add.ptr49.i = getelementptr i8, ptr %p.0.i, i32 9
  %54 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp40.i = icmp ugt i8 %55, 1
  br i1 %cmp40.i, label %for.body.1.i, label %for.body.preheader.i.for.end.i_crit_edge

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.1.i:                                     ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 7, i32 1
  %56 = call ptr @memcpy(ptr %add.ptr49.i, ptr %arrayidx.1.i, i32 7)
  %arrayidx46.1.i = getelementptr i8, ptr %p.0.i, i32 15
  %57 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx46.1.i, align 1
  %59 = or i8 %58, -128
  store i8 %59, ptr %arrayidx46.1.i, align 1
  %add.ptr49.1.i = getelementptr i8, ptr %p.0.i, i32 16
  %60 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp40.1.i = icmp ugt i8 %61, 2
  br i1 %cmp40.1.i, label %for.body.2.i, label %for.body.1.i.for.end.i_crit_edge

for.body.1.i.for.end.i_crit_edge:                 ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.2.i:                                     ; preds = %for.body.1.i
  %arrayidx.2.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 7, i32 2
  %62 = call ptr @memcpy(ptr %add.ptr49.1.i, ptr %arrayidx.2.i, i32 7)
  %arrayidx46.2.i = getelementptr i8, ptr %p.0.i, i32 22
  %63 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx46.2.i, align 1
  %65 = or i8 %64, -128
  store i8 %65, ptr %arrayidx46.2.i, align 1
  %add.ptr49.2.i = getelementptr i8, ptr %p.0.i, i32 23
  %66 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %67)
  %cmp40.2.i = icmp ugt i8 %67, 3
  br i1 %cmp40.2.i, label %for.body.3.i, label %for.body.2.i.for.end.i_crit_edge

for.body.2.i.for.end.i_crit_edge:                 ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.3.i:                                     ; preds = %for.body.2.i
  %arrayidx.3.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 7, i32 3
  %68 = call ptr @memcpy(ptr %add.ptr49.2.i, ptr %arrayidx.3.i, i32 7)
  %arrayidx46.3.i = getelementptr i8, ptr %p.0.i, i32 29
  %69 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx46.3.i, align 1
  %71 = or i8 %70, -128
  store i8 %71, ptr %arrayidx46.3.i, align 1
  %add.ptr49.3.i = getelementptr i8, ptr %p.0.i, i32 30
  %72 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %73)
  %cmp40.3.i = icmp ugt i8 %73, 4
  br i1 %cmp40.3.i, label %for.body.4.i, label %for.body.3.i.for.end.i_crit_edge

for.body.3.i.for.end.i_crit_edge:                 ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.4.i:                                     ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.4.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 7, i32 4
  %74 = call ptr @memcpy(ptr %add.ptr49.3.i, ptr %arrayidx.4.i, i32 7)
  %arrayidx46.4.i = getelementptr i8, ptr %p.0.i, i32 36
  %75 = ptrtoint ptr %arrayidx46.4.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx46.4.i, align 1
  %77 = or i8 %76, -128
  store i8 %77, ptr %arrayidx46.4.i, align 1
  %add.ptr49.4.i = getelementptr i8, ptr %p.0.i, i32 37
  %78 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %79)
  %cmp40.4.i = icmp ugt i8 %79, 5
  %spec.select.i = select i1 %cmp40.4.i, i32 6, i32 5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.4.i, %for.body.3.i.for.end.i_crit_edge, %for.body.2.i.for.end.i_crit_edge, %for.body.1.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge, %if.then30.i.for.end.i_crit_edge
  %p.1.lcssa.i = phi ptr [ %incdec.ptr37.i, %if.then30.i.for.end.i_crit_edge ], [ %add.ptr49.i, %for.body.preheader.i.for.end.i_crit_edge ], [ %add.ptr49.1.i, %for.body.1.i.for.end.i_crit_edge ], [ %add.ptr49.2.i, %for.body.2.i.for.end.i_crit_edge ], [ %add.ptr49.3.i, %for.body.3.i.for.end.i_crit_edge ], [ %add.ptr49.4.i, %for.body.4.i ]
  %maxdigi.1.i = phi i32 [ 0, %if.then30.i.for.end.i_crit_edge ], [ 1, %for.body.preheader.i.for.end.i_crit_edge ], [ 2, %for.body.1.i.for.end.i_crit_edge ], [ 3, %for.body.2.i.for.end.i_crit_edge ], [ 4, %for.body.3.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.4.i ]
  %80 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp54230.not.i = icmp eq i8 %81, 0
  br i1 %cmp54230.not.i, label %for.end.i.if.end71.i_crit_edge, label %for.body56.i.preheader

for.end.i.if.end71.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

for.body56.i.preheader:                           ; preds = %for.end.i
  %82 = call i32 @llvm.usub.sat.i32(i32 5, i32 %maxdigi.1.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %maxdigi.1.i)
  %exitcond = icmp ugt i32 %maxdigi.1.i, 4
  br i1 %exitcond, label %for.body56.i.preheader.if.end71.i_crit_edge, label %if.end61.i

for.body56.i.preheader.if.end71.i_crit_edge:      ; preds = %for.body56.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i:                                       ; preds = %for.body56.i.preheader
  %arrayidx62.i = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 0
  %83 = call ptr @memcpy(ptr %p.1.lcssa.i, ptr %arrayidx62.i, i32 7)
  %arrayidx63.i = getelementptr i8, ptr %p.1.lcssa.i, i32 6
  %84 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx63.i, align 1
  %86 = and i8 %85, 127
  store i8 %86, ptr %arrayidx63.i, align 1
  %add.ptr67.i = getelementptr i8, ptr %p.1.lcssa.i, i32 7
  %87 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp54.i = icmp ule i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %exitcond.1 = icmp eq i32 %82, 1
  %or.cond = select i1 %cmp54.i, i1 true, i1 %exitcond.1
  br i1 %or.cond, label %if.end61.i.if.end71.i_crit_edge, label %if.end61.i.1

if.end61.i.if.end71.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i.1:                                     ; preds = %if.end61.i
  %arrayidx62.i.1 = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 1
  %89 = call ptr @memcpy(ptr %add.ptr67.i, ptr %arrayidx62.i.1, i32 7)
  %arrayidx63.i.1 = getelementptr i8, ptr %p.1.lcssa.i, i32 13
  %90 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx63.i.1, align 1
  %92 = and i8 %91, 127
  store i8 %92, ptr %arrayidx63.i.1, align 1
  %add.ptr67.i.1 = getelementptr i8, ptr %p.1.lcssa.i, i32 14
  %93 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp54.i.1 = icmp ule i8 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %exitcond.2 = icmp eq i32 %82, 2
  %or.cond153 = select i1 %cmp54.i.1, i1 true, i1 %exitcond.2
  br i1 %or.cond153, label %if.end61.i.1.if.end71.i_crit_edge, label %if.end61.i.2

if.end61.i.1.if.end71.i_crit_edge:                ; preds = %if.end61.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i.2:                                     ; preds = %if.end61.i.1
  %arrayidx62.i.2 = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 2
  %95 = call ptr @memcpy(ptr %add.ptr67.i.1, ptr %arrayidx62.i.2, i32 7)
  %arrayidx63.i.2 = getelementptr i8, ptr %p.1.lcssa.i, i32 20
  %96 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx63.i.2, align 1
  %98 = and i8 %97, 127
  store i8 %98, ptr %arrayidx63.i.2, align 1
  %add.ptr67.i.2 = getelementptr i8, ptr %p.1.lcssa.i, i32 21
  %99 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %100)
  %cmp54.i.2 = icmp ule i8 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %exitcond.3 = icmp eq i32 %82, 3
  %or.cond154 = select i1 %cmp54.i.2, i1 true, i1 %exitcond.3
  br i1 %or.cond154, label %if.end61.i.2.if.end71.i_crit_edge, label %if.end61.i.3

if.end61.i.2.if.end71.i_crit_edge:                ; preds = %if.end61.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i.3:                                     ; preds = %if.end61.i.2
  %arrayidx62.i.3 = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 3
  %101 = call ptr @memcpy(ptr %add.ptr67.i.2, ptr %arrayidx62.i.3, i32 7)
  %arrayidx63.i.3 = getelementptr i8, ptr %p.1.lcssa.i, i32 27
  %102 = ptrtoint ptr %arrayidx63.i.3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx63.i.3, align 1
  %104 = and i8 %103, 127
  store i8 %104, ptr %arrayidx63.i.3, align 1
  %add.ptr67.i.3 = getelementptr i8, ptr %p.1.lcssa.i, i32 28
  %105 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %106)
  %cmp54.i.3 = icmp ule i8 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %exitcond.4 = icmp eq i32 %82, 4
  %or.cond155 = select i1 %cmp54.i.3, i1 true, i1 %exitcond.4
  br i1 %or.cond155, label %if.end61.i.3.if.end71.i_crit_edge, label %if.end61.i.4

if.end61.i.3.if.end71.i_crit_edge:                ; preds = %if.end61.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i.4:                                     ; preds = %if.end61.i.3
  %arrayidx62.i.4 = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 4
  %107 = call ptr @memcpy(ptr %add.ptr67.i.3, ptr %arrayidx62.i.4, i32 7)
  %arrayidx63.i.4 = getelementptr i8, ptr %p.1.lcssa.i, i32 34
  %108 = ptrtoint ptr %arrayidx63.i.4 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx63.i.4, align 1
  %110 = and i8 %109, 127
  store i8 %110, ptr %arrayidx63.i.4, align 1
  %add.ptr67.i.4 = getelementptr i8, ptr %p.1.lcssa.i, i32 35
  %111 = ptrtoint ptr %dest_ndigis34.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dest_ndigis34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %112)
  %cmp54.i.4 = icmp ule i8 %112, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %82)
  %exitcond.5 = icmp eq i32 %82, 5
  %or.cond156 = select i1 %cmp54.i.4, i1 true, i1 %exitcond.5
  br i1 %or.cond156, label %if.end61.i.4.if.end71.i_crit_edge, label %if.end61.i.5

if.end61.i.4.if.end71.i_crit_edge:                ; preds = %if.end61.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end61.i.5:                                     ; preds = %if.end61.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx62.i.5 = getelementptr %struct.rose_sock, ptr %sk, i32 0, i32 8, i32 5
  %113 = call ptr @memcpy(ptr %add.ptr67.i.4, ptr %arrayidx62.i.5, i32 7)
  %arrayidx63.i.5 = getelementptr i8, ptr %p.1.lcssa.i, i32 41
  %114 = ptrtoint ptr %arrayidx63.i.5 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx63.i.5, align 1
  %116 = and i8 %115, 127
  store i8 %116, ptr %arrayidx63.i.5, align 1
  %add.ptr67.i.5 = getelementptr i8, ptr %p.1.lcssa.i, i32 42
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end61.i.5, %if.end61.i.4.if.end71.i_crit_edge, %if.end61.i.3.if.end71.i_crit_edge, %if.end61.i.2.if.end71.i_crit_edge, %if.end61.i.1.if.end71.i_crit_edge, %if.end61.i.if.end71.i_crit_edge, %for.body56.i.preheader.if.end71.i_crit_edge, %for.end.i.if.end71.i_crit_edge, %lor.lhs.false25.i.if.end71.i_crit_edge
  %p.3.i = phi ptr [ %p.0.i, %lor.lhs.false25.i.if.end71.i_crit_edge ], [ %p.1.lcssa.i, %for.end.i.if.end71.i_crit_edge ], [ %add.ptr67.i, %if.end61.i.if.end71.i_crit_edge ], [ %p.1.lcssa.i, %for.body56.i.preheader.if.end71.i_crit_edge ], [ %add.ptr67.i.1, %if.end61.i.1.if.end71.i_crit_edge ], [ %add.ptr67.i.2, %if.end61.i.2.if.end71.i_crit_edge ], [ %add.ptr67.i.3, %if.end61.i.3.if.end71.i_crit_edge ], [ %add.ptr67.i.4, %if.end61.i.4.if.end71.i_crit_edge ], [ %add.ptr67.i.5, %if.end61.i.5 ]
  %117 = ptrtoint ptr %source_ndigis21.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %source_ndigis21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp74.not.i = icmp eq i8 %118, 0
  br i1 %cmp74.not.i, label %if.end71.i.if.end82.i_crit_edge, label %if.then76.i

if.end71.i.if.end82.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then76.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr77.i = getelementptr i8, ptr %p.3.i, i32 1
  %119 = ptrtoint ptr %p.3.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -21, ptr %p.3.i, align 1
  %incdec.ptr78.i = getelementptr i8, ptr %p.3.i, i32 2
  %120 = ptrtoint ptr %incdec.ptr77.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 7, ptr %incdec.ptr77.i, align 1
  %source_digis79.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 7
  %121 = call ptr @memcpy(ptr %incdec.ptr78.i, ptr %source_digis79.i, i32 7)
  %add.ptr81.i = getelementptr i8, ptr %p.3.i, i32 9
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then76.i, %if.end71.i.if.end82.i_crit_edge
  %p.4.i = phi ptr [ %add.ptr81.i, %if.then76.i ], [ %p.3.i, %if.end71.i.if.end82.i_crit_edge ]
  %dest_ndigis83.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 6
  %122 = ptrtoint ptr %dest_ndigis83.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %dest_ndigis83.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp85.not.i = icmp eq i8 %123, 0
  br i1 %cmp85.not.i, label %if.end82.i.rose_create_facilities.exit_crit_edge, label %if.then87.i

if.end82.i.rose_create_facilities.exit_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rose_create_facilities.exit

if.then87.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr88.i = getelementptr i8, ptr %p.4.i, i32 1
  %124 = ptrtoint ptr %p.4.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -23, ptr %p.4.i, align 1
  %incdec.ptr89.i = getelementptr i8, ptr %p.4.i, i32 2
  %125 = ptrtoint ptr %incdec.ptr88.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 7, ptr %incdec.ptr88.i, align 1
  %dest_digis90.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 8
  %126 = call ptr @memcpy(ptr %incdec.ptr89.i, ptr %dest_digis90.i, i32 7)
  %add.ptr92.i = getelementptr i8, ptr %p.4.i, i32 9
  br label %rose_create_facilities.exit

rose_create_facilities.exit:                      ; preds = %if.then87.i, %if.end82.i.rose_create_facilities.exit_crit_edge, %lor.lhs.false3.i.rose_create_facilities.exit_crit_edge
  %p.5.i = phi ptr [ %add.ptr92.i, %if.then87.i ], [ %p.4.i, %if.end82.i.rose_create_facilities.exit_crit_edge ], [ %add.ptr.i149, %lor.lhs.false3.i.rose_create_facilities.exit_crit_edge ]
  %incdec.ptr95.i = getelementptr i8, ptr %p.5.i, i32 1
  %127 = ptrtoint ptr %p.5.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %p.5.i, align 1
  %incdec.ptr96.i = getelementptr i8, ptr %p.5.i, i32 2
  %128 = ptrtoint ptr %incdec.ptr95.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 15, ptr %incdec.ptr95.i, align 1
  %incdec.ptr97.i = getelementptr i8, ptr %p.5.i, i32 3
  %129 = ptrtoint ptr %incdec.ptr96.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -55, ptr %incdec.ptr96.i, align 1
  %dest_call.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 4
  %call.i150 = call ptr @ax2asc(ptr noundef nonnull %buf.i, ptr noundef %dest_call.i) #8
  %call98.i = call i32 @strlen(ptr noundef %call.i150) #11
  %130 = trunc i32 %call98.i to i8
  %conv100.i = add i8 %130, 10
  %incdec.ptr101.i = getelementptr i8, ptr %p.5.i, i32 4
  %131 = ptrtoint ptr %incdec.ptr97.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv100.i, ptr %incdec.ptr97.i, align 1
  %call102.i = call i32 @strlen(ptr noundef %call.i150) #11
  %call102.tr.i = trunc i32 %call102.i to i8
  %132 = shl i8 %call102.tr.i, 1
  %conv105.i = add i8 %132, 18
  %incdec.ptr106.i = getelementptr i8, ptr %p.5.i, i32 5
  %133 = ptrtoint ptr %incdec.ptr101.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv105.i, ptr %incdec.ptr101.i, align 1
  %incdec.ptr107.i = getelementptr i8, ptr %p.5.i, i32 6
  %134 = ptrtoint ptr %incdec.ptr106.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 71, ptr %incdec.ptr106.i, align 1
  %incdec.ptr108.i = getelementptr i8, ptr %p.5.i, i32 7
  %135 = ptrtoint ptr %incdec.ptr107.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %incdec.ptr107.i, align 1
  %incdec.ptr109.i = getelementptr i8, ptr %p.5.i, i32 8
  %136 = ptrtoint ptr %incdec.ptr108.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 17, ptr %incdec.ptr108.i, align 1
  %incdec.ptr110.i = getelementptr i8, ptr %p.5.i, i32 9
  %137 = ptrtoint ptr %incdec.ptr109.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 10, ptr %incdec.ptr109.i, align 1
  %138 = call ptr @memcpy(ptr %incdec.ptr110.i, ptr %dest_addr, i32 5)
  %add.ptr111.i = getelementptr i8, ptr %p.5.i, i32 14
  %call112.i = call i32 @strlen(ptr noundef %call.i150) #11
  %139 = call ptr @memcpy(ptr %add.ptr111.i, ptr %call.i150, i32 %call112.i)
  %call113.i = call i32 @strlen(ptr noundef %call.i150) #11
  %add.ptr114.i = getelementptr i8, ptr %add.ptr111.i, i32 %call113.i
  %incdec.ptr115.i = getelementptr i8, ptr %add.ptr114.i, i32 1
  %140 = ptrtoint ptr %add.ptr114.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -53, ptr %add.ptr114.i, align 1
  %source_call.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 3
  %call117.i = call ptr @ax2asc(ptr noundef nonnull %buf.i, ptr noundef %source_call.i) #8
  %call118.i = call i32 @strlen(ptr noundef %call117.i) #11
  %141 = trunc i32 %call118.i to i8
  %conv120.i = add i8 %141, 10
  %incdec.ptr121.i = getelementptr i8, ptr %incdec.ptr115.i, i32 1
  %142 = ptrtoint ptr %incdec.ptr115.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv120.i, ptr %incdec.ptr115.i, align 1
  %call122.i = call i32 @strlen(ptr noundef %call117.i) #11
  %call122.tr.i = trunc i32 %call122.i to i8
  %143 = shl i8 %call122.tr.i, 1
  %conv125.i = add i8 %143, 18
  %incdec.ptr126.i = getelementptr i8, ptr %incdec.ptr121.i, i32 1
  %144 = ptrtoint ptr %incdec.ptr121.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv125.i, ptr %incdec.ptr121.i, align 1
  %incdec.ptr127.i = getelementptr i8, ptr %incdec.ptr126.i, i32 1
  %145 = ptrtoint ptr %incdec.ptr126.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 71, ptr %incdec.ptr126.i, align 1
  %incdec.ptr128.i = getelementptr i8, ptr %incdec.ptr127.i, i32 1
  %146 = ptrtoint ptr %incdec.ptr127.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %incdec.ptr127.i, align 1
  %incdec.ptr129.i = getelementptr i8, ptr %incdec.ptr128.i, i32 1
  %147 = ptrtoint ptr %incdec.ptr128.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 17, ptr %incdec.ptr128.i, align 1
  %incdec.ptr130.i = getelementptr i8, ptr %incdec.ptr129.i, i32 1
  %148 = ptrtoint ptr %incdec.ptr129.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 10, ptr %incdec.ptr129.i, align 1
  %149 = call ptr @memcpy(ptr %incdec.ptr130.i, ptr %source_addr, i32 5)
  %add.ptr131.i = getelementptr i8, ptr %incdec.ptr130.i, i32 5
  %call132.i = call i32 @strlen(ptr noundef %call117.i) #11
  %150 = call ptr @memcpy(ptr %add.ptr131.i, ptr %call117.i, i32 %call132.i)
  %call133.i = call i32 @strlen(ptr noundef %call117.i) #11
  %add.ptr134.i = getelementptr i8, ptr %add.ptr131.i, i32 %call133.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr134.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %151 = trunc i32 %sub.ptr.sub.i to i8
  %conv135.i = add i8 %151, -1
  %152 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv135.i, ptr %add.ptr17, align 1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf.i) #8
  %call19 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub.ptr.sub.i) #8
  br label %sw.epilog73

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %153 = or i8 %conv, 16
  %incdec.ptr25 = getelementptr i8, ptr %call5, i32 1
  %154 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %call5, align 1
  %incdec.ptr26 = getelementptr i8, ptr %call5, i32 2
  %155 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv9, ptr %incdec.ptr25, align 1
  %conv27 = trunc i32 %frametype to i8
  %incdec.ptr28 = getelementptr i8, ptr %call5, i32 3
  %156 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv27, ptr %incdec.ptr26, align 1
  %incdec.ptr29 = getelementptr i8, ptr %call5, i32 4
  %157 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %incdec.ptr28, align 1
  %158 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %incdec.ptr29, align 1
  br label %sw.epilog73

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %159 = or i8 %conv, 16
  %incdec.ptr35 = getelementptr i8, ptr %call5, i32 1
  %160 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %call5, align 1
  %incdec.ptr36 = getelementptr i8, ptr %call5, i32 2
  %161 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv9, ptr %incdec.ptr35, align 1
  %conv37 = trunc i32 %frametype to i8
  %incdec.ptr38 = getelementptr i8, ptr %call5, i32 3
  %162 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv37, ptr %incdec.ptr36, align 1
  %cause = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 17
  %163 = ptrtoint ptr %cause to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %cause, align 4
  %incdec.ptr39 = getelementptr i8, ptr %call5, i32 4
  %165 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %incdec.ptr38, align 1
  %diagnostic = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 18
  %166 = ptrtoint ptr %diagnostic to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %diagnostic, align 1
  %168 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %incdec.ptr39, align 1
  br label %sw.epilog73

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %169 = or i8 %conv, 16
  %incdec.ptr45 = getelementptr i8, ptr %call5, i32 1
  %170 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %call5, align 1
  %incdec.ptr46 = getelementptr i8, ptr %call5, i32 2
  %171 = ptrtoint ptr %incdec.ptr45 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv9, ptr %incdec.ptr45, align 1
  %conv47 = trunc i32 %frametype to i8
  %incdec.ptr48 = getelementptr i8, ptr %call5, i32 3
  %172 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv47, ptr %incdec.ptr46, align 1
  %incdec.ptr49 = getelementptr i8, ptr %call5, i32 4
  %173 = ptrtoint ptr %incdec.ptr48 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %incdec.ptr48, align 1
  %174 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %incdec.ptr49, align 1
  br label %sw.epilog73

sw.bb51:                                          ; preds = %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge157
  %175 = or i8 %conv, 16
  %incdec.ptr55 = getelementptr i8, ptr %call5, i32 1
  %176 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %call5, align 1
  %incdec.ptr56 = getelementptr i8, ptr %call5, i32 2
  %177 = ptrtoint ptr %incdec.ptr55 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv9, ptr %incdec.ptr55, align 1
  %conv57 = trunc i32 %frametype to i8
  %178 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv57, ptr %incdec.ptr56, align 1
  %vr = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 20
  %179 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %vr, align 8
  %conv58 = zext i16 %180 to i32
  %shl = shl nuw nsw i32 %conv58, 5
  %or62 = or i32 %shl, %frametype
  %conv63 = trunc i32 %or62 to i8
  store i8 %conv63, ptr %incdec.ptr56, align 1
  br label %sw.epilog73

sw.bb64:                                          ; preds = %if.end.sw.bb64_crit_edge, %if.end.sw.bb64_crit_edge158
  %181 = or i8 %conv, 16
  %incdec.ptr68 = getelementptr i8, ptr %call5, i32 1
  %182 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %call5, align 1
  %incdec.ptr69 = getelementptr i8, ptr %call5, i32 2
  %183 = ptrtoint ptr %incdec.ptr68 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv9, ptr %incdec.ptr68, align 1
  %conv70 = trunc i32 %frametype to i8
  %184 = ptrtoint ptr %incdec.ptr69 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv70, ptr %incdec.ptr69, align 1
  br label %sw.epilog73

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %frametype) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #8
  br label %cleanup

sw.epilog73:                                      ; preds = %sw.bb64, %sw.bb51, %sw.bb41, %sw.bb31, %sw.bb21, %rose_create_facilities.exit
  %neighbour = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %185 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %neighbour, align 8
  call void @rose_transmit_link(ptr noundef nonnull %call.i, ptr noundef %186) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog73, %do.end, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rose_decode(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %ns, ptr nocapture noundef writeonly %nr, ptr nocapture noundef writeonly %q, ptr nocapture noundef writeonly %d, ptr nocapture noundef writeonly %m) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %m, align 4
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %d, align 4
  %4 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %q, align 4
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nr, align 4
  %6 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ns, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = add nsw i32 %conv, -11
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %switch = icmp ult i32 %10, 6
  br i1 %switch, label %entry.cleanup_crit_edge, label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and = and i32 %conv, 31
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and, label %if.end [
    i32 1, label %sw.epilog.if.then_crit_edge
    i32 5, label %sw.epilog.if.then_crit_edge66
  ]

sw.epilog.if.then_crit_edge66:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %sw.epilog.if.then_crit_edge, %sw.epilog.if.then_crit_edge66
  %12 = lshr i8 %8, 5
  %13 = zext i8 %12 to i32
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = and i8 %16, 31
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %.lobit = lshr i8 %19, 7
  %20 = zext i8 %.lobit to i32
  %21 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %q, align 4
  %22 = load i8, ptr %1, align 1
  %23 = lshr i8 %22, 6
  %.lobit64 = and i8 %23, 1
  %24 = zext i8 %.lobit64 to i32
  %25 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %d, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = lshr i8 %27, 4
  %.lobit65 = and i8 %28, 1
  %29 = zext i8 %.lobit65 to i32
  %30 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %m, align 4
  %31 = load i8, ptr %arrayidx, align 1
  %32 = lshr i8 %31, 5
  %33 = zext i8 %32 to i32
  %34 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %nr, align 4
  %35 = load i8, ptr %arrayidx, align 1
  %36 = lshr i8 %35, 1
  %37 = and i8 %36, 7
  %and45 = zext i8 %37 to i32
  %38 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and45, ptr %ns, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i8 [ %17, %if.then ], [ 0, %if.then22 ], [ -3, %if.end.cleanup_crit_edge ], [ %8, %entry.cleanup_crit_edge ]
  %retval.0 = zext i8 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_parse_facilities(ptr nocapture noundef readonly %p, i32 noundef %packet_len, ptr noundef %facilities) local_unnamed_addr #0 align 64 {
entry:
  %callsign.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %conv = zext i8 %1 to i32
  %incdec.ptr = getelementptr i8, ptr %p, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %packet_len)
  %cmp2 = icmp ugt i32 %conv, %packet_len
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp4115 = icmp ugt i8 %1, 2
  br i1 %cmp4115, label %land.rhs.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %source_call.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 2
  %dest_addr.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 1
  %dest_call.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 3
  %source_ndigis106.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 4
  %dest_ndigis107.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 5
  %fail_addr.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 9
  %fail_call.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 10
  %dest_digis.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 7
  %source_digis.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 6
  %rand.i = getelementptr inbounds %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %if.end49.land.rhs_crit_edge, %land.rhs.lr.ph
  %p.addr.0117 = phi ptr [ %incdec.ptr, %land.rhs.lr.ph ], [ %add.ptr52, %if.end49.land.rhs_crit_edge ]
  %facilities_len.0116 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %sub50, %if.end49.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %p.addr.0117 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.addr.0117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7 = icmp eq i8 %3, 0
  br i1 %cmp7, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %dec = add nsw i32 %facilities_len.0116, -1
  %incdec.ptr9 = getelementptr i8, ptr %p.addr.0117, i32 1
  %4 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr9, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %5, label %do.end [
    i8 0, label %sw.bb
    i8 15, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %p.addr.0117, i32 2
  %sub = add nsw i32 %facilities_len.0116, -2
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr.i = load i8, ptr %add.ptr, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sw.bb
  %8 = phi i8 [ %39, %do.cond.i.do.body.i_crit_edge ], [ %.pr.i, %sw.bb ]
  %p.addr.0.i = phi ptr [ %p.addr.1.i, %do.cond.i.do.body.i_crit_edge ], [ %add.ptr, %sw.bb ]
  %len.addr.0.i = phi i32 [ %len.addr.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub, %sw.bb ]
  %n.0.i = phi i8 [ %n.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %sw.bb ]
  %fac_national_digis_received.0.i = phi i32 [ %fac_national_digis_received.2.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %sw.bb ]
  %9 = lshr i8 %8, 6
  %10 = zext i8 %9 to i32
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %10, label %do.body.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb26.i
    i32 3, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.0.i)
  %cmp.i = icmp ult i32 %len.addr.0.i, 2
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  br label %do.cond.i

sw.bb4.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.i)
  %cmp5.i = icmp ult i32 %len.addr.0.i, 3
  br i1 %cmp5.i, label %sw.bb4.i.cleanup_crit_edge, label %if.end8.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %8)
  %cmp10.i = icmp eq i8 %8, 127
  br i1 %cmp10.i, label %if.then12.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %p.addr.0.i, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv13.i, 8
  %arrayidx15.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %15 to i32
  %add19.i = or i32 %shl.i, %conv16.i
  %16 = ptrtoint ptr %rand.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add19.i, ptr %rand.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end20.i_crit_edge
  %add.ptr21.i = getelementptr i8, ptr %p.addr.0.i, i32 3
  br label %do.cond.i

sw.bb26.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0.i)
  %cmp27.i = icmp ult i32 %len.addr.0.i, 4
  br i1 %cmp27.i, label %sw.bb26.i.cleanup_crit_edge, label %if.end30.i

sw.bb26.i.cleanup_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr31.i = getelementptr i8, ptr %p.addr.0.i, i32 4
  br label %do.cond.i

sw.bb36.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.0.i)
  %cmp37.i = icmp ult i32 %len.addr.0.i, 2
  br i1 %cmp37.i, label %sw.bb36.i.cleanup_crit_edge, label %if.end40.i

sw.bb36.i.cleanup_crit_edge:                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40.i:                                       ; preds = %sw.bb36.i
  %arrayidx41.i = getelementptr i8, ptr %p.addr.0.i, i32 1
  %17 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = zext i8 %18 to i32
  %add43.i = add nuw nsw i32 %conv42.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %add43.i)
  %cmp44.i = icmp ult i32 %len.addr.0.i, %add43.i
  br i1 %cmp44.i, label %if.end40.i.cleanup_crit_edge, label %if.end47.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47.i:                                       ; preds = %if.end40.i
  %19 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %8, label %if.end47.i.if.end148.i_crit_edge [
    i8 -23, label %if.then51.i
    i8 -21, label %if.then64.i
    i8 -19, label %if.then79.i
    i8 -18, label %if.then90.i
    i8 -17, label %if.then101.i
  ]

if.end47.i.if.end148.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fac_national_digis_received.0.i)
  %tobool.not.i = icmp eq i32 %fac_national_digis_received.0.i, 0
  br i1 %tobool.not.i, label %if.then52.i, label %if.then51.i.if.end148.i_crit_edge

if.then51.i.if.end148.i_crit_edge:                ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then52.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp54.i = icmp ult i8 %18, 7
  br i1 %cmp54.i, label %if.then52.i.cleanup_crit_edge, label %if.end57.i

if.then52.i.cleanup_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr59.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  %20 = call ptr @memcpy(ptr %source_digis.i, ptr %add.ptr59.i, i32 7)
  %21 = ptrtoint ptr %source_ndigis106.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %source_ndigis106.i, align 4
  br label %if.end148.i

if.then64.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fac_national_digis_received.0.i)
  %tobool65.not.i = icmp eq i32 %fac_national_digis_received.0.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.then64.i.if.end148.i_crit_edge

if.then64.i.if.end148.i_crit_edge:                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then66.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp68.i = icmp ult i8 %18, 7
  br i1 %cmp68.i, label %if.then66.i.cleanup_crit_edge, label %if.end71.i

if.then66.i.cleanup_crit_edge:                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71.i:                                       ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr73.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  %22 = call ptr @memcpy(ptr %dest_digis.i, ptr %add.ptr73.i, i32 7)
  %23 = ptrtoint ptr %dest_ndigis107.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dest_ndigis107.i, align 1
  br label %if.end148.i

if.then79.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp81.i = icmp ult i8 %18, 7
  br i1 %cmp81.i, label %if.then79.i.cleanup_crit_edge, label %if.end84.i

if.then79.i.cleanup_crit_edge:                    ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84.i:                                       ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr85.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  %24 = call ptr @memcpy(ptr %fail_call.i, ptr %add.ptr85.i, i32 7)
  br label %if.end148.i

if.then90.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %cmp92.i = icmp ult i8 %18, 6
  br i1 %cmp92.i, label %if.then90.i.cleanup_crit_edge, label %if.end95.i

if.then90.i.cleanup_crit_edge:                    ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95.i:                                       ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr96.i = getelementptr i8, ptr %p.addr.0.i, i32 3
  %25 = call ptr @memcpy(ptr %fail_addr.i, ptr %add.ptr96.i, i32 5)
  br label %if.end148.i

if.then101.i:                                     ; preds = %if.end47.i
  %rem230.i = urem i8 %18, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem230.i)
  %tobool103.not.i = icmp eq i8 %rem230.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %if.then101.i.cleanup_crit_edge

if.then101.i.cleanup_crit_edge:                   ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end105.i:                                      ; preds = %if.then101.i
  %26 = ptrtoint ptr %source_ndigis106.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %source_ndigis106.i, align 4
  %27 = ptrtoint ptr %dest_ndigis107.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %dest_ndigis107.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp111232.not.i = icmp eq i8 %18, 0
  br i1 %cmp111232.not.i, label %if.end105.i.if.end148.i_crit_edge, label %for.body.preheader.i

if.end105.i.if.end148.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

for.body.preheader.i:                             ; preds = %if.end105.i
  %add.ptr108.i = getelementptr i8, ptr %p.addr.0.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %conv109235.i = phi i32 [ %conv109.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pt.0233.i = phi ptr [ %add.ptr140.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr108.i, %for.body.preheader.i ]
  %arrayidx113.i = getelementptr i8, ptr %pt.0233.i, i32 6
  %28 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool116.not.i = icmp sgt i8 %29, -1
  br i1 %tobool116.not.i, label %if.else127.i, label %if.then117.i

if.then117.i:                                     ; preds = %for.body.i
  %30 = ptrtoint ptr %dest_ndigis107.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dest_ndigis107.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp120.i = icmp ugt i8 %31, 5
  br i1 %cmp120.i, label %if.then117.i.cleanup_crit_edge, label %if.end123.i

if.then117.i.cleanup_crit_edge:                   ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end123.i:                                      ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv119.i = zext i8 %31 to i32
  %inc.i = add nuw nsw i8 %31, 1
  %32 = ptrtoint ptr %dest_ndigis107.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %inc.i, ptr %dest_ndigis107.i, align 1
  %arrayidx126.i = getelementptr %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 7, i32 %conv119.i
  br label %for.inc.i

if.else127.i:                                     ; preds = %for.body.i
  %33 = ptrtoint ptr %source_ndigis106.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %source_ndigis106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %cmp130.i = icmp ugt i8 %34, 5
  br i1 %cmp130.i, label %if.else127.i.cleanup_crit_edge, label %if.end133.i

if.else127.i.cleanup_crit_edge:                   ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133.i:                                      ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv129.i = zext i8 %34 to i32
  %inc136.i = add nuw nsw i8 %34, 1
  %35 = ptrtoint ptr %source_ndigis106.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %inc136.i, ptr %source_ndigis106.i, align 4
  %arrayidx138.i = getelementptr %struct.rose_facilities_struct, ptr %facilities, i32 0, i32 6, i32 %conv129.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end133.i, %if.end123.i
  %arrayidx126.sink.i = phi ptr [ %arrayidx126.i, %if.end123.i ], [ %arrayidx138.i, %if.end133.i ]
  %36 = call ptr @memcpy(ptr %arrayidx126.sink.i, ptr %pt.0233.i, i32 7)
  %add.ptr140.i = getelementptr i8, ptr %pt.0233.i, i32 7
  %add142.i = add nuw nsw i32 %conv109235.i, 7
  %conv109.i = and i32 %add142.i, 255
  %cmp111.i = icmp ult i32 %conv109.i, %conv42.i
  br i1 %cmp111.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end148.i_crit_edge

for.inc.i.if.end148.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end148.i:                                      ; preds = %for.inc.i.if.end148.i_crit_edge, %if.end105.i.if.end148.i_crit_edge, %if.end95.i, %if.end84.i, %if.end71.i, %if.then64.i.if.end148.i_crit_edge, %if.end57.i, %if.then51.i.if.end148.i_crit_edge, %if.end47.i.if.end148.i_crit_edge
  %fac_national_digis_received.1.i = phi i32 [ 1, %if.then51.i.if.end148.i_crit_edge ], [ 0, %if.end57.i ], [ 1, %if.then64.i.if.end148.i_crit_edge ], [ 0, %if.end71.i ], [ %fac_national_digis_received.0.i, %if.end84.i ], [ %fac_national_digis_received.0.i, %if.end95.i ], [ %fac_national_digis_received.0.i, %if.end47.i.if.end148.i_crit_edge ], [ 1, %if.end105.i.if.end148.i_crit_edge ], [ 1, %for.inc.i.if.end148.i_crit_edge ]
  %add.ptr151.i = getelementptr i8, ptr %p.addr.0.i, i32 %add43.i
  %37 = trunc i32 %add43.i to i8
  br label %do.cond.i

do.body.unreachabledefault.i:                     ; preds = %do.body.i
  unreachable

do.cond.i:                                        ; preds = %if.end148.i, %if.end30.i, %if.end20.i, %if.end.i
  %p.addr.1.i = phi ptr [ %add.ptr151.i, %if.end148.i ], [ %add.ptr31.i, %if.end30.i ], [ %add.ptr21.i, %if.end20.i ], [ %add.ptr.i, %if.end.i ]
  %add43.pn.i = phi i32 [ %add43.i, %if.end148.i ], [ 4, %if.end30.i ], [ 3, %if.end20.i ], [ 2, %if.end.i ]
  %.pn.i = phi i8 [ %37, %if.end148.i ], [ 4, %if.end30.i ], [ 3, %if.end20.i ], [ 2, %if.end.i ]
  %fac_national_digis_received.2.i = phi i32 [ %fac_national_digis_received.1.i, %if.end148.i ], [ %fac_national_digis_received.0.i, %if.end30.i ], [ %fac_national_digis_received.0.i, %if.end20.i ], [ %fac_national_digis_received.0.i, %if.end.i ]
  %n.1.i = add i8 %.pn.i, %n.0.i
  %38 = ptrtoint ptr %p.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %p.addr.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp161.not.i = icmp ne i8 %39, 0
  %len.addr.1.i = sub i32 %len.addr.0.i, %add43.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %cmp163.i = icmp sgt i32 %len.addr.1.i, 0
  %or.cond.i = select i1 %cmp161.not.i, i1 %cmp163.i, i1 false
  br i1 %or.cond.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.if.end20_crit_edge

do.cond.i.if.end20_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb11:                                          ; preds = %while.body
  %add.ptr12 = getelementptr i8, ptr %p.addr.0117, i32 2
  %sub13 = add nsw i32 %facilities_len.0116, -2
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %callsign.i) #8
  %40 = call ptr @memset(ptr %callsign.i, i32 255, i32 11)
  %41 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr.i76 = load i8, ptr %add.ptr12, align 1
  br label %do.body.i80

do.body.i80:                                      ; preds = %do.cond.i94.do.body.i80_crit_edge, %sw.bb11
  %42 = phi i8 [ %60, %do.cond.i94.do.body.i80_crit_edge ], [ %.pr.i76, %sw.bb11 ]
  %p.addr.0.i77 = phi ptr [ %p.addr.1.i90, %do.cond.i94.do.body.i80_crit_edge ], [ %add.ptr12, %sw.bb11 ]
  %len.addr.0.i78 = phi i32 [ %len.addr.1.i93, %do.cond.i94.do.body.i80_crit_edge ], [ %sub13, %sw.bb11 ]
  %n.0.i79 = phi i8 [ %n.1.i92, %do.cond.i94.do.body.i80_crit_edge ], [ 0, %sw.bb11 ]
  %43 = lshr i8 %42, 6
  %44 = zext i8 %43 to i32
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %44, label %do.body.unreachabledefault.i89 [
    i32 0, label %sw.bb.i82
    i32 1, label %sw.bb4.i86
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb24.i
  ]

sw.bb.i82:                                        ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.0.i78)
  %cmp.i81 = icmp slt i32 %len.addr.0.i78, 2
  br i1 %cmp.i81, label %sw.bb.i82.sw.epilog.thread105_crit_edge, label %if.end.i84

sw.bb.i82.sw.epilog.thread105_crit_edge:          ; preds = %sw.bb.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread105

if.end.i84:                                       ; preds = %sw.bb.i82
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i83 = getelementptr i8, ptr %p.addr.0.i77, i32 2
  br label %do.cond.i94

sw.bb4.i86:                                       ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.i78)
  %cmp5.i85 = icmp slt i32 %len.addr.0.i78, 3
  br i1 %cmp5.i85, label %sw.bb4.i86.sw.epilog.thread105_crit_edge, label %if.end8.i87

sw.bb4.i86.sw.epilog.thread105_crit_edge:         ; preds = %sw.bb4.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread105

if.end8.i87:                                      ; preds = %sw.bb4.i86
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr9.i = getelementptr i8, ptr %p.addr.0.i77, i32 3
  br label %do.cond.i94

sw.bb14.i:                                        ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0.i78)
  %cmp15.i = icmp slt i32 %len.addr.0.i78, 4
  br i1 %cmp15.i, label %sw.bb14.i.sw.epilog.thread105_crit_edge, label %if.end18.i

sw.bb14.i.sw.epilog.thread105_crit_edge:          ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread105

if.end18.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr19.i = getelementptr i8, ptr %p.addr.0.i77, i32 4
  br label %do.cond.i94

sw.bb24.i:                                        ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.0.i78)
  %cmp25.i = icmp slt i32 %len.addr.0.i78, 2
  br i1 %cmp25.i, label %sw.bb24.i.sw.epilog.thread105_crit_edge, label %if.end28.i

sw.bb24.i.sw.epilog.thread105_crit_edge:          ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread105

if.end28.i:                                       ; preds = %sw.bb24.i
  %arrayidx.i88 = getelementptr i8, ptr %p.addr.0.i77, i32 1
  %46 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i88, align 1
  %conv29.i = zext i8 %47 to i32
  %48 = add i8 %47, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %48)
  %49 = icmp ult i8 %48, -11
  br i1 %49, label %if.end28.i.sw.epilog.thread105_crit_edge, label %if.end36.i

if.end28.i.sw.epilog.thread105_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread105

if.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -55, i8 %42)
  %cmp38.i = icmp eq i8 %42, -55
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.if.end49.i_crit_edge

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr41.i = getelementptr i8, ptr %p.addr.0.i77, i32 7
  %50 = call ptr @memcpy(ptr %facilities, ptr %add.ptr41.i, i32 5)
  %add.ptr42.i = getelementptr i8, ptr %p.addr.0.i77, i32 12
  %sub44.i = add nsw i32 %conv29.i, -10
  %51 = call ptr @memcpy(ptr %callsign.i, ptr %add.ptr42.i, i32 %sub44.i)
  %arrayidx47.i = getelementptr [11 x i8], ptr %callsign.i, i32 0, i32 %sub44.i
  %52 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx47.i, align 1
  call void @asc2ax(ptr noundef %source_call.i, ptr noundef nonnull %callsign.i) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end49.i_crit_edge
  %53 = ptrtoint ptr %p.addr.0.i77 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %p.addr.0.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -53, i8 %54)
  %cmp51.i = icmp eq i8 %54, -53
  br i1 %cmp51.i, label %if.then53.i, label %if.end49.i.if.end63.i_crit_edge

if.end49.i.if.end63.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr54.i = getelementptr i8, ptr %p.addr.0.i77, i32 7
  %55 = call ptr @memcpy(ptr %dest_addr.i, ptr %add.ptr54.i, i32 5)
  %add.ptr56.i = getelementptr i8, ptr %p.addr.0.i77, i32 12
  %sub58.i = add nsw i32 %conv29.i, -10
  %56 = call ptr @memcpy(ptr %callsign.i, ptr %add.ptr56.i, i32 %sub58.i)
  %arrayidx61.i = getelementptr [11 x i8], ptr %callsign.i, i32 0, i32 %sub58.i
  %57 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx61.i, align 1
  call void @asc2ax(ptr noundef %dest_call.i, ptr noundef nonnull %callsign.i) #8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then53.i, %if.end49.i.if.end63.i_crit_edge
  %add65.i = add nuw nsw i32 %conv29.i, 2
  %add.ptr66.i = getelementptr i8, ptr %p.addr.0.i77, i32 %add65.i
  %58 = trunc i32 %add65.i to i8
  br label %do.cond.i94

do.body.unreachabledefault.i89:                   ; preds = %do.body.i80
  unreachable

do.cond.i94:                                      ; preds = %if.end63.i, %if.end18.i, %if.end8.i87, %if.end.i84
  %p.addr.1.i90 = phi ptr [ %add.ptr66.i, %if.end63.i ], [ %add.ptr19.i, %if.end18.i ], [ %add.ptr9.i, %if.end8.i87 ], [ %add.ptr.i83, %if.end.i84 ]
  %add65.pn.i = phi i32 [ %add65.i, %if.end63.i ], [ 4, %if.end18.i ], [ 3, %if.end8.i87 ], [ 2, %if.end.i84 ]
  %.pn.i91 = phi i8 [ %58, %if.end63.i ], [ 4, %if.end18.i ], [ 3, %if.end8.i87 ], [ 2, %if.end.i84 ]
  %n.1.i92 = add i8 %.pn.i91, %n.0.i79
  %59 = ptrtoint ptr %p.addr.1.i90 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %p.addr.1.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp76.not.i = icmp ne i8 %60, 0
  %len.addr.1.i93 = sub nsw i32 %len.addr.0.i78, %add65.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i93)
  %cmp78.i = icmp sgt i32 %len.addr.1.i93, 0
  %or.cond118.i = select i1 %cmp76.not.i, i1 %cmp78.i, i1 false
  br i1 %or.cond118.i, label %do.cond.i94.do.body.i80_crit_edge, label %sw.epilog

do.cond.i94.do.body.i80_crit_edge:                ; preds = %do.cond.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i80

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = zext i8 %5 to i32
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv10) #12
  br label %if.end20

sw.epilog.thread105:                              ; preds = %if.end28.i.sw.epilog.thread105_crit_edge, %sw.bb24.i.sw.epilog.thread105_crit_edge, %sw.bb14.i.sw.epilog.thread105_crit_edge, %sw.bb4.i86.sw.epilog.thread105_crit_edge, %sw.bb.i82.sw.epilog.thread105_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %callsign.i) #8
  br label %cleanup

sw.epilog:                                        ; preds = %do.cond.i94
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %callsign.i) #8
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog, %do.end, %do.cond.i.if.end20_crit_edge
  %len.0103.shrunk = phi i8 [ %n.1.i92, %sw.epilog ], [ 1, %do.end ], [ %n.1.i, %do.cond.i.if.end20_crit_edge ]
  %len.0103 = zext i8 %len.0103.shrunk to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %len.0103)
  %cmp21.not = icmp sgt i32 %dec, %len.0103
  br i1 %cmp21.not, label %if.end49, label %do.end33, !prof !20

do.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 426, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end20
  %add = add nuw nsw i32 %len.0103, 1
  %sub50 = sub i32 %dec, %add
  %add.ptr52 = getelementptr i8, ptr %incdec.ptr9, i32 %add
  %cmp4 = icmp sgt i32 %sub50, 2
  br i1 %cmp4, label %if.end49.land.rhs_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end49.land.rhs_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %facilities_len.0.lcssa = phi i32 [ %conv, %while.cond.preheader.while.end_crit_edge ], [ %sub50, %if.end49.while.end_crit_edge ], [ %facilities_len.0116, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %facilities_len.0.lcssa)
  %cmp53 = icmp eq i32 %facilities_len.0.lcssa, 0
  %conv54 = zext i1 %cmp53 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end33, %sw.epilog.thread105, %if.else127.i.cleanup_crit_edge, %if.then117.i.cleanup_crit_edge, %if.then101.i.cleanup_crit_edge, %if.then90.i.cleanup_crit_edge, %if.then79.i.cleanup_crit_edge, %if.then66.i.cleanup_crit_edge, %if.then52.i.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %sw.bb36.i.cleanup_crit_edge, %sw.bb26.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end33 ], [ %conv54, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.thread105 ], [ 0, %if.then117.i.cleanup_crit_edge ], [ 0, %if.else127.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %sw.bb4.i.cleanup_crit_edge ], [ 0, %sw.bb26.i.cleanup_crit_edge ], [ 0, %sw.bb36.i.cleanup_crit_edge ], [ 0, %if.end40.i.cleanup_crit_edge ], [ 0, %if.then52.i.cleanup_crit_edge ], [ 0, %if.then66.i.cleanup_crit_edge ], [ 0, %if.then79.i.cleanup_crit_edge ], [ 0, %if.then90.i.cleanup_crit_edge ], [ 0, %if.then101.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_disconnect(ptr noundef %sk, i32 noundef %reason, i32 noundef %cause, i32 noundef %diagnostic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rose_stop_timer(ptr noundef %sk) #8
  tail call void @rose_stop_idletimer(ptr noundef %sk) #8
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue.i) #8
  %ack_queue.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 28
  tail call void @skb_queue_purge(ptr noundef %ack_queue.i) #8
  %lci = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 11
  %0 = ptrtoint ptr %lci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lci, align 8
  %state = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cause)
  %cmp.not = icmp eq i32 %cause, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %cause to i8
  %cause1 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 17
  %2 = ptrtoint ptr %cause1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %cause1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %diagnostic)
  %cmp2.not = icmp eq i32 %diagnostic, -1
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i32 %diagnostic to i8
  %diagnostic6 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 18
  %3 = ptrtoint ptr %diagnostic6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %diagnostic6, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
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
  br i1 %tobool.i.not, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end7
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
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asc2ax(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax2asc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rose/rose_subr.c", i32 193, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rose_write_internal._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rose_write_internal._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rose/rose_subr.c", i32 419, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rose_parse_facilities._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rose_parse_facilities._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
