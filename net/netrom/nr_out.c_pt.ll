; ModuleID = '/llk/IR_all_yes/net/netrom/nr_out.c_pt.bc'
source_filename = "../net/netrom/nr_out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.nr_sock = type { %struct.sock, %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ax25_address = type { [7 x i8] }

@sysctl_netrom_network_ttl_initialiser = external dso_local local_unnamed_addr global i32, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_output(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #4
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !9
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len1, align 4
  %3 = add i32 %2, -242
  call void @__sanitizer_cov_trace_const_cmp4(i32 -237, i32 %3)
  %cmp = icmp ult i32 %3, -237
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %transport.sroa.0.0.copyload = load i8, ptr %5, align 1
  %transport.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 1
  %7 = ptrtoint ptr %transport.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %transport.sroa.5.0.copyload = load i8, ptr %transport.sroa.5.0..sroa_idx, align 1
  %transport.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 2
  %8 = ptrtoint ptr %transport.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %transport.sroa.6.0.copyload = load i8, ptr %transport.sroa.6.0..sroa_idx, align 1
  %transport.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 3
  %9 = ptrtoint ptr %transport.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %transport.sroa.7.0.copyload = load i8, ptr %transport.sroa.7.0..sroa_idx, align 1
  %transport.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %10 = ptrtoint ptr %transport.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %transport.sroa.8.0.copyload = load i8, ptr %transport.sroa.8.0..sroa_idx, align 1
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 5) #4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %15 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.not61 = icmp eq i32 %16, 0
  br i1 %cmp4.not61, label %if.then.while.end_crit_edge, label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  %add = add i32 %sub.ptr.sub.i, 236
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %call5 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add, i32 noundef 0, ptr noundef nonnull %err) #4
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %data.i49 = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 19
  %17 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i49, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i, ptr %data.i49, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %20, i32 %sub.ptr.sub.i
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %21 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len1, align 4
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 236)
  %call11 = call ptr @skb_put(ptr noundef nonnull %call5, i32 noundef %23) #4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = call ptr @memcpy(ptr %call11, ptr %25, i32 %23)
  %call12 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %23) #4
  %call13 = call ptr @skb_push(ptr noundef nonnull %call5, i32 noundef 5) #4
  %27 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i49, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %transport.sroa.0.0.copyload, ptr %28, align 1
  %transport.sroa.5.0..sroa_idx53 = getelementptr inbounds i8, ptr %28, i32 1
  %30 = ptrtoint ptr %transport.sroa.5.0..sroa_idx53 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %transport.sroa.5.0.copyload, ptr %transport.sroa.5.0..sroa_idx53, align 1
  %transport.sroa.6.0..sroa_idx55 = getelementptr inbounds i8, ptr %28, i32 2
  %31 = ptrtoint ptr %transport.sroa.6.0..sroa_idx55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %transport.sroa.6.0.copyload, ptr %transport.sroa.6.0..sroa_idx55, align 1
  %transport.sroa.7.0..sroa_idx57 = getelementptr inbounds i8, ptr %28, i32 3
  %32 = ptrtoint ptr %transport.sroa.7.0..sroa_idx57 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %transport.sroa.7.0.copyload, ptr %transport.sroa.7.0..sroa_idx57, align 1
  %transport.sroa.8.0..sroa_idx59 = getelementptr inbounds i8, ptr %28, i32 4
  %33 = ptrtoint ptr %transport.sroa.8.0..sroa_idx59 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %transport.sroa.8.0.copyload, ptr %transport.sroa.8.0..sroa_idx59, align 1
  %34 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16.not = icmp eq i32 %35, 0
  br i1 %cmp16.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i49, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %40 = or i8 %39, 32
  store i8 %40, ptr %arrayidx, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call5) #4
  %41 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len1, align 4
  %cmp4.not = icmp eq i32 %42, 0
  br i1 %cmp4.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.then.while.end_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sk_write_queue20 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue20, ptr noundef %skb) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %while.end
  call void @nr_kick(ptr noundef %sk)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_kick(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %condition = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %condition, align 1
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %5 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i = icmp eq ptr %6, %sk_write_queue
  %tobool5.not92 = icmp eq ptr %6, null
  %tobool5.not = or i1 %cmp.i, %tobool5.not92
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  %7 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ack_queue, align 4
  %cmp.i89 = icmp eq ptr %8, %ack_queue
  %cmp993 = icmp eq ptr %8, null
  %cmp9 = or i1 %cmp.i89, %cmp993
  %va = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 15
  %vs = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 13
  %cond.in.in = select i1 %cmp9, ptr %va, ptr %vs
  %9 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %cond.in88 = load i16, ptr %cond.in.in, align 4
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %va, align 8
  %window = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %12 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %window, align 1
  %conv16 = zext i8 %13 to i16
  %add = add i16 %11, %conv16
  %rem = and i16 %add, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in88, i16 %rem)
  %cmp20 = icmp eq i16 %cond.in88, %rem
  br i1 %cmp20, label %if.end7.cleanup_crit_edge, label %if.end23

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %cond.in88, ptr %vs, align 4
  %call26 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #4
  %vr.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %source_addr.i.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 2
  %dest_addr.i.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end23
  %skb.0 = phi ptr [ %call26, %if.end23 ], [ %call46, %land.rhs.do.body_crit_edge ]
  %call27 = tail call ptr @skb_clone(ptr noundef %skb.0, i32 noundef 2592) #4
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then30, label %if.end.i

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @skb_queue_head(ptr noundef %sk_write_queue, ptr noundef %skb.0) #4
  br label %do.end

