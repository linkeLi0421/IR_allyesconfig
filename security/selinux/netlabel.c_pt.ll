; ModuleID = '/llk/IR_all_yes/security/selinux/netlabel.c_pt.bc'
source_filename = "../security/selinux/netlabel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_security_struct = type { i32, ptr, i32, i32, i16, i32 }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.149 }
%struct.anon.149 = type { %struct.anon.150, i32 }
%struct.anon.150 = type { ptr, i32 }
%struct.netlbl_lsm_cache = type { %struct.refcount_struct, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.164, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.164 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.sctp_stream = type { %struct.anon.165, %struct.anon.170, i16, i16, ptr, %union.anon.172, ptr }
%struct.anon.165 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.166, i32, ptr, i8 }
%union.anon.166 = type { i32 }
%struct.anon.170 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.171, i32, i32, i32, i8, i8 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { %struct.anon.174 }
%struct.anon.174 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.160 }
%union.anon.160 = type { ptr, [124 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@selinux_state = external dso_local global %struct.selinux_state, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967207]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_netlbl_cache_invalidate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netlbl_cache_invalidate() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_cache_invalidate() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_netlbl_err(ptr noundef %skb, i16 noundef zeroext %family, i32 noundef %error, i32 noundef %gateway) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netlbl_skbuff_err(ptr noundef %skb, i16 noundef zeroext %family, i32 noundef %error, i32 noundef %gateway) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_skbuff_err(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_netlbl_sk_security_free(ptr nocapture noundef readonly %sksec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nlbl_secattr = getelementptr inbounds %struct.sk_security_struct, ptr %sksec, i32 0, i32 1
  %0 = ptrtoint ptr %nlbl_secattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlbl_secattr, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netlbl_secattr_destroy(ptr noundef nonnull %1) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @selinux_netlbl_sk_security_reset(ptr nocapture noundef writeonly %sksec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sksec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sksec, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_skbuff_getsid(ptr noundef %skb, i16 noundef zeroext %family, ptr nocapture noundef writeonly %type, ptr noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #8
  %0 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %call = tail call i32 @netlbl_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sid, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  %call1 = call i32 @netlbl_skbuff_getattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %call.i = call i32 @security_netlbl_secattr_to_sid(ptr noundef nonnull @selinux_state, ptr noundef nonnull %secattr, ptr noundef %sid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then3
  %8 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %secattr, align 4
  %and.i = and i32 %9, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end5_crit_edge, label %if.then.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @netlbl_cache_add(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr) #8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %10 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sid, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.i, %land.lhs.true.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge
  %rc.0 = phi i32 [ %call1, %if.else ], [ %call.i, %if.then3.if.end5_crit_edge ], [ 0, %land.lhs.true.i.if.end5_crit_edge ], [ 0, %if.then.i ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type, align 4
  %14 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %secattr, align 4
  %and.i13 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.end5.if.end.i_crit_edge, label %if.then.i15

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i15:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %17) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i15, %if.end5.if.end.i_crit_edge
  %18 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %secattr, align 4
  %and2.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %21, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  call void @llvm.prefetch.p0(ptr %21, i32 1, i32 3, i32 1) #8
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !11

if.end5.i.i.i.i.i.if.end5.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  call void %24(ptr noundef %26) #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %21) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %27 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %secattr, align 4
  %and7.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.cleanup_crit_edge, label %if.then9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.end5.i
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %tobool.not3.i.i = icmp eq ptr %30, null
  br i1 %tobool.not3.i.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %32, %while.body.i.i.while.body.i.i_crit_edge ], [ %30, %if.then9.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #8
  %tobool.not.i16.i = icmp eq ptr %32, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.0, %if.end5.i.cleanup_crit_edge ], [ %rc.0, %if.then9.i.cleanup_crit_edge ], [ %rc.0, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_skbuff_getattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlbl_secattr_destroy(ptr nocapture noundef readonly %secattr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secattr, align 4
  %and = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %domain = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %secattr, align 4
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %cache = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i, !prof !11

if.end5.i.i.i.i.if.end5_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #8
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  tail call void %10(ptr noundef %12) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  tail call void @kfree(ptr noundef %7) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end3.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %13 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %secattr, align 4
  %and7 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %15 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attr, align 4
  %tobool.not3.i = icmp eq ptr %16, null
  br i1 %tobool.not3.i, label %if.then9.if.end10_crit_edge, label %if.then9.while.body.i_crit_edge

if.then9.while.body.i_crit_edge:                  ; preds = %if.then9
  br label %while.body.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then9.while.body.i_crit_edge
  %catmap.addr.04.i = phi ptr [ %18, %while.body.i.while.body.i_crit_edge ], [ %16, %if.then9.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i, i32 0, i32 2
  %17 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i) #8
  %tobool.not.i16 = icmp eq ptr %18, null
  br i1 %tobool.not.i16, label %while.body.i.if.end10_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %while.body.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_skbuff_setsid(ptr noundef %skb, i16 noundef zeroext %family, i32 noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  %secattr_storage = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr_storage) #8
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = call ptr @memset(ptr %secattr_storage, i32 255, i32 28)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.then6_crit_edge, label %land.lhs.true.i.i

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.if.then_crit_edge

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %skb_to_full_sk.exit.if.then6_crit_edge, label %skb_to_full_sk.exit.if.then_crit_edge

skb_to_full_sk.exit.if.then_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

skb_to_full_sk.exit.if.then6_crit_edge:           ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then:                                          ; preds = %skb_to_full_sk.exit.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge
  %sk.addr.0.i.i35 = phi ptr [ %8, %skb_to_full_sk.exit.if.then_crit_edge ], [ %3, %land.lhs.true.i.i.if.then_crit_edge ]
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i35, i32 0, i32 73
  %9 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_security, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp1.not = icmp eq i32 %12, 3
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup16_crit_edge

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.end:                                           ; preds = %if.then
  %nlbl_secattr.i = getelementptr inbounds %struct.sk_security_struct, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %nlbl_secattr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nlbl_secattr.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.end.if.then6_crit_edge, label %if.end.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then6_crit_edge, label %land.lhs.true.i

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

land.lhs.true.i:                                  ; preds = %if.end.i
  %secid.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %14, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %secid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sid)
  %cmp1.i = icmp eq i32 %18, %sid
  br i1 %cmp1.i, label %skbuff_setsid_return, label %land.lhs.true.i.if.then6_crit_edge

land.lhs.true.i.if.then6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true.i.if.then6_crit_edge, %if.end.i.if.then6_crit_edge, %if.end.if.then6_crit_edge, %skb_to_full_sk.exit.if.then6_crit_edge, %entry.if.then6_crit_edge
  %19 = call ptr @memset(ptr %secattr_storage, i32 0, i32 28)
  %call7 = call i32 @security_netlbl_sid_to_secattr(ptr noundef nonnull @selinux_state, i32 noundef %sid, ptr noundef nonnull %secattr_storage) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %skbuff_setsid_return.thread48, label %if.then6.if.then14_crit_edge

if.then6.if.then14_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

skbuff_setsid_return.thread48:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call1250 = call i32 @netlbl_skbuff_setattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr_storage) #8
  br label %if.then14

skbuff_setsid_return:                             ; preds = %land.lhs.true.i
  %call12 = tail call i32 @netlbl_skbuff_setattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %14) #8
  %cmp13 = icmp eq ptr %14, %secattr_storage
  br i1 %cmp13, label %skbuff_setsid_return.if.then14_crit_edge, label %skbuff_setsid_return.cleanup16_crit_edge

skbuff_setsid_return.cleanup16_crit_edge:         ; preds = %skbuff_setsid_return
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

skbuff_setsid_return.if.then14_crit_edge:         ; preds = %skbuff_setsid_return
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %skbuff_setsid_return.if.then14_crit_edge, %skbuff_setsid_return.thread48, %if.then6.if.then14_crit_edge
  %rc.046 = phi i32 [ %call12, %skbuff_setsid_return.if.then14_crit_edge ], [ %call1250, %skbuff_setsid_return.thread48 ], [ %call7, %if.then6.if.then14_crit_edge ]
  call fastcc void @netlbl_secattr_destroy(ptr noundef nonnull %secattr_storage)
  br label %cleanup16

cleanup16:                                        ; preds = %if.then14, %skbuff_setsid_return.cleanup16_crit_edge, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ %rc.046, %if.then14 ], [ %call12, %skbuff_setsid_return.cleanup16_crit_edge ], [ 0, %if.then.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr_storage) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_netlbl_sid_to_secattr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_skbuff_setattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_sctp_assoc_request(ptr nocapture noundef readonly %asoc, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  %addr4 = alloca %struct.sockaddr_in, align 4
  %addr6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #8
  %0 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %sk = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 4
  %sk_security = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 73
  %5 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_security, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr4) #8
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %addr4, i32 0, i32 2
  %8 = call ptr @memset(ptr %addr4, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %addr6) #8
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr6, i32 0, i32 3
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 3
  %10 = call ptr @memset(ptr %addr6, i32 255, i32 28)
  %11 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skc_family, align 8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge71
  ]

entry.if.end_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge71
  %14 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  %secid = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 90
  %15 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %secid, align 8
  %call = call i32 @security_netlbl_sid_to_secattr(ptr noundef nonnull @selinux_state, i32 noundef %16, ptr noundef nonnull %secattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %if.end14, label %if.end.assoc_request_return_crit_edge

if.end.assoc_request_return_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %assoc_request_return

if.end14:                                         ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  %22 = zext i8 %bf.lshr.mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.lshr.mask, label %if.end14.assoc_request_return_crit_edge [
    i8 64, label %if.then19
    i8 96, label %if.then30
  ]

if.end14.assoc_request_return_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %assoc_request_return

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %addr4 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %addr4, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr, align 4
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %7, align 4
  br label %if.end38

if.then30:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %addr6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 10, ptr %addr6, align 4
  %saddr32 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %28 = call ptr @memcpy(ptr %9, ptr %saddr32, i32 16)
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.then19
  %addr6.sink = phi ptr [ %addr6, %if.then30 ], [ %addr4, %if.then19 ]
  %29 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk, align 4
  %call35 = call i32 @netlbl_conn_setattr(ptr noundef %30, ptr noundef nonnull %addr6.sink, ptr noundef nonnull %secattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp39 = icmp eq i32 %call35, 0
  br i1 %cmp39, label %if.then41, label %if.end38.assoc_request_return_crit_edge

if.end38.assoc_request_return_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %assoc_request_return

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %6, align 4
  br label %assoc_request_return

assoc_request_return:                             ; preds = %if.then41, %if.end38.assoc_request_return_crit_edge, %if.end14.assoc_request_return_crit_edge, %if.end.assoc_request_return_crit_edge
  %rc.1 = phi i32 [ %call, %if.end.assoc_request_return_crit_edge ], [ 0, %if.then41 ], [ %call35, %if.end38.assoc_request_return_crit_edge ], [ -97, %if.end14.assoc_request_return_crit_edge ]
  %32 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %secattr, align 4
  %and.i = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %assoc_request_return.if.end.i_crit_edge, label %if.then.i

assoc_request_return.if.end.i_crit_edge:          ; preds = %assoc_request_return
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %assoc_request_return
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %35) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %assoc_request_return.if.end.i_crit_edge
  %36 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %secattr, align 4
  %and2.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  call void @llvm.prefetch.p0(ptr %39, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !11

if.end5.i.i.i.i.i.if.end5.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 3) #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %39, i32 0, i32 2
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  call void %42(ptr noundef %44) #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %39) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %45 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %secattr, align 4
  %and7.i = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.cleanup_crit_edge, label %if.then9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.end5.i
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  %tobool.not3.i.i = icmp eq ptr %48, null
  br i1 %tobool.not3.i.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %50, %while.body.i.i.while.body.i.i_crit_edge ], [ %48, %if.then9.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #8
  %tobool.not.i16.i = icmp eq ptr %50, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rc.1, %if.end5.i.cleanup_crit_edge ], [ %rc.1, %if.then9.i.cleanup_crit_edge ], [ %rc.1, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %addr6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr4) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_conn_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_inet_conn_request(ptr noundef %req, i16 noundef zeroext %family) local_unnamed_addr #0 align 64 {
entry:
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #8
  %0 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %3 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %family, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge14
  ]

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge14
  %4 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  %secid = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 10
  %5 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %secid, align 8
  %call = call i32 @security_netlbl_sid_to_secattr(ptr noundef nonnull @selinux_state, i32 noundef %6, ptr noundef nonnull %secattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %if.end8, label %if.end.inet_conn_request_return_crit_edge

if.end.inet_conn_request_return_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %inet_conn_request_return

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @netlbl_req_setattr(ptr noundef %req, ptr noundef nonnull %secattr) #8
  br label %inet_conn_request_return

inet_conn_request_return:                         ; preds = %if.end8, %if.end.inet_conn_request_return_crit_edge
  %rc.0 = phi i32 [ %call, %if.end.inet_conn_request_return_crit_edge ], [ %call9, %if.end8 ]
  %7 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secattr, align 4
  %and.i = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %inet_conn_request_return.if.end.i_crit_edge, label %if.then.i

inet_conn_request_return.if.end.i_crit_edge:      ; preds = %inet_conn_request_return
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %inet_conn_request_return
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %10) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %inet_conn_request_return.if.end.i_crit_edge
  %11 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %secattr, align 4
  %and2.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #8
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !11

if.end5.i.i.i.i.i.if.end5.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  call void %17(ptr noundef %19) #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %14) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %20 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %secattr, align 4
  %and7.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.cleanup_crit_edge, label %if.then9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.end5.i
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %tobool.not3.i.i = icmp eq ptr %23, null
  br i1 %tobool.not3.i.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %25, %while.body.i.i.while.body.i.i_crit_edge ], [ %23, %if.then9.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #8
  %tobool.not.i16.i = icmp eq ptr %25, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rc.0, %if.end5.i.cleanup_crit_edge ], [ %rc.0, %if.then9.i.cleanup_crit_edge ], [ %rc.0, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_req_setattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @selinux_netlbl_inet_csk_clone(ptr nocapture noundef readonly %sk, i16 noundef zeroext %family) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %family)
  %cmp = icmp eq i16 %family, 2
  %. = select i1 %cmp, i32 2, i32 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @selinux_netlbl_sctp_sk_clone(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %newsk) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %sk_security1 = getelementptr inbounds %struct.sock, ptr %newsk, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_socket_post_create(ptr noundef %sk, i16 noundef zeroext %family) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %2 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %family, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge23
  ]

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge23
  %nlbl_secattr.i = getelementptr inbounds %struct.sk_security_struct, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %nlbl_secattr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nlbl_secattr.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 28) #11
  %cmp2.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %sid.i = getelementptr inbounds %struct.sk_security_struct, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sid.i, align 4
  %call5.i = tail call i32 @security_netlbl_sid_to_secattr(ptr noundef nonnull @selinux_state, i32 noundef %7, ptr noundef nonnull %call7.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netlbl_secattr_destroy(ptr noundef nonnull %call7.i.i.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nlbl_secattr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i.i, ptr %nlbl_secattr.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.i, %if.end.if.end8_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i.i, %if.end8.i ], [ %4, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 @netlbl_sock_setattr(ptr noundef %sk, i16 noundef zeroext %family, ptr noundef nonnull %retval.0.i) #8
  %9 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call9, label %if.end8.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 -89, label %sw.bb10
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %1, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb, %if.end8.cleanup_crit_edge, %if.then7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb ], [ -12, %if.then7.i ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_sock_setattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_sock_rcv_skb(ptr nocapture noundef readonly %sksec, ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %ad) local_unnamed_addr #0 align 64 {
entry:
  %nlbl_sid = alloca i32, align 4
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlbl_sid) #8
  %0 = ptrtoint ptr %nlbl_sid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nlbl_sid, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #8
  %1 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %call = tail call i32 @netlbl_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  %call1 = call i32 @netlbl_skbuff_getattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %call.i = call i32 @security_netlbl_secattr_to_sid(ptr noundef nonnull @selinux_state, ptr noundef nonnull %secattr, ptr noundef nonnull %nlbl_sid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.then3
  %7 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secattr, align 4
  %and.i = and i32 %8, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end5_crit_edge, label %if.then.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @netlbl_cache_add(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef nonnull %secattr) #8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %9 = ptrtoint ptr %nlbl_sid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %nlbl_sid, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.i, %land.lhs.true.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge
  %rc.0 = phi i32 [ %call1, %if.else ], [ %call.i, %if.then3.if.end5_crit_edge ], [ 0, %land.lhs.true.i.if.end5_crit_edge ], [ 0, %if.then.i ]
  %10 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %secattr, align 4
  %and.i34 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i35, label %if.end5.if.end.i_crit_edge, label %if.then.i36

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i36:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %13) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i36, %if.end5.if.end.i_crit_edge
  %14 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %secattr, align 4
  %and2.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  call void @llvm.prefetch.p0(ptr %17, i32 1, i32 3, i32 1) #8
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !11

if.end5.i.i.i.i.i.if.end5.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  call void %20(ptr noundef %22) #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %17) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %23 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %secattr, align 4
  %and7.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.netlbl_secattr_destroy.exit_crit_edge, label %if.then9.i

if.end5.i.netlbl_secattr_destroy.exit_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netlbl_secattr_destroy.exit

if.then9.i:                                       ; preds = %if.end5.i
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %tobool.not3.i.i = icmp eq ptr %26, null
  br i1 %tobool.not3.i.i, label %if.then9.i.netlbl_secattr_destroy.exit_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.netlbl_secattr_destroy.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netlbl_secattr_destroy.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %28, %while.body.i.i.while.body.i.i_crit_edge ], [ %26, %if.then9.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #8
  %tobool.not.i16.i = icmp eq ptr %28, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.netlbl_secattr_destroy.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.netlbl_secattr_destroy.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netlbl_secattr_destroy.exit

netlbl_secattr_destroy.exit:                      ; preds = %while.body.i.i.netlbl_secattr_destroy.exit_crit_edge, %if.then9.i.netlbl_secattr_destroy.exit_crit_edge, %if.end5.i.netlbl_secattr_destroy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp6.not = icmp eq i32 %rc.0, 0
  br i1 %cmp6.not, label %if.end8, label %netlbl_secattr_destroy.exit.cleanup_crit_edge

netlbl_secattr_destroy.exit.cleanup_crit_edge:    ; preds = %netlbl_secattr_destroy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %netlbl_secattr_destroy.exit
  %sclass = getelementptr inbounds %struct.sk_security_struct, ptr %sksec, i32 0, i32 4
  %sid = getelementptr inbounds %struct.sk_security_struct, ptr %sksec, i32 0, i32 2
  %29 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sid, align 4
  %31 = ptrtoint ptr %nlbl_sid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlbl_sid, align 4
  %33 = ptrtoint ptr %sclass to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sclass, align 4
  %call11 = call i32 @avc_has_perm(ptr noundef nonnull @selinux_state, i32 noundef %30, i32 noundef %32, i16 noundef zeroext %34, i32 noundef 262144, ptr noundef %ad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %35 = ptrtoint ptr %nlbl_sid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nlbl_sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp16.not = icmp eq i32 %36, 3
  br i1 %cmp16.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @netlbl_skbuff_err(ptr noundef %skb, i16 noundef zeroext %family, i32 noundef %call11, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %netlbl_secattr_destroy.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rc.0, %netlbl_secattr_destroy.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call11, %if.then18 ], [ %call11, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlbl_sid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_has_perm(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_socket_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname) local_unnamed_addr #0 align 64 {
entry:
  %secattr = alloca %struct.netlbl_lsm_secattr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %sk_security = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_security, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %secattr) #8
  %4 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %6 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.i = icmp eq i32 %level, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optname)
  %cmp1.i = icmp eq i32 %optname, 4
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %entry.land.lhs.true_crit_edge, label %lor.rhs.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %level)
  %cmp2.i = icmp eq i32 %level, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %optname)
  %cmp3.i.not = icmp eq i32 %optname, 54
  %or.cond = and i1 %cmp2.i, %cmp3.i.not
  br i1 %or.cond, label %lor.rhs.i.land.lhs.true_crit_edge, label %lor.rhs.i.if.end10_crit_edge

