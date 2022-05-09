; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_bbr.c_pt.bc'
source_filename = "../net/ipv4/tcp_bbr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.bbr = type { i32, i32, i32, %struct.minmax, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, [2 x i16], i32 }
%struct.tcp_bbr_info = type { i32, i32, i32, i32, i32 }

@tcp_bbr_cong_ops = internal global %struct.tcp_congestion_ops { ptr @bbr_ssthresh, ptr null, ptr @bbr_set_state, ptr @bbr_cwnd_event, ptr null, ptr null, ptr @bbr_min_tso_segs, ptr @bbr_main, ptr @bbr_undo_cwnd, ptr @bbr_sndbuf_expand, ptr @bbr_get_info, [16 x i8] c"bbr\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 1, ptr @bbr_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_bbr__635_1192_bbr_register6 = internal global ptr @bbr_register, section ".initcall6.init", align 4
@__exitcall_bbr_unregister = internal global ptr @bbr_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author636 = internal constant [46 x i8] c"tcp_bbr.author=Van Jacobson <vanj@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author637 = internal constant [52 x i8] c"tcp_bbr.author=Neal Cardwell <ncardwell@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author638 = internal constant [49 x i8] c"tcp_bbr.author=Yuchung Cheng <ycheng@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author639 = internal constant [57 x i8] c"tcp_bbr.author=Soheil Hassas Yeganeh <soheil@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file640 = internal constant [30 x i8] c"tcp_bbr.file=net/ipv4/tcp_bbr\00", section ".modinfo", align 1
@__UNIQUE_ID_license641 = internal constant [29 x i8] c"tcp_bbr.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description642 = internal constant [59 x i8] c"tcp_bbr.description=TCP BBR (Bottleneck Bandwidth and RTT)\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bbr_pacing_gain = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 320, i32 192, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256], [32 x i8] zeroinitializer }, align 32
@bbr_update_gains.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv4/tcp_bbr.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BBR bad mode: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"bbr_pacing_gain\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 162, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [22 x i8] c"../net/ipv4/tcp_bbr.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1010, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author636, ptr @__UNIQUE_ID_author637, ptr @__UNIQUE_ID_author638, ptr @__UNIQUE_ID_author639, ptr @__UNIQUE_ID_description642, ptr @__UNIQUE_ID_file640, ptr @__UNIQUE_ID_license641, ptr @__exitcall_bbr_unregister, ptr @__initcall__kmod_tcp_bbr__635_1192_bbr_register6, ptr @bbr_unregister, ptr @bbr_pacing_gain, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbr_pacing_gain to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bbr_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_bbr_cong_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bbr_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_bbr_cong_ops) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bbr_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_ca_state.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %0 = ptrtoint ptr %prev_ca_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %prev_ca_state.i, align 8
  %1 = and i32 %bf.load.i, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326591, i32 %1)
  %cmp.i = icmp ugt i32 %1, 201326591
  %bf.lshr3.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr3.mask.i)
  %cmp4.not.i = icmp eq i32 %bf.lshr3.mask.i, 1610612736
  %or.cond.i = or i1 %cmp.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %2 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_cwnd.i, align 8
  %prior_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %4 = ptrtoint ptr %prior_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %prior_cwnd.i, align 8
  br label %bbr_save_cwnd.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prior_cwnd5.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %5 = ptrtoint ptr %prior_cwnd5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prior_cwnd5.i, align 8
  %snd_cwnd6.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %7 = ptrtoint ptr %snd_cwnd6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_cwnd6.i, align 8
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8) #11
  %10 = ptrtoint ptr %prior_cwnd5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %prior_cwnd5.i, align 8
  br label %bbr_save_cwnd.exit

bbr_save_cwnd.exit:                               ; preds = %if.else.i, %if.then.i
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %11 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_ssthresh, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bbr_set_state(ptr noundef %sk, i8 noundef zeroext %new_state) #3 align 64 {
entry:
  %rs = alloca %struct.rate_sample, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rs) #11
  %0 = call ptr @memset(ptr %rs, i32 0, i32 56)
  %1 = getelementptr inbounds { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8] }, ptr %rs, i32 0, i32 9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 8
  %prev_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %3 = ptrtoint ptr %prev_ca_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %prev_ca_state, align 8
  %bf.clear = and i32 %bf.load, -486539265
  %full_bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 14
  %4 = ptrtoint ptr %full_bw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %full_bw, align 4
  %bf.set4 = or i32 %bf.clear, 285212672
  store i32 %bf.set4, ptr %prev_ca_state, align 8
  call fastcc void @bbr_lt_bw_sampling(ptr noundef %sk, ptr noundef nonnull %rs)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rs) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bbr_cwnd_event(ptr nocapture noundef %sk, i32 noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp = icmp eq i32 %event, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %app_limited = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %app_limited to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %app_limited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %idle_restart = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %idle_restart to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %idle_restart, align 8
  %bf.set = or i32 %bf.load, 8388608
  store i32 %bf.set, ptr %idle_restart, align 8
  %tcp_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %3 = ptrtoint ptr %tcp_mstamp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tcp_mstamp, align 8
  %ack_epoch_mstamp = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 11
  %5 = ptrtoint ptr %ack_epoch_mstamp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %ack_epoch_mstamp, align 8
  %ack_epoch_acked = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 17
  %6 = ptrtoint ptr %ack_epoch_acked to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load2 = load i32, ptr %ack_epoch_acked, align 4
  %bf.clear3 = and i32 %bf.load2, 4095
  store i32 %bf.clear3, ptr %ack_epoch_acked, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %7 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.lshr, label %if.then.if.end15_crit_edge [
    i32 2, label %if.then7
    i32 3, label %if.then13
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7:                                         ; preds = %if.then
  %8 = ptrtoint ptr %idle_restart to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %idle_restart, align 8
  %bf.clear.i = and i32 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool.not.i = icmp eq i32 %bf.clear.i, 0
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i = select i1 %tobool.not.i, ptr %v.i.i.i, ptr %lt_bw.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv.i.i = zext i32 %cond.i to i64
  %mss_cache.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %10 = ptrtoint ptr %mss_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mss_cache.i.i.i, align 4
  %conv.i.i.i = zext i32 %11 to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i, 8
  %mul2.i.i.i = mul i64 %mul.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr exact i64 %mul2.i.i.i, 8
  %mul3.i.i.i = mul i64 %shr.i.i.i, 990000
  %shr4.i.i.i = lshr i64 %mul3.i.i.i, 24
  %sk_max_pacing_rate.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 36
  %12 = ptrtoint ptr %sk_max_pacing_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_max_pacing_rate.i.i, align 8
  %conv1.i.i = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr4.i.i.i, i64 %conv1.i.i)
  %cmp.i.i = icmp ult i64 %shr4.i.i.i, %conv1.i.i
  %extract.t.i.i = trunc i64 %shr4.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i.i, i32 %extract.t.i.i, i32 %13
  %has_seen_rtt.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %14 = ptrtoint ptr %has_seen_rtt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i26 = load i32, ptr %has_seen_rtt.i, align 4
  %15 = and i32 %bf.load.i26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i27 = icmp eq i32 %15, 0
  br i1 %tobool.not.i27, label %land.rhs.i, label %if.then7.if.end.i_crit_edge

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then7
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %16 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srtt_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.rhs.i.if.end.i_crit_edge, label %if.then.i, !prof !40

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bbr_init_pacing_rate_from_rtt(ptr noundef %sk) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.rhs.i.if.end.i_crit_edge, %if.then7.if.end.i_crit_edge
  %18 = ptrtoint ptr %has_seen_rtt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i.i = load i32, ptr %has_seen_rtt.i, align 4
  %19 = and i32 %bf.load.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sk_pacing_rate.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %20 = ptrtoint ptr %sk_pacing_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sk_pacing_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off0.i.i, i32 %21)
  %cmp.i = icmp ugt i32 %cond.off0.i.i, %21
  br i1 %cmp.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false.i.if.end15_crit_edge

lor.lhs.false.i.if.end15_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %sk_pacing_rate8.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %22 = ptrtoint ptr %sk_pacing_rate8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.off0.i.i, ptr %sk_pacing_rate8.i, align 4
  br label %if.end15

if.then13:                                        ; preds = %if.then
  %probe_rtt_done_stamp.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %23 = ptrtoint ptr %probe_rtt_done_stamp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %probe_rtt_done_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i29 = icmp eq i32 %24, 0
  br i1 %tobool.not.i29, label %if.then13.if.end15_crit_edge, label %land.lhs.true.i

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.then13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i30 = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i30, label %if.end.i31, label %land.lhs.true.i.if.end15_crit_edge

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i31:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %min_rtt_stamp.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 1
  %27 = ptrtoint ptr %min_rtt_stamp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %min_rtt_stamp.i, align 4
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %28 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_cwnd.i, align 8
  %prior_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %30 = ptrtoint ptr %prior_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prior_cwnd.i, align 8
  %32 = tail call i32 @llvm.umax.i32(i32 %29, i32 %31) #11
  %33 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %snd_cwnd.i, align 8
  %full_bw_reached.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %34 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %35 = and i32 %bf.load.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %idle_restart to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i3.i.i = load i32, ptr %idle_restart, align 8
  %bf.clear.i.i.i = and i32 %bf.load.i3.i.i, 536870911
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %idle_restart to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.clear.i.i.i, ptr %idle_restart, align 8
  br label %if.end15

if.else.i.i:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, 1073741824
  %38 = ptrtoint ptr %idle_restart to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.set.i.i.i, ptr %idle_restart, align 8
  %call.i.i.i.i = tail call i32 @prandom_u32() #11
  %conv.i.i.i.i = zext i32 %call.i.i.i.i to i64
  %mul.i.i.i.i = mul nuw nsw i64 %conv.i.i.i.i, 7
  %shr.i.i.i.i = lshr i64 %mul.i.i.i.i, 32
  %conv2.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %39 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load2.i.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %.neg.i.i.i = mul nuw nsw i32 %conv2.i.i.i.i, 448
  %bf.value.i.i.i = add nuw nsw i32 %.neg.i.i.i, 448
  %bf.clear3.i.i.i = and i32 %bf.load2.i.i.i, -449
  %bf.set4.i.i.i = or i32 %bf.value.i.i.i, %bf.clear3.i.i.i
  %40 = add i32 %bf.set4.i.i.i, 64
  %bf.shl.i.i.i.i = and i32 %40, 448
  %bf.set.i.i.i.i = or i32 %bf.shl.i.i.i.i, %bf.clear3.i.i.i
  store i32 %bf.set.i.i.i.i, ptr %full_bw_reached.i.i.i, align 4
  %delivered_mstamp.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %41 = ptrtoint ptr %delivered_mstamp.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %delivered_mstamp.i.i.i.i, align 8
  %cycle_mstamp.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %43 = ptrtoint ptr %cycle_mstamp.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %cycle_mstamp.i.i.i.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else.i.i, %if.then.i.i, %land.lhs.true.i.if.end15_crit_edge, %if.then13.if.end15_crit_edge, %if.then7.i, %lor.lhs.false.i.if.end15_crit_edge, %if.then.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bbr_min_tso_segs(ptr nocapture noundef readonly %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_pacing_rate = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %0 = ptrtoint ptr %sk_pacing_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_pacing_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %1)
  %cmp = icmp ult i32 %1, 150000
  %cond = select i1 %cmp, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bbr_main(ptr noundef %sk, ptr nocapture noundef readonly %rs) #3 align 64 {
entry:
  %remainder.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %round_start.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %0 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i.i = load i32, ptr %round_start.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load.i.i, -16777217
  store i32 %bf.clear.i.i, ptr %round_start.i.i, align 8
  %delivered.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 3
  %1 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delivered.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp slt i32 %2, 0
  br i1 %cmp.i.i, label %entry.bbr_update_bw.exit.i_crit_edge, label %lor.lhs.false.i.i

entry.bbr_update_bw.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_bw.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  %interval_us.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 5
  %3 = ptrtoint ptr %interval_us.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval_us.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.i.i = icmp slt i32 %4, 1
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.bbr_update_bw.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.bbr_update_bw.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_bw.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %prior_delivered.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 1
  %5 = ptrtoint ptr %prior_delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prior_delivered.i.i, align 8
  %next_rtt_delivered.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %7 = ptrtoint ptr %next_rtt_delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_rtt_delivered.i.i, align 8
  %sub.i.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %delivered5.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %9 = ptrtoint ptr %delivered5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivered5.i.i, align 8
  %11 = ptrtoint ptr %next_rtt_delivered.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %next_rtt_delivered.i.i, align 8
  %rtt_cnt.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 4
  %12 = ptrtoint ptr %rtt_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rtt_cnt.i.i, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %rtt_cnt.i.i, align 4
  %bf.set10.i.i = and i32 %bf.load.i.i, -50331649
  %bf.clear12.i.i = or i32 %bf.set10.i.i, 16777216
  %14 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.clear12.i.i, ptr %round_start.i.i, align 8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then4.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  tail call fastcc void @bbr_lt_bw_sampling(ptr noundef %sk, ptr noundef %rs) #11
  %15 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delivered.i.i, align 8
  %conv.i.i = sext i32 %16 to i64
  %mul.i.i = shl nsw i64 %conv.i.i, 24
  %17 = ptrtoint ptr %interval_us.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interval_us.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #11
  %19 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !41
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %mul.i.i, i32 noundef %18, ptr noundef nonnull %remainder.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #11
  %is_app_limited.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 12
  %20 = ptrtoint ptr %is_app_limited.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_app_limited.i.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.end14.i.i.if.then23.i.i_crit_edge, label %lor.lhs.false18.i.i

if.end14.i.i.if.then23.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i.i

lor.lhs.false18.i.i:                              ; preds = %if.end14.i.i
  %v.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %22 = ptrtoint ptr %v.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v.i.i.i.i, align 4
  %conv20.i.i = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %conv20.i.i)
  %cmp21.not.i.i = icmp ult i64 %call.i.i.i, %conv20.i.i
  br i1 %cmp21.not.i.i, label %lor.lhs.false18.i.i.bbr_update_bw.exit.i_crit_edge, label %lor.lhs.false18.i.i.if.then23.i.i_crit_edge

lor.lhs.false18.i.i.if.then23.i.i_crit_edge:      ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23.i.i

lor.lhs.false18.i.i.bbr_update_bw.exit.i_crit_edge: ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_bw.exit.i

if.then23.i.i:                                    ; preds = %lor.lhs.false18.i.i.if.then23.i.i_crit_edge, %if.end14.i.i.if.then23.i.i_crit_edge
  %bw24.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 3
  %rtt_cnt25.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 4
  %24 = ptrtoint ptr %rtt_cnt25.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rtt_cnt25.i.i, align 4
  %conv26.i.i = trunc i64 %call.i.i.i to i32
  %call27.i.i = call i32 @minmax_running_max(ptr noundef %bw24.i.i, i32 noundef 10, i32 noundef %25, i32 noundef %conv26.i.i) #11
  br label %bbr_update_bw.exit.i

bbr_update_bw.exit.i:                             ; preds = %if.then23.i.i, %lor.lhs.false18.i.i.bbr_update_bw.exit.i_crit_edge, %lor.lhs.false.i.i.bbr_update_bw.exit.i_crit_edge, %entry.bbr_update_bw.exit.i_crit_edge
  %acked_sacked.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 10
  %26 = ptrtoint ptr %acked_sacked.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %acked_sacked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i13.i = icmp eq i32 %27, 0
  br i1 %cmp.i13.i, label %bbr_update_bw.exit.i.bbr_update_ack_aggregation.exit.i_crit_edge, label %lor.lhs.false.i16.i

bbr_update_bw.exit.i.bbr_update_ack_aggregation.exit.i_crit_edge: ; preds = %bbr_update_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_ack_aggregation.exit.i

