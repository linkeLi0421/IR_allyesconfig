; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_yeah.c_pt.bc'
source_filename = "../net/ipv4/tcp_yeah.c"
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
%struct.yeah = type { %struct.vegas, i32, i32, i32, i32 }
%struct.vegas = type { i32, i32, i32, i8, i16, i32, i32 }
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

@tcp_yeah = internal global %struct.tcp_congestion_ops { ptr @tcp_yeah_ssthresh, ptr @tcp_yeah_cong_avoid, ptr @tcp_vegas_state, ptr @tcp_vegas_cwnd_event, ptr null, ptr @tcp_vegas_pkts_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @tcp_vegas_get_info, [16 x i8] c"yeah\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_yeah_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_yeah__618_234_tcp_yeah_register6 = internal global ptr @tcp_yeah_register, section ".initcall6.init", align 4
@__exitcall_tcp_yeah_unregister = internal global ptr @tcp_yeah_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author619 = internal constant [37 x i8] c"tcp_yeah.author=Angelo P. Castellani\00", section ".modinfo", align 1
@__UNIQUE_ID_file620 = internal constant [32 x i8] c"tcp_yeah.file=net/ipv4/tcp_yeah\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [21 x i8] c"tcp_yeah.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description622 = internal constant [30 x i8] c"tcp_yeah.description=YeAH TCP\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author619, ptr @__UNIQUE_ID_description622, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_tcp_yeah_unregister, ptr @__initcall__kmod_tcp_yeah__618_234_tcp_yeah_register6, ptr @tcp_yeah_unregister], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_yeah_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_yeah) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_yeah_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_yeah) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_yeah_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %doing_reno_now = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 2
  %0 = ptrtoint ptr %doing_reno_now to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %doing_reno_now, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lastQ = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %2 = ptrtoint ptr %lastQ to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lastQ, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_cwnd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp2 = icmp ugt i32 %5, 5
  %shr = lshr i32 %5, 1
  %cond = select i1 %cmp2, i32 %shr, i32 2
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %cond)
  %shr10 = lshr i32 %5, 3
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %shr10)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %snd_cwnd17 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %8 = ptrtoint ptr %snd_cwnd17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_cwnd17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp20 = icmp ugt i32 %9, 5
  %shr18 = lshr i32 %9, 1
  %cond24 = select i1 %cmp20, i32 %shr18, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reduction.0 = phi i32 [ %7, %if.then ], [ %cond24, %if.else ]
  %fast_count = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 4
  %10 = ptrtoint ptr %fast_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fast_count, align 4
  %reno_count = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %11 = ptrtoint ptr %reno_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reno_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp27 = icmp ugt i32 %12, 5
  %shr25 = lshr i32 %12, 1
  %cond31 = select i1 %cmp27, i32 %shr25, i32 2
  %13 = ptrtoint ptr %reno_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond31, ptr %reno_count, align 4
  %snd_cwnd33 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %14 = ptrtoint ptr %snd_cwnd33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_cwnd33, align 8
  %sub = sub i32 %15, %reduction.0
  %16 = tail call i32 @llvm.smax.i32(i32 %sub, i32 2)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_yeah_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %2 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp ult i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i, label %tcp_is_cwnd_limited.exit

if.then.i:                                        ; preds = %entry
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %4 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_packets_out.i, align 4
  %mul.i = shl i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i)
  %cmp.i = icmp ult i32 %1, %mul.i
  br i1 %cmp.i, label %if.then4, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tcp_is_cwnd_limited.exit:                         ; preds = %entry
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %6 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %tcp_is_cwnd_limited.exit.if.end8_crit_edge

tcp_is_cwnd_limited.exit.if.end8_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then.i
  %call5 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.do_vegas_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then4.do_vegas_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_vegas

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %tcp_is_cwnd_limited.exit.if.end8_crit_edge
  %acked.addr.0 = phi i32 [ %call5, %if.then4.if.end8_crit_edge ], [ %acked, %tcp_is_cwnd_limited.exit.if.end8_crit_edge ]
  %doing_reno_now = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 2
  %7 = ptrtoint ptr %doing_reno_now to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %doing_reno_now, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  %9 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_cwnd.i.i, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 100)
  %.sink = select i1 %tobool9.not, i32 %11, i32 %10
  tail call void @tcp_cong_avoid_ai(ptr noundef %sk, i32 noundef %.sink, i32 noundef %acked.addr.0) #5
  br label %do_vegas

