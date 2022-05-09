; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_hybla.c_pt.bc'
source_filename = "../net/ipv4/tcp_hybla.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
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
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
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
%struct.hybla = type { i8, i32, i32, i32, i32, i32, i32 }

@__param_str_rtt0 = internal constant [15 x i8] c"tcp_hybla.rtt0\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rtt0 = internal global { i32, [28 x i8] } { i32 25, [28 x i8] zeroinitializer }, align 32
@__param_rtt0 = internal constant %struct.kernel_param { ptr @__param_str_rtt0, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @rtt0 } }, section "__param", align 4
@__UNIQUE_ID_rtt0type593 = internal constant [28 x i8] c"tcp_hybla.parmtype=rtt0:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rtt0594 = internal constant [50 x i8] c"tcp_hybla.parm=rtt0:reference rout trip time (ms)\00", section ".modinfo", align 1
@tcp_hybla = internal global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @hybla_cong_avoid, ptr @hybla_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"hybla\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @hybla_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_hybla__604_189_hybla_register6 = internal global ptr @hybla_register, section ".initcall6.init", align 4
@__exitcall_hybla_unregister = internal global ptr @hybla_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author605 = internal constant [34 x i8] c"tcp_hybla.author=Daniele Lacamera\00", section ".modinfo", align 1
@__UNIQUE_ID_file606 = internal constant [34 x i8] c"tcp_hybla.file=net/ipv4/tcp_hybla\00", section ".modinfo", align 1
@__UNIQUE_ID_license607 = internal constant [22 x i8] c"tcp_hybla.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description608 = internal constant [32 x i8] c"tcp_hybla.description=TCP Hybla\00", section ".modinfo", align 1
@hybla_fraction.fractions = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 139, i32 152, i32 165, i32 181, i32 197, i32 215, i32 234], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"rtt0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 29, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"fractions\00", align 1
@___asan_gen_.5 = private constant [24 x i8] c"../net/ipv4/tcp_hybla.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 77, i32 19 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author605, ptr @__UNIQUE_ID_description608, ptr @__UNIQUE_ID_file606, ptr @__UNIQUE_ID_license607, ptr @__UNIQUE_ID_rtt0594, ptr @__UNIQUE_ID_rtt0type593, ptr @__exitcall_hybla_unregister, ptr @__initcall__kmod_tcp_hybla__604_189_hybla_register6, ptr @__param_rtt0, ptr @hybla_unregister, ptr @rtt0, ptr @hybla_fraction.fractions], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtt0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybla_fraction.fractions to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hybla_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_hybla) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hybla_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_hybla) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_ssthresh(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hybla_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %srtt_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %srtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srtt_us, align 8
  %minrtt_us = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %2 = ptrtoint ptr %minrtt_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minrtt_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i32, ptr @rtt0, align 4
  %mul.i = mul i32 %4, 1000
  %div.i = udiv i32 %1, %mul.i
  %5 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 8) #6
  %rho_3ls.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %rho_3ls.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rho_3ls.i, align 4
  %shr.i = lshr i32 %5, 3
  %rho.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %rho.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr.i, ptr %rho.i, align 4
  %mul5.i = shl i32 %5, 1
  %shl.i = mul i32 %mul5.i, %5
  %rho2_7ls.i = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 5
  %8 = ptrtoint ptr %rho2_7ls.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl.i, ptr %rho2_7ls.i, align 4
  %shr7.i = lshr i32 %shl.i, 7
  %rho2.i = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 3
  %9 = ptrtoint ptr %rho2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr7.i, ptr %rho2.i, align 4
  %10 = ptrtoint ptr %minrtt_us to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %minrtt_us, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %11 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %13 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i.i = icmp ult i32 %12, %14
  br i1 %cmp.i.i, label %if.then.i, label %tcp_is_cwnd_limited.exit

if.then.i:                                        ; preds = %if.end
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %15 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_packets_out.i, align 4
  %mul.i117 = shl i32 %16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul.i117)
  %cmp.i = icmp ult i32 %12, %mul.i117
  br i1 %cmp.i, label %if.then.i.if.end6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

tcp_is_cwnd_limited.exit:                         ; preds = %if.end
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %17 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %tcp_is_cwnd_limited.exit.if.end6_crit_edge