lor.lhs.false.i16.i:                              ; preds = %bbr_update_bw.exit.i
  %28 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delivered.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i15.i = icmp slt i32 %29, 0
  br i1 %cmp2.i15.i, label %lor.lhs.false.i16.i.bbr_update_ack_aggregation.exit.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i16.i.bbr_update_ack_aggregation.exit.i_crit_edge: ; preds = %lor.lhs.false.i16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_ack_aggregation.exit.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i16.i
  %interval_us.i17.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 5
  %30 = ptrtoint ptr %interval_us.i17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %interval_us.i17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp4.i.i = icmp slt i32 %31, 1
  br i1 %cmp4.i.i, label %lor.lhs.false3.i.i.bbr_update_ack_aggregation.exit.i_crit_edge, label %if.end.i21.i

lor.lhs.false3.i.i.bbr_update_ack_aggregation.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_ack_aggregation.exit.i

if.end.i21.i:                                     ; preds = %lor.lhs.false3.i.i
  %32 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i19.i = load i32, ptr %round_start.i.i, align 8
  %33 = and i32 %bf.load.i19.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i20.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i20.i, label %if.end.i21.i.if.end40.i.i_crit_edge, label %if.then5.i.i

if.end.i21.i.if.end40.i.i_crit_edge:              ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then5.i.i:                                     ; preds = %if.end.i21.i
  %extra_acked_win_rtts.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 17
  %34 = ptrtoint ptr %extra_acked_win_rtts.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load6.i.i = load i32, ptr %extra_acked_win_rtts.i.i, align 4
  %35 = and i32 %bf.load6.i.i, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 3968, i32 %35)
  %cmp9.i.i = icmp eq i32 %35, 3968
  %36 = add i32 %bf.load6.i.i, 128
  %phi.bo154.i.i = and i32 %36, 3968
  %cond.i.i = select i1 %cmp9.i.i, i32 3968, i32 %phi.bo154.i.i
  %bf.clear12.i22.i = and i32 %bf.load6.i.i, -3969
  %bf.set.i.i = or i32 %cond.i.i, %bf.clear12.i22.i
  %37 = ptrtoint ptr %extra_acked_win_rtts.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.set.i.i, ptr %extra_acked_win_rtts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cond.i.i)
  %cmp17.i.i = icmp ugt i32 %cond.i.i, 512
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.then5.i.i.if.end40.i.i_crit_edge

if.then5.i.i.if.end40.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.i

if.then18.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set33.i.i = xor i32 %bf.clear12.i22.i, 64
  %38 = ptrtoint ptr %extra_acked_win_rtts.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.set33.i.i, ptr %extra_acked_win_rtts.i.i, align 4
  %bf.lshr37.i.i = lshr i32 %bf.set33.i.i, 6
  %bf.clear38.i.i = and i32 %bf.lshr37.i.i, 1
  %arrayidx.i.i = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 16, i32 %bf.clear38.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %arrayidx.i.i, align 2
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then18.i.i, %if.then5.i.i.if.end40.i.i_crit_edge, %if.end.i21.i.if.end40.i.i_crit_edge
  %delivered_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %40 = ptrtoint ptr %delivered_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %delivered_mstamp.i.i, align 8
  %ack_epoch_mstamp.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 11
  %42 = ptrtoint ptr %ack_epoch_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ack_epoch_mstamp.i.i, align 8
  %sub.i.i23.i = sub i64 %41, %43
  %44 = call i64 @llvm.smax.i64(i64 %sub.i.i23.i, i64 0) #11
  %bf.clear.i.i.i = and i32 %bf.load.i19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bf.clear.i.i.i, 0
  %lt_bw.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %v.i.i.i.i.i, ptr %lt_bw.i.i.i
  %45 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond.i.i.i = load i32, ptr %cond.in.i.i.i, align 4
  %conv.i24.i = zext i32 %cond.i.i.i to i64
  %conv43.i.i = and i64 %44, 4294967295
  %mul.i25.i = mul nuw i64 %conv43.i.i, %conv.i24.i
  %div152.i.i = lshr i64 %mul.i25.i, 24
  %conv44.i.i = trunc i64 %div152.i.i to i32
  %ack_epoch_acked.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 17
  %46 = ptrtoint ptr %ack_epoch_acked.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load45.i.i = load i32, ptr %ack_epoch_acked.i.i, align 4
  %bf.lshr46.i.i = lshr i32 %bf.load45.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr46.i.i, i32 %conv44.i.i)
  %cmp47.not.i.i = icmp ugt i32 %bf.lshr46.i.i, %conv44.i.i
  br i1 %cmp47.not.i.i, label %lor.lhs.false49.i.i, label %if.end40.i.i.if.then57.i.i_crit_edge

if.end40.i.i.if.then57.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57.i.i

lor.lhs.false49.i.i:                              ; preds = %if.end40.i.i
  %47 = ptrtoint ptr %acked_sacked.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %acked_sacked.i.i, align 4
  %add54.i.i = add i32 %48, %bf.lshr46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %add54.i.i)
  %cmp55.i.i = icmp ugt i32 %add54.i.i, 1048575
  br i1 %cmp55.i.i, label %lor.lhs.false49.i.i.if.then57.i.i_crit_edge, label %lor.lhs.false49.i.i.if.end64.i.i_crit_edge

lor.lhs.false49.i.i.if.end64.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

lor.lhs.false49.i.i.if.then57.i.i_crit_edge:      ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57.i.i

if.then57.i.i:                                    ; preds = %lor.lhs.false49.i.i.if.then57.i.i_crit_edge, %if.end40.i.i.if.then57.i.i_crit_edge
  %bf.clear60.i.i = and i32 %bf.load45.i.i, 4095
  %49 = ptrtoint ptr %ack_epoch_acked.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.clear60.i.i, ptr %ack_epoch_acked.i.i, align 4
  %50 = ptrtoint ptr %ack_epoch_mstamp.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %41, ptr %ack_epoch_mstamp.i.i, align 8
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then57.i.i, %lor.lhs.false49.i.i.if.end64.i.i_crit_edge
  %expected_acked.0.i.i = phi i32 [ 0, %if.then57.i.i ], [ %conv44.i.i, %lor.lhs.false49.i.i.if.end64.i.i_crit_edge ]
  %51 = ptrtoint ptr %ack_epoch_acked.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load66.i.i = load i32, ptr %ack_epoch_acked.i.i, align 4
  %bf.lshr67.i.i = lshr i32 %bf.load66.i.i, 12
  %52 = ptrtoint ptr %acked_sacked.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %acked_sacked.i.i, align 4
  %add69.i.i = add i32 %bf.lshr67.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %add69.i.i)
  %cmp71.i.i = icmp ugt i32 %add69.i.i, 1048575
  %phi.bo153.i.i = shl i32 %add69.i.i, 12
  %cond76.i.i = select i1 %cmp71.i.i, i32 -4096, i32 %phi.bo153.i.i
  %bf.clear81.i.i = and i32 %bf.load66.i.i, 4095
  %bf.set82.i.i = or i32 %cond76.i.i, %bf.clear81.i.i
  %54 = ptrtoint ptr %ack_epoch_acked.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bf.set82.i.i, ptr %ack_epoch_acked.i.i, align 4
  %bf.lshr85.i.i = lshr exact i32 %cond76.i.i, 12
  %sub.i.i = sub i32 %bf.lshr85.i.i, %expected_acked.0.i.i
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %55 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %snd_cwnd.i.i, align 8
  %57 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %56) #11
  %bf.lshr96.i.i = lshr i32 %bf.load66.i.i, 6
  %bf.clear97.i.i = and i32 %bf.lshr96.i.i, 1
  %arrayidx98.i.i = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 16, i32 %bf.clear97.i.i
  %58 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx98.i.i, align 2
  %conv99.i.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv99.i.i)
  %cmp100.i.i = icmp ugt i32 %57, %conv99.i.i
  br i1 %cmp100.i.i, label %if.then102.i.i, label %if.end64.i.i.bbr_update_ack_aggregation.exit.i_crit_edge

if.end64.i.i.bbr_update_ack_aggregation.exit.i_crit_edge: ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_ack_aggregation.exit.i

if.then102.i.i:                                   ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv103.i.i = trunc i32 %57 to i16
  %60 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv103.i.i, ptr %arrayidx98.i.i, align 2
  br label %bbr_update_ack_aggregation.exit.i

bbr_update_ack_aggregation.exit.i:                ; preds = %if.then102.i.i, %if.end64.i.i.bbr_update_ack_aggregation.exit.i_crit_edge, %lor.lhs.false3.i.i.bbr_update_ack_aggregation.exit.i_crit_edge, %lor.lhs.false.i16.i.bbr_update_ack_aggregation.exit.i_crit_edge, %bbr_update_bw.exit.i.bbr_update_ack_aggregation.exit.i_crit_edge
  %61 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i27.i = load i32, ptr %round_start.i.i, align 8
  %bf.lshr.mask.i.i = and i32 %bf.load.i27.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %bf.lshr.mask.i.i)
  %cmp.i28.i = icmp eq i32 %bf.lshr.mask.i.i, 1073741824
  br i1 %cmp.i28.i, label %land.lhs.true.i.i, label %bbr_update_ack_aggregation.exit.i.bbr_update_cycle_phase.exit.i_crit_edge

bbr_update_ack_aggregation.exit.i.bbr_update_cycle_phase.exit.i_crit_edge: ; preds = %bbr_update_ack_aggregation.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_cycle_phase.exit.i

land.lhs.true.i.i:                                ; preds = %bbr_update_ack_aggregation.exit.i
  %delivered_mstamp.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %62 = ptrtoint ptr %delivered_mstamp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %delivered_mstamp.i.i.i, align 8
  %cycle_mstamp.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %64 = ptrtoint ptr %cycle_mstamp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %cycle_mstamp.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %63, %65
  %66 = call i64 @llvm.smax.i64(i64 %sub.i.i.i.i, i64 0) #11
  %67 = trunc i64 %66 to i32
  %68 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %67)
  %cmp.i.i29.i = icmp ult i32 %69, %67
  %pacing_gain.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %70 = ptrtoint ptr %pacing_gain.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load.i.i30.i = load i32, ptr %pacing_gain.i.i.i, align 4
  %bf.lshr.mask.i.i.i = and i32 %bf.load.i.i30.i, -4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %bf.lshr.mask.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %bf.lshr.mask.i.i.i, 1073741824
  br i1 %cmp3.i.i.i, label %bbr_is_next_cycle_phase.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i
  %prior_in_flight.i.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 11
  %71 = ptrtoint ptr %prior_in_flight.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %prior_in_flight.i.i.i, align 8
  %tcp_clock_cache.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 43
  %73 = ptrtoint ptr %tcp_clock_cache.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tcp_clock_cache.i.i.i.i, align 8
  %tcp_wstamp_ns.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 42
  %75 = ptrtoint ptr %tcp_wstamp_ns.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tcp_wstamp_ns.i.i.i.i, align 8
  %77 = call i64 @llvm.usub.sat.i64(i64 %76, i64 %74) #11
  %78 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %77, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i.i.i = extractvalue { i64, i32 } %78, 0
  %asmresult4.i.i.i.i.i.i.i = extractvalue { i64, i32 } %78, 1
  %79 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %77, i64 %asmresult.i.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i.i) #14, !srcloc !44
  %bf.clear.i.i.i.i.i = and i32 %bf.load.i27.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %bf.clear.i.i.i.i.i, 0
  %lt_bw.i.i.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, ptr %v.i.i.i.i.i.i.i, ptr %lt_bw.i.i.i.i.i
  %80 = ptrtoint ptr %cond.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %cond.i.i.i.i.i = load i32, ptr %cond.in.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1077936127, i32 %bf.load.i.i30.i)
  %cmp5.i.i.i.i = icmp ugt i32 %bf.load.i.i30.i, 1077936127
  br i1 %cmp5.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.bbr_packets_in_net_at_edt.exit.i.i.i_crit_edge

if.end.i.i.i.bbr_packets_in_net_at_edt.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_packets_in_net_at_edt.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_pacing_rate.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %81 = ptrtoint ptr %sk_pacing_rate.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_pacing_rate.i.i.i.i.i, align 4
  %sk_pacing_shift.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %83 = ptrtoint ptr %sk_pacing_shift.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %sk_pacing_shift.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %84 to i32
  %shr.i.i.i.i.i = lshr i32 %82, %conv.i.i.i.i.i
  %85 = call i32 @llvm.umin.i32(i32 %shr.i.i.i.i.i, i32 65151) #11
  %mss_cache.i.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %86 = ptrtoint ptr %mss_cache.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mss_cache.i.i.i.i.i, align 4
  %div.i.i.i.i.i = udiv i32 %85, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %82)
  %cmp.i.i.i.i.i.i = icmp ult i32 %82, 150000
  %cond.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i32 1, i32 2
  %88 = call i32 @llvm.umax.i32(i32 %div.i.i.i.i.i, i32 %cond.i.i.i.i.i.i) #11
  %89 = call i32 @llvm.umin.i32(i32 %88, i32 127) #11
  %add.i.i.i.i = add i32 %89, %72
  br label %bbr_packets_in_net_at_edt.exit.i.i.i

bbr_packets_in_net_at_edt.exit.i.i.i:             ; preds = %if.then.i.i.i.i, %if.end.i.i.i.bbr_packets_in_net_at_edt.exit.i.i.i_crit_edge
  %inflight_at_edt.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %72, %if.end.i.i.i.bbr_packets_in_net_at_edt.exit.i.i.i_crit_edge ]
  %asmresult10.i.i.i.i.i.i.i = extractvalue { i64, i32 } %79, 0
  %div1581.i.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i.i, 9
  %conv.i.i.i.i = zext i32 %cond.i.i.i.i.i to i64
  %mul.i.i.i.i = mul i64 %div1581.i.i.i.i.i.i, %conv.i.i.i.i
  %shr.i.i.i.i = lshr i64 %mul.i.i.i.i, 24
  %conv4.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %90 = call i32 @llvm.usub.sat.i32(i32 %inflight_at_edt.0.i.i.i.i, i32 %conv4.i.i.i.i) #11
  %91 = ptrtoint ptr %v.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %v.i.i.i.i.i.i.i, align 4
  %bf.lshr8.i.i.i = lshr i32 %bf.load.i.i30.i, 22
  br i1 %cmp5.i.i.i.i, label %if.then10.i.i.i, label %if.end18.i.i.i

if.then10.i.i.i:                                  ; preds = %bbr_packets_in_net_at_edt.exit.i.i.i
  br i1 %cmp.i.i29.i, label %land.rhs.i.i.i, label %if.then10.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge

if.then10.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge: ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_cycle_phase.exit.i

land.rhs.i.i.i:                                   ; preds = %if.then10.i.i.i
  %losses.i.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 9
  %93 = ptrtoint ptr %losses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %losses.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool12.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool12.not.i.i.i, label %bbr_bdp.exit.i.i.i.i, label %land.rhs.i.i.i.if.then.i.i_crit_edge

land.rhs.i.i.i.if.then.i.i_crit_edge:             ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

