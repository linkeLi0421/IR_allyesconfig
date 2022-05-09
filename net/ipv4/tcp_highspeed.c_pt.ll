; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_highspeed.c_pt.bc'
source_filename = "../net/ipv4/tcp_highspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.hstcp_aimd_val = type { i32, i32 }
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

@tcp_highspeed = internal global %struct.tcp_congestion_ops { ptr @hstcp_ssthresh, ptr @hstcp_cong_avoid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"highspeed\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @hstcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_highspeed__598_181_hstcp_register6 = internal global ptr @hstcp_register, section ".initcall6.init", align 4
@__exitcall_hstcp_unregister = internal global ptr @hstcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author599 = internal constant [34 x i8] c"tcp_highspeed.author=John Heffner\00", section ".modinfo", align 1
@__UNIQUE_ID_file600 = internal constant [42 x i8] c"tcp_highspeed.file=net/ipv4/tcp_highspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license601 = internal constant [26 x i8] c"tcp_highspeed.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description602 = internal constant [41 x i8] c"tcp_highspeed.description=High Speed TCP\00", section ".modinfo", align 1
@hstcp_aimd_vals = internal constant { [72 x %struct.hstcp_aimd_val], [128 x i8] } { [72 x %struct.hstcp_aimd_val] [%struct.hstcp_aimd_val { i32 38, i32 128 }, %struct.hstcp_aimd_val { i32 118, i32 112 }, %struct.hstcp_aimd_val { i32 221, i32 104 }, %struct.hstcp_aimd_val { i32 347, i32 98 }, %struct.hstcp_aimd_val { i32 495, i32 93 }, %struct.hstcp_aimd_val { i32 663, i32 89 }, %struct.hstcp_aimd_val { i32 851, i32 86 }, %struct.hstcp_aimd_val { i32 1058, i32 83 }, %struct.hstcp_aimd_val { i32 1284, i32 81 }, %struct.hstcp_aimd_val { i32 1529, i32 78 }, %struct.hstcp_aimd_val { i32 1793, i32 76 }, %struct.hstcp_aimd_val { i32 2076, i32 74 }, %struct.hstcp_aimd_val { i32 2378, i32 72 }, %struct.hstcp_aimd_val { i32 2699, i32 71 }, %struct.hstcp_aimd_val { i32 3039, i32 69 }, %struct.hstcp_aimd_val { i32 3399, i32 68 }, %struct.hstcp_aimd_val { i32 3778, i32 66 }, %struct.hstcp_aimd_val { i32 4177, i32 65 }, %struct.hstcp_aimd_val { i32 4596, i32 64 }, %struct.hstcp_aimd_val { i32 5036, i32 62 }, %struct.hstcp_aimd_val { i32 5497, i32 61 }, %struct.hstcp_aimd_val { i32 5979, i32 60 }, %struct.hstcp_aimd_val { i32 6483, i32 59 }, %struct.hstcp_aimd_val { i32 7009, i32 58 }, %struct.hstcp_aimd_val { i32 7558, i32 57 }, %struct.hstcp_aimd_val { i32 8130, i32 56 }, %struct.hstcp_aimd_val { i32 8726, i32 55 }, %struct.hstcp_aimd_val { i32 9346, i32 54 }, %struct.hstcp_aimd_val { i32 9991, i32 53 }, %struct.hstcp_aimd_val { i32 10661, i32 52 }, %struct.hstcp_aimd_val { i32 11358, i32 52 }, %struct.hstcp_aimd_val { i32 12082, i32 51 }, %struct.hstcp_aimd_val { i32 12834, i32 50 }, %struct.hstcp_aimd_val { i32 13614, i32 49 }, %struct.hstcp_aimd_val { i32 14424, i32 48 }, %struct.hstcp_aimd_val { i32 15265, i32 48 }, %struct.hstcp_aimd_val { i32 16137, i32 47 }, %struct.hstcp_aimd_val { i32 17042, i32 46 }, %struct.hstcp_aimd_val { i32 17981, i32 45 }, %struct.hstcp_aimd_val { i32 18955, i32 45 }, %struct.hstcp_aimd_val { i32 19965, i32 44 }, %struct.hstcp_aimd_val { i32 21013, i32 43 }, %struct.hstcp_aimd_val { i32 22101, i32 43 }, %struct.hstcp_aimd_val { i32 23230, i32 42 }, %struct.hstcp_aimd_val { i32 24402, i32 41 }, %struct.hstcp_aimd_val { i32 25618, i32 41 }, %struct.hstcp_aimd_val { i32 26881, i32 40 }, %struct.hstcp_aimd_val { i32 28193, i32 39 }, %struct.hstcp_aimd_val { i32 29557, i32 39 }, %struct.hstcp_aimd_val { i32 30975, i32 38 }, %struct.hstcp_aimd_val { i32 32450, i32 38 }, %struct.hstcp_aimd_val { i32 33986, i32 37 }, %struct.hstcp_aimd_val { i32 35586, i32 36 }, %struct.hstcp_aimd_val { i32 37253, i32 36 }, %struct.hstcp_aimd_val { i32 38992, i32 35 }, %struct.hstcp_aimd_val { i32 40808, i32 35 }, %struct.hstcp_aimd_val { i32 42707, i32 34 }, %struct.hstcp_aimd_val { i32 44694, i32 33 }, %struct.hstcp_aimd_val { i32 46776, i32 33 }, %struct.hstcp_aimd_val { i32 48961, i32 32 }, %struct.hstcp_aimd_val { i32 51258, i32 32 }, %struct.hstcp_aimd_val { i32 53677, i32 31 }, %struct.hstcp_aimd_val { i32 56230, i32 30 }, %struct.hstcp_aimd_val { i32 58932, i32 30 }, %struct.hstcp_aimd_val { i32 61799, i32 29 }, %struct.hstcp_aimd_val { i32 64851, i32 28 }, %struct.hstcp_aimd_val { i32 68113, i32 28 }, %struct.hstcp_aimd_val { i32 71617, i32 27 }, %struct.hstcp_aimd_val { i32 75401, i32 26 }, %struct.hstcp_aimd_val { i32 79517, i32 26 }, %struct.hstcp_aimd_val { i32 84035, i32 25 }, %struct.hstcp_aimd_val { i32 89053, i32 24 }], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"hstcp_aimd_vals\00", align 1
@___asan_gen_.2 = private constant [28 x i8] c"../net/ipv4/tcp_highspeed.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 19, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author599, ptr @__UNIQUE_ID_description602, ptr @__UNIQUE_ID_file600, ptr @__UNIQUE_ID_license601, ptr @__exitcall_hstcp_unregister, ptr @__initcall__kmod_tcp_highspeed__598_181_hstcp_register6, ptr @hstcp_unregister, ptr @hstcp_aimd_vals], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hstcp_aimd_vals to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hstcp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_highspeed) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hstcp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_highspeed) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hstcp_ssthresh(ptr nocapture noundef readonly %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd, align 8
  %2 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %icsk_ca_priv.i, align 4
  %md = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %md, align 4
  %mul = mul i32 %5, %1
  %shr = lshr i32 %mul, 8
  %sub = sub i32 %1, %shr
  %6 = tail call i32 @llvm.umax.i32(i32 %sub, i32 2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hstcp_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tcp_is_cwnd_limited.exit:                         ; preds = %entry
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %6 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %if.else

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #6
  br label %cleanup

if.else:                                          ; preds = %tcp_is_cwnd_limited.exit
  %7 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icsk_ca_priv.i, align 4
  %arrayidx = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %10)
  %cmp = icmp ugt i32 %1, %10
  br i1 %cmp, label %while.cond.preheader, label %if.else15

while.cond.preheader:                             ; preds = %if.else
  %11 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %icsk_ca_priv.i.promoted = load i32, ptr %icsk_ca_priv.i, align 4
  %arrayidx988 = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %icsk_ca_priv.i.promoted
  %12 = ptrtoint ptr %arrayidx988 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx988, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %13)
  %cmp1189 = icmp ugt i32 %1, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %icsk_ca_priv.i.promoted)
  %cmp1390 = icmp ult i32 %icsk_ca_priv.i.promoted, 71
  %or.cond91 = select i1 %cmp1189, i1 %cmp1390, i1 false
  br i1 %or.cond91, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end38_crit_edge

