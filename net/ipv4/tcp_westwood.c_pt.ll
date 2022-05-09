; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_westwood.c_pt.bc'
source_filename = "../net/ipv4/tcp_westwood.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.westwood = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }
%struct.tcpvegas_info = type { i32, i32, i32, i32 }

@tcp_westwood = internal global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @tcp_reno_cong_avoid, ptr null, ptr @tcp_westwood_event, ptr @tcp_westwood_ack, ptr @tcp_westwood_pkts_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @tcp_westwood_info, [16 x i8] c"westwood\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_westwood_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_westwood__600_303_tcp_westwood_register6 = internal global ptr @tcp_westwood_register, section ".initcall6.init", align 4
@__exitcall_tcp_westwood_unregister = internal global ptr @tcp_westwood_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author601 = internal constant [56 x i8] c"tcp_westwood.author=Stephen Hemminger, Angelo Dell'Aera\00", section ".modinfo", align 1
@__UNIQUE_ID_file602 = internal constant [40 x i8] c"tcp_westwood.file=net/ipv4/tcp_westwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license603 = internal constant [25 x i8] c"tcp_westwood.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description604 = internal constant [39 x i8] c"tcp_westwood.description=TCP Westwood+\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author601, ptr @__UNIQUE_ID_description604, ptr @__UNIQUE_ID_file602, ptr @__UNIQUE_ID_license603, ptr @__exitcall_tcp_westwood_unregister, ptr @__initcall__kmod_tcp_westwood__600_303_tcp_westwood_register6, ptr @tcp_westwood_unregister], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_westwood_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_westwood) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_westwood_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_westwood) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_ssthresh(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_westwood_event(ptr nocapture noundef %sk, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bw_est.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 1
  %1 = ptrtoint ptr %bw_est.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bw_est.i, align 4
  %rtt_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %3 = ptrtoint ptr %rtt_min.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtt_min.i, align 4
  %mul.i = mul i32 %4, %2
  %mss_cache.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %5 = ptrtoint ptr %mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mss_cache.i, align 4
  %div.i = udiv i32 %mul.i, %6
  %7 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 2) #7
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %8 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %snd_ssthresh, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %9 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %snd_cwnd, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bw_est.i12 = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 1
  %10 = ptrtoint ptr %bw_est.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bw_est.i12, align 4
  %rtt_min.i13 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %12 = ptrtoint ptr %rtt_min.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rtt_min.i13, align 4
  %mul.i14 = mul i32 %13, %11
  %mss_cache.i15 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %14 = ptrtoint ptr %mss_cache.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mss_cache.i15, align 4
  %div.i16 = udiv i32 %mul.i14, %15
  %16 = tail call i32 @llvm.umax.i32(i32 %div.i16, i32 2) #7
  %snd_ssthresh5 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %17 = ptrtoint ptr %snd_ssthresh5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %snd_ssthresh5, align 4
  %reset_rtt_min = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 10
  %18 = ptrtoint ptr %reset_rtt_min to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %reset_rtt_min, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_westwood_ack(ptr nocapture noundef %sk, i32 noundef %ack_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ack_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %icsk_ca_priv.i.i17 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %rtt_win_sx.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %1 = ptrtoint ptr %rtt_win_sx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rtt_win_sx.i.i, align 4
  %sub.i.i = sub i32 %0, %2
  %first_ack.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 9
  %3 = ptrtoint ptr %first_ack.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %first_ack.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %snd_una.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %5 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_una.i, align 4
  %snd_una2.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %7 = ptrtoint ptr %snd_una2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %snd_una2.i, align 4
  %8 = ptrtoint ptr %first_ack.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %first_ack.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %rtt.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 7
  %9 = ptrtoint ptr %rtt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp ne i32 %10, 0
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 5) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %11)
  %cmp6.i = icmp ugt i32 %sub.i.i, %11
  %or.cond.i = select i1 %tobool4.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.then7.i, label %if.end.i.westwood_update_window.exit_crit_edge

if.end.i.westwood_update_window.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %westwood_update_window.exit

if.then7.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %icsk_ca_priv.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then7.i.if.else.i.i_crit_edge

