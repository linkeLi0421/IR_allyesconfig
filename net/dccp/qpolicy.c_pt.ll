; ModuleID = '/llk/IR_all_yes/net/dccp/qpolicy.c_pt.bc'
source_filename = "../net/dccp/qpolicy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dccp_qpolicy_operations = type { ptr, ptr, ptr, i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }

@qpol_table = internal constant { [2 x %struct.dccp_qpolicy_operations], [32 x i8] } { [2 x %struct.dccp_qpolicy_operations] [%struct.dccp_qpolicy_operations { ptr @qpolicy_simple_push, ptr @qpolicy_simple_full, ptr @qpolicy_simple_top, i32 0 }, %struct.dccp_qpolicy_operations { ptr @qpolicy_simple_push, ptr @qpolicy_prio_full, ptr @qpolicy_prio_best_skb, i32 1 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"qpol_table\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/dccp/qpolicy.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 77, i32 39 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @qpol_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpol_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_qpolicy_push(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_qpolicy = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %dccps_qpolicy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dccps_qpolicy, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [2 x %struct.dccp_qpolicy_operations], ptr @qpol_table, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void %3(ptr noundef %sk, ptr noundef %skb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dccp_qpolicy_full(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_qpolicy = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %dccps_qpolicy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dccps_qpolicy, align 8
  %idxprom = zext i8 %1 to i32
  %full = getelementptr [2 x %struct.dccp_qpolicy_operations], ptr @qpol_table, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full, align 4
  %call1 = tail call zeroext i1 %3(ptr noundef %sk) #6
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_qpolicy_drop(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %skb, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_unlink(ptr noundef nonnull %skb, ptr noundef %sk_write_queue) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_qpolicy_top(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_qpolicy = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %dccps_qpolicy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dccps_qpolicy, align 8
  %idxprom = zext i8 %1 to i32
  %top = getelementptr [2 x %struct.dccp_qpolicy_operations], ptr @qpol_table, i32 0, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top, align 4
  %call1 = tail call ptr %3(ptr noundef %sk) #6
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_qpolicy_pop(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_qpolicy.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %dccps_qpolicy.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dccps_qpolicy.i, align 8
  %idxprom.i = zext i8 %1 to i32
  %top.i = getelementptr [2 x %struct.dccp_qpolicy_operations], ptr @qpol_table, i32 0, i32 %idxprom.i, i32 2
  %2 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top.i, align 4
  %call1.i = tail call ptr %3(ptr noundef %sk) #6
  %cmp.not = icmp eq ptr %call1.i, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %priority, align 4
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_unlink(ptr noundef nonnull %call1.i, ptr noundef %sk_write_queue) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call1.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dccp_qpolicy_param_ok(ptr nocapture noundef readonly %sk, i32 noundef %param) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.ctpop.i32(i32 %param), !range !11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dccps_qpolicy = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 27
  %2 = ptrtoint ptr %dccps_qpolicy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dccps_qpolicy, align 8
  %idxprom = zext i8 %3 to i32
  %params = getelementptr [2 x %struct.dccp_qpolicy_operations], ptr @qpol_table, i32 0, i32 %idxprom, i32 3
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %and2 = and i32 %5, %param
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %param)
  %cmp = icmp eq i32 %and2, %param
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qpolicy_simple_push(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef %skb) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @qpolicy_simple_full(ptr nocapture noundef readonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_tx_qlen = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %dccps_tx_qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dccps_tx_qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %qlen = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp uge i32 %3, %1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qpolicy_simple_top(ptr noundef readonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i = icmp eq ptr %1, %sk_write_queue
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %1
  ret ptr %spec.store.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @qpolicy_prio_full(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_tx_qlen.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %dccps_tx_qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dccps_tx_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %qpolicy_simple_full.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

qpolicy_simple_full.exit:                         ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i.not = icmp ult i32 %3, %1
  br i1 %cmp.i.not, label %qpolicy_simple_full.exit.if.end_crit_edge, label %if.then

qpolicy_simple_full.exit.if.end_crit_edge:        ; preds = %qpolicy_simple_full.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %qpolicy_simple_full.exit
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %4 = ptrtoint ptr %sk_write_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %skb.012.i = load ptr, ptr %sk_write_queue.i, align 8
  %cmp.not13.i = icmp eq ptr %skb.012.i, %sk_write_queue.i
  br i1 %cmp.not13.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %skb.015.i = phi ptr [ %skb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %skb.012.i, %if.then.for.body.i_crit_edge ]
  %worst.014.i = phi ptr [ %worst.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then.for.body.i_crit_edge ]
  %cmp2.i = icmp eq ptr %worst.014.i, null
  br i1 %cmp2.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb.015.i, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %priority3.i = getelementptr inbounds %struct.sk_buff, ptr %worst.014.i, i32 0, i32 15, i32 0, i32 6
  %7 = ptrtoint ptr %priority3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.i = icmp ult i32 %6, %8
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %worst.1.i = phi ptr [ %skb.015.i, %if.then.i ], [ %worst.014.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %9 = ptrtoint ptr %skb.015.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %skb.0.i = load ptr, ptr %skb.015.i, align 8
  %cmp.not.i = icmp eq ptr %skb.0.i, %sk_write_queue.i
  br i1 %cmp.not.i, label %qpolicy_prio_worst_skb.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

qpolicy_prio_worst_skb.exit:                      ; preds = %for.inc.i
  %cmp.not.i4 = icmp eq ptr %worst.1.i, null
  br i1 %cmp.not.i4, label %qpolicy_prio_worst_skb.exit.if.end_crit_edge, label %if.then.i6

qpolicy_prio_worst_skb.exit.if.end_crit_edge:     ; preds = %qpolicy_prio_worst_skb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i6:                                       ; preds = %qpolicy_prio_worst_skb.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @skb_unlink(ptr noundef nonnull %worst.1.i, ptr noundef %sk_write_queue.i) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %worst.1.i, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i6, %qpolicy_prio_worst_skb.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %qpolicy_simple_full.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i1 false
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @qpolicy_prio_best_skb(ptr noundef readonly %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.012 = load ptr, ptr %sk_write_queue, align 8
  %cmp.not13 = icmp eq ptr %skb.012, %sk_write_queue
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %skb.015 = phi ptr [ %skb.0, %for.inc.for.body_crit_edge ], [ %skb.012, %entry.for.body_crit_edge ]
  %best.014 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %cmp2 = icmp eq ptr %best.014, null
  br i1 %cmp2, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.015, i32 0, i32 15, i32 0, i32 6
  %1 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %priority, align 4
  %priority3 = getelementptr inbounds %struct.sk_buff, ptr %best.014, i32 0, i32 15, i32 0, i32 6
  %3 = ptrtoint ptr %priority3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp4 = icmp ugt i32 %2, %4
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %best.1 = phi ptr [ %skb.015, %if.then ], [ %best.014, %lor.lhs.false.for.inc_crit_edge ]
  %5 = ptrtoint ptr %skb.015 to i32
  call void @__asan_load4_noabort(i32 %5)
  %skb.0 = load ptr, ptr %skb.015, align 8
  %cmp.not = icmp eq ptr %skb.0, %sk_write_queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %best.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %best.1, %for.inc.for.end_crit_edge ]
  ret ptr %best.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @qpol_table, !1, !"qpol_table", i1 false, i1 false}
!1 = !{!"../net/dccp/qpolicy.c", i32 77, i32 39}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