while.cond.preheader.if.end38_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %14 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %icsk_ca_priv.i.promoted, %while.cond.preheader.while.body_crit_edge ]
  %inc = add nuw nsw i32 %14, 1
  %arrayidx9 = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %inc
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %16)
  %cmp11 = icmp ugt i32 %1, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %14)
  %cmp13 = icmp ult i32 %14, 70
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.cond.if.end38.loopexit_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else15.if.end38_crit_edge, label %land.lhs.true

if.else15.if.end38_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else15
  %sub = add i32 %8, -1
  %arrayidx19 = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %18)
  %cmp21.not = icmp ugt i32 %1, %18
  br i1 %cmp21.not, label %land.lhs.true.if.end38_crit_edge, label %while.cond23thread-pre-split

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.cond23thread-pre-split:                     ; preds = %land.lhs.true
  %19 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %icsk_ca_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool25.not87 = icmp eq i32 %.pr, 0
  br i1 %tobool25.not87, label %while.cond23thread-pre-split.if.end38_crit_edge, label %while.cond23thread-pre-split.land.rhs26_crit_edge

while.cond23thread-pre-split.land.rhs26_crit_edge: ; preds = %while.cond23thread-pre-split
  br label %land.rhs26

while.cond23thread-pre-split.if.end38_crit_edge:  ; preds = %while.cond23thread-pre-split
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.rhs26:                                       ; preds = %while.body34.land.rhs26_crit_edge, %while.cond23thread-pre-split.land.rhs26_crit_edge
  %20 = phi i32 [ %sub29, %while.body34.land.rhs26_crit_edge ], [ %.pr, %while.cond23thread-pre-split.land.rhs26_crit_edge ]
  %sub29 = add i32 %20, -1
  %arrayidx30 = getelementptr [72 x %struct.hstcp_aimd_val], ptr @hstcp_aimd_vals, i32 0, i32 %sub29
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %22)
  %cmp32.not = icmp ugt i32 %1, %22
  br i1 %cmp32.not, label %land.rhs26.if.end38_crit_edge, label %while.body34