tcp_is_cwnd_limited.exit.if.end6_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %tcp_is_cwnd_limited.exit.if.end6_crit_edge, %if.then.i.if.end6_crit_edge
  %18 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %icsk_ca_priv.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %rho = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %rho to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rho, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9 = icmp eq i32 %21, 0
  br i1 %cmp9, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %22 = load i32, ptr @rtt0, align 4
  %mul.i120 = mul i32 %22, 1000
  %div.i121 = udiv i32 %1, %mul.i120
  %23 = tail call i32 @llvm.umax.i32(i32 %div.i121, i32 8) #6
  %rho_3ls.i122 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %24 = ptrtoint ptr %rho_3ls.i122 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rho_3ls.i122, align 4
  %shr.i123 = lshr i32 %23, 3
  %25 = ptrtoint ptr %rho to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i123, ptr %rho, align 4
  %mul5.i125 = shl i32 %23, 1
  %shl.i126 = mul i32 %mul5.i125, %23
  %rho2_7ls.i127 = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 5
  %26 = ptrtoint ptr %rho2_7ls.i127 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl.i126, ptr %rho2_7ls.i127, align 4
  %shr7.i128 = lshr i32 %shl.i126, 7
  %rho2.i129 = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 3
  %27 = ptrtoint ptr %rho2.i129 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr7.i128, ptr %rho2.i129, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %rho_3ls = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %28 = ptrtoint ptr %rho_3ls to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rho_3ls, align 4
  %30 = ptrtoint ptr %rho to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rho, align 4
  %shl.neg = mul i32 %31, -8
  %sub = add i32 %shl.neg, %29
  br i1 %cmp.i.i, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp.i131 = icmp ult i32 %sub, 8
  br i1 %cmp.i131, label %cond.true.i, label %if.then14.hybla_fraction.exit_crit_edge

if.then14.hybla_fraction.exit_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %hybla_fraction.exit

cond.true.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [8 x i32], ptr @hybla_fraction.fractions, i32 0, i32 %sub
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  br label %hybla_fraction.exit

hybla_fraction.exit:                              ; preds = %cond.true.i, %if.then14.hybla_fraction.exit_crit_edge
  %cond.i = phi i32 [ %34, %cond.true.i ], [ 128, %if.then14.hybla_fraction.exit_crit_edge ]
  %mul = shl i32 %cond.i, %32
  %sub19 = add i32 %mul, -128
  br label %if.end23

if.else:                                          ; preds = %if.end11
  %rho2_7ls = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 5
  %35 = ptrtoint ptr %rho2_7ls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rho2_7ls, align 4
  %div = udiv i32 %36, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div)
  %cmp20 = icmp ult i32 %div, 128
  br i1 %cmp20, label %if.then21, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %snd_cwnd_cnt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %37 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %snd_cwnd_cnt, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %snd_cwnd_cnt, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.else.if.end23_crit_edge, %hybla_fraction.exit
  %increment.0 = phi i32 [ %sub19, %hybla_fraction.exit ], [ %div, %if.then21 ], [ %div, %if.else.if.end23_crit_edge ]
  %rem = and i32 %increment.0, 127
  %shr = lshr i32 %increment.0, 7
  %add = add i32 %shr, %12
  %39 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %snd_cwnd.i.i, align 8
  %snd_cwnd_cents = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 1
  %40 = ptrtoint ptr %snd_cwnd_cents to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %snd_cwnd_cents, align 4
  %add25 = add i32 %41, %rem
  store i32 %add25, ptr %snd_cwnd_cents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add25)
  %cmp27132 = icmp ugt i32 %add25, 127
  br i1 %cmp27132, label %while.body.lr.ph, label %if.end23.while.end_crit_edge

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %snd_cwnd.i.i.promoted = load i32, ptr %snd_cwnd.i.i, align 8
  %43 = add i32 %add25, -128
  %44 = lshr i32 %43, 7
  %45 = add i32 %snd_cwnd.i.i.promoted, %44
  %snd_cwnd_cnt32 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %46 = add i32 %45, 1
  %47 = and i32 %add25, 127
  store i32 %46, ptr %snd_cwnd.i.i, align 8
  %48 = ptrtoint ptr %snd_cwnd_cents to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %snd_cwnd_cents, align 4
  %49 = ptrtoint ptr %snd_cwnd_cnt32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %snd_cwnd_cnt32, align 4
  br label %while.end

while.end:                                        ; preds = %while.body.lr.ph, %if.end23.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %increment.0)
  %50 = icmp eq i32 %increment.0, 0
  br i1 %50, label %land.lhs.true35, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.lhs.true35:                                  ; preds = %while.end
  %snd_cwnd_cnt36 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %51 = ptrtoint ptr %snd_cwnd_cnt36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %snd_cwnd_cnt36, align 4
  %53 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %snd_cwnd.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp38.not = icmp ult i32 %52, %54
  br i1 %cmp38.not, label %land.lhs.true35.if.end43_crit_edge, label %if.then39