if.end.i:                                         ; preds = %do.body
  tail call void @skb_set_owner_w(ptr noundef nonnull %call27, ptr noundef %sk) #4
  %15 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vs, align 4
  %conv.i = trunc i16 %16 to i8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vr.i, align 2
  %conv1.i = trunc i16 %21 to i8
  %22 = load ptr, ptr %data.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i, ptr %arrayidx3.i, align 1
  %24 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %condition, align 1
  %26 = and i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx7.i, align 1
  %31 = or i8 %30, -128
  store i8 %31, ptr %arrayidx7.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  tail call void @nr_start_idletimer(ptr noundef %sk) #4
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call27, i32 noundef 15) #4
  %32 = call ptr @memcpy(ptr %call.i.i, ptr %source_addr.i.i, i32 7)
  %arrayidx.i.i = getelementptr i8, ptr %call.i.i, i32 6
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %35 = and i8 %34, 30
  %36 = or i8 %35, 96
  store i8 %36, ptr %arrayidx.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 7
  %37 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %dest_addr.i.i, i32 7)
  %arrayidx9.i.i = getelementptr i8, ptr %call.i.i, i32 13
  %38 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx9.i.i, align 1
  %40 = and i8 %39, 30
  %41 = or i8 %40, 97
  store i8 %41, ptr %arrayidx9.i.i, align 1
  %add.ptr21.i.i = getelementptr i8, ptr %call.i.i, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32))
  %42 = load i32, ptr @sysctl_netrom_network_ttl_initialiser, align 4
  %conv22.i.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv22.i.i, ptr %add.ptr21.i.i, align 1
  %call23.i.i = tail call i32 @nr_route_frame(ptr noundef nonnull %call27, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end10.i.nr_send_iframe.exit_crit_edge

if.end10.i.nr_send_iframe.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nr_send_iframe.exit

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #4
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 101) #4
  br label %nr_send_iframe.exit

nr_send_iframe.exit:                              ; preds = %if.then.i.i, %if.end10.i.nr_send_iframe.exit_crit_edge
  %44 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vs, align 4
  %46 = add i16 %45, 1
  %47 = and i16 %46, 255
  store i16 %47, ptr %vs, align 4
  tail call void @skb_queue_tail(ptr noundef %ack_queue, ptr noundef %skb.0) #4
  %48 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %rem)
  %cmp43.not = icmp eq i16 %49, %rem
  br i1 %cmp43.not, label %nr_send_iframe.exit.do.end_crit_edge, label %land.rhs

nr_send_iframe.exit.do.end_crit_edge:             ; preds = %nr_send_iframe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.rhs:                                         ; preds = %nr_send_iframe.exit
  %call46 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #4
  %cmp47.not = icmp eq ptr %call46, null
  br i1 %cmp47.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %nr_send_iframe.exit.do.end_crit_edge, %if.then30
  %50 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vr.i, align 2
  %vl = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 16
  %52 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %vl, align 2
  %53 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %condition, align 1
  %55 = and i8 %54, -2
  store i8 %55, ptr %condition, align 1
  %call53 = tail call i32 @nr_t1timer_running(ptr noundef %sk) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_start_t1timer(ptr noundef %sk) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.end.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_send_nak_frame(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %1, %ack_queue
  %cmp33 = icmp eq ptr %1, null
  %cmp = or i1 %cmp.i, %cmp33
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_clone(ptr noundef nonnull %1, i32 noundef 2592) #4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %va = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 15
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %va, align 8
  %conv = trunc i16 %3 to i8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %vr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %7 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vr, align 2
  %conv5 = trunc i16 %8 to i8
  %9 = load ptr, ptr %data, align 4
  %arrayidx7 = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %arrayidx7, align 1
  %condition = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %11 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %condition, align 1
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then9

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %arrayidx11 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %18 = or i8 %17, -128
  store i8 %18, ptr %arrayidx11, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end4.if.end14_crit_edge
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 15) #4
  %source_addr.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %call.i, ptr %source_addr.i, i32 7)
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 6
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = and i8 %21, 30
  %23 = or i8 %22, 96
  store i8 %23, ptr %arrayidx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 7
  %dest_addr.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %dest_addr.i, i32 7)
  %arrayidx9.i = getelementptr i8, ptr %call.i, i32 13
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.i, align 1
  %27 = and i8 %26, 30
  %28 = or i8 %27, 97
  store i8 %28, ptr %arrayidx9.i, align 1
  %add.ptr21.i = getelementptr i8, ptr %call.i, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32))
  %29 = load i32, ptr @sysctl_netrom_network_ttl_initialiser, align 4
  %conv22.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv22.i, ptr %add.ptr21.i, align 1
  %call23.i = tail call i32 @nr_route_frame(ptr noundef nonnull %call1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end14.nr_transmit_buffer.exit_crit_edge

if.end14.nr_transmit_buffer.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %nr_transmit_buffer.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #4
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 101) #4
  br label %nr_transmit_buffer.exit