bbr_bdp.exit.i.i.i.i:                             ; preds = %land.rhs.i.i.i
  %conv.i.i42.i.i.i = zext i32 %92 to i64
  %conv3.i.i.i.i.i = zext i32 %69 to i64
  %conv4.i.i82.i.i.i = zext i32 %bf.lshr8.i.i.i to i64
  %mul.i.i.i.i.i = mul nuw nsw i64 %conv4.i.i82.i.i.i, %conv3.i.i.i.i.i
  %mul5.i.i.i.i.i = mul i64 %mul.i.i.i.i.i, %conv.i.i42.i.i.i
  %shr.i.i43.i.i.i = lshr i64 %mul5.i.i.i.i.i, 8
  %sub.i.i.i.i.i = add nuw nsw i64 %shr.i.i43.i.i.i, 16777215
  %div10.i.i.i.i.i = lshr i64 %sub.i.i.i.i.i, 24
  %conv6.i.i.i.i.i = trunc i64 %div10.i.i.i.i.i to i32
  %phi.bo.i.i.i.i = add i32 %conv6.i.i.i.i.i, 1
  %sk_pacing_rate.i.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %95 = ptrtoint ptr %sk_pacing_rate.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sk_pacing_rate.i.i.i.i.i.i, align 4
  %sk_pacing_shift.i.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %97 = ptrtoint ptr %sk_pacing_shift.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load volatile i8, ptr %sk_pacing_shift.i.i.i.i.i.i, align 1
  %conv.i.i.i.i.i.i = zext i8 %98 to i32
  %shr.i.i.i.i.i.i = lshr i32 %96, %conv.i.i.i.i.i.i
  %99 = call i32 @llvm.umin.i32(i32 %shr.i.i.i.i.i.i, i32 65151) #11
  %mss_cache.i.i.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %100 = ptrtoint ptr %mss_cache.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mss_cache.i.i.i.i.i.i, align 4
  %div.i.i.i.i.i.i = udiv i32 %99, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %96)
  %cmp.i.i.i.i.i.i.i = icmp ult i32 %96, 150000
  %cond.i.i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i.i, i32 1, i32 2
  %102 = call i32 @llvm.umax.i32(i32 %div.i.i.i.i.i.i, i32 %cond.i.i.i.i.i.i.i) #11
  %103 = call i32 @llvm.umin.i32(i32 %102, i32 127) #11
  %mul.i4.i.i.i.i = mul nuw nsw i32 %103, 3
  %add2.i.i.i.i.i = add i32 %phi.bo.i.i.i.i, %mul.i4.i.i.i.i
  %and.i.i.i.i.i = and i32 %add2.i.i.i.i.i, -2
  %104 = and i32 %bf.load.i.i30.i, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp5.i.i.i.i.i = icmp eq i32 %104, 0
  %add6.i.i.i.i.i = add i32 %and.i.i.i.i.i, 2
  %cwnd.addr.0.i.i.i.i.i = select i1 %cmp5.i.i.i.i.i, i32 %add6.i.i.i.i.i, i32 %and.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %cwnd.addr.0.i.i.i.i.i)
  %cmp17.i.not.i.i = icmp ult i32 %90, %cwnd.addr.0.i.i.i.i.i
  br i1 %cmp17.i.not.i.i, label %bbr_bdp.exit.i.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge, label %bbr_bdp.exit.i.i.i.i.if.then.i.i_crit_edge

bbr_bdp.exit.i.i.i.i.if.then.i.i_crit_edge:       ; preds = %bbr_bdp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

bbr_bdp.exit.i.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge: ; preds = %bbr_bdp.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_cycle_phase.exit.i

if.end18.i.i.i:                                   ; preds = %bbr_packets_in_net_at_edt.exit.i.i.i
  br i1 %cmp.i.i29.i, label %if.end18.i.i.i.if.then.i.i_crit_edge, label %lor.rhs20.i.i.i

if.end18.i.i.i.if.then.i.i_crit_edge:             ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.rhs20.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp.i.i46.i.i.i = icmp eq i32 %69, -1
  br i1 %cmp.i.i46.i.i.i, label %lor.rhs20.i.i.i.bbr_bdp.exit.i73.i.i.i_crit_edge, label %if.end.i.i56.i.i.i, !prof !45

lor.rhs20.i.i.i.bbr_bdp.exit.i73.i.i.i_crit_edge: ; preds = %lor.rhs20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_bdp.exit.i73.i.i.i

if.end.i.i56.i.i.i:                               ; preds = %lor.rhs20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i47.i.i.i = zext i32 %92 to i64
  %conv3.i.i48.i.i.i = zext i32 %69 to i64
  %mul.i.i49.i.i.i = shl nuw nsw i64 %conv3.i.i48.i.i.i, 8
  %mul5.i.i50.i.i.i = mul i64 %mul.i.i49.i.i.i, %conv.i.i47.i.i.i
  %shr.i.i51.i.i.i = lshr exact i64 %mul5.i.i50.i.i.i, 8
  %sub.i.i52.i.i.i = add nuw nsw i64 %shr.i.i51.i.i.i, 16777215
  %div10.i.i53.i.i.i = lshr i64 %sub.i.i52.i.i.i, 24
  %conv6.i.i54.i.i.i = trunc i64 %div10.i.i53.i.i.i to i32
  %phi.bo.i55.i.i.i = add i32 %conv6.i.i54.i.i.i, 1
  br label %bbr_bdp.exit.i73.i.i.i

bbr_bdp.exit.i73.i.i.i:                           ; preds = %if.end.i.i56.i.i.i, %lor.rhs20.i.i.i.bbr_bdp.exit.i73.i.i.i_crit_edge
  %retval.0.i.i57.i.i.i = phi i32 [ %phi.bo.i55.i.i.i, %if.end.i.i56.i.i.i ], [ 11, %lor.rhs20.i.i.i.bbr_bdp.exit.i73.i.i.i_crit_edge ]
  %sk_pacing_rate.i.i.i58.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %105 = ptrtoint ptr %sk_pacing_rate.i.i.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sk_pacing_rate.i.i.i58.i.i.i, align 4
  %sk_pacing_shift.i.i.i59.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %107 = ptrtoint ptr %sk_pacing_shift.i.i.i59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load volatile i8, ptr %sk_pacing_shift.i.i.i59.i.i.i, align 1
  %conv.i.i.i60.i.i.i = zext i8 %108 to i32
  %shr.i.i.i61.i.i.i = lshr i32 %106, %conv.i.i.i60.i.i.i
  %109 = call i32 @llvm.umin.i32(i32 %shr.i.i.i61.i.i.i, i32 65151) #11
  %mss_cache.i.i.i62.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %110 = ptrtoint ptr %mss_cache.i.i.i62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mss_cache.i.i.i62.i.i.i, align 4
  %div.i.i.i63.i.i.i = udiv i32 %109, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %106)
  %cmp.i.i.i.i64.i.i.i = icmp ult i32 %106, 150000
  %cond.i.i.i.i65.i.i.i = select i1 %cmp.i.i.i.i64.i.i.i, i32 1, i32 2
  %112 = call i32 @llvm.umax.i32(i32 %div.i.i.i63.i.i.i, i32 %cond.i.i.i.i65.i.i.i) #11
  %113 = call i32 @llvm.umin.i32(i32 %112, i32 127) #11
  %mul.i4.i66.i.i.i = mul nuw nsw i32 %113, 3
  %add2.i.i67.i.i.i = add i32 %mul.i4.i66.i.i.i, %retval.0.i.i57.i.i.i
  %and.i.i68.i.i.i = and i32 %add2.i.i67.i.i.i, -2
  %114 = and i32 %bf.load.i.i30.i, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp5.i.i76.i.i.i = icmp eq i32 %114, 0
  %add6.i.i77.i.i.i = add i32 %and.i.i68.i.i.i, 2
  %cwnd.addr.0.i.i80.i.i.i = select i1 %cmp5.i.i76.i.i.i, i32 %add6.i.i77.i.i.i, i32 %and.i.i68.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %cwnd.addr.0.i.i80.i.i.i)
  %cmp22.i.not.i.i = icmp ugt i32 %90, %cwnd.addr.0.i.i80.i.i.i
  br i1 %cmp22.i.not.i.i, label %bbr_bdp.exit.i73.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge, label %bbr_bdp.exit.i73.i.i.i.if.then.i.i_crit_edge

bbr_bdp.exit.i73.i.i.i.if.then.i.i_crit_edge:     ; preds = %bbr_bdp.exit.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

bbr_bdp.exit.i73.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge: ; preds = %bbr_bdp.exit.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_cycle_phase.exit.i

bbr_is_next_cycle_phase.exit.i.i:                 ; preds = %land.lhs.true.i.i
  br i1 %cmp.i.i29.i, label %bbr_is_next_cycle_phase.exit.i.i.if.then.i.i_crit_edge, label %bbr_is_next_cycle_phase.exit.i.i.bbr_update_cycle_phase.exit.i_crit_edge

bbr_is_next_cycle_phase.exit.i.i.bbr_update_cycle_phase.exit.i_crit_edge: ; preds = %bbr_is_next_cycle_phase.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_cycle_phase.exit.i

bbr_is_next_cycle_phase.exit.i.i.if.then.i.i_crit_edge: ; preds = %bbr_is_next_cycle_phase.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %bbr_is_next_cycle_phase.exit.i.i.if.then.i.i_crit_edge, %bbr_bdp.exit.i73.i.i.i.if.then.i.i_crit_edge, %if.end18.i.i.i.if.then.i.i_crit_edge, %bbr_bdp.exit.i.i.i.i.if.then.i.i_crit_edge, %land.rhs.i.i.i.if.then.i.i_crit_edge
  %115 = add i32 %bf.load.i.i30.i, 64
  %bf.shl.i.i.i = and i32 %115, 448
  %bf.clear4.i.i.i = and i32 %bf.load.i.i30.i, -449
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear4.i.i.i
  %116 = ptrtoint ptr %pacing_gain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bf.set.i.i.i, ptr %pacing_gain.i.i.i, align 4
  %117 = ptrtoint ptr %cycle_mstamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %63, ptr %cycle_mstamp.i.i.i, align 8
  br label %bbr_update_cycle_phase.exit.i

bbr_update_cycle_phase.exit.i:                    ; preds = %if.then.i.i, %bbr_is_next_cycle_phase.exit.i.i.bbr_update_cycle_phase.exit.i_crit_edge, %bbr_bdp.exit.i73.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge, %bbr_bdp.exit.i.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge, %if.then10.i.i.i.bbr_update_cycle_phase.exit.i_crit_edge, %bbr_update_ack_aggregation.exit.i.bbr_update_cycle_phase.exit.i_crit_edge
  %full_bw_reached.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %118 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load.i.i33.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %119 = and i32 %bf.load.i.i33.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.i.not.i.i = icmp ne i32 %119, 0
  %120 = and i32 %bf.load.i27.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i36.i = icmp eq i32 %120, 0
  %or.cond.i = select i1 %tobool.i.not.i.i, i1 true, i1 %tobool.not.i36.i
  br i1 %or.cond.i, label %bbr_update_cycle_phase.exit.i.bbr_check_full_bw_reached.exit.i_crit_edge, label %lor.lhs.false2.i.i

bbr_update_cycle_phase.exit.i.bbr_check_full_bw_reached.exit.i_crit_edge: ; preds = %bbr_update_cycle_phase.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_check_full_bw_reached.exit.i

lor.lhs.false2.i.i:                               ; preds = %bbr_update_cycle_phase.exit.i
  %is_app_limited.i38.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 12
  %121 = ptrtoint ptr %is_app_limited.i38.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %is_app_limited.i38.i, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool3.not.i.i = icmp eq i8 %122, 0
  br i1 %tobool3.not.i.i, label %if.end.i42.i, label %lor.lhs.false2.i.i.bbr_check_full_bw_reached.exit.i_crit_edge

lor.lhs.false2.i.i.bbr_check_full_bw_reached.exit.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_check_full_bw_reached.exit.i

if.end.i42.i:                                     ; preds = %lor.lhs.false2.i.i
  %full_bw.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 14
  %123 = ptrtoint ptr %full_bw.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %full_bw.i.i, align 4
  %conv.i39.i = zext i32 %124 to i64
  %mul.i40.i = mul nuw nsw i64 %conv.i39.i, 320
  %shr.i.i = lshr i64 %mul.i40.i, 8
  %conv4.i.i = trunc i64 %shr.i.i to i32
  %v.i.i.i41.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %125 = ptrtoint ptr %v.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %v.i.i.i41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %conv4.i.i)
  %cmp.not.i.i = icmp ult i32 %126, %conv4.i.i
  br i1 %cmp.not.i.i, label %if.end12.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %full_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %full_bw.i.i, align 4
  %bf.clear11.i.i = and i32 %bf.load.i.i33.i, -1537
  br label %cleanup.sink.split.i.i

if.end12.i.i:                                     ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = add nuw i32 %bf.load.i.i33.i, 512
  %bf.shl.i.i = and i32 %128, 1536
  %bf.clear18.i.i = and i32 %bf.load.i.i33.i, -3585
  %bf.set19.i.i = or i32 %bf.shl.i.i, %bf.clear18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %bf.shl.i.i)
  %cmp24.i.i = icmp eq i32 %bf.shl.i.i, 1536
  %bf.shl28.i.i = select i1 %cmp24.i.i, i32 2048, i32 0
  %bf.set30.i.i = or i32 %bf.set19.i.i, %bf.shl28.i.i
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end12.i.i, %if.then7.i.i
  %bf.set30.sink.i.i = phi i32 [ %bf.set30.i.i, %if.end12.i.i ], [ %bf.clear11.i.i, %if.then7.i.i ]
  %129 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %bf.set30.sink.i.i, ptr %full_bw_reached.i.i.i, align 4
  br label %bbr_check_full_bw_reached.exit.i

bbr_check_full_bw_reached.exit.i:                 ; preds = %cleanup.sink.split.i.i, %lor.lhs.false2.i.i.bbr_check_full_bw_reached.exit.i_crit_edge, %bbr_update_cycle_phase.exit.i.bbr_check_full_bw_reached.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i27.i)
  %cmp.i46.i = icmp ult i32 %bf.load.i27.i, 536870912
  br i1 %cmp.i46.i, label %land.lhs.true.i50.i, label %bbr_check_full_bw_reached.exit.i.if.end.i67.i_crit_edge

bbr_check_full_bw_reached.exit.i.if.end.i67.i_crit_edge: ; preds = %bbr_check_full_bw_reached.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i67.i

land.lhs.true.i50.i:                              ; preds = %bbr_check_full_bw_reached.exit.i
  %130 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load.i.i48.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %131 = and i32 %bf.load.i.i48.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i.not.i49.i = icmp eq i32 %131, 0
  br i1 %tobool.i.not.i49.i, label %land.lhs.true.i50.i.if.end.i67.i_crit_edge, label %if.then.i52.i

land.lhs.true.i50.i.if.end.i67.i_crit_edge:       ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i67.i

if.then.i52.i:                                    ; preds = %land.lhs.true.i50.i
  %bf.set.i51.i = or i32 %bf.load.i27.i, 536870912
  %132 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %bf.set.i51.i, ptr %round_start.i.i, align 8
  %133 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp.i.i.i.i = icmp eq i32 %134, -1
  br i1 %cmp.i.i.i.i, label %if.then.i52.i.bbr_bdp.exit.i.i.i_crit_edge, label %if.end.i.i.i.i, !prof !45

if.then.i52.i.bbr_bdp.exit.i.i.i_crit_edge:       ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_bdp.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %v.i.i.i53.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %135 = ptrtoint ptr %v.i.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %v.i.i.i53.i, align 4
  %conv.i.i.i54.i = zext i32 %136 to i64
  %conv3.i.i.i.i = zext i32 %134 to i64
  %mul.i.i.i55.i = shl nuw nsw i64 %conv3.i.i.i.i, 8
  %mul5.i.i.i.i = mul i64 %mul.i.i.i55.i, %conv.i.i.i54.i
  %shr.i.i.i56.i = lshr exact i64 %mul5.i.i.i.i, 8
  %sub.i.i.i57.i = add nuw nsw i64 %shr.i.i.i56.i, 16777215
  %div10.i.i.i.i = lshr i64 %sub.i.i.i57.i, 24
  %conv6.i.i.i.i = trunc i64 %div10.i.i.i.i to i32
  %phi.bo.i.i.i = add i32 %conv6.i.i.i.i, 1
  br label %bbr_bdp.exit.i.i.i

bbr_bdp.exit.i.i.i:                               ; preds = %if.end.i.i.i.i, %if.then.i52.i.bbr_bdp.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %phi.bo.i.i.i, %if.end.i.i.i.i ], [ 11, %if.then.i52.i.bbr_bdp.exit.i.i.i_crit_edge ]
  %sk_pacing_rate.i.i.i.i58.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %137 = ptrtoint ptr %sk_pacing_rate.i.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sk_pacing_rate.i.i.i.i58.i, align 4
  %sk_pacing_shift.i.i.i.i59.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %139 = ptrtoint ptr %sk_pacing_shift.i.i.i.i59.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load volatile i8, ptr %sk_pacing_shift.i.i.i.i59.i, align 1
  %conv.i.i.i.i60.i = zext i8 %140 to i32
  %shr.i.i.i.i61.i = lshr i32 %138, %conv.i.i.i.i60.i
  %141 = call i32 @llvm.umin.i32(i32 %shr.i.i.i.i61.i, i32 65151) #11
  %mss_cache.i.i.i.i62.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %142 = ptrtoint ptr %mss_cache.i.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mss_cache.i.i.i.i62.i, align 4
  %div.i.i.i.i63.i = udiv i32 %141, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %138)
  %cmp.i.i.i.i.i64.i = icmp ult i32 %138, 150000
  %cond.i.i.i.i.i65.i = select i1 %cmp.i.i.i.i.i64.i, i32 1, i32 2
  %144 = call i32 @llvm.umax.i32(i32 %div.i.i.i.i63.i, i32 %cond.i.i.i.i.i65.i) #11
  %145 = call i32 @llvm.umin.i32(i32 %144, i32 127) #11
  %mul.i4.i.i.i = mul nuw nsw i32 %145, 3
  %add2.i.i.i.i = add i32 %mul.i4.i.i.i, %retval.0.i.i.i.i
  %and.i.i.i.i = and i32 %add2.i.i.i.i, -2
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %146 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and.i.i.i.i, ptr %snd_ssthresh.i.i, align 4
  br label %if.end.i67.i