do_vegas:                                         ; preds = %if.end8, %if.then4.do_vegas_crit_edge
  %12 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %icsk_ca_priv.i, align 4
  %sub.i = sub i32 %13, %ack
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i460 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i460, label %if.then14, label %do_vegas.cleanup_crit_edge

do_vegas.cleanup_crit_edge:                       ; preds = %do_vegas
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %do_vegas
  %cntRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 4
  %14 = ptrtoint ptr %cntRTT to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cntRTT, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp16 = icmp ugt i16 %15, 2
  br i1 %cmp16, label %if.then18, label %if.then14.if.end299_crit_edge

if.then14.if.end299_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end299

if.then18:                                        ; preds = %if.then14
  %minRTT = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %minRTT to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minRTT, align 4
  %18 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snd_cwnd.i.i, align 8
  %conv21 = zext i32 %19 to i64
  %baseRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 6
  %20 = ptrtoint ptr %baseRTT to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %baseRTT, align 4
  %sub = sub i32 %17, %21
  %conv23 = zext i32 %sub to i64
  %mul = mul nuw i64 %conv23, %conv21
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp202 = icmp ult i64 %mul, 4294967296
  br i1 %cmp202, label %if.then206, label %if.else212, !prof !22

if.then206:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %conv207 = trunc i64 %mul to i32
  %div210 = udiv i32 %conv207, %17
  br label %if.end216

if.else212:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %mul) #8, !srcloc !23
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  %extract.t472 = trunc i64 %asmresult1.i to i32
  br label %if.end216

if.end216:                                        ; preds = %if.else212, %if.then206
  %bw.0.off0 = phi i32 [ %div210, %if.then206 ], [ %extract.t472, %if.else212 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %bw.0.off0)
  %cmp219 = icmp ugt i32 %bw.0.off0, 80
  br i1 %cmp219, label %land.lhs.true232.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end216
  %div226457 = lshr i32 %21, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div226457)
  %cmp227 = icmp ugt i32 %sub, %div226457
  br i1 %cmp227, label %lor.lhs.false.if.end260_crit_edge, label %if.else288

lor.lhs.false.if.end260_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end260

land.lhs.true232.critedge:                        ; preds = %if.end216
  %reno_count = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %23 = ptrtoint ptr %reno_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reno_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %24)
  %cmp234 = icmp ugt i32 %19, %24
  br i1 %cmp234, label %if.then236, label %land.lhs.true232.critedge.if.end260_crit_edge

land.lhs.true232.critedge.if.end260_crit_edge:    ; preds = %land.lhs.true232.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end260

if.then236:                                       ; preds = %land.lhs.true232.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %shr239 = lshr i32 %19, 1
  %25 = tail call i32 @llvm.umin.i32(i32 %shr239, i32 %bw.0.off0)
  %sub248 = sub i32 %19, %25
  %26 = tail call i32 @llvm.umax.i32(i32 %sub248, i32 %24)
  %27 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %snd_cwnd.i.i, align 8
  %28 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %snd_ssthresh.i.i, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then236, %land.lhs.true232.critedge.if.end260_crit_edge, %lor.lhs.false.if.end260_crit_edge
  %reno_count261 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %29 = ptrtoint ptr %reno_count261 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reno_count261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp262 = icmp ult i32 %30, 3
  br i1 %cmp262, label %if.then264, label %if.else275

if.then264:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %snd_cwnd.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp268 = icmp ugt i32 %32, 5
  %shr266 = lshr i32 %32, 1
  %cond273 = select i1 %cmp268, i32 %shr266, i32 2
  br label %if.end277

if.else275:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %30, 1
  br label %if.end277

