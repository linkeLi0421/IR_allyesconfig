; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_dctcp.c_pt.bc'
source_filename = "../net/ipv4/tcp_dctcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.165 }
%union.anon.165 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.119 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.123 }
%union.anon.123 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.195, %struct.anon.196, %struct.anon.197, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32 }
%struct.dctcp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcp_dctcp_info = type { i16, i16, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.190, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }

@__param_str_dctcp_shift_g = internal constant [24 x i8] c"tcp_dctcp.dctcp_shift_g\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dctcp_shift_g = internal global i32 4, section ".data..read_mostly", align 4
@__param_dctcp_shift_g = internal constant %struct.kernel_param { ptr @__param_str_dctcp_shift_g, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @dctcp_shift_g } }, section "__param", align 4
@__UNIQUE_ID_dctcp_shift_gtype593 = internal constant [38 x i8] c"tcp_dctcp.parmtype=dctcp_shift_g:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dctcp_shift_g594 = internal constant [66 x i8] c"tcp_dctcp.parm=dctcp_shift_g:parameter g for updating dctcp_alpha\00", section ".modinfo", align 1
@__param_str_dctcp_alpha_on_init = internal constant [30 x i8] c"tcp_dctcp.dctcp_alpha_on_init\00", align 1
@dctcp_alpha_on_init = internal global i32 1024, section ".data..read_mostly", align 4
@__param_dctcp_alpha_on_init = internal constant %struct.kernel_param { ptr @__param_str_dctcp_alpha_on_init, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @dctcp_alpha_on_init } }, section "__param", align 4
@__UNIQUE_ID_dctcp_alpha_on_inittype595 = internal constant [44 x i8] c"tcp_dctcp.parmtype=dctcp_alpha_on_init:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dctcp_alpha_on_init596 = internal constant [69 x i8] c"tcp_dctcp.parm=dctcp_alpha_on_init:parameter for initial alpha value\00", section ".modinfo", align 1
@dctcp = internal global %struct.tcp_congestion_ops { ptr @dctcp_ssthresh, ptr @tcp_reno_cong_avoid, ptr @dctcp_state, ptr @dctcp_cwnd_event, ptr @dctcp_update_alpha, ptr null, ptr null, ptr null, ptr @dctcp_cwnd_undo, ptr null, ptr @dctcp_get_info, [16 x i8] c"dctcp\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 2, ptr @dctcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_dctcp__613_274_dctcp_register6 = internal global ptr @dctcp_register, section ".initcall6.init", align 4
@__exitcall_dctcp_unregister = internal global ptr @dctcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author614 = internal constant [55 x i8] c"tcp_dctcp.author=Daniel Borkmann <dborkman@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author615 = internal constant [49 x i8] c"tcp_dctcp.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author616 = internal constant [59 x i8] c"tcp_dctcp.author=Glenn Judd <glenn.judd@morganstanley.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file617 = internal constant [34 x i8] c"tcp_dctcp.file=net/ipv4/tcp_dctcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license618 = internal constant [25 x i8] c"tcp_dctcp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description619 = internal constant [45 x i8] c"tcp_dctcp.description=DataCenter TCP (DCTCP)\00", section ".modinfo", align 1
@dctcp_reno = internal global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @tcp_reno_cong_avoid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @dctcp_get_info, [16 x i8] c"dctcp-reno\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr null, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author614, ptr @__UNIQUE_ID_author615, ptr @__UNIQUE_ID_author616, ptr @__UNIQUE_ID_dctcp_alpha_on_init596, ptr @__UNIQUE_ID_dctcp_alpha_on_inittype595, ptr @__UNIQUE_ID_dctcp_shift_g594, ptr @__UNIQUE_ID_dctcp_shift_gtype593, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_file617, ptr @__UNIQUE_ID_license618, ptr @__exitcall_dctcp_unregister, ptr @__initcall__kmod_tcp_dctcp__613_274_dctcp_register6, ptr @__param_dctcp_alpha_on_init, ptr @__param_dctcp_shift_g, ptr @dctcp_unregister], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dctcp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @dctcp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dctcp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @dctcp) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dctcp_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd, align 8
  %loss_cwnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %2 = ptrtoint ptr %loss_cwnd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %loss_cwnd, align 4
  %dctcp_alpha = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %3 = ptrtoint ptr %dctcp_alpha to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dctcp_alpha, align 4
  %mul = mul i32 %4, %1
  %shr = lshr i32 %mul, 11
  %sub = sub i32 %1, %shr
  %5 = tail call i32 @llvm.umax.i32(i32 %sub, i32 2)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dctcp_state(ptr nocapture noundef %sk, i8 noundef zeroext %new_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  %bf.lshr.mask = and i8 %bf.load, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %bf.lshr.mask)
  %cmp4.not = icmp eq i8 %bf.lshr.mask, 24
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %1 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snd_cwnd.i, align 8
  %loss_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %3 = ptrtoint ptr %loss_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %loss_cwnd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.i = icmp ugt i32 %2, 5
  %shr.i = lshr i32 %2, 1
  %cond.i = select i1 %cmp.i, i32 %shr.i, i32 2
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %4 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %snd_ssthresh.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dctcp_cwnd_event(ptr noundef %sk, i32 noundef %ev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ev, label %entry.sw.epilog_crit_edge [
    i32 5, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge8
    i32 3, label %sw.bb1
  ]

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %prior_rcv_nxt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %ce_state = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ev)
  %cmp.i = icmp eq i32 %ev, 5
  %cond.i = zext i1 %cmp.i to i32
  %1 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ce_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond.i)
  %cmp1.not.i = icmp eq i32 %2, %cond.i
  br i1 %cmp1.not.i, label %sw.bb.dctcp_ece_ack_update.exit_crit_edge, label %if.then.i