if.end.i67.i:                                     ; preds = %bbr_bdp.exit.i.i.i, %land.lhs.true.i50.i.if.end.i67.i_crit_edge, %bbr_check_full_bw_reached.exit.i.if.end.i67.i_crit_edge
  %147 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %bf.load8.i.i = load i32, ptr %round_start.i.i, align 8
  %bf.lshr9.mask.i.i = and i32 %bf.load8.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr9.mask.i.i)
  %cmp10.i.i = icmp eq i32 %bf.lshr9.mask.i.i, 536870912
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %if.end.i67.i.bbr_check_drain.exit.i_crit_edge

if.end.i67.i.bbr_check_drain.exit.i_crit_edge:    ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_check_drain.exit.i

land.lhs.true11.i.i:                              ; preds = %if.end.i67.i
  %packets_out.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %148 = ptrtoint ptr %packets_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %packets_out.i.i.i, align 4
  %sacked_out.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %150 = ptrtoint ptr %sacked_out.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sacked_out.i.i.i.i, align 4
  %lost_out.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %152 = ptrtoint ptr %lost_out.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %lost_out.i.i.i.i, align 8
  %retrans_out.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %154 = ptrtoint ptr %retrans_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %retrans_out.i.i.i, align 8
  %156 = add i32 %151, %153
  %sub.i.i68.i = sub i32 %149, %156
  %add.i.i.i = add i32 %sub.i.i68.i, %155
  %tcp_clock_cache.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 43
  %157 = ptrtoint ptr %tcp_clock_cache.i.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %tcp_clock_cache.i.i.i, align 8
  %tcp_wstamp_ns.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 42
  %159 = ptrtoint ptr %tcp_wstamp_ns.i.i.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %tcp_wstamp_ns.i.i.i, align 8
  %161 = call i64 @llvm.usub.sat.i64(i64 %160, i64 %158) #11
  %162 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %161, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %162, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %162, 1
  %163 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %161, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #14, !srcloc !44
  %bf.clear.i.i.i.i = and i32 %bf.load8.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %bf.clear.i.i.i.i, 0
  %lt_bw.i.i.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i.i.i.i = select i1 %tobool.not.i.i.i.i, ptr %v.i.i.i.i.i.i, ptr %lt_bw.i.i.i.i
  %164 = ptrtoint ptr %cond.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %cond.i.i.i.i = load i32, ptr %cond.in.i.i.i.i, align 4
  %165 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load.i3.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1077936127, i32 %bf.load.i3.i.i)
  %cmp5.i.i.i = icmp ugt i32 %bf.load.i3.i.i, 1077936127
  br i1 %cmp5.i.i.i, label %if.then.i.i.i, label %land.lhs.true11.i.i.bbr_packets_in_net_at_edt.exit.i.i_crit_edge

land.lhs.true11.i.i.bbr_packets_in_net_at_edt.exit.i.i_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_packets_in_net_at_edt.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sk_pacing_rate.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %166 = ptrtoint ptr %sk_pacing_rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sk_pacing_rate.i.i.i.i, align 4
  %sk_pacing_shift.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %168 = ptrtoint ptr %sk_pacing_shift.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load volatile i8, ptr %sk_pacing_shift.i.i.i.i, align 1
  %conv.i.i4.i.i = zext i8 %169 to i32
  %shr.i.i5.i.i = lshr i32 %167, %conv.i.i4.i.i
  %170 = call i32 @llvm.umin.i32(i32 %shr.i.i5.i.i, i32 65151) #11
  %mss_cache.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %171 = ptrtoint ptr %mss_cache.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mss_cache.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %170, %172
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %167)
  %cmp.i.i.i.i.i = icmp ult i32 %167, 150000
  %cond.i.i.i.i70.i = select i1 %cmp.i.i.i.i.i, i32 1, i32 2
  %173 = call i32 @llvm.umax.i32(i32 %div.i.i.i.i, i32 %cond.i.i.i.i70.i) #11
  %174 = call i32 @llvm.umin.i32(i32 %173, i32 127) #11
  %add.i6.i.i = add i32 %174, %add.i.i.i
  br label %bbr_packets_in_net_at_edt.exit.i.i

bbr_packets_in_net_at_edt.exit.i.i:               ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.bbr_packets_in_net_at_edt.exit.i.i_crit_edge
  %inflight_at_edt.0.i.i.i = phi i32 [ %add.i6.i.i, %if.then.i.i.i ], [ %add.i.i.i, %land.lhs.true11.i.i.bbr_packets_in_net_at_edt.exit.i.i_crit_edge ]
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %163, 0
  %div1581.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %conv.i.i.i = zext i32 %cond.i.i.i.i to i64
  %mul.i.i.i = mul i64 %div1581.i.i.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 24
  %conv4.i.i.i = trunc i64 %shr.i.i.i to i32
  %175 = call i32 @llvm.usub.sat.i32(i32 %inflight_at_edt.0.i.i.i, i32 %conv4.i.i.i) #11
  %176 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp.i.i9.i.i = icmp eq i32 %177, -1
  br i1 %cmp.i.i9.i.i, label %bbr_packets_in_net_at_edt.exit.i.i.bbr_bdp.exit.i36.i.i_crit_edge, label %if.end.i.i19.i.i, !prof !45

bbr_packets_in_net_at_edt.exit.i.i.bbr_bdp.exit.i36.i.i_crit_edge: ; preds = %bbr_packets_in_net_at_edt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_bdp.exit.i36.i.i

if.end.i.i19.i.i:                                 ; preds = %bbr_packets_in_net_at_edt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %178 = ptrtoint ptr %v.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %v.i.i.i.i.i.i, align 4
  %conv.i.i10.i.i = zext i32 %179 to i64
  %conv3.i.i11.i.i = zext i32 %177 to i64
  %mul.i.i12.i.i = shl nuw nsw i64 %conv3.i.i11.i.i, 8
  %mul5.i.i13.i.i = mul i64 %mul.i.i12.i.i, %conv.i.i10.i.i
  %shr.i.i14.i.i = lshr exact i64 %mul5.i.i13.i.i, 8
  %sub.i.i15.i.i = add nuw nsw i64 %shr.i.i14.i.i, 16777215
  %div10.i.i16.i.i = lshr i64 %sub.i.i15.i.i, 24
  %conv6.i.i17.i.i = trunc i64 %div10.i.i16.i.i to i32
  %phi.bo.i18.i.i = add i32 %conv6.i.i17.i.i, 1
  br label %bbr_bdp.exit.i36.i.i

bbr_bdp.exit.i36.i.i:                             ; preds = %if.end.i.i19.i.i, %bbr_packets_in_net_at_edt.exit.i.i.bbr_bdp.exit.i36.i.i_crit_edge
  %retval.0.i.i20.i.i = phi i32 [ %phi.bo.i18.i.i, %if.end.i.i19.i.i ], [ 11, %bbr_packets_in_net_at_edt.exit.i.i.bbr_bdp.exit.i36.i.i_crit_edge ]
  %sk_pacing_rate.i.i.i21.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %180 = ptrtoint ptr %sk_pacing_rate.i.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %sk_pacing_rate.i.i.i21.i.i, align 4
  %sk_pacing_shift.i.i.i22.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %182 = ptrtoint ptr %sk_pacing_shift.i.i.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load volatile i8, ptr %sk_pacing_shift.i.i.i22.i.i, align 1
  %conv.i.i.i23.i.i = zext i8 %183 to i32
  %shr.i.i.i24.i.i = lshr i32 %181, %conv.i.i.i23.i.i
  %184 = call i32 @llvm.umin.i32(i32 %shr.i.i.i24.i.i, i32 65151) #11
  %mss_cache.i.i.i25.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %185 = ptrtoint ptr %mss_cache.i.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mss_cache.i.i.i25.i.i, align 4
  %div.i.i.i26.i.i = udiv i32 %184, %186
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %181)
  %cmp.i.i.i.i27.i.i = icmp ult i32 %181, 150000
  %cond.i.i.i.i28.i.i = select i1 %cmp.i.i.i.i27.i.i, i32 1, i32 2
  %187 = call i32 @llvm.umax.i32(i32 %div.i.i.i26.i.i, i32 %cond.i.i.i.i28.i.i) #11
  %188 = call i32 @llvm.umin.i32(i32 %187, i32 127) #11
  %mul.i4.i29.i.i = mul nuw nsw i32 %188, 3
  %add2.i.i30.i.i = add i32 %mul.i4.i29.i.i, %retval.0.i.i20.i.i
  %and.i.i31.i.i = and i32 %add2.i.i30.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %and.i.i31.i.i)
  %cmp17.not.i.i = icmp ugt i32 %175, %and.i.i31.i.i
  br i1 %cmp17.not.i.i, label %bbr_bdp.exit.i36.i.i.bbr_check_drain.exit.i_crit_edge, label %if.then18.i73.i

bbr_bdp.exit.i36.i.i.bbr_check_drain.exit.i_crit_edge: ; preds = %bbr_bdp.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_check_drain.exit.i

if.then18.i73.i:                                  ; preds = %bbr_bdp.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear.i.i71.i = and i32 %bf.load8.i.i, 536870911
  %bf.set.i.i72.i = or i32 %bf.clear.i.i71.i, 1073741824
  %189 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %bf.set.i.i72.i, ptr %round_start.i.i, align 8
  %call.i.i.i.i = call i32 @prandom_u32() #11
  %conv.i.i47.i.i = zext i32 %call.i.i.i.i to i64
  %mul.i.i48.i.i = mul nuw nsw i64 %conv.i.i47.i.i, 7
  %shr.i.i49.i.i = lshr i64 %mul.i.i48.i.i, 32
  %conv2.i.i.i.i = trunc i64 %shr.i.i49.i.i to i32
  %190 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load2.i.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %.neg.i.i.i = mul nuw nsw i32 %conv2.i.i.i.i, 448
  %bf.value.i.i.i = add nuw nsw i32 %.neg.i.i.i, 448
  %bf.clear3.i.i.i = and i32 %bf.load2.i.i.i, -449
  %bf.set4.i.i.i = or i32 %bf.value.i.i.i, %bf.clear3.i.i.i
  %191 = add i32 %bf.set4.i.i.i, 64
  %bf.shl.i.i.i.i = and i32 %191, 448
  %bf.set.i.i.i.i = or i32 %bf.shl.i.i.i.i, %bf.clear3.i.i.i
  store i32 %bf.set.i.i.i.i, ptr %full_bw_reached.i.i.i, align 4
  %delivered_mstamp.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %192 = ptrtoint ptr %delivered_mstamp.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %delivered_mstamp.i.i.i.i, align 8
  %cycle_mstamp.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %194 = ptrtoint ptr %cycle_mstamp.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %cycle_mstamp.i.i.i.i, align 8
  br label %bbr_check_drain.exit.i

bbr_check_drain.exit.i:                           ; preds = %if.then18.i73.i, %bbr_bdp.exit.i36.i.i.bbr_check_drain.exit.i_crit_edge, %if.end.i67.i.bbr_check_drain.exit.i_crit_edge
  %min_rtt_stamp.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 1
  %195 = ptrtoint ptr %min_rtt_stamp.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %min_rtt_stamp.i.i, align 4
  %add.i.i = add i32 %196, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %197 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i75.i = sub i32 %add.i.i, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i75.i)
  %cmp.i.i76.i = icmp slt i32 %sub.i.i75.i, 0
  %rtt_us.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 8
  %198 = ptrtoint ptr %rtt_us.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rtt_us.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %199)
  %cmp.i77.i = icmp sgt i32 %199, -1
  br i1 %cmp.i77.i, label %land.lhs.true.i79.i, label %bbr_check_drain.exit.i.if.end.i82.i_crit_edge

bbr_check_drain.exit.i.if.end.i82.i_crit_edge:    ; preds = %bbr_check_drain.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i82.i

land.lhs.true.i79.i:                              ; preds = %bbr_check_drain.exit.i
  %200 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp4.i78.i = icmp ult i32 %199, %201
  br i1 %cmp4.i78.i, label %land.lhs.true.i79.i.if.then.i81.i_crit_edge, label %lor.lhs.false.i80.i

land.lhs.true.i79.i.if.then.i81.i_crit_edge:      ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i81.i

lor.lhs.false.i80.i:                              ; preds = %land.lhs.true.i79.i
  br i1 %cmp.i.i76.i, label %land.lhs.true5.i.i, label %lor.lhs.false.i80.i.if.end21.i.i_crit_edge

lor.lhs.false.i80.i.if.end21.i.i_crit_edge:       ; preds = %lor.lhs.false.i80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

land.lhs.true5.i.i:                               ; preds = %lor.lhs.false.i80.i
  %is_ack_delayed.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 14
  %202 = ptrtoint ptr %is_ack_delayed.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %is_ack_delayed.i.i, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool6.not.i.i = icmp eq i8 %203, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true5.i.i.if.then.i81.i_crit_edge, label %land.lhs.true5.i.i.land.lhs.true11.i84.i_crit_edge

land.lhs.true5.i.i.land.lhs.true11.i84.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i84.i

land.lhs.true5.i.i.if.then.i81.i_crit_edge:       ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i81.i

if.then.i81.i:                                    ; preds = %land.lhs.true5.i.i.if.then.i81.i_crit_edge, %land.lhs.true.i79.i.if.then.i81.i_crit_edge
  %204 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %199, ptr %icsk_ca_priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %205 = load volatile i32, ptr @jiffies, align 128
  %206 = ptrtoint ptr %min_rtt_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %min_rtt_stamp.i.i, align 4
  br label %if.end.i82.i

if.end.i82.i:                                     ; preds = %if.then.i81.i, %bbr_check_drain.exit.i.if.end.i82.i_crit_edge
  br i1 %cmp.i.i76.i, label %if.end.i82.i.land.lhs.true11.i84.i_crit_edge, label %if.end.i82.i.if.end21.i.i_crit_edge

if.end.i82.i.if.end21.i.i_crit_edge:              ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.end.i82.i.land.lhs.true11.i84.i_crit_edge:     ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true11.i84.i

land.lhs.true11.i84.i:                            ; preds = %if.end.i82.i.land.lhs.true11.i84.i_crit_edge, %land.lhs.true5.i.i.land.lhs.true11.i84.i_crit_edge
  %207 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %bf.load.i83.i = load i32, ptr %round_start.i.i, align 8
  %208 = and i32 %bf.load.i83.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool12.not.i.i = icmp ne i32 %208, 0
  %bf.lshr15.mask.i.i = and i32 %bf.load.i83.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr15.mask.i.i)
  %cmp16.not.i.i = icmp eq i32 %bf.lshr15.mask.i.i, 1610612736
  %or.cond.i.i = or i1 %tobool12.not.i.i, %cmp16.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true11.i84.i.if.end21.i.i_crit_edge, label %if.then17.i.i