if.end277:                                        ; preds = %if.else275, %if.then264
  %storemerge = phi i32 [ %inc, %if.else275 ], [ %cond273, %if.then264 ]
  %33 = ptrtoint ptr %reno_count261 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %reno_count261, align 4
  %doing_reno_now278 = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 2
  %34 = ptrtoint ptr %doing_reno_now278 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %doing_reno_now278, align 4
  %add279 = add i32 %35, 1
  %36 = tail call i32 @llvm.umin.i32(i32 %add279, i32 16777215)
  %37 = ptrtoint ptr %doing_reno_now278 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %doing_reno_now278, align 4
  br label %if.end298

if.else288:                                       ; preds = %lor.lhs.false
  %fast_count = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 4
  %38 = ptrtoint ptr %fast_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fast_count, align 4
  %inc289 = add i32 %39, 1
  store i32 %inc289, ptr %fast_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc289)
  %cmp291 = icmp ugt i32 %inc289, 50
  br i1 %cmp291, label %if.then293, label %if.else288.if.end296_crit_edge

if.else288.if.end296_crit_edge:                   ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end296

if.then293:                                       ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #7
  %reno_count294 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %40 = ptrtoint ptr %reno_count294 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %reno_count294, align 4
  %41 = ptrtoint ptr %fast_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %fast_count, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.then293, %if.else288.if.end296_crit_edge
  %doing_reno_now297 = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 2
  %42 = ptrtoint ptr %doing_reno_now297 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %doing_reno_now297, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.end296, %if.end277
  %lastQ = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %lastQ to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bw.0.off0, ptr %lastQ, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.then14.if.end299_crit_edge
  %beg_snd_una = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 1
  %44 = ptrtoint ptr %beg_snd_una to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %13, ptr %beg_snd_una, align 4
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %45 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %snd_nxt, align 4
  %47 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %icsk_ca_priv.i, align 4
  %48 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_cwnd.i.i, align 8
  %beg_snd_cwnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %50 = ptrtoint ptr %beg_snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %beg_snd_cwnd, align 4
  %51 = ptrtoint ptr %cntRTT to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %cntRTT, align 2
  %minRTT310 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %52 = ptrtoint ptr %minRTT310 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2147483647, ptr %minRTT310, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end299, %do_vegas.cleanup_crit_edge, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_vegas_state(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_vegas_cwnd_event(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_vegas_pkts_acked(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_vegas_get_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_yeah_init(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  tail call void @tcp_vegas_init(ptr noundef %sk) #5
  %doing_reno_now = getelementptr inbounds %struct.yeah, ptr %icsk_ca_priv.i, i32 0, i32 2
  %0 = ptrtoint ptr %doing_reno_now to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %doing_reno_now, align 4
  %lastQ = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %1 = ptrtoint ptr %lastQ to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %lastQ, align 4
  %reno_count = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %2 = ptrtoint ptr %reno_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %reno_count, align 4
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %3 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %snd_cwnd_clamp, align 8
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 33554431)
  %6 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %snd_cwnd_clamp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_vegas_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_tcp_yeah__618_234_tcp_yeah_register6, !1, !"__initcall__kmod_tcp_yeah__618_234_tcp_yeah_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_yeah.c", i32 234, i32 1}
!2 = !{ptr @__exitcall_tcp_yeah_unregister, !3, !"__exitcall_tcp_yeah_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_yeah.c", i32 235, i32 1}
!4 = !{ptr @__UNIQUE_ID_author619, !5, !"__UNIQUE_ID_author619", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_yeah.c", i32 237, i32 1}
!6 = !{ptr @__UNIQUE_ID_file620, !7, !"__UNIQUE_ID_file620", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_yeah.c", i32 238, i32 1}
!8 = !{ptr @__UNIQUE_ID_license621, !7, !"__UNIQUE_ID_license621", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description622, !10, !"__UNIQUE_ID_description622", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_yeah.c", i32 239, i32 1}
!11 = !{ptr @tcp_yeah, !12, !"tcp_yeah", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_yeah.c", i32 208, i32 34}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148519780, i64 2148520060, i64 2148520394, i64 2148520728}