lor.rhs.i.if.end10_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.rhs.i.land.lhs.true_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.rhs.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %8, label %land.lhs.true.if.end10_crit_edge [
    i32 2, label %land.lhs.true.if.then_crit_edge
    i32 4, label %land.lhs.true.if.then_crit_edge20
  ]

land.lhs.true.if.then_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge20
  %10 = call ptr @memset(ptr %secattr, i32 0, i32 28)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #8
  %call4 = call i32 @netlbl_sock_getattr(ptr noundef %1, ptr noundef nonnull %secattr) #8
  call void @release_sock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42, i32 %call4)
  %cmp7 = icmp eq i32 %call4, -42
  %spec.store.select = select i1 %cmp7, i32 0, i32 %call4
  %rc.0 = select i1 %cmp5, i32 -13, i32 %spec.store.select
  %11 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %secattr, align 4
  %and.i = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %14) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %15 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %secattr, align 4
  %and2.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !9
  call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #8, !srcloc !10
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end5.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !11

if.end5.i.i.i.i.i.if.end5.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !12
  %free.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  call void %21(ptr noundef %23) #8
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end3.i.i_crit_edge
  call void @kfree(ptr noundef %18) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end3.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %24 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %secattr, align 4
  %and7.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end10_crit_edge, label %if.then9.i