land.lhs.true11.i84.i.if.end21.i.i_crit_edge:     ; preds = %land.lhs.true11.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true11.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear20.i.i = and i32 %bf.load.i83.i, 536870911
  %bf.set.i85.i = or i32 %bf.clear20.i.i, 1610612736
  %209 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %bf.set.i85.i, ptr %round_start.i.i, align 8
  %prior_cwnd5.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %210 = ptrtoint ptr %prior_cwnd5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %prior_cwnd5.i.i.i, align 8
  %snd_cwnd6.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %212 = ptrtoint ptr %snd_cwnd6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %snd_cwnd6.i.i.i, align 8
  %214 = call i32 @llvm.umax.i32(i32 %211, i32 %213) #11
  %215 = ptrtoint ptr %prior_cwnd5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %prior_cwnd5.i.i.i, align 8
  %probe_rtt_done_stamp.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %216 = ptrtoint ptr %probe_rtt_done_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %probe_rtt_done_stamp.i.i, align 8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true11.i84.i.if.end21.i.i_crit_edge, %if.end.i82.i.if.end21.i.i_crit_edge, %lor.lhs.false.i80.i.if.end21.i.i_crit_edge
  %217 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %bf.load23.i.i = load i32, ptr %round_start.i.i, align 8
  %bf.lshr24.mask.i.i = and i32 %bf.load23.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr24.mask.i.i)
  %cmp25.i.i = icmp eq i32 %bf.lshr24.mask.i.i, 1610612736
  br i1 %cmp25.i.i, label %if.then26.i.i, label %if.end21.i.i.if.end65.i.i_crit_edge

if.end21.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  %delivered.i86.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %218 = ptrtoint ptr %delivered.i86.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delivered.i86.i, align 8
  %packets_out.i.i87.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %220 = ptrtoint ptr %packets_out.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %packets_out.i.i87.i, align 4
  %sacked_out.i.i.i88.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %222 = ptrtoint ptr %sacked_out.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %sacked_out.i.i.i88.i, align 4
  %lost_out.i.i.i89.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %224 = ptrtoint ptr %lost_out.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %lost_out.i.i.i89.i, align 8
  %retrans_out.i.i90.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %226 = ptrtoint ptr %retrans_out.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %retrans_out.i.i90.i, align 8
  %228 = add i32 %223, %225
  %sub.i104.i.i = sub i32 %221, %228
  %add.i.i91.i = add i32 %sub.i104.i.i, %227
  %add28.i.i = add i32 %add.i.i91.i, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add28.i.i)
  %tobool29.not.i.i = icmp eq i32 %add28.i.i, 0
  %add28..i.i = select i1 %tobool29.not.i.i, i32 1, i32 %add28.i.i
  %app_limited.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 74
  %229 = ptrtoint ptr %app_limited.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %add28..i.i, ptr %app_limited.i.i, align 4
  %probe_rtt_done_stamp30.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %230 = ptrtoint ptr %probe_rtt_done_stamp30.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %probe_rtt_done_stamp30.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool31.not.i.i = icmp eq i32 %231, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true32.i.i, label %if.then45.i.i

land.lhs.true32.i.i:                              ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add.i.i91.i)
  %cmp34.i.i = icmp ult i32 %add.i.i91.i, 5
  br i1 %cmp34.i.i, label %if.then35.i.i, label %land.lhs.true32.i.i.if.end65.i.i_crit_edge

land.lhs.true32.i.i.if.end65.i.i_crit_edge:       ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %232 = load volatile i32, ptr @jiffies, align 128
  %add37.i.i = add i32 %232, 20
  %233 = ptrtoint ptr %probe_rtt_done_stamp30.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add37.i.i, ptr %probe_rtt_done_stamp30.i.i, align 8
  %bf.clear40.i.i = and i32 %bf.load23.i.i, -4194305
  %234 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %bf.clear40.i.i, ptr %round_start.i.i, align 8
  %next_rtt_delivered.i92.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %235 = ptrtoint ptr %next_rtt_delivered.i92.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %219, ptr %next_rtt_delivered.i92.i, align 8
  br label %if.end65.i.i

if.then45.i.i:                                    ; preds = %if.then26.i.i
  %236 = and i32 %bf.load23.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool49.not.i.i = icmp eq i32 %236, 0
  br i1 %tobool49.not.i.i, label %if.then45.i.i.if.end55.i.i_crit_edge, label %if.then50.i.i

if.then45.i.i.if.end55.i.i_crit_edge:             ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i.i

if.then50.i.i:                                    ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set54.i.i = or i32 %bf.load23.i.i, 4194304
  %237 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %bf.set54.i.i, ptr %round_start.i.i, align 8
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then50.i.i, %if.then45.i.i.if.end55.i.i_crit_edge
  %238 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %bf.load57.i.i = load i32, ptr %round_start.i.i, align 8
  %239 = and i32 %bf.load57.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool60.not.i.i = icmp eq i32 %239, 0
  br i1 %tobool60.not.i.i, label %if.end55.i.i.if.end65.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end55.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end55.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %240 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i94.i = sub i32 %231, %240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i94.i)
  %cmp.i.i.i95.i = icmp slt i32 %sub.i.i.i94.i, 0
  br i1 %cmp.i.i.i95.i, label %if.end.i.i98.i, label %land.lhs.true.i.i.i.if.end65.i.i_crit_edge

land.lhs.true.i.i.i.if.end65.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i.i

if.end.i.i98.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %241 = load volatile i32, ptr @jiffies, align 128
  %242 = ptrtoint ptr %min_rtt_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %min_rtt_stamp.i.i, align 4
  %snd_cwnd.i111.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %243 = ptrtoint ptr %snd_cwnd.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %snd_cwnd.i111.i.i, align 8
  %prior_cwnd.i112.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %245 = ptrtoint ptr %prior_cwnd.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %prior_cwnd.i112.i.i, align 8
  %247 = call i32 @llvm.umax.i32(i32 %244, i32 %246) #11
  %248 = ptrtoint ptr %snd_cwnd.i111.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %snd_cwnd.i111.i.i, align 8
  %249 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %bf.load.i.i.i.i96.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %250 = and i32 %bf.load.i.i.i.i96.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.i.not.i.i.i.i = icmp eq i32 %250, 0
  %bf.clear.i.i.i.i97.i = and i32 %bf.load57.i.i, 536870911
  br i1 %tobool.i.not.i.i.i.i, label %if.then.i.i.i99.i, label %if.else.i.i.i.i

if.then.i.i.i99.i:                                ; preds = %if.end.i.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %251 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %bf.clear.i.i.i.i97.i, ptr %round_start.i.i, align 8
  br label %if.end65.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set.i.i.i.i.i = or i32 %bf.clear.i.i.i.i97.i, 1073741824
  %252 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %bf.set.i.i.i.i.i, ptr %round_start.i.i, align 8
  %call.i.i.i.i.i.i = call i32 @prandom_u32() #11
  %conv.i.i.i.i.i100.i = zext i32 %call.i.i.i.i.i.i to i64
  %mul.i.i.i.i.i.i = mul nuw nsw i64 %conv.i.i.i.i.i100.i, 7
  %shr.i.i.i.i.i101.i = lshr i64 %mul.i.i.i.i.i.i, 32
  %conv2.i.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i101.i to i32
  %253 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %bf.load2.i.i.i.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %.neg.i.i.i.i.i = mul nuw nsw i32 %conv2.i.i.i.i.i.i, 448
  %bf.value.i.i.i.i.i = add nuw nsw i32 %.neg.i.i.i.i.i, 448
  %bf.clear3.i.i.i.i.i = and i32 %bf.load2.i.i.i.i.i, -449
  %bf.set4.i.i.i.i.i = or i32 %bf.value.i.i.i.i.i, %bf.clear3.i.i.i.i.i
  %254 = add i32 %bf.set4.i.i.i.i.i, 64
  %bf.shl.i.i.i.i.i.i = and i32 %254, 448
  %bf.set.i.i.i.i.i.i = or i32 %bf.shl.i.i.i.i.i.i, %bf.clear3.i.i.i.i.i
  store i32 %bf.set.i.i.i.i.i.i, ptr %full_bw_reached.i.i.i, align 4
  %delivered_mstamp.i.i.i.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %255 = ptrtoint ptr %delivered_mstamp.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %delivered_mstamp.i.i.i.i.i.i, align 8
  %cycle_mstamp.i.i.i.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %257 = ptrtoint ptr %cycle_mstamp.i.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 %256, ptr %cycle_mstamp.i.i.i.i.i.i, align 8
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.else.i.i.i.i, %if.then.i.i.i99.i, %land.lhs.true.i.i.i.if.end65.i.i_crit_edge, %if.end55.i.i.if.end65.i.i_crit_edge, %if.then35.i.i, %land.lhs.true32.i.i.if.end65.i.i_crit_edge, %if.end21.i.i.if.end65.i.i_crit_edge
  %258 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %delivered.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp67.i.i = icmp sgt i32 %259, 0
  br i1 %cmp67.i.i, label %if.then68.i.i, label %if.end65.i.i.bbr_update_min_rtt.exit.i_crit_edge

if.end65.i.i.bbr_update_min_rtt.exit.i_crit_edge: ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_min_rtt.exit.i

if.then68.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %bf.load70.i.i = load i32, ptr %round_start.i.i, align 8
  %bf.clear71.i.i = and i32 %bf.load70.i.i, -8388609
  store i32 %bf.clear71.i.i, ptr %round_start.i.i, align 8
  br label %bbr_update_min_rtt.exit.i

bbr_update_min_rtt.exit.i:                        ; preds = %if.then68.i.i, %if.end65.i.i.bbr_update_min_rtt.exit.i_crit_edge
  %261 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %bf.load.i104.i = load i32, ptr %round_start.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i104.i, 29
  %262 = zext i32 %bf.lshr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %262, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %bf.lshr.i.i, label %land.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb14.i.i
    i32 3, label %sw.bb28.i.i
  ]

sw.bb.i.i:                                        ; preds = %bbr_update_min_rtt.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %bf.load1.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.clear.i105.i = and i32 %bf.load1.i.i, 4095
  %bf.set4.i.i = or i32 %bf.clear.i105.i, -1192349696
  store i32 %bf.set4.i.i, ptr %full_bw_reached.i.i.i, align 4
  br label %bbr_update_model.exit

sw.bb5.i.i:                                       ; preds = %bbr_update_min_rtt.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %bf.load7.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.clear8.i.i = and i32 %bf.load7.i.i, 4095
  %bf.set13.i.i = or i32 %bf.clear8.i.i, 372125696
  store i32 %bf.set13.i.i, ptr %full_bw_reached.i.i.i, align 4
  br label %bbr_update_model.exit

sw.bb14.i.i:                                      ; preds = %bbr_update_min_rtt.exit.i
  %bf.clear16.i.i = and i32 %bf.load.i104.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear16.i.i)
  %tobool.not.i106.i = icmp eq i32 %bf.clear16.i.i, 0
  br i1 %tobool.not.i106.i, label %cond.false.i.i, label %sw.bb14.i.i.cond.end.i.i_crit_edge

sw.bb14.i.i.cond.end.i.i_crit_edge:               ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %265 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %bf.load17.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.lshr18.i.i = lshr i32 %bf.load17.i.i, 6
  %bf.clear19.i.i = and i32 %bf.lshr18.i.i, 7
  %arrayidx.i107.i = getelementptr [8 x i32], ptr @bbr_pacing_gain, i32 0, i32 %bf.clear19.i.i
  %266 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx.i107.i, align 4
  %phi.bo86.i.i = shl i32 %267, 22
  %phi.bo.i.i = or i32 %phi.bo86.i.i, 2097152
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %sw.bb14.i.i.cond.end.i.i_crit_edge
  %cond.i108.i = phi i32 [ %phi.bo.i.i, %cond.false.i.i ], [ 1075838976, %sw.bb14.i.i.cond.end.i.i_crit_edge ]
  %268 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %bf.load21.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.clear22.i.i = and i32 %bf.load21.i.i, 4095
  %bf.set27.i.i = or i32 %bf.clear22.i.i, %cond.i108.i
  store i32 %bf.set27.i.i, ptr %full_bw_reached.i.i.i, align 4
  br label %bbr_update_model.exit

sw.bb28.i.i:                                      ; preds = %bbr_update_min_rtt.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %269 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %bf.load30.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.clear31.i.i = and i32 %bf.load30.i.i, 4095
  %bf.set36.i.i = or i32 %bf.clear31.i.i, 1074790400
  store i32 %bf.set36.i.i, ptr %full_bw_reached.i.i.i, align 4
  br label %bbr_update_model.exit

land.end.i.i:                                     ; preds = %bbr_update_min_rtt.exit.i
  %.b87.i.i = load i1, ptr @bbr_update_gains.__already_done, align 1
  br i1 %.b87.i.i, label %land.end.i.i.bbr_update_model.exit_crit_edge, label %if.then.i109.i, !prof !40

land.end.i.i.bbr_update_model.exit_crit_edge:     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_update_model.exit

if.then.i109.i:                                   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bbr_update_gains.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1010, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %bf.lshr.i.i) #11
  br label %bbr_update_model.exit

bbr_update_model.exit:                            ; preds = %if.then.i109.i, %land.end.i.i.bbr_update_model.exit_crit_edge, %sw.bb28.i.i, %cond.end.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %270 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %bf.load.i = load i32, ptr %round_start.i.i, align 8
  %bf.clear.i = and i32 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool.not.i = icmp eq i32 %bf.clear.i, 0
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i = select i1 %tobool.not.i, ptr %v.i.i.i, ptr %lt_bw.i
  %271 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %272 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %bf.load = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.lshr = lshr i32 %bf.load, 22
  %conv.i.i13 = zext i32 %cond.i to i64
  %mss_cache.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %273 = ptrtoint ptr %mss_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %mss_cache.i.i.i, align 4
  %conv.i.i.i14 = zext i32 %274 to i64
  %275 = zext i32 %bf.lshr to i64
  %mul.i.i.i15 = mul nuw nsw i64 %275, %conv.i.i13
  %mul2.i.i.i = mul i64 %mul.i.i.i15, %conv.i.i.i14
  %shr.i.i.i16 = lshr i64 %mul2.i.i.i, 8
  %mul3.i.i.i = mul i64 %shr.i.i.i16, 990000
  %shr4.i.i.i = lshr i64 %mul3.i.i.i, 24
  %sk_max_pacing_rate.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 36
  %276 = ptrtoint ptr %sk_max_pacing_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %sk_max_pacing_rate.i.i, align 8
  %conv1.i.i = zext i32 %277 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr4.i.i.i, i64 %conv1.i.i)
  %cmp.i.i17 = icmp ult i64 %shr4.i.i.i, %conv1.i.i
  %extract.t.i.i = trunc i64 %shr4.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i.i17, i32 %extract.t.i.i, i32 %277
  %278 = and i32 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool.not.i19 = icmp eq i32 %278, 0
  br i1 %tobool.not.i19, label %land.rhs.i, label %bbr_update_model.exit.if.end.i_crit_edge

bbr_update_model.exit.if.end.i_crit_edge:         ; preds = %bbr_update_model.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %bbr_update_model.exit
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %279 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %srtt_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool3.not.i = icmp eq i32 %280, 0
  br i1 %tobool3.not.i, label %land.rhs.i.if.end.i_crit_edge, label %if.end.i75, !prof !40

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i75:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %280)
  %cmp.i69 = icmp ugt i32 %280, 15
  %shr.i = lshr i32 %280, 3
  %cond.i70 = select i1 %cmp.i69, i32 %shr.i, i32 1
  %bf.set.i = or i32 %bf.load, 32
  %281 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %bf.set.i, ptr %full_bw_reached.i.i.i, align 4
  %snd_cwnd.i74 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %282 = ptrtoint ptr %snd_cwnd.i74 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %snd_cwnd.i74, align 8
  %conv.i = zext i32 %283 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %283)
  %cmp181.i = icmp ult i32 %283, 256
  br i1 %cmp181.i, label %if.then185.i, label %if.else191.i, !prof !40

if.then185.i:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  %conv186.i = trunc i64 %mul.i to i32
  %div189.i = udiv i32 %conv186.i, %cond.i70
  br label %bbr_init_pacing_rate_from_rtt.exit

if.else191.i:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  %284 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %cond.i70, i64 %mul.i) #14, !srcloc !46
  %asmresult1.i.i = extractvalue { i64, i64 } %284, 1
  %extract.t311.i = trunc i64 %asmresult1.i.i to i32
  br label %bbr_init_pacing_rate_from_rtt.exit

