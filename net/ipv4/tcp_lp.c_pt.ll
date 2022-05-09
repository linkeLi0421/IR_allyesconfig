; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_lp.c_pt.bc'
source_filename = "../net/ipv4/tcp_lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.lp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tcp_lp = internal global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @tcp_lp_cong_avoid, ptr null, ptr null, ptr null, ptr @tcp_lp_pkts_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_lp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_lp__597_349_tcp_lp_register6 = internal global ptr @tcp_lp_register, section ".initcall6.init", align 4
@__exitcall_tcp_lp_unregister = internal global ptr @tcp_lp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author598 = internal constant [55 x i8] c"tcp_lp.author=Wong Hoi Sing Edison, Hung Hing Lun Mike\00", section ".modinfo", align 1
@__UNIQUE_ID_file599 = internal constant [28 x i8] c"tcp_lp.file=net/ipv4/tcp_lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license600 = internal constant [19 x i8] c"tcp_lp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description601 = internal constant [36 x i8] c"tcp_lp.description=TCP Low Priority\00", section ".modinfo", align 1
@tcp_lp_pkts_acked.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcp_lp\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_lp_pkts_acked\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ipv4/tcp_lp.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TCP-LP: %05o|%5u|%5u|%15u|%15u|%15u\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [21 x i8] c"../net/ipv4/tcp_lp.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 299, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author598, ptr @__UNIQUE_ID_description601, ptr @__UNIQUE_ID_file599, ptr @__UNIQUE_ID_license600, ptr @__exitcall_tcp_lp_unregister, ptr @__initcall__kmod_tcp_lp__597_349_tcp_lp_register6, ptr @tcp_lp_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_lp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_lp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_lp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_lp) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_ssthresh(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_lp_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icsk_ca_priv.i, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_lp_pkts_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %0 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tcp_mstamp.i, align 8
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #7, !srcloc !28
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #7, !srcloc !29
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %4 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %remote_hz.i.i.i = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %6 = ptrtoint ptr %remote_hz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remote_hz.i.i.i, align 4
  %shl.i.i.i = shl i32 %7, 6
  %conv.i.i.i = zext i32 %shl.i.i.i to i64
  %remote_ref_time.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %8 = ptrtoint ptr %remote_ref_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %remote_ref_time.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i, label %if.then.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcp_lp_remote_hz_estimator.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then
  %local_ref_time.i.i.i = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %10 = ptrtoint ptr %local_ref_time.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %local_ref_time.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcp_lp_remote_hz_estimator.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %rcv_tsval.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 2
  %12 = ptrtoint ptr %rcv_tsval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcv_tsval.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp6.i.i.i = icmp eq i32 %13, %9
  br i1 %cmp6.i.i.i, label %if.end.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, label %lor.lhs.false8.i.i.i

if.end.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcp_lp_remote_hz_estimator.exit.i.i

lor.lhs.false8.i.i.i:                             ; preds = %if.end.i.i.i
  %rcv_tsecr.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 3
  %14 = ptrtoint ptr %rcv_tsecr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rcv_tsecr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp11.i.i.i = icmp eq i32 %15, %11
  br i1 %cmp11.i.i.i, label %lor.lhs.false8.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, label %if.end14.i.i.i

lor.lhs.false8.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge: ; preds = %lor.lhs.false8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcp_lp_remote_hz_estimator.exit.i.i

if.end14.i.i.i:                                   ; preds = %lor.lhs.false8.i.i.i
  %sub.i.i.i = sub i32 %13, %9
  %mul.i.i.i = mul i32 %sub.i.i.i, 1000
  %sub21.i.i.i = sub i32 %15, %11
  %div.i.i.i = udiv i32 %mul.i.i.i, %sub21.i.i.i
  %conv22.i.i.i = zext i32 %div.i.i.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.i)
  %cmp28.not.i.i.i = icmp eq i32 %shl.i.i.i, 0
  br i1 %cmp28.not.i.i.i, label %if.else.i.i.i, label %if.then30.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = lshr exact i64 %conv.i.i.i, 6
  %sub31.i.i.i = sub nsw i64 %conv.i.i.i, %16
  %add.i.i.i = add nsw i64 %sub31.i.i.i, %conv22.i.i.i
  br label %tcp_lp_remote_hz_estimator.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl32.i.i.i = shl nuw nsw i64 %conv22.i.i.i, 6
  br label %tcp_lp_remote_hz_estimator.exit.i.i