nr_transmit_buffer.exit:                          ; preds = %if.then.i, %if.end14.nr_transmit_buffer.exit_crit_edge
  %31 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %condition, align 1
  %33 = and i8 %32, -2
  store i8 %33, ptr %condition, align 1
  %34 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vr, align 2
  %vl = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 16
  %36 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %vl, align 2
  tail call void @nr_stop_t1timer(ptr noundef %sk) #4
  br label %cleanup

cleanup:                                          ; preds = %nr_transmit_buffer.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_transmit_buffer(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 15) #4
  %source_addr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %call, ptr %source_addr, i32 7)
  %arrayidx = getelementptr i8, ptr %call, i32 6
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 30
  %4 = or i8 %3, 96
  store i8 %4, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %call, i32 7
  %dest_addr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %dest_addr, i32 7)
  %arrayidx9 = getelementptr i8, ptr %call, i32 13
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %8 = and i8 %7, 30
  %9 = or i8 %8, 97
  store i8 %9, ptr %arrayidx9, align 1
  %add.ptr21 = getelementptr i8, ptr %call, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_network_ttl_initialiser to i32))
  %10 = load i32, ptr @sysctl_netrom_network_ttl_initialiser, align 4
  %conv22 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv22, ptr %add.ptr21, align 1
  %call23 = tail call i32 @nr_route_frame(ptr noundef %skb, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 101) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_t1timer_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_route_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_establish_data_link(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %condition, align 1
  %n2count = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 18
  %1 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %n2count, align 1
  tail call void @nr_write_internal(ptr noundef %sk, i32 noundef 1) #4
  tail call void @nr_stop_t2timer(ptr noundef %sk) #4
  tail call void @nr_stop_t4timer(ptr noundef %sk) #4
  tail call void @nr_stop_idletimer(ptr noundef %sk) #4
  tail call void @nr_start_t1timer(ptr noundef %sk) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t4timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_enquiry_response(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 1
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reseq_queue = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 29
  %3 = ptrtoint ptr %reseq_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reseq_queue, align 4
  %cmp.i = icmp eq ptr %4, %reseq_queue
  %cmp.not16 = icmp eq ptr %4, null
  %cmp.not = or i1 %cmp.i, %cmp.not16
  %spec.select = select i1 %cmp.not, i32 6, i32 70
  br label %if.end4

if.end4:                                          ; preds = %if.else, %entry.if.end4_crit_edge
  %frametype.0 = phi i32 [ 134, %entry.if.end4_crit_edge ], [ %spec.select, %if.else ]
  tail call void @nr_write_internal(ptr noundef %sk, i32 noundef %frametype.0) #4
  %vr = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %5 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vr, align 2
  %vl = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 16
  %7 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vl, align 2
  %8 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %condition, align 1
  %10 = and i8 %9, -2
  store i8 %10, ptr %condition, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nr_check_iframes_acked(ptr noundef %sk, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vs = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp = icmp eq i16 %1, %nr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %nr) #4
  tail call void @nr_stop_t1timer(ptr noundef %sk) #4
  %n2count = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 18
  %2 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %n2count, align 1
  br label %if.end8

if.else:                                          ; preds = %entry
  %va = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %va, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %nr)
  %cmp5.not = icmp eq i16 %4, %nr
  br i1 %cmp5.not, label %if.else.if.end8_crit_edge, label %if.then7

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %nr) #4
  tail call void @nr_start_t1timer(ptr noundef %sk) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else.if.end8_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"auto-init"}