bbr_init_pacing_rate_from_rtt.exit:               ; preds = %if.else191.i, %if.then185.i
  %bw.0.off0.i = phi i32 [ %div189.i, %if.then185.i ], [ %extract.t311.i, %if.else191.i ]
  %conv.i.i78 = zext i32 %bw.0.off0.i to i64
  %mul.i.i.i81 = mul nuw nsw i64 %conv.i.i.i14, 739
  %mul2.i.i.i82 = mul i64 %mul.i.i.i81, %conv.i.i78
  %shr.i.i.i83 = lshr i64 %mul2.i.i.i82, 8
  %mul3.i.i.i84 = mul i64 %shr.i.i.i83, 990000
  %shr4.i.i.i85 = lshr i64 %mul3.i.i.i84, 24
  call void @__sanitizer_cov_trace_cmp8(i64 %shr4.i.i.i85, i64 %conv1.i.i)
  %cmp.i.i88 = icmp ult i64 %shr4.i.i.i85, %conv1.i.i
  %extract.t.i.i89 = trunc i64 %shr4.i.i.i85 to i32
  %cond.off0.i.i90 = select i1 %cmp.i.i88, i32 %extract.t.i.i89, i32 %277
  %sk_pacing_rate.i91 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %285 = ptrtoint ptr %sk_pacing_rate.i91 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %cond.off0.i.i90, ptr %sk_pacing_rate.i91, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %bbr_init_pacing_rate_from_rtt.exit, %land.rhs.i.if.end.i_crit_edge, %bbr_update_model.exit.if.end.i_crit_edge
  %286 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %bf.load.i.i20 = load i32, ptr %full_bw_reached.i.i.i, align 4
  %287 = and i32 %bf.load.i.i20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.i.not.i = icmp eq i32 %287, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sk_pacing_rate.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %288 = ptrtoint ptr %sk_pacing_rate.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %sk_pacing_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off0.i.i, i32 %289)
  %cmp.i = icmp ugt i32 %cond.off0.i.i, %289
  br i1 %cmp.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false.i.bbr_set_pacing_rate.exit_crit_edge

lor.lhs.false.i.bbr_set_pacing_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_set_pacing_rate.exit

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %sk_pacing_rate8.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %290 = ptrtoint ptr %sk_pacing_rate8.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %cond.off0.i.i, ptr %sk_pacing_rate8.i, align 4
  br label %bbr_set_pacing_rate.exit

bbr_set_pacing_rate.exit:                         ; preds = %if.then7.i, %lor.lhs.false.i.bbr_set_pacing_rate.exit_crit_edge
  %291 = ptrtoint ptr %acked_sacked.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %acked_sacked.i.i, align 4
  %293 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %bf.load2 = load i32, ptr %full_bw_reached.i.i.i, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 12
  %bf.clear = and i32 %bf.lshr3, 1023
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %294 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %snd_cwnd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool.not.i22 = icmp eq i32 %292, 0
  br i1 %tobool.not.i22, label %bbr_set_pacing_rate.exit.done.i_crit_edge, label %if.end.i30

bbr_set_pacing_rate.exit.done.i_crit_edge:        ; preds = %bbr_set_pacing_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end.i30:                                       ; preds = %bbr_set_pacing_rate.exit
  %bf.lshr.i.i24 = lshr i32 %bf.load.i, 26
  %296 = trunc i32 %bf.lshr.i.i24 to i8
  %conv.i.i25 = and i8 %296, 7
  %icsk_ca_state.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %297 = ptrtoint ptr %icsk_ca_state.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %bf.load3.i.i = load i8, ptr %icsk_ca_state.i.i, align 4
  %bf.lshr4.i.i = lshr i8 %bf.load3.i.i, 3
  %losses.i.i = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 9
  %298 = ptrtoint ptr %losses.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %losses.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp.i.i26 = icmp sgt i32 %299, 0
  %sub.i.i27 = sub i32 %295, %299
  %300 = call i32 @llvm.smax.i32(i32 %sub.i.i27, i32 1) #11
  %cwnd.0.i.i = select i1 %cmp.i.i26, i32 %300, i32 %295
  %conv9.i.i = zext i8 %bf.lshr4.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.lshr4.i.i)
  %cmp10.i.i28 = icmp ne i8 %bf.lshr4.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv.i.i25)
  %cmp13.not.i.i = icmp eq i8 %conv.i.i25, 3
  %or.cond.i.i29 = select i1 %cmp10.i.i28, i1 true, i1 %cmp13.not.i.i
  br i1 %or.cond.i.i29, label %if.else.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set.i.i31 = or i32 %bf.load.i, 33554432
  %301 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %bf.set.i.i31, ptr %round_start.i.i, align 8
  %delivered.i.i32 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %302 = ptrtoint ptr %delivered.i.i32 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %delivered.i.i32, align 8
  %next_rtt_delivered.i.i33 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %304 = ptrtoint ptr %next_rtt_delivered.i.i33 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %next_rtt_delivered.i.i33, align 8
  %packets_out.i.i.i34 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %305 = ptrtoint ptr %packets_out.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %packets_out.i.i.i34, align 4
  %sacked_out.i.i.i.i35 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %307 = ptrtoint ptr %sacked_out.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %sacked_out.i.i.i.i35, align 4
  %lost_out.i.i.i.i36 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %309 = ptrtoint ptr %lost_out.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %lost_out.i.i.i.i36, align 8
  %retrans_out.i.i.i37 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %311 = ptrtoint ptr %retrans_out.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %retrans_out.i.i.i37, align 8
  %.neg101 = add i32 %306, %292
  %313 = add i32 %308, %310
  %add.i.i.i38 = sub i32 %.neg101, %313
  %add.i.i39 = add i32 %add.i.i.i38, %312
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i25)
  %cmp20.i.i = icmp ugt i8 %conv.i.i25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %bf.load3.i.i)
  %cmp24.i.i40 = icmp ult i8 %bf.load3.i.i, 24
  %or.cond91.i.i = select i1 %cmp20.i.i, i1 %cmp24.i.i40, i1 false
  br i1 %or.cond91.i.i, label %if.then26.i.i41, label %if.else.i.i.if.end39.i.i_crit_edge

if.else.i.i.if.end39.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i.i

if.then26.i.i41:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prior_cwnd.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %314 = ptrtoint ptr %prior_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %prior_cwnd.i.i, align 8
  %316 = call i32 @llvm.umax.i32(i32 %cwnd.0.i.i, i32 %315) #11
  %bf.clear36.i.i = and i32 %bf.load.i, -33554433
  %317 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %bf.clear36.i.i, ptr %round_start.i.i, align 8
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then26.i.i41, %if.else.i.i.if.end39.i.i_crit_edge, %if.then15.i.i
  %cwnd.1.i.i = phi i32 [ %add.i.i39, %if.then15.i.i ], [ %316, %if.then26.i.i41 ], [ %cwnd.0.i.i, %if.else.i.i.if.end39.i.i_crit_edge ]
  %318 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %bf.load42.i.i = load i32, ptr %round_start.i.i, align 8
  %bf.value.i.i = shl nuw nsw i32 %conv9.i.i, 26
  %bf.shl.i.i42 = and i32 %bf.value.i.i, 469762048
  %bf.clear43.i.i = and i32 %bf.load42.i.i, -469762049
  %bf.set44.i.i = or i32 %bf.clear43.i.i, %bf.shl.i.i42
  store i32 %bf.set44.i.i, ptr %round_start.i.i, align 8
  %319 = and i32 %bf.load42.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool.not.i.i43 = icmp eq i32 %319, 0
  br i1 %tobool.not.i.i43, label %if.end4.i, label %bbr_set_cwnd_to_recover_or_restore.exit.thread.i

bbr_set_cwnd_to_recover_or_restore.exit.thread.i: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %packets_out.i92.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %320 = ptrtoint ptr %packets_out.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %packets_out.i92.i.i, align 4
  %sacked_out.i.i93.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %322 = ptrtoint ptr %sacked_out.i.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %sacked_out.i.i93.i.i, align 4
  %lost_out.i.i94.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %324 = ptrtoint ptr %lost_out.i.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %lost_out.i.i94.i.i, align 8
  %retrans_out.i95.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %326 = ptrtoint ptr %retrans_out.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %retrans_out.i95.i.i, align 8
  %.neg104 = add i32 %321, %292
  %328 = add i32 %323, %325
  %add.i97.i.i = sub i32 %.neg104, %328
  %add51.i.i = add i32 %add.i97.i.i, %327
  %329 = call i32 @llvm.umax.i32(i32 %cwnd.1.i.i, i32 %add51.i.i) #11
  br label %done.i

if.end4.i:                                        ; preds = %if.end39.i.i
  %330 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %331)
  %cmp.i67.i = icmp eq i32 %331, -1
  br i1 %cmp.i67.i, label %if.end4.i.bbr_bdp.exit.i_crit_edge, label %if.end.i.i47, !prof !45

if.end4.i.bbr_bdp.exit.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_bdp.exit.i

if.end.i.i47:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv3.i.i = zext i32 %331 to i64
  %conv4.i.i4492 = zext i32 %bf.clear to i64
  %mul.i.i45 = mul nuw nsw i64 %conv4.i.i4492, %conv.i.i13
  %mul5.i.i = mul i64 %mul.i.i45, %conv3.i.i
  %shr.i.i46 = lshr i64 %mul5.i.i, 8
  %sub.i69.i = add nuw nsw i64 %shr.i.i46, 16777215
  %div10.i.i = lshr i64 %sub.i69.i, 24
  %conv6.i.i = trunc i64 %div10.i.i to i32
  %phi.bo.i = add i32 %conv6.i.i, 1
  br label %bbr_bdp.exit.i

bbr_bdp.exit.i:                                   ; preds = %if.end.i.i47, %if.end4.i.bbr_bdp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end.i.i47 ], [ 11, %if.end4.i.bbr_bdp.exit.i_crit_edge ]
  %332 = ptrtoint ptr %full_bw_reached.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %bf.load.i.i.i = load i32, ptr %full_bw_reached.i.i.i, align 4
  %333 = and i32 %bf.load.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool.i.not.i.i49 = icmp eq i32 %333, 0
  br i1 %tobool.i.not.i.i49, label %bbr_bdp.exit.i.bbr_ack_aggregation_cwnd.exit.i_crit_edge, label %if.then.i.i56

bbr_bdp.exit.i.bbr_ack_aggregation_cwnd.exit.i_crit_edge: ; preds = %bbr_bdp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_ack_aggregation_cwnd.exit.i

if.then.i.i56:                                    ; preds = %bbr_bdp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear.i.i.i50 = and i32 %bf.load42.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i50)
  %tobool.not.i.i.i51 = icmp eq i32 %bf.clear.i.i.i50, 0
  %cond.in.i.i.i54 = select i1 %tobool.not.i.i.i51, ptr %v.i.i.i, ptr %lt_bw.i
  %334 = ptrtoint ptr %cond.in.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %334)
  %cond.i.i.i55 = load i32, ptr %cond.in.i.i.i54, align 4
  %conv.i70.i = zext i32 %cond.i.i.i55 to i64
  %mul.i71.i = mul nuw nsw i64 %conv.i70.i, 100000
  %div12.i.i = lshr i64 %mul.i71.i, 24
  %conv2.i.i = trunc i64 %div12.i.i to i32
  %extra_acked.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 12
  %335 = ptrtoint ptr %extra_acked.i.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %extra_acked.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 16, i32 1
  %337 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %arrayidx2.i.i.i, align 2
  %339 = call i16 @llvm.umax.i16(i16 %336, i16 %338) #11
  %conv4.i72.i = zext i16 %339 to i32
  %340 = call i32 @llvm.umin.i32(i32 %conv4.i72.i, i32 %conv2.i.i) #11
  br label %bbr_ack_aggregation_cwnd.exit.i

bbr_ack_aggregation_cwnd.exit.i:                  ; preds = %if.then.i.i56, %bbr_bdp.exit.i.bbr_ack_aggregation_cwnd.exit.i_crit_edge
  %aggr_cwnd.0.i.i = phi i32 [ %340, %if.then.i.i56 ], [ 0, %bbr_bdp.exit.i.bbr_ack_aggregation_cwnd.exit.i_crit_edge ]
  %sk_pacing_rate.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %341 = ptrtoint ptr %sk_pacing_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %sk_pacing_rate.i.i.i, align 4
  %sk_pacing_shift.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 44
  %343 = ptrtoint ptr %sk_pacing_shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load volatile i8, ptr %sk_pacing_shift.i.i.i, align 1
  %conv.i.i.i57 = zext i8 %344 to i32
  %shr.i.i.i58 = lshr i32 %342, %conv.i.i.i57
  %345 = call i32 @llvm.umin.i32(i32 %shr.i.i.i58, i32 65151) #11
  %div.i.i.i = udiv i32 %345, %274
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %342)
  %cmp.i.i.i.i60 = icmp ult i32 %342, 150000
  %cond.i.i.i.i61 = select i1 %cmp.i.i.i.i60, i32 1, i32 2
  %346 = call i32 @llvm.umax.i32(i32 %div.i.i.i, i32 %cond.i.i.i.i61) #11
  %347 = call i32 @llvm.umin.i32(i32 %346, i32 127) #11
  %mul.i74.i = mul nuw nsw i32 %347, 3
  %add.i75.i = add i32 %aggr_cwnd.0.i.i, %retval.0.i.i
  %add2.i.i = add i32 %add.i75.i, %mul.i74.i
  %and.i.i = and i32 %add2.i.i, -2
  %bf.lshr.mask.i.i62 = and i32 %bf.load42.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %bf.lshr.mask.i.i62)
  %cmp.i77.i63 = icmp eq i32 %bf.lshr.mask.i.i62, 1073741824
  %348 = and i32 %bf.load.i.i.i, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp5.i.i = icmp eq i32 %348, 0
  %add6.i.i = add i32 %and.i.i, 2
  %349 = select i1 %cmp.i77.i63, i1 %cmp5.i.i, i1 false
  %cwnd.addr.0.i.i = select i1 %349, i32 %add6.i.i, i32 %and.i.i
  br i1 %tobool.i.not.i.i49, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %bbr_ack_aggregation_cwnd.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add10.i = add i32 %cwnd.1.i.i, %292
  %350 = call i32 @llvm.umin.i32(i32 %add10.i, i32 %cwnd.addr.0.i.i) #11
  br label %if.end16.i

if.else.i:                                        ; preds = %bbr_ack_aggregation_cwnd.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cwnd.1.i.i, i32 %cwnd.addr.0.i.i)
  %cmp11.i = icmp ult i32 %cwnd.1.i.i, %cwnd.addr.0.i.i
  br i1 %cmp11.i, label %if.else.i.if.then13.i_crit_edge, label %lor.lhs.false.i64

if.else.i.if.then13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

lor.lhs.false.i64:                                ; preds = %if.else.i
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %351 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %delivered.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %352)
  %cmp12.i = icmp ult i32 %352, 10
  br i1 %cmp12.i, label %lor.lhs.false.i64.if.then13.i_crit_edge, label %lor.lhs.false.i64.if.end16.i_crit_edge

lor.lhs.false.i64.if.end16.i_crit_edge:           ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

lor.lhs.false.i64.if.then13.i_crit_edge:          ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i64.if.then13.i_crit_edge, %if.else.i.if.then13.i_crit_edge
  %add14.i = add i32 %cwnd.1.i.i, %292
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %lor.lhs.false.i64.if.end16.i_crit_edge, %if.then9.i
  %cwnd.0.i = phi i32 [ %350, %if.then9.i ], [ %add14.i, %if.then13.i ], [ %cwnd.1.i.i, %lor.lhs.false.i64.if.end16.i_crit_edge ]
  %353 = call i32 @llvm.umax.i32(i32 %cwnd.0.i, i32 4) #11
  br label %done.i