tcp_lp_remote_hz_estimator.exit.i.i:              ; preds = %if.else.i.i.i, %if.then30.i.i.i, %lor.lhs.false8.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, %if.end.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge, %if.then.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge
  %rhz.0.i.i.i = phi i64 [ %conv.i.i.i, %if.then.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge ], [ %conv.i.i.i, %lor.lhs.false.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge ], [ %conv.i.i.i, %if.end.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge ], [ %conv.i.i.i, %lor.lhs.false8.i.i.i.tcp_lp_remote_hz_estimator.exit.i.i_crit_edge ], [ %add.i.i.i, %if.then30.i.i.i ], [ %shl32.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %rhz.0.i.i.i)
  %cmp35.i.i.i = icmp sgt i64 %rhz.0.i.i.i, 63
  %17 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icsk_ca_priv.i, align 4
  %and.i.i.i = and i32 %18, -2
  %masksel.i.i.i = zext i1 %cmp35.i.i.i to i32
  %storemerge.i.i.i = or i32 %and.i.i.i, %masksel.i.i.i
  %19 = lshr i64 %rhz.0.i.i.i, 6
  %rcv_tsval42.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 2
  %20 = ptrtoint ptr %rcv_tsval42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rcv_tsval42.i.i.i, align 4
  %22 = ptrtoint ptr %remote_ref_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %remote_ref_time.i.i.i, align 4
  %rcv_tsecr45.i.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 3
  %23 = ptrtoint ptr %rcv_tsecr45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rcv_tsecr45.i.i.i, align 4
  %local_ref_time46.i.i.i = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %25 = ptrtoint ptr %local_ref_time46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %local_ref_time46.i.i.i, align 4
  %conv48.i.i.i = trunc i64 %19 to i32
  %26 = ptrtoint ptr %remote_hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv48.i.i.i, ptr %remote_hz.i.i.i, align 4
  br i1 %cmp35.i.i.i, label %if.end9.i.i, label %tcp_lp_remote_hz_estimator.exit.i.i.if.else.i.i_crit_edge

tcp_lp_remote_hz_estimator.exit.i.i.if.else.i.i_crit_edge: ; preds = %tcp_lp_remote_hz_estimator.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.end9.i.i:                                      ; preds = %tcp_lp_remote_hz_estimator.exit.i.i
  %div.i.i = udiv i32 1000, %conv48.i.i.i
  %mul.i.i = mul i32 %div.i.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %24)
  %cmp10.not.i.i = icmp eq i32 %mul.i.i, %24
  br i1 %cmp10.not.i.i, label %if.end9.i.i.if.else.i.i_crit_edge, label %if.then12.i.i

if.end9.i.i.if.else.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = sub i32 %mul.i.i, %24
  %or.i.i = or i32 %storemerge.i.i.i, 2
  br label %tcp_lp_owd_calculator.exit.i

if.else.i.i:                                      ; preds = %if.end9.i.i.if.else.i.i_crit_edge, %tcp_lp_remote_hz_estimator.exit.i.i.if.else.i.i_crit_edge
  %and15.i.i = and i32 %storemerge.i.i.i, -3
  br label %tcp_lp_owd_calculator.exit.i

tcp_lp_owd_calculator.exit.i:                     ; preds = %if.else.i.i, %if.then12.i.i
  %owd.030.off0.i.i = phi i32 [ 0, %if.else.i.i ], [ %sub.i.i, %if.then12.i.i ]
  %storemerge.i.i = phi i32 [ %and15.i.i, %if.else.i.i ], [ %or.i.i, %if.then12.i.i ]
  %27 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge.i.i, ptr %icsk_ca_priv.i, align 4
  %28 = and i32 %storemerge.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %.not.i = icmp eq i32 %28, 3
  br i1 %.not.i, label %if.end.i, label %tcp_lp_owd_calculator.exit.i.if.end_crit_edge