sw.bb.dctcp_ece_ack_update.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %dctcp_ece_ack_update.exit

if.then.i:                                        ; preds = %sw.bb
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %3 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %icsk_ack.i, align 4
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 1
  %ecn_flags.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 56
  %6 = ptrtoint ptr %ecn_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ecn_flags.i.i, align 2
  %8 = and i8 %7, -5
  %masksel.i.i = select i1 %cmp.i.i, i8 4, i8 0
  %.sink.i.i = or i8 %8, %masksel.i.i
  store i8 %.sink.i.i, ptr %ecn_flags.i.i, align 2
  %9 = ptrtoint ptr %prior_rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prior_rcv_nxt, align 4
  tail call void @__tcp_send_ack(ptr noundef %sk, i32 noundef %10) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %icsk_ack.i, align 4
  %13 = or i8 %12, 16
  store i8 %13, ptr %icsk_ack.i, align 4
  br label %dctcp_ece_ack_update.exit

dctcp_ece_ack_update.exit:                        ; preds = %if.end.i, %sw.bb.dctcp_ece_ack_update.exit_crit_edge
  %rcv_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %14 = ptrtoint ptr %rcv_nxt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rcv_nxt.i, align 8
  %16 = ptrtoint ptr %prior_rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %prior_rcv_nxt, align 4
  %17 = ptrtoint ptr %ce_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %ce_state, align 4
  %ecn_flags.i20.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 56
  %18 = ptrtoint ptr %ecn_flags.i20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ecn_flags.i20.i, align 2
  %20 = and i8 %19, -5
  %masksel.i21.i = select i1 %cmp.i, i8 4, i8 0
  %.sink.i22.i = or i8 %20, %masksel.i21.i
  store i8 %.sink.i22.i, ptr %ecn_flags.i20.i, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %21 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %snd_cwnd.i, align 8
  %loss_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %23 = ptrtoint ptr %loss_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %loss_cwnd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp.i6 = icmp ugt i32 %22, 5
  %shr.i = lshr i32 %22, 1
  %cond.i7 = select i1 %cmp.i6, i32 %shr.i, i32 2
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %24 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i7, ptr %snd_ssthresh.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %dctcp_ece_ack_update.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dctcp_update_alpha(ptr noundef %sk, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %0 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_una, align 4
  %next_seq = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %2 = ptrtoint ptr %next_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_seq, align 4
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then:                                          ; preds = %entry
  %delivered_ce3 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 72
  %4 = ptrtoint ptr %delivered_ce3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivered_ce3, align 4
  %old_delivered_ce = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %6 = ptrtoint ptr %old_delivered_ce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_delivered_ce, align 4
  %dctcp_alpha = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %8 = ptrtoint ptr %dctcp_alpha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dctcp_alpha, align 4
  %10 = load i32, ptr @dctcp_shift_g, align 4
  %shr = lshr i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp4 = icmp eq i32 %shr, 0
  %spec.select = select i1 %cmp4, i32 %9, i32 %shr
  %cond14 = select i1 %cmp, i32 0, i32 %spec.select
  %sub15 = sub i32 %9, %cond14
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool.not = icmp eq i32 %5, %7
  br i1 %tobool.not, label %if.then.do.body33_crit_edge, label %if.then16

if.then.do.body33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %5, %7
  %delivered17 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %11 = ptrtoint ptr %delivered17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delivered17, align 8
  %13 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %icsk_ca_priv.i, align 4
  %sub18 = sub i32 %12, %14
  %sub19 = sub i32 10, %10
  %shl = shl i32 %sub, %sub19
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp21 = icmp eq i32 %12, %14
  %.sub18 = select i1 %cmp21, i32 1, i32 %sub18
  %div = udiv i32 %shl, %.sub18
  %add = add i32 %div, %sub15
  %15 = tail call i32 @llvm.umin.i32(i32 %add, i32 1024)
  br label %do.body33

do.body33:                                        ; preds = %if.then16, %if.then.do.body33_crit_edge
  %alpha.0 = phi i32 [ %15, %if.then16 ], [ %sub15, %if.then.do.body33_crit_edge ]
  %16 = ptrtoint ptr %dctcp_alpha to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %alpha.0, ptr %dctcp_alpha, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %17 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_nxt.i, align 4
  %19 = ptrtoint ptr %next_seq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %next_seq, align 4
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %20 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivered.i, align 8
  %22 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %icsk_ca_priv.i, align 4
  %23 = ptrtoint ptr %old_delivered_ce to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %5, ptr %old_delivered_ce, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.body33, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dctcp_cwnd_undo(ptr nocapture noundef readonly %sk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd, align 8
  %loss_cwnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %2 = ptrtoint ptr %loss_cwnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %loss_cwnd, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dctcp_get_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = and i32 %ext, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = call ptr @memset(ptr %info, i32 0, i32 16)
  %icsk_ca_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 10
  %3 = ptrtoint ptr %icsk_ca_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icsk_ca_ops, align 4
  %cmp.not = icmp eq ptr %4, @dctcp_reno
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %info, align 4
  %ce_state = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %6 = ptrtoint ptr %ce_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ce_state, align 4
  %conv = trunc i32 %7 to i16
  %dctcp_ce_state = getelementptr inbounds %struct.tcp_dctcp_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %dctcp_ce_state to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %dctcp_ce_state, align 2
  %dctcp_alpha = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %9 = ptrtoint ptr %dctcp_alpha to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dctcp_alpha, align 4
  %dctcp_alpha6 = getelementptr inbounds %struct.tcp_dctcp_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %dctcp_alpha6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dctcp_alpha6, align 4
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %12 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mss_cache, align 4
  %delivered_ce = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 72
  %14 = ptrtoint ptr %delivered_ce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delivered_ce, align 4
  %old_delivered_ce = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %16 = ptrtoint ptr %old_delivered_ce to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old_delivered_ce, align 4
  %sub = sub i32 %15, %17
  %mul = mul i32 %sub, %13
  %dctcp_ab_ecn = getelementptr inbounds %struct.tcp_dctcp_info, ptr %info, i32 0, i32 3
  %18 = ptrtoint ptr %dctcp_ab_ecn to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %dctcp_ab_ecn, align 4
  %19 = load i32, ptr %mss_cache, align 4
  %delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %20 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivered, align 8
  %22 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %icsk_ca_priv.i, align 4
  %sub8 = sub i32 %21, %23
  %mul9 = mul i32 %sub8, %19
  %dctcp_ab_tot = getelementptr inbounds %struct.tcp_dctcp_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %dctcp_ab_tot to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul9, ptr %dctcp_ab_tot, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 9, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dctcp_init(ptr noundef %sk) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ecn_flags = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 56
  %0 = ptrtoint ptr %ecn_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ecn_flags, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp = icmp eq i8 %4, 10
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp7 = icmp eq i8 %6, 7
  br i1 %cmp7, label %lor.lhs.false3.if.then_crit_edge, label %if.end

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %7 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcv_nxt, align 8
  %prior_rcv_nxt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %prior_rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prior_rcv_nxt, align 4
  %10 = load i32, ptr @dctcp_alpha_on_init, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 1024)
  %dctcp_alpha = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %12 = ptrtoint ptr %dctcp_alpha to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dctcp_alpha, align 4
  %loss_cwnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %13 = ptrtoint ptr %loss_cwnd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %loss_cwnd, align 4
  %ce_state = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %14 = ptrtoint ptr %ce_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ce_state, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %15 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snd_nxt.i, align 4
  %next_seq.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %17 = ptrtoint ptr %next_seq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %next_seq.i, align 4
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %18 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delivered.i, align 8
  %20 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %icsk_ca_priv.i, align 4
  %delivered_ce.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 72
  %21 = ptrtoint ptr %delivered_ce.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delivered_ce.i, align 4
  %old_delivered_ce.i = getelementptr inbounds %struct.dctcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %23 = ptrtoint ptr %old_delivered_ce.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %old_delivered_ce.i, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %icsk_ca_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 10
  %24 = ptrtoint ptr %icsk_ca_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @dctcp_reno, ptr %icsk_ca_ops, align 4
  %tos.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %25 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tos.i, align 4
  %27 = and i8 %26, -4
  store i8 %27, ptr %tos.i, align 4
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i.i = zext i8 %29 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.cleanup_crit_edge, label %inet6_sk.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

inet6_sk.exit.i:                                  ; preds = %if.end
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %30 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pinet6.i.i, align 8
  %cmp.not.i = icmp eq ptr %31, null
  br i1 %cmp.not.i, label %inet6_sk.exit.i.cleanup_crit_edge, label %if.then.i

inet6_sk.exit.i.cleanup_crit_edge:                ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state, align 2
  %conv.i.i11.i = zext i8 %33 to i32
  %shl.i.i12.i = shl nuw i32 1, %conv.i.i11.i
  %and.i.i13.i = and i32 %shl.i.i12.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13.i)
  %tobool.i.not.i14.i = icmp eq i32 %and.i.i13.i, 0
  %spec.select = select i1 %tobool.i.not.i14.i, ptr null, ptr %31
  %tclass.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %spec.select, i32 0, i32 12
  %34 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tclass.i, align 1
  %36 = and i8 %35, -4
  store i8 %36, ptr %tclass.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %inet6_sk.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_send_ack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_ssthresh(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__param_dctcp_shift_g, !1, !"__param_dctcp_shift_g", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_dctcp.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_dctcp_shift_gtype593, !1, !"__UNIQUE_ID_dctcp_shift_gtype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dctcp_shift_g594, !4, !"__UNIQUE_ID_dctcp_shift_g594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_dctcp.c", i32 61, i32 1}
!5 = !{ptr @__param_dctcp_alpha_on_init, !6, !"__param_dctcp_alpha_on_init", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_dctcp.c", i32 64, i32 1}
!7 = !{ptr @__UNIQUE_ID_dctcp_alpha_on_inittype595, !6, !"__UNIQUE_ID_dctcp_alpha_on_inittype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_dctcp_alpha_on_init596, !9, !"__UNIQUE_ID_dctcp_alpha_on_init596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_dctcp.c", i32 65, i32 1}
!10 = !{ptr @__initcall__kmod_tcp_dctcp__613_274_dctcp_register6, !11, !"__initcall__kmod_tcp_dctcp__613_274_dctcp_register6", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_dctcp.c", i32 274, i32 1}
!12 = !{ptr @__exitcall_dctcp_unregister, !13, !"__exitcall_dctcp_unregister", i1 false, i1 false}
!13 = !{!"../net/ipv4/tcp_dctcp.c", i32 275, i32 1}
!14 = !{ptr @__UNIQUE_ID_author614, !15, !"__UNIQUE_ID_author614", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_dctcp.c", i32 277, i32 1}
!16 = !{ptr @__UNIQUE_ID_author615, !17, !"__UNIQUE_ID_author615", i1 false, i1 false}
!17 = !{!"../net/ipv4/tcp_dctcp.c", i32 278, i32 1}
!18 = !{ptr @__UNIQUE_ID_author616, !19, !"__UNIQUE_ID_author616", i1 false, i1 false}
!19 = !{!"../net/ipv4/tcp_dctcp.c", i32 279, i32 1}
!20 = !{ptr @__UNIQUE_ID_file617, !21, !"__UNIQUE_ID_file617", i1 false, i1 false}
!21 = !{!"../net/ipv4/tcp_dctcp.c", i32 281, i32 1}
!22 = !{ptr @__UNIQUE_ID_license618, !21, !"__UNIQUE_ID_license618", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description619, !24, !"__UNIQUE_ID_description619", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_dctcp.c", i32 282, i32 1}
!25 = distinct !{null, !26, !"bpf_tcp_ca_kfunc_list", i1 false, i1 false}
!26 = !{!"../include/linux/btf.h", i32 359, i32 33}
!27 = !{ptr @__param_str_dctcp_shift_g, !1, !"__param_str_dctcp_shift_g", i1 false, i1 false}
!28 = !{ptr @dctcp_shift_g, !29, !"dctcp_shift_g", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_dctcp.c", i32 59, i32 21}
!30 = !{ptr @__param_str_dctcp_alpha_on_init, !6, !"__param_str_dctcp_alpha_on_init", i1 false, i1 false}
!31 = !{ptr @dctcp_alpha_on_init, !32, !"dctcp_alpha_on_init", i1 false, i1 false}
!32 = !{!"../net/ipv4/tcp_dctcp.c", i32 63, i32 21}
!33 = distinct !{null, !34, !"tcp_dctcp_kfunc_btf_set", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_dctcp.c", i32 254, i32 8}
!35 = distinct !{null, !36, !"tcp_dctcp_kfunc_ids", i1 false, i1 false}
!36 = !{!"../net/ipv4/tcp_dctcp.c", i32 241, i32 1}
!37 = !{ptr @dctcp, !38, !"dctcp", i1 false, i1 false}
!38 = !{!"../net/ipv4/tcp_dctcp.c", i32 218, i32 34}
!39 = !{ptr @dctcp_reno, !40, !"dctcp_reno", i1 false, i1 false}
!40 = !{!"../net/ipv4/tcp_dctcp.c", i32 232, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