if.then7.i.if.else.i.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then7.i
  %bw_est.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 1
  %14 = ptrtoint ptr %bw_est.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bw_est.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.i.i = icmp eq i32 %15, 0
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bk.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %16 = ptrtoint ptr %bk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bk.i.i, align 4
  %div.i.i = udiv i32 %17, %sub.i.i
  %18 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i.i, ptr %icsk_ca_priv.i.i17, align 4
  %19 = ptrtoint ptr %bw_est.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i.i, ptr %bw_est.i.i, align 4
  br label %westwood_filter.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then7.i.if.else.i.i_crit_edge
  %bk6.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %20 = ptrtoint ptr %bk6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bk6.i.i, align 4
  %div7.i.i = udiv i32 %21, %sub.i.i
  %mul.i.i.i = mul i32 %13, 7
  %add.i.i.i = add i32 %div7.i.i, %mul.i.i.i
  %shr.i.i.i = lshr i32 %add.i.i.i, 3
  %22 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i.i.i, ptr %icsk_ca_priv.i.i17, align 4
  %bw_est9.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 1
  %23 = ptrtoint ptr %bw_est9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bw_est9.i.i, align 4
  %mul.i25.i.i = mul i32 %24, 7
  %add.i26.i.i = add i32 %mul.i25.i.i, %shr.i.i.i
  %shr.i27.i.i = lshr i32 %add.i26.i.i, 3
  store i32 %shr.i27.i.i, ptr %bw_est9.i.i, align 4
  br label %westwood_filter.exit.i

westwood_filter.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %bk.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %25 = ptrtoint ptr %bk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bk.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %rtt_win_sx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rtt_win_sx.i.i, align 4
  br label %westwood_update_window.exit

westwood_update_window.exit:                      ; preds = %westwood_filter.exit.i, %if.end.i.westwood_update_window.exit_crit_edge
  %snd_una.i7 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %28 = ptrtoint ptr %snd_una.i7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_una.i7, align 4
  %snd_una2.i8 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %30 = ptrtoint ptr %snd_una2.i8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %snd_una2.i8, align 4
  %sub.i9 = sub i32 %29, %31
  %cumul_ack.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 5
  %32 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i9, ptr %cumul_ack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %tobool.not.i10 = icmp eq i32 %29, %31
  br i1 %tobool.not.i10, label %if.then.i11, label %westwood_update_window.exit.if.end.i12_crit_edge

westwood_update_window.exit.if.end.i12_crit_edge: ; preds = %westwood_update_window.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i12

if.then.i11:                                      ; preds = %westwood_update_window.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mss_cache.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %33 = ptrtoint ptr %mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mss_cache.i, align 4
  %accounted.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %35 = ptrtoint ptr %accounted.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %accounted.i, align 4
  %add.i = add i32 %36, %34
  store i32 %add.i, ptr %accounted.i, align 4
  %37 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %cumul_ack.i, align 4
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.then.i11, %westwood_update_window.exit.if.end.i12_crit_edge
  %38 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cumul_ack.i, align 4
  %mss_cache7.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %40 = ptrtoint ptr %mss_cache7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mss_cache7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i = icmp ugt i32 %39, %41
  br i1 %cmp.i, label %if.then8.i, label %if.end.i12.westwood_acked_count.exit_crit_edge

if.end.i12.westwood_acked_count.exit_crit_edge:   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %westwood_acked_count.exit

if.then8.i:                                       ; preds = %if.end.i12
  %accounted9.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %42 = ptrtoint ptr %accounted9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %accounted9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %39)
  %cmp11.not.i = icmp ult i32 %43, %39
  br i1 %cmp11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub15.i = sub i32 %43, %39
  %44 = ptrtoint ptr %accounted9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub15.i, ptr %accounted9.i, align 4
  %45 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %cumul_ack.i, align 4
  br label %westwood_acked_count.exit

if.else.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub20.i = sub i32 %39, %43
  %46 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub20.i, ptr %cumul_ack.i, align 4
  %47 = ptrtoint ptr %accounted9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %accounted9.i, align 4
  br label %westwood_acked_count.exit

westwood_acked_count.exit:                        ; preds = %if.else.i, %if.then12.i, %if.end.i12.westwood_acked_count.exit_crit_edge
  %48 = ptrtoint ptr %snd_una2.i8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %29, ptr %snd_una2.i8, align 4
  %49 = ptrtoint ptr %cumul_ack.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cumul_ack.i, align 4
  %bk = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %51 = ptrtoint ptr %bk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bk, align 4
  %add = add i32 %52, %50
  store i32 %add, ptr %bk, align 4
  %reset_rtt_min.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 10
  %53 = ptrtoint ptr %reset_rtt_min.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reset_rtt_min.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i13 = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %rtt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rtt.i, align 4
  %rtt_min3.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  br i1 %tobool.not.i13, label %if.else.i15, label %if.then.i14