tcp_lp_owd_calculator.exit.i.if.end_crit_edge:    ; preds = %tcp_lp_owd_calculator.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %tcp_lp_owd_calculator.exit.i
  %owd_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %29 = ptrtoint ptr %owd_min.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %owd_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %owd.030.off0.i.i, i32 %30)
  %cmp.i = icmp ult i32 %owd.030.off0.i.i, %30
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %owd_min.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %owd.030.off0.i.i, ptr %owd_min.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  %owd_max.i = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %32 = ptrtoint ptr %owd_max.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %owd_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %owd.030.off0.i.i, i32 %33)
  %cmp12.i = icmp ugt i32 %owd.030.off0.i.i, %33
  br i1 %cmp12.i, label %if.then14.i, label %if.end10.i.if.end34.i_crit_edge

if.end10.i.if.end34.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then14.i:                                      ; preds = %if.end10.i
  %owd_max_rsv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %34 = ptrtoint ptr %owd_max_rsv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %owd_max_rsv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %owd.030.off0.i.i, i32 %35)
  %cmp16.i = icmp ugt i32 %owd.030.off0.i.i, %35
  br i1 %cmp16.i, label %if.then18.i, label %if.then14.i.if.end34.sink.split.i_crit_edge

if.then14.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.sink.split.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp20.i = icmp eq i32 %35, 0
  %call1..i = select i1 %cmp20.i, i32 %owd.030.off0.i.i, i32 %35
  %36 = ptrtoint ptr %owd_max.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call1..i, ptr %owd_max.i, align 4
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %if.then18.i, %if.then14.i.if.end34.sink.split.i_crit_edge
  %owd_max_rsv.sink.i = phi ptr [ %owd_max_rsv.i, %if.then18.i ], [ %owd_max.i, %if.then14.i.if.end34.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %owd_max_rsv.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %owd.030.off0.i.i, ptr %owd_max_rsv.sink.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %if.end10.i.if.end34.i_crit_edge
  %sowd.i = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %38 = ptrtoint ptr %sowd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sowd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp35.not.i = icmp eq i32 %39, 0
  %shl.i = shl i32 %owd.030.off0.i.i, 3
  %shr.i = lshr i32 %39, 3
  %sub.i = add i32 %39, %owd.030.off0.i.i
  %add.i = sub i32 %sub.i, %shr.i
  %storemerge.i = select i1 %cmp35.not.i, i32 %shl.i, i32 %add.i
  %40 = ptrtoint ptr %sowd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge.i, ptr %sowd.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end34.i, %tcp_lp_owd_calculator.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rcv_tsecr = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 3
  %41 = ptrtoint ptr %rcv_tsecr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rcv_tsecr, align 4
  %sub = sub i32 %conv.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp sgt i32 %sub, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %sub, 3
  %inference = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %43 = ptrtoint ptr %inference to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %inference, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %last_drop = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %44 = ptrtoint ptr %last_drop to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %last_drop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %sub8 = sub i32 %conv.i, %45
  %inference9 = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %46 = ptrtoint ptr %inference9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inference9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %47)
  %cmp10 = icmp ult i32 %sub8, %47
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %icsk_ca_priv.i, align 4
  %or = or i32 %49, 16
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %50 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %icsk_ca_priv.i, align 4
  %and = and i32 %51, -17
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then11 ]
  %sowd = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %52 = ptrtoint ptr %sowd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sowd, align 4
  %shr = lshr i32 %53, 3
  %owd_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %54 = ptrtoint ptr %owd_min to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %owd_min, align 4
  %owd_max = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %56 = ptrtoint ptr %owd_max to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %owd_max, align 4
  %sub15 = sub i32 %57, %55
  %mul16 = mul i32 %sub15, 15
  %div = udiv i32 %mul16, 100
  %add = add i32 %div, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %add)
  %cmp17 = icmp ult i32 %shr, %add
  %and23 = and i32 %storemerge, -9
  %masksel = select i1 %cmp17, i32 8, i32 0
  %storemerge104 = or i32 %masksel, %and23
  %58 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge104, ptr %icsk_ca_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_lp_pkts_acked.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_lp_pkts_acked, %if.then29)) #4
          to label %do.end [label %if.then29], !srcloc !30

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %icsk_ca_priv.i, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %61 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %snd_cwnd, align 8
  %remote_hz = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %63 = ptrtoint ptr %remote_hz to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %remote_hz, align 4
  %65 = ptrtoint ptr %owd_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %owd_min, align 4
  %67 = ptrtoint ptr %owd_max to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %owd_max, align 4
  %69 = ptrtoint ptr %sowd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sowd, align 4
  %shr34 = lshr i32 %70, 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_lp_pkts_acked.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.3, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %shr34) #4
  br label %do.end