if.end5.i.if.end10_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9.i:                                       ; preds = %if.end5.i
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  %tobool.not3.i.i = icmp eq ptr %27, null
  br i1 %tobool.not3.i.i, label %if.then9.i.if.end10_crit_edge, label %if.then9.i.while.body.i.i_crit_edge

if.then9.i.while.body.i.i_crit_edge:              ; preds = %if.then9.i
  br label %while.body.i.i

if.then9.i.if.end10_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then9.i.while.body.i.i_crit_edge
  %catmap.addr.04.i.i = phi ptr [ %29, %while.body.i.i.while.body.i.i_crit_edge ], [ %27, %if.then9.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next.i.i, align 8
  call void @kfree(ptr noundef nonnull %catmap.addr.04.i.i) #8
  %tobool.not.i16.i = icmp eq ptr %29, null
  br i1 %tobool.not.i16.i, label %while.body.i.i.if.end10_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.if.end10_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %while.body.i.i.if.end10_crit_edge, %if.then9.i.if.end10_crit_edge, %if.end5.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %lor.rhs.i.if.end10_crit_edge
  %rc.1 = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ %rc.0, %if.end5.i.if.end10_crit_edge ], [ %rc.0, %if.then9.i.if.end10_crit_edge ], [ 0, %lor.rhs.i.if.end10_crit_edge ], [ %rc.0, %while.body.i.i.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %secattr) #8
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_sock_getattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_socket_connect_locked(ptr noundef %sk, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 73
  %0 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_security, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netlbl_sock_delattr(ptr noundef %sk) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %1, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %nlbl_secattr.i.i = getelementptr inbounds %struct.sk_security_struct, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nlbl_secattr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlbl_secattr.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, null
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 28) #11
  %cmp2.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %sid.i.i = getelementptr inbounds %struct.sk_security_struct, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %sid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sid.i.i, align 4
  %call5.i.i = tail call i32 @security_netlbl_sid_to_secattr(ptr noundef nonnull @selinux_state, i32 noundef %11, ptr noundef nonnull %call7.i.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netlbl_secattr_destroy(ptr noundef nonnull %call7.i.i.i.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %nlbl_secattr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i.i, ptr %nlbl_secattr.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end8.i.i, %if.end.i.if.end5.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i.i, %if.end8.i.i ], [ %8, %if.end.i.if.end5.i_crit_edge ]
  %call6.i = tail call i32 @netlbl_conn_setattr(ptr noundef %sk, ptr noundef %addr, ptr noundef nonnull %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.end5.i.cleanup_crit_edge, %if.then7.i.i, %if.end.i.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then9.i ], [ %call6.i, %if.end5.i.cleanup_crit_edge ], [ -12, %if.then7.i.i ], [ -12, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @selinux_netlbl_socket_connect(ptr noundef %sk, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #8
  %call = tail call i32 @selinux_netlbl_socket_connect_locked(ptr noundef %sk, ptr noundef %addr)
  tail call void @release_sock(ptr noundef %sk) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_netlbl_secattr_to_sid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_cache_add(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_sock_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2148581272}
!10 = !{i64 2148495712, i64 2148495744, i64 2148495773, i64 2148495807, i64 2148495838, i64 2148495861}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149909778}
!13 = !{!"auto-init"}