done.i:                                           ; preds = %if.end16.i, %bbr_set_cwnd_to_recover_or_restore.exit.thread.i, %bbr_set_pacing_rate.exit.done.i_crit_edge
  %cwnd.1.i = phi i32 [ %295, %bbr_set_pacing_rate.exit.done.i_crit_edge ], [ %353, %if.end16.i ], [ %329, %bbr_set_cwnd_to_recover_or_restore.exit.thread.i ]
  %snd_cwnd_clamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %354 = ptrtoint ptr %snd_cwnd_clamp.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %snd_cwnd_clamp.i, align 8
  %356 = call i32 @llvm.umin.i32(i32 %cwnd.1.i, i32 %355) #11
  %357 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %snd_cwnd.i, align 8
  %358 = ptrtoint ptr %round_start.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %bf.load.i65 = load i32, ptr %round_start.i.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i65, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp30.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp30.i, label %if.then31.i, label %done.i.bbr_set_cwnd.exit_crit_edge

done.i.bbr_set_cwnd.exit_crit_edge:               ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bbr_set_cwnd.exit

if.then31.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  %359 = call i32 @llvm.umin.i32(i32 %356, i32 4) #11
  %360 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %359, ptr %snd_cwnd.i, align 8
  br label %bbr_set_cwnd.exit

bbr_set_cwnd.exit:                                ; preds = %if.then31.i, %done.i.bbr_set_cwnd.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bbr_undo_cwnd(ptr nocapture noundef %sk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %full_bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 14
  %0 = ptrtoint ptr %full_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %full_bw, align 4
  %full_bw_cnt = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %1 = ptrtoint ptr %full_bw_cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %full_bw_cnt, align 4
  %bf.clear = and i32 %bf.load, -1537
  store i32 %bf.clear, ptr %full_bw_cnt, align 4
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %2 = ptrtoint ptr %lt_bw.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %lt_bw.i, align 4
  %lt_use_bw.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %3 = ptrtoint ptr %lt_use_bw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %lt_use_bw.i, align 8
  %delivered_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %4 = ptrtoint ptr %delivered_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delivered_mstamp.i.i, align 8
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %5, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %5, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %conv.i.i = trunc i64 %div1581.i.i.i.i to i32
  %lt_last_stamp.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %8 = ptrtoint ptr %lt_last_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i.i, ptr %lt_last_stamp.i.i, align 4
  %delivered.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %9 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivered.i.i, align 8
  %lt_last_delivered.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %11 = ptrtoint ptr %lt_last_delivered.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lt_last_delivered.i.i, align 8
  %lost.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %12 = ptrtoint ptr %lost.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lost.i.i, align 8
  %lt_last_lost.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %14 = ptrtoint ptr %lt_last_lost.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lt_last_lost.i.i, align 8
  %bf.clear.i.i = and i32 %bf.load.i, -512
  %15 = ptrtoint ptr %lt_use_bw.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.clear.i.i, ptr %lt_use_bw.i, align 8
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %16 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %snd_cwnd, align 8
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bbr_sndbuf_expand(ptr nocapture noundef readnone %sk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bbr_get_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef writeonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %ext, 32772
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %lt_use_bw.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %lt_use_bw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %lt_use_bw.i, align 8
  %bf.clear.i = and i32 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool.not.i = icmp eq i32 %bf.clear.i, 0
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %v.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %cond.in.i = select i1 %tobool.not.i, ptr %v.i.i.i, ptr %lt_bw.i
  %3 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv = zext i32 %cond.i to i64
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %4 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mss_cache, align 4
  %conv5 = zext i32 %5 to i64
  %mul = mul nuw nsw i64 %conv, 1000000
  %mul6 = mul i64 %mul, %conv5
  %shr = lshr i64 %mul6, 24
  %6 = getelementptr inbounds i8, ptr %info, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %conv7 = trunc i64 %shr to i32
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv7, ptr %info, align 4
  %shr8 = lshr i64 %mul6, 56
  %conv9 = trunc i64 %shr8 to i32
  %bbr_bw_hi = getelementptr inbounds %struct.tcp_bbr_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %bbr_bw_hi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %bbr_bw_hi, align 4
  %10 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icsk_ca_priv.i, align 8
  %bbr_min_rtt = getelementptr inbounds %struct.tcp_bbr_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %bbr_min_rtt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bbr_min_rtt, align 4
  %pacing_gain = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %13 = ptrtoint ptr %pacing_gain to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %pacing_gain, align 4
  %bf.lshr = lshr i32 %bf.load, 22
  %bbr_pacing_gain = getelementptr inbounds %struct.tcp_bbr_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %bbr_pacing_gain to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.lshr, ptr %bbr_pacing_gain, align 4
  %bf.load10 = load i32, ptr %pacing_gain, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 12
  %bf.clear = and i32 %bf.lshr11, 1023
  %bbr_cwnd_gain = getelementptr inbounds %struct.tcp_bbr_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %bbr_cwnd_gain to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.clear, ptr %bbr_cwnd_gain, align 4
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %attr, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 20, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bbr_init(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %prior_cwnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 10
  %0 = ptrtoint ptr %prior_cwnd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %prior_cwnd, align 8
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %1 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2147483647, ptr %snd_ssthresh, align 4
  %rtt_cnt = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 4
  %2 = ptrtoint ptr %rtt_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rtt_cnt, align 4
  %delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %3 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivered, align 8
  %next_rtt_delivered = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %5 = ptrtoint ptr %next_rtt_delivered to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %next_rtt_delivered, align 8
  %prev_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %6 = ptrtoint ptr %prev_ca_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %prev_ca_state, align 8
  %probe_rtt_done_stamp = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %probe_rtt_done_stamp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %probe_rtt_done_stamp, align 8
  %v.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 50, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v.i.i, align 4
  %10 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %icsk_ca_priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %min_rtt_stamp = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 1
  %12 = ptrtoint ptr %min_rtt_stamp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_rtt_stamp, align 4
  %bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 3, i32 0, i32 2
  %arrayidx3.i = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bw, align 4
  %val.sroa.5.0.arrayidx5.sroa_idx.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %14 = ptrtoint ptr %val.sroa.5.0.arrayidx5.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val.sroa.5.0.arrayidx5.sroa_idx.i, align 4
  %15 = load i64, ptr %bw, align 4
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %arrayidx3.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %15, ptr %arrayidx.i, align 4
  %has_seen_rtt = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %18 = ptrtoint ptr %has_seen_rtt to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load11 = load i32, ptr %has_seen_rtt, align 4
  %bf.clear12 = and i32 %bf.load11, -33
  store i32 %bf.clear12, ptr %has_seen_rtt, align 4
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %19 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srtt_us.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %20)
  %cmp.i = icmp ugt i32 %20, 15
  %shr.i = lshr i32 %20, 3
  %cond.i = select i1 %cmp.i, i32 %shr.i, i32 1
  %bf.set.i = or i32 %bf.load11, 32
  %21 = ptrtoint ptr %has_seen_rtt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.set.i, ptr %has_seen_rtt, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %rtt_us.0.i = phi i32 [ %cond.i, %if.then.i ], [ 1000, %entry.if.end.i_crit_edge ]
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %22 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %snd_cwnd.i, align 8
  %conv.i = zext i32 %23 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp181.i = icmp ult i32 %23, 256
  br i1 %cmp181.i, label %if.then185.i, label %if.else191.i, !prof !40

if.then185.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv186.i = trunc i64 %mul.i to i32
  %div189.i = udiv i32 %conv186.i, %rtt_us.0.i
  br label %bbr_init_pacing_rate_from_rtt.exit

if.else191.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rtt_us.0.i, i64 %mul.i) #14, !srcloc !46
  %asmresult1.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t311.i = trunc i64 %asmresult1.i.i to i32
  br label %bbr_init_pacing_rate_from_rtt.exit

bbr_init_pacing_rate_from_rtt.exit:               ; preds = %if.else191.i, %if.then185.i
  %bw.0.off0.i = phi i32 [ %div189.i, %if.then185.i ], [ %extract.t311.i, %if.else191.i ]
  %conv.i.i = zext i32 %bw.0.off0.i to i64
  %mss_cache.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %25 = ptrtoint ptr %mss_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mss_cache.i.i.i, align 4
  %conv.i.i.i = zext i32 %26 to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 739
  %mul2.i.i.i = mul i64 %mul.i.i.i, %conv.i.i.i
  %shr.i.i.i = lshr i64 %mul2.i.i.i, 8
  %mul3.i.i.i = mul i64 %shr.i.i.i, 990000
  %shr4.i.i.i = lshr i64 %mul3.i.i.i, 24
  %sk_max_pacing_rate.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 36
  %27 = ptrtoint ptr %sk_max_pacing_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_max_pacing_rate.i.i, align 8
  %conv1.i.i = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr4.i.i.i, i64 %conv1.i.i)
  %cmp.i.i = icmp ult i64 %shr4.i.i.i, %conv1.i.i
  %extract.t.i.i = trunc i64 %shr4.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i.i, i32 %extract.t.i.i, i32 %28
  %sk_pacing_rate.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %29 = ptrtoint ptr %sk_pacing_rate.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.off0.i.i, ptr %sk_pacing_rate.i, align 4
  %30 = ptrtoint ptr %has_seen_rtt to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load20 = load i32, ptr %has_seen_rtt, align 4
  %full_bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 14
  %31 = ptrtoint ptr %full_bw to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %full_bw, align 4
  %cycle_mstamp = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %32 = ptrtoint ptr %cycle_mstamp to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %cycle_mstamp, align 8
  %bf.clear27 = and i32 %bf.load20, -4033
  store i32 %bf.clear27, ptr %has_seen_rtt, align 4
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %33 = ptrtoint ptr %lt_bw.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %lt_bw.i, align 4
  %delivered_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %34 = ptrtoint ptr %delivered_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %delivered_mstamp.i.i, align 8
  %36 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %36, 1
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %37, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %conv.i.i90 = trunc i64 %div1581.i.i.i.i to i32
  %lt_last_stamp.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %38 = ptrtoint ptr %lt_last_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i.i90, ptr %lt_last_stamp.i.i, align 4
  %lt_last_delivered.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %39 = ptrtoint ptr %lt_last_delivered.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %4, ptr %lt_last_delivered.i.i, align 8
  %lost.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %40 = ptrtoint ptr %lost.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lost.i.i, align 8
  %lt_last_lost.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %42 = ptrtoint ptr %lt_last_lost.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %lt_last_lost.i.i, align 8
  %bf.clear.i = and i32 %bf.load, 4193792
  %43 = ptrtoint ptr %prev_ca_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.clear.i, ptr %prev_ca_state, align 8
  %tcp_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %44 = ptrtoint ptr %tcp_mstamp to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tcp_mstamp, align 8
  %ack_epoch_mstamp = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 11
  %46 = ptrtoint ptr %ack_epoch_mstamp to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %ack_epoch_mstamp, align 8
  %ack_epoch_acked = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 17
  %47 = ptrtoint ptr %ack_epoch_acked to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load29 = load i32, ptr %ack_epoch_acked, align 4
  %bf.clear36 = and i32 %bf.load29, 63
  store i32 %bf.clear36, ptr %ack_epoch_acked, align 4
  %extra_acked = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 12
  %48 = ptrtoint ptr %extra_acked to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %extra_acked, align 8
  %arrayidx39 = getelementptr %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 16, i32 1
  %49 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %arrayidx39, align 2
  %sk_pacing_status = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 30
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_pacing_status, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %sk_pacing_status, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %bbr_init_pacing_rate_from_rtt.exit
  %50 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sk_pacing_status, i32 0, i32 1) #11, !srcloc !48
  %asmresult.i = extractvalue { i32, i32 } %50, 0
  %tobool.not.i92 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i92, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !49
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bbr_lt_bw_sampling(ptr noundef %sk, ptr nocapture noundef readonly %rs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %lt_use_bw = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %0 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %lt_use_bw, align 8
  %bf.clear = and i32 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool.not = icmp eq i32 %bf.clear, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %1 = and i32 %bf.load, -520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090519040, i32 %1)
  %.not = icmp eq i32 %1, 1090519040
  br i1 %.not, label %land.lhs.true7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true7:                                   ; preds = %if.then
  %bf.lshr9 = lshr i32 %bf.load, 1
  %inc = add nuw nsw i32 %bf.lshr9, 1
  %bf.value = and i32 %inc, 127
  %bf.shl = shl nuw nsw i32 %bf.value, 1
  %bf.clear12 = and i32 %bf.load, -255
  %bf.set = or i32 %bf.shl, %bf.clear12
  %2 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.set, ptr %lt_use_bw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %bf.value)
  %cmp13 = icmp ugt i32 %bf.value, 47
  br i1 %cmp13, label %if.then14, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %lt_bw.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %3 = ptrtoint ptr %lt_bw.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %lt_bw.i, align 4
  %4 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %lt_use_bw, align 8
  %delivered_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %5 = ptrtoint ptr %delivered_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %delivered_mstamp.i.i, align 8
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %conv.i.i = trunc i64 %div1581.i.i.i.i to i32
  %lt_last_stamp.i.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %9 = ptrtoint ptr %lt_last_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i.i, ptr %lt_last_stamp.i.i, align 4
  %delivered.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %10 = ptrtoint ptr %delivered.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivered.i.i, align 8
  %lt_last_delivered.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %12 = ptrtoint ptr %lt_last_delivered.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lt_last_delivered.i.i, align 8
  %lost.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %13 = ptrtoint ptr %lost.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lost.i.i, align 8
  %lt_last_lost.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %15 = ptrtoint ptr %lt_last_lost.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lt_last_lost.i.i, align 8
  %bf.clear.i = and i32 %bf.load.i, 536870400
  %bf.set.i = or i32 %bf.clear.i, 1073741824
  %16 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.set.i, ptr %lt_use_bw, align 8
  %call.i.i = tail call i32 @prandom_u32() #11
  %conv.i.i394 = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i394, 7
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %cycle_idx.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %17 = ptrtoint ptr %cycle_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load2.i = load i32, ptr %cycle_idx.i, align 4
  %.neg.i = mul nuw nsw i32 %conv2.i.i, 448
  %bf.value.i = add nuw nsw i32 %.neg.i, 448
  %bf.clear3.i = and i32 %bf.load2.i, -449
  %bf.set4.i = or i32 %bf.value.i, %bf.clear3.i
  %18 = add i32 %bf.set4.i, 64
  %bf.shl.i.i = and i32 %18, 448
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear3.i
  store i32 %bf.set.i.i, ptr %cycle_idx.i, align 4
  %19 = ptrtoint ptr %delivered_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %delivered_mstamp.i.i, align 8
  %cycle_mstamp.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %21 = ptrtoint ptr %cycle_mstamp.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %cycle_mstamp.i.i, align 8
  br label %cleanup