if.then.i14:                                      ; preds = %westwood_acked_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %rtt_min3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rtt_min3.i, align 4
  %58 = ptrtoint ptr %reset_rtt_min.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %reset_rtt_min.i, align 1
  br label %return

if.else.i15:                                      ; preds = %westwood_acked_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %rtt_min3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rtt_min3.i, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %56, i32 %60) #7
  %62 = ptrtoint ptr %rtt_min3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %rtt_min3.i, align 4
  br label %return

if.end:                                           ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.if.end.i.i_crit_edge, label %if.then.i.i18

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i18:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %snd_una.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %63 = ptrtoint ptr %snd_una.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %snd_una.i.i, align 4
  %snd_una2.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %65 = ptrtoint ptr %snd_una2.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %snd_una2.i.i, align 4
  %66 = ptrtoint ptr %first_ack.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %first_ack.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i18, %if.end.if.end.i.i_crit_edge
  %rtt.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 7
  %67 = ptrtoint ptr %rtt.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rtt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool4.not.i.i = icmp ne i32 %68, 0
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 5) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %69)
  %cmp6.i.i = icmp ugt i32 %sub.i.i, %69
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then7.i.i, label %if.end.i.i.westwood_update_window.exit.i_crit_edge

if.end.i.i.westwood_update_window.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %westwood_update_window.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %70 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %icsk_ca_priv.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.then7.i.i.if.else.i.i.i_crit_edge

if.then7.i.i.if.else.i.i.i_crit_edge:             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then7.i.i
  %bw_est.i.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 1
  %72 = ptrtoint ptr %bw_est.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bw_est.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp1.i.i.i = icmp eq i32 %73, 0
  br i1 %cmp1.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bk.i.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %74 = ptrtoint ptr %bk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bk.i.i.i, align 4
  %div.i.i.i = udiv i32 %75, %sub.i.i
  %76 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div.i.i.i, ptr %icsk_ca_priv.i.i17, align 4
  %77 = ptrtoint ptr %bw_est.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div.i.i.i, ptr %bw_est.i.i.i, align 4
  br label %westwood_filter.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.then7.i.i.if.else.i.i.i_crit_edge
  %bk6.i.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %78 = ptrtoint ptr %bk6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bk6.i.i.i, align 4
  %div7.i.i.i = udiv i32 %79, %sub.i.i
  %mul.i.i.i.i = mul i32 %71, 7
  %add.i.i.i.i = add i32 %div7.i.i.i, %mul.i.i.i.i
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, 3
  %80 = ptrtoint ptr %icsk_ca_priv.i.i17 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shr.i.i.i.i, ptr %icsk_ca_priv.i.i17, align 4
  %bw_est9.i.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 1
  %81 = ptrtoint ptr %bw_est9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bw_est9.i.i.i, align 4
  %mul.i25.i.i.i = mul i32 %82, 7
  %add.i26.i.i.i = add i32 %mul.i25.i.i.i, %shr.i.i.i.i
  %shr.i27.i.i.i = lshr i32 %add.i26.i.i.i, 3
  store i32 %shr.i27.i.i.i, ptr %bw_est9.i.i.i, align 4
  br label %westwood_filter.exit.i.i

westwood_filter.exit.i.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i
  %bk.i.i19 = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %83 = ptrtoint ptr %bk.i.i19 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %bk.i.i19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %85 = ptrtoint ptr %rtt_win_sx.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %rtt_win_sx.i.i, align 4
  br label %westwood_update_window.exit.i