do.end:                                           ; preds = %if.then29, %if.end13
  %71 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %icsk_ca_priv.i, align 4
  %and37 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end40, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %do.end
  %73 = ptrtoint ptr %sowd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sowd, align 4
  %shr42 = lshr i32 %74, 3
  %75 = ptrtoint ptr %owd_min to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr42, ptr %owd_min, align 4
  %shr45 = lshr i32 %74, 2
  %76 = ptrtoint ptr %owd_max to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr45, ptr %owd_max, align 4
  %owd_max_rsv = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %77 = ptrtoint ptr %owd_max_rsv to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shr45, ptr %owd_max_rsv, align 4
  %and50 = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %snd_cwnd55 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  br i1 %tobool51.not, label %if.else54, label %if.end40.if.end60_crit_edge

if.end40.if.end60_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else54:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %snd_cwnd55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %snd_cwnd55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp58 = icmp ugt i32 %79, 3
  %shr56 = lshr i32 %79, 1
  %cond = select i1 %cmp58, i32 %shr56, i32 1
  br label %if.end60

if.end60:                                         ; preds = %if.else54, %if.end40.if.end60_crit_edge
  %cond.sink = phi i32 [ %cond, %if.else54 ], [ 1, %if.end40.if.end60_crit_edge ]
  %80 = ptrtoint ptr %snd_cwnd55 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.sink, ptr %snd_cwnd55, align 8
  %81 = ptrtoint ptr %last_drop to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv.i, ptr %last_drop, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @tcp_lp_init(ptr nocapture noundef writeonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %icsk_ca_priv.i, align 4
  %sowd = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %1 = ptrtoint ptr %sowd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sowd, align 4
  %owd_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %owd_min to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %owd_min, align 4
  %owd_max = getelementptr inbounds %struct.lp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %3 = call ptr @memset(ptr %owd_max, i32 0, i32 28)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_tcp_lp__597_349_tcp_lp_register6, !1, !"__initcall__kmod_tcp_lp__597_349_tcp_lp_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_lp.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_tcp_lp_unregister, !3, !"__exitcall_tcp_lp_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_lp.c", i32 350, i32 1}
!4 = !{ptr @__UNIQUE_ID_author598, !5, !"__UNIQUE_ID_author598", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_lp.c", i32 352, i32 1}
!6 = !{ptr @__UNIQUE_ID_file599, !7, !"__UNIQUE_ID_file599", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_lp.c", i32 353, i32 1}
!8 = !{ptr @__UNIQUE_ID_license600, !7, !"__UNIQUE_ID_license600", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description601, !10, !"__UNIQUE_ID_description601", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_lp.c", i32 354, i32 1}
!11 = !{ptr @tcp_lp, !12, !"tcp_lp", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_lp.c", i32 327, i32 34}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_lp.c", i32 299, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tcp_lp_pkts_acked.__UNIQUE_ID_ddebug593, !14, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 708310, i64 708337, i64 708359, i64 708387}
!29 = !{i64 708718, i64 708745, i64 708778, i64 708799, i64 708826, i64 708852}
!30 = !{i64 2148960807, i64 2148960812, i64 2148960825, i64 2148960869, i64 2148960903, i64 2148960924}