land.lhs.true35.if.end43_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %inc41 = add i32 %54, 1
  %55 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc41, ptr %snd_cwnd.i.i, align 8
  %56 = ptrtoint ptr %snd_cwnd_cnt36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %snd_cwnd_cnt36, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %land.lhs.true35.if.end43_crit_edge, %while.end.if.end43_crit_edge
  br i1 %cmp.i.i, label %if.then45, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %snd_cwnd.i.i, align 8
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %14)
  %60 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %snd_cwnd.i.i, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end43.if.end54_crit_edge
  %61 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %63 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %snd_cwnd_clamp, align 8
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %64)
  %66 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %snd_cwnd.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then7, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @hybla_state(ptr nocapture noundef writeonly %sk, i8 noundef zeroext %ca_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ca_state)
  %cmp = icmp eq i8 %ca_state, 0
  %frombool = zext i1 %cmp to i8
  %0 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %icsk_ca_priv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hybla_init(ptr nocapture noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rho = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %rho2 = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 3
  %rho_3ls = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %rho2_7ls = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 5
  %snd_cwnd_cents = getelementptr inbounds %struct.hybla, ptr %icsk_ca_priv.i, i32 0, i32 1
  %0 = ptrtoint ptr %snd_cwnd_cents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %snd_cwnd_cents, align 4
  %1 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %icsk_ca_priv.i, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %2 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65535, ptr %snd_cwnd_clamp, align 8
  %srtt_us.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 45
  %3 = ptrtoint ptr %srtt_us.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srtt_us.i, align 8
  %5 = load i32, ptr @rtt0, align 4
  %mul.i = mul i32 %5, 1000
  %div.i = udiv i32 %4, %mul.i
  %6 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 8) #6
  %7 = ptrtoint ptr %rho_3ls to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rho_3ls, align 4
  %shr.i = lshr i32 %6, 3
  %8 = ptrtoint ptr %rho to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr.i, ptr %rho, align 4
  %mul5.i = shl i32 %6, 1
  %shl.i = mul i32 %mul5.i, %6
  %9 = ptrtoint ptr %rho2_7ls to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl.i, ptr %rho2_7ls, align 4
  %shr7.i = lshr i32 %shl.i, 7
  %10 = ptrtoint ptr %rho2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr7.i, ptr %rho2, align 4
  %minrtt_us = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %11 = ptrtoint ptr %minrtt_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %4, ptr %minrtt_us, align 4
  %12 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr.i, ptr %snd_cwnd, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__param_rtt0, !1, !"__param_rtt0", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_hybla.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_rtt0type593, !1, !"__UNIQUE_ID_rtt0type593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rtt0594, !4, !"__UNIQUE_ID_rtt0594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_hybla.c", i32 31, i32 1}
!5 = !{ptr @__initcall__kmod_tcp_hybla__604_189_hybla_register6, !6, !"__initcall__kmod_tcp_hybla__604_189_hybla_register6", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_hybla.c", i32 189, i32 1}
!7 = !{ptr @__exitcall_hybla_unregister, !8, !"__exitcall_hybla_unregister", i1 false, i1 false}
!8 = !{!"../net/ipv4/tcp_hybla.c", i32 190, i32 1}
!9 = !{ptr @__UNIQUE_ID_author605, !10, !"__UNIQUE_ID_author605", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_hybla.c", i32 192, i32 1}
!11 = !{ptr @__UNIQUE_ID_file606, !12, !"__UNIQUE_ID_file606", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_hybla.c", i32 193, i32 1}
!13 = !{ptr @__UNIQUE_ID_license607, !12, !"__UNIQUE_ID_license607", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description608, !15, !"__UNIQUE_ID_description608", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_hybla.c", i32 194, i32 1}
!16 = !{ptr @__param_str_rtt0, !1, !"__param_str_rtt0", i1 false, i1 false}
!17 = !{ptr @rtt0, !18, !"rtt0", i1 false, i1 false}
!18 = !{!"../net/ipv4/tcp_hybla.c", i32 29, i32 12}
!19 = !{ptr @tcp_hybla, !20, !"tcp_hybla", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_hybla.c", i32 167, i32 34}
!21 = !{ptr @hybla_fraction.fractions, !22, !"fractions", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_hybla.c", i32 77, i32 19}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