if.end15:                                         ; preds = %entry
  %22 = and i32 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %if.then20, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then20:                                        ; preds = %if.end15
  %losses = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 9
  %23 = ptrtoint ptr %losses to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %losses, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %if.then20.cleanup_crit_edge, label %if.end23

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %delivered_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %25 = ptrtoint ptr %delivered_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %delivered_mstamp.i, align 8
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %28, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %lt_last_stamp.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %29 = ptrtoint ptr %lt_last_stamp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %lt_last_stamp.i, align 4
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %30 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delivered.i, align 8
  %lt_last_delivered.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %32 = ptrtoint ptr %lt_last_delivered.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lt_last_delivered.i, align 8
  %lost.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %33 = ptrtoint ptr %lost.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lost.i, align 8
  %lt_last_lost.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %35 = ptrtoint ptr %lt_last_lost.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lt_last_lost.i, align 8
  %36 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i397 = load i32, ptr %lt_use_bw, align 8
  %bf.clear.i398 = and i32 %bf.load.i397, -511
  %bf.set27 = or i32 %bf.clear.i398, 256
  store i32 %bf.set27, ptr %lt_use_bw, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end15.if.end28_crit_edge
  %is_app_limited = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 12
  %37 = ptrtoint ptr %is_app_limited to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_app_limited, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool29.not = icmp eq i8 %38, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %lt_bw.i400 = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %39 = ptrtoint ptr %lt_bw.i400 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %lt_bw.i400, align 4
  %40 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i402 = load i32, ptr %lt_use_bw, align 8
  %delivered_mstamp.i.i403 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %41 = ptrtoint ptr %delivered_mstamp.i.i403 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %delivered_mstamp.i.i403, align 8
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i404 = extractvalue { i64, i32 } %43, 0
  %asmresult4.i.i.i.i.i405 = extractvalue { i64, i32 } %43, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %asmresult.i.i.i.i.i404, i32 %asmresult4.i.i.i.i.i405) #14, !srcloc !44
  %asmresult10.i.i.i.i.i406 = extractvalue { i64, i32 } %44, 0
  %div1581.i.i.i.i407 = lshr i64 %asmresult10.i.i.i.i.i406, 9
  %conv.i.i408 = trunc i64 %div1581.i.i.i.i407 to i32
  %lt_last_stamp.i.i409 = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %45 = ptrtoint ptr %lt_last_stamp.i.i409 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv.i.i408, ptr %lt_last_stamp.i.i409, align 4
  %delivered.i.i410 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %46 = ptrtoint ptr %delivered.i.i410 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delivered.i.i410, align 8
  %lt_last_delivered.i.i411 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %48 = ptrtoint ptr %lt_last_delivered.i.i411 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %lt_last_delivered.i.i411, align 8
  %lost.i.i412 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %49 = ptrtoint ptr %lost.i.i412 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lost.i.i412, align 8
  %lt_last_lost.i.i413 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %51 = ptrtoint ptr %lt_last_lost.i.i413 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %lt_last_lost.i.i413, align 8
  %bf.clear.i.i414 = and i32 %bf.load.i402, -512
  %52 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bf.clear.i.i414, ptr %lt_use_bw, align 8
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %53 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load33 = load i32, ptr %lt_use_bw, align 8
  %54 = and i32 %bf.load33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool36.not = icmp eq i32 %54, 0
  br i1 %tobool36.not, label %if.end31.if.end48_crit_edge, label %if.then37

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %55 = add i32 %bf.load33, 2
  %bf.shl45 = and i32 %55, 254
  %bf.clear46 = and i32 %bf.load33, -255
  %bf.set47 = or i32 %bf.shl45, %bf.clear46
  %56 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set47, ptr %lt_use_bw, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %if.end31.if.end48_crit_edge
  %57 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load50 = load i32, ptr %lt_use_bw, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 1
  %bf.clear52 = and i32 %bf.lshr51, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bf.clear52)
  %cmp53 = icmp ult i32 %bf.clear52, 4
  br i1 %cmp53, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bf.clear52)
  %cmp60 = icmp ugt i32 %bf.clear52, 16
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %lt_bw.i416 = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %58 = ptrtoint ptr %lt_bw.i416 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %lt_bw.i416, align 4
  %59 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load.i418 = load i32, ptr %lt_use_bw, align 8
  %delivered_mstamp.i.i419 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %60 = ptrtoint ptr %delivered_mstamp.i.i419 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %delivered_mstamp.i.i419, align 8
  %62 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %61, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i.i420 = extractvalue { i64, i32 } %62, 0
  %asmresult4.i.i.i.i.i421 = extractvalue { i64, i32 } %62, 1
  %63 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %61, i64 %asmresult.i.i.i.i.i420, i32 %asmresult4.i.i.i.i.i421) #14, !srcloc !44
  %asmresult10.i.i.i.i.i422 = extractvalue { i64, i32 } %63, 0
  %div1581.i.i.i.i423 = lshr i64 %asmresult10.i.i.i.i.i422, 9
  %conv.i.i424 = trunc i64 %div1581.i.i.i.i423 to i32
  %lt_last_stamp.i.i425 = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %64 = ptrtoint ptr %lt_last_stamp.i.i425 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv.i.i424, ptr %lt_last_stamp.i.i425, align 4
  %delivered.i.i426 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %65 = ptrtoint ptr %delivered.i.i426 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delivered.i.i426, align 8
  %lt_last_delivered.i.i427 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %67 = ptrtoint ptr %lt_last_delivered.i.i427 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %lt_last_delivered.i.i427, align 8
  %lost.i.i428 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %68 = ptrtoint ptr %lost.i.i428 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lost.i.i428, align 8
  %lt_last_lost.i.i429 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %70 = ptrtoint ptr %lt_last_lost.i.i429 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lt_last_lost.i.i429, align 8
  %bf.clear.i.i430 = and i32 %bf.load.i418, -512
  %71 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %bf.clear.i.i430, ptr %lt_use_bw, align 8
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %losses63 = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 9
  %72 = ptrtoint ptr %losses63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %losses63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool64.not = icmp eq i32 %73, 0
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %delivered68 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %74 = ptrtoint ptr %delivered68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delivered68, align 8
  %lt_last_delivered = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %76 = ptrtoint ptr %lt_last_delivered to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lt_last_delivered, align 8
  %sub69 = sub i32 %75, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %tobool70.not = icmp eq i32 %75, %77
  br i1 %tobool70.not, label %if.end66.cleanup_crit_edge, label %lor.lhs.false

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end66
  %lost67 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %78 = ptrtoint ptr %lost67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lost67, align 8
  %lt_last_lost = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %80 = ptrtoint ptr %lt_last_lost to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lt_last_lost, align 8
  %sub = sub i32 %79, %81
  %shl = shl i32 %sub, 8
  %mul = mul i32 %sub69, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %mul)
  %cmp71 = icmp ult i32 %shl, %mul
  br i1 %cmp71, label %lor.lhs.false.cleanup_crit_edge, label %if.end73

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false
  %delivered_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %82 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %delivered_mstamp, align 8
  %84 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %83, i32 0) #14, !srcloc !43
  %asmresult.i.i.i = extractvalue { i64, i32 } %84, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %84, 1
  %85 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %83, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i = extractvalue { i64, i32 } %85, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %lt_last_stamp = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %86 = ptrtoint ptr %lt_last_stamp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lt_last_stamp, align 4
  %88 = trunc i64 %div1581.i.i to i32
  %conv76 = sub i32 %88, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv76)
  %cmp77 = icmp slt i32 %conv76, 1
  br i1 %cmp77, label %if.end73.cleanup_crit_edge, label %if.end80

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 4294966, i32 %conv76)
  %cmp81 = icmp ugt i32 %conv76, 4294966
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bbr_reset_lt_bw_sampling(ptr noundef %sk)
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %mul85 = mul nuw i32 %conv76, 1000
  %conv86 = zext i32 %sub69 to i64
  %mul87 = shl nuw nsw i64 %conv86, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub69)
  %cmp262 = icmp ult i32 %sub69, 256
  br i1 %cmp262, label %if.then266, label %if.else272, !prof !40

if.then266:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %conv267 = trunc i64 %mul87 to i32
  %div270 = udiv i32 %conv267, %mul85
  br label %if.end276

if.else272:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %89 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul85, i64 %mul87) #14, !srcloc !46
  %asmresult1.i = extractvalue { i64, i64 } %89, 1
  %extract.t442 = trunc i64 %asmresult1.i to i32
  br label %if.end276

if.end276:                                        ; preds = %if.else272, %if.then266
  %bw.0.off0 = phi i32 [ %div270, %if.then266 ], [ %extract.t442, %if.else272 ]
  tail call fastcc void @bbr_lt_bw_interval_done(ptr noundef %sk, i32 noundef %bw.0.off0)
  br label %cleanup

cleanup:                                          ; preds = %if.end276, %if.then83, %if.end73.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then61, %if.end48.cleanup_crit_edge, %if.then30, %if.then20.cleanup_crit_edge, %if.then14, %land.lhs.true7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bbr_reset_lt_bw_sampling(ptr nocapture noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %lt_bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %0 = ptrtoint ptr %lt_bw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lt_bw, align 4
  %lt_use_bw = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %1 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %lt_use_bw, align 8
  %delivered_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %2 = ptrtoint ptr %delivered_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %delivered_mstamp.i, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %3, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %3, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %lt_last_stamp.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %6 = ptrtoint ptr %lt_last_stamp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %lt_last_stamp.i, align 4
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %7 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delivered.i, align 8
  %lt_last_delivered.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %9 = ptrtoint ptr %lt_last_delivered.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %lt_last_delivered.i, align 8
  %lost.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %10 = ptrtoint ptr %lost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lost.i, align 8
  %lt_last_lost.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %12 = ptrtoint ptr %lt_last_lost.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lt_last_lost.i, align 8
  %bf.clear.i = and i32 %bf.load, -512
  %13 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.clear.i, ptr %lt_use_bw, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bbr_lt_bw_interval_done(ptr nocapture noundef %sk, i32 noundef %bw) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %lt_bw = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 8
  %0 = ptrtoint ptr %lt_bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lt_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %entry
  %sub = sub i32 %bw, %1
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %mul = shl i32 %2, 8
  %mul4 = shl i32 %1, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul4)
  %cmp5.not = icmp ugt i32 %mul, %mul4
  br i1 %cmp5.not, label %lor.lhs.false, label %if.then.if.then9_crit_edge

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.then
  %conv = zext i32 %2 to i64
  %mss_cache.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %3 = ptrtoint ptr %mss_cache.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mss_cache.i, align 4
  %conv.i = zext i32 %4 to i64
  %mul.i = shl nuw nsw i64 %conv, 8
  %mul2.i = mul i64 %mul.i, %conv.i
  %shr.i = lshr exact i64 %mul2.i, 8
  %mul3.i = mul i64 %shr.i, 990000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8405385216, i64 %mul3.i)
  %cmp7 = icmp ult i64 %mul3.i, 8405385216
  br i1 %cmp7, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %add = add i32 %1, %bw
  %shr = lshr i32 %add, 1
  %5 = ptrtoint ptr %lt_bw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %lt_bw, align 4
  %lt_use_bw = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %6 = ptrtoint ptr %lt_use_bw to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %lt_use_bw, align 8
  %bf.set = or i32 %bf.load, 1
  %pacing_gain = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %7 = ptrtoint ptr %pacing_gain to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load12 = load i32, ptr %pacing_gain, align 4
  %bf.clear13 = and i32 %bf.load12, 4194303
  %bf.set14 = or i32 %bf.clear13, 1073741824
  store i32 %bf.set14, ptr %pacing_gain, align 4
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %entry.if.end18_crit_edge
  %8 = ptrtoint ptr %lt_bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bw, ptr %lt_bw, align 4
  %delivered_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %9 = ptrtoint ptr %delivered_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %delivered_mstamp.i, align 8
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #14, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i36 = trunc i64 %div1581.i.i.i to i32
  %lt_last_stamp.i = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 10
  %13 = ptrtoint ptr %lt_last_stamp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i36, ptr %lt_last_stamp.i, align 4
  %delivered.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %14 = ptrtoint ptr %delivered.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delivered.i, align 8
  %lt_last_delivered.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 8
  %16 = ptrtoint ptr %lt_last_delivered.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %lt_last_delivered.i, align 8
  %lost.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 73
  %17 = ptrtoint ptr %lost.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lost.i, align 8
  %lt_last_lost.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 9
  %19 = ptrtoint ptr %lt_last_lost.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %lt_last_lost.i, align 8
  %lt_rtt_cnt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %20 = ptrtoint ptr %lt_rtt_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %lt_rtt_cnt.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then9
  %bf.load.i.sink = phi i32 [ %bf.load.i, %if.end18 ], [ %bf.set, %if.then9 ]
  %lt_rtt_cnt.i.sink = phi ptr [ %lt_rtt_cnt.i, %if.end18 ], [ %lt_use_bw, %if.then9 ]
  %bf.clear.i = and i32 %bf.load.i.sink, -255
  %21 = ptrtoint ptr %lt_rtt_cnt.i.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear.i, ptr %lt_rtt_cnt.i.sink, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bbr_init_pacing_rate_from_rtt(ptr nocapture noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srtt_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srtt_us, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  %shr = lshr i32 %1, 3
  %cond = select i1 %cmp, i32 %shr, i32 1
  %has_seen_rtt = getelementptr inbounds %struct.bbr, ptr %icsk_ca_priv.i, i32 0, i32 12
  %2 = ptrtoint ptr %has_seen_rtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %has_seen_rtt, align 4
  %bf.set = or i32 %bf.load, 32
  store i32 %bf.set, ptr %has_seen_rtt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rtt_us.0 = phi i32 [ %cond, %if.then ], [ 1000, %entry.if.end_crit_edge ]
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %3 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %snd_cwnd, align 8
  %conv = zext i32 %4 to i64
  %mul = shl nuw nsw i64 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp181 = icmp ult i32 %4, 256
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !40

if.then185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv186 = trunc i64 %mul to i32
  %div189 = udiv i32 %conv186, %rtt_us.0
  br label %if.end195

if.else191:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rtt_us.0, i64 %mul) #14, !srcloc !46
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t311 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %bw.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t311, %if.else191 ]
  %conv.i = zext i32 %bw.0.off0 to i64
  %mss_cache.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %6 = ptrtoint ptr %mss_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mss_cache.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 739
  %mul2.i.i = mul i64 %mul.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul2.i.i, 8
  %mul3.i.i = mul i64 %shr.i.i, 990000
  %shr4.i.i = lshr i64 %mul3.i.i, 24
  %sk_max_pacing_rate.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 36
  %8 = ptrtoint ptr %sk_max_pacing_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_max_pacing_rate.i, align 8
  %conv1.i = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr4.i.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %shr4.i.i, %conv1.i
  %extract.t.i = trunc i64 %shr4.i.i to i32
  %cond.off0.i = select i1 %cmp.i, i32 %extract.t.i, i32 %9
  %sk_pacing_rate = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %10 = ptrtoint ptr %sk_pacing_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.off0.i, ptr %sk_pacing_rate, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minmax_running_max(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_tcp_bbr__635_1192_bbr_register6, !1, !"__initcall__kmod_tcp_bbr__635_1192_bbr_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_bbr.c", i32 1192, i32 1}
!2 = !{ptr @__exitcall_bbr_unregister, !3, !"__exitcall_bbr_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_bbr.c", i32 1193, i32 1}
!4 = !{ptr @__UNIQUE_ID_author636, !5, !"__UNIQUE_ID_author636", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_bbr.c", i32 1195, i32 1}
!6 = !{ptr @__UNIQUE_ID_author637, !7, !"__UNIQUE_ID_author637", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_bbr.c", i32 1196, i32 1}
!8 = !{ptr @__UNIQUE_ID_author638, !9, !"__UNIQUE_ID_author638", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_bbr.c", i32 1197, i32 1}
!10 = !{ptr @__UNIQUE_ID_author639, !11, !"__UNIQUE_ID_author639", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_bbr.c", i32 1198, i32 1}
!12 = !{ptr @__UNIQUE_ID_file640, !13, !"__UNIQUE_ID_file640", i1 false, i1 false}
!13 = !{!"../net/ipv4/tcp_bbr.c", i32 1199, i32 1}
!14 = !{ptr @__UNIQUE_ID_license641, !13, !"__UNIQUE_ID_license641", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description642, !16, !"__UNIQUE_ID_description642", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_bbr.c", i32 1200, i32 1}
!17 = distinct !{null, !18, !"bpf_tcp_ca_kfunc_list", i1 false, i1 false}
!18 = !{!"../include/linux/btf.h", i32 359, i32 33}
!19 = distinct !{null, !20, !"tcp_bbr_kfunc_btf_set", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_bbr.c", i32 1172, i32 8}
!21 = distinct !{null, !22, !"tcp_bbr_kfunc_ids", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_bbr.c", i32 1157, i32 1}
!23 = !{ptr @tcp_bbr_cong_ops, !24, !"tcp_bbr_cong_ops", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_bbr.c", i32 1142, i32 34}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_bbr.c", i32 1010, i32 3}
!27 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bbr_pacing_gain, !30, !"bbr_pacing_gain", i1 false, i1 false}
!30 = !{!"../net/ipv4/tcp_bbr.c", i32 162, i32 18}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"auto-init"}
!42 = !{i8 0, i8 2}
!43 = !{i64 1082455, i64 1082482, i64 1082504, i64 1082532}
!44 = !{i64 1082863, i64 1082890, i64 1082923, i64 1082944, i64 1082971, i64 1082997}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2148567999, i64 2148568279, i64 2148568613, i64 2148568947}
!47 = !{i64 2158727020}
!48 = !{i64 1227706, i64 1227727, i64 1227750, i64 1227769, i64 1227788}
!49 = !{i64 2158727449}