land.rhs26.if.end38_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.body34:                                     ; preds = %land.rhs26
  %23 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub29, ptr %icsk_ca_priv.i, align 4
  %tobool25.not = icmp eq i32 %sub29, 0
  br i1 %tobool25.not, label %while.body34.if.end38_crit_edge, label %while.body34.land.rhs26_crit_edge

while.body34.land.rhs26_crit_edge:                ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs26

while.body34.if.end38_crit_edge:                  ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

while.cond.if.end38.loopexit_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %icsk_ca_priv.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %while.cond.if.end38.loopexit_crit_edge, %while.body34.if.end38_crit_edge, %land.rhs26.if.end38_crit_edge, %while.cond23thread-pre-split.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.else15.if.end38_crit_edge, %while.cond.preheader.if.end38_crit_edge
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %25 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %snd_cwnd_clamp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %26)
  %cmp40 = icmp ult i32 %1, %26
  br i1 %cmp40, label %if.then41, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  %27 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %icsk_ca_priv.i, align 4
  %add = add i32 %28, 1
  %snd_cwnd_cnt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %29 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %snd_cwnd_cnt, align 4
  %add43 = add i32 %add, %30
  store i32 %add43, ptr %snd_cwnd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %1)
  %cmp46.not = icmp ult i32 %add43, %1
  br i1 %cmp46.not, label %if.then41.cleanup_crit_edge, label %if.then47

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %sub50 = sub i32 %add43, %1
  %31 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub50, ptr %snd_cwnd_cnt, align 4
  %inc52 = add nuw i32 %1, 1
  %32 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc52, ptr %snd_cwnd.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then4, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hstcp_init(ptr nocapture noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %icsk_ca_priv.i, align 4
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %1 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snd_cwnd_clamp, align 8
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 33554431)
  %4 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %snd_cwnd_clamp, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_tcp_highspeed__598_181_hstcp_register6, !1, !"__initcall__kmod_tcp_highspeed__598_181_hstcp_register6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_highspeed.c", i32 181, i32 1}
!2 = !{ptr @__exitcall_hstcp_unregister, !3, !"__exitcall_hstcp_unregister", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_highspeed.c", i32 182, i32 1}
!4 = !{ptr @__UNIQUE_ID_author599, !5, !"__UNIQUE_ID_author599", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_highspeed.c", i32 184, i32 1}
!6 = !{ptr @__UNIQUE_ID_file600, !7, !"__UNIQUE_ID_file600", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_highspeed.c", i32 185, i32 1}
!8 = !{ptr @__UNIQUE_ID_license601, !7, !"__UNIQUE_ID_license601", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description602, !10, !"__UNIQUE_ID_description602", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_highspeed.c", i32 186, i32 1}
!11 = !{ptr @tcp_highspeed, !12, !"tcp_highspeed", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_highspeed.c", i32 160, i32 34}
!13 = !{ptr @hstcp_aimd_vals, !14, !"hstcp_aimd_vals", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_highspeed.c", i32 19, i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