westwood_update_window.exit.i:                    ; preds = %westwood_filter.exit.i.i, %if.end.i.i.westwood_update_window.exit.i_crit_edge
  %snd_una.i20 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %86 = ptrtoint ptr %snd_una.i20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %snd_una.i20, align 4
  %snd_una2.i21 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %88 = ptrtoint ptr %snd_una2.i21 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %snd_una2.i21, align 4
  %sub.i22 = sub i32 %87, %89
  %bk.i23 = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 3
  %90 = ptrtoint ptr %bk.i23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bk.i23, align 4
  %add.i24 = add i32 %sub.i22, %91
  store i32 %add.i24, ptr %bk.i23, align 4
  store i32 %87, ptr %snd_una2.i21, align 4
  %reset_rtt_min.i.i = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i.i17, i32 0, i32 10
  %92 = ptrtoint ptr %reset_rtt_min.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %reset_rtt_min.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i11.i = icmp eq i8 %93, 0
  %94 = ptrtoint ptr %rtt.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rtt.i.i, align 4
  %rtt_min3.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  br i1 %tobool.not.i11.i, label %if.else.i.i25, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %westwood_update_window.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %rtt_min3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %rtt_min3.i.i, align 4
  %97 = ptrtoint ptr %reset_rtt_min.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %reset_rtt_min.i.i, align 1
  br label %return

if.else.i.i25:                                    ; preds = %westwood_update_window.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %rtt_min3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rtt_min3.i.i, align 4
  %100 = tail call i32 @llvm.umin.i32(i32 %95, i32 %99) #7
  %101 = ptrtoint ptr %rtt_min3.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %rtt_min3.i.i, align 4
  br label %return

return:                                           ; preds = %if.else.i.i25, %if.then.i12.i, %if.else.i15, %if.then.i14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_westwood_pkts_acked(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readonly %sample) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.else.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %1) #7
  %rtt = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 7
  %2 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3.i, ptr %rtt, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_westwood_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ext, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %info, align 4
  %tcpv_rttcnt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %tcpv_rttcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tcpv_rttcnt, align 4
  %rtt = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 7
  %2 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtt, align 4
  %call1 = tail call i32 @jiffies_to_usecs(i32 noundef %3) #7
  %tcpv_rtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %tcpv_rtt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %tcpv_rtt, align 4
  %rtt_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %5 = ptrtoint ptr %rtt_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtt_min, align 4
  %call2 = tail call i32 @jiffies_to_usecs(i32 noundef %6) #7
  %tcpv_minrtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %tcpv_minrtt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %tcpv_minrtt, align 4
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_westwood_init(ptr nocapture noundef %sk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %bk = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 3
  %0 = ptrtoint ptr %bk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bk, align 4
  %1 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %icsk_ca_priv.i, align 4
  %bw_est = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 1
  %2 = ptrtoint ptr %bw_est to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bw_est, align 4
  %accounted = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %3 = ptrtoint ptr %accounted to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %accounted, align 4
  %cumul_ack = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 5
  %4 = ptrtoint ptr %cumul_ack to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cumul_ack, align 4
  %reset_rtt_min = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 10
  %5 = ptrtoint ptr %reset_rtt_min to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reset_rtt_min, align 1
  %rtt = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 7
  %6 = ptrtoint ptr %rtt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2000, ptr %rtt, align 4
  %rtt_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %7 = ptrtoint ptr %rtt_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2000, ptr %rtt_min, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %rtt_win_sx = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %rtt_win_sx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rtt_win_sx, align 4
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %10 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_una, align 4
  %snd_una2 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %12 = ptrtoint ptr %snd_una2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %snd_una2, align 4
  %first_ack = getelementptr inbounds %struct.westwood, ptr %icsk_ca_priv.i, i32 0, i32 9
  %13 = ptrtoint ptr %first_ack to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %first_ack, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_tcp_westwood__600_303_tcp_westwood_register6, !1, !"__initcall__kmod_tcp_westwood__600_303_tcp_westwood_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_westwood.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_tcp_westwood_unregister, !3, !"__exitcall_tcp_westwood_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_westwood.c", i32 304, i32 1}
!4 = !{ptr @__UNIQUE_ID_author601, !5, !"__UNIQUE_ID_author601", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_westwood.c", i32 306, i32 1}
!6 = !{ptr @__UNIQUE_ID_file602, !7, !"__UNIQUE_ID_file602", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_westwood.c", i32 307, i32 1}
!8 = !{ptr @__UNIQUE_ID_license603, !7, !"__UNIQUE_ID_license603", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description604, !10, !"__UNIQUE_ID_description604", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_westwood.c", i32 308, i32 1}
!11 = !{ptr @tcp_westwood, !12, !"tcp_westwood", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_westwood.c", i32 278, i32 34}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
