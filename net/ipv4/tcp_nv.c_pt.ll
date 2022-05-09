; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_nv.c_pt.bc'
source_filename = "../net/ipv4/tcp_nv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%struct.atomic_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.tcpnv = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
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
%struct.bpf_sock_ops_kern = type { ptr, %union.anon.200, ptr, ptr, ptr, i8, i8, i8, i64 }
%union.anon.200 = type { [4 x i32] }

@__param_str_nv_pad = internal constant [14 x i8] c"tcp_nv.nv_pad\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nv_pad = internal global i32 10, section ".data..read_mostly", align 4
@__param_nv_pad = internal constant %struct.kernel_param { ptr @__param_str_nv_pad, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @nv_pad } }, section "__param", align 4
@__UNIQUE_ID_nv_padtype593 = internal constant [27 x i8] c"tcp_nv.parmtype=nv_pad:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nv_pad594 = internal constant [57 x i8] c"tcp_nv.parm=nv_pad:max queued packets allowed in network\00", section ".modinfo", align 1
@__param_str_nv_reset_period = internal constant [23 x i8] c"tcp_nv.nv_reset_period\00", align 1
@nv_reset_period = internal global i32 5, section ".data..read_mostly", align 4
@__param_nv_reset_period = internal constant %struct.kernel_param { ptr @__param_str_nv_reset_period, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @nv_reset_period } }, section "__param", align 4
@__UNIQUE_ID_nv_reset_periodtype595 = internal constant [36 x i8] c"tcp_nv.parmtype=nv_reset_period:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nv_reset_period596 = internal constant [59 x i8] c"tcp_nv.parm=nv_reset_period:nv_min_rtt reset period (secs)\00", section ".modinfo", align 1
@__param_str_nv_min_cwnd = internal constant [19 x i8] c"tcp_nv.nv_min_cwnd\00", align 1
@nv_min_cwnd = internal global i32 2, section ".data..read_mostly", align 4
@__param_nv_min_cwnd = internal constant %struct.kernel_param { ptr @__param_str_nv_min_cwnd, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @nv_min_cwnd } }, section "__param", align 4
@__UNIQUE_ID_nv_min_cwndtype597 = internal constant [32 x i8] c"tcp_nv.parmtype=nv_min_cwnd:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nv_min_cwnd598 = internal constant [82 x i8] c"tcp_nv.parm=nv_min_cwnd:NV will not decrease cwnd below this value without losses\00", section ".modinfo", align 1
@tcpnv = internal global %struct.tcp_congestion_ops { ptr @tcpnv_recalc_ssthresh, ptr @tcpnv_cong_avoid, ptr @tcpnv_state, ptr null, ptr null, ptr @tcpnv_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @tcpnv_get_info, [16 x i8] c"nv\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcpnv_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_nv__610_495_tcpnv_register6 = internal global ptr @tcpnv_register, section ".initcall6.init", align 4
@__exitcall_tcpnv_unregister = internal global ptr @tcpnv_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author611 = internal constant [30 x i8] c"tcp_nv.author=Lawrence Brakmo\00", section ".modinfo", align 1
@__UNIQUE_ID_file612 = internal constant [28 x i8] c"tcp_nv.file=net/ipv4/tcp_nv\00", section ".modinfo", align 1
@__UNIQUE_ID_license613 = internal constant [19 x i8] c"tcp_nv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description614 = internal constant [26 x i8] c"tcp_nv.description=TCP NV\00", section ".modinfo", align 1
@__UNIQUE_ID_version615 = internal constant [19 x i8] c"tcp_nv.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcp_nv\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private constant [21 x i8] c"../net/ipv4/tcp_nv.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 501, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 1750, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author611, ptr @__UNIQUE_ID_description614, ptr @__UNIQUE_ID_file612, ptr @__UNIQUE_ID_license613, ptr @__UNIQUE_ID_nv_min_cwnd598, ptr @__UNIQUE_ID_nv_min_cwndtype597, ptr @__UNIQUE_ID_nv_pad594, ptr @__UNIQUE_ID_nv_padtype593, ptr @__UNIQUE_ID_nv_reset_period596, ptr @__UNIQUE_ID_nv_reset_periodtype595, ptr @__UNIQUE_ID_version615, ptr @__exitcall_tcpnv_unregister, ptr @__initcall__kmod_tcp_nv__610_495_tcpnv_register6, ptr @__modver_attr, ptr @__param_nv_min_cwnd, ptr @__param_nv_pad, ptr @__param_nv_reset_period, ptr @tcpnv_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nv_get_bounded_rtt(ptr nocapture noundef readonly %ca, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %nv_lower_bound_rtt = getelementptr inbounds %struct.tcpnv, ptr %ca, i32 0, i32 12
  %0 = ptrtoint ptr %nv_lower_bound_rtt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nv_lower_bound_rtt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %val)
  %cmp2 = icmp ugt i32 %1, %val
  br i1 %cmp2, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nv_base_rtt = getelementptr inbounds %struct.tcpnv, ptr %ca, i32 0, i32 11
  %2 = ptrtoint ptr %nv_base_rtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nv_base_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val)
  %cmp7 = icmp ult i32 %3, %val
  %or.cond19 = and i1 %cmp4.not, %cmp7
  %spec.select = select i1 %or.cond19, i32 %3, i32 %val
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %entry.return_crit_edge ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpnv_unregister() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcpnv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpnv_register() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcpnv) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcpnv_recalc_ssthresh(ptr nocapture noundef readonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd, align 8
  %mul = mul i32 %1, 819
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %mul)
  %cmp = icmp ugt i32 %mul, 3071
  %shr = lshr i32 %mul, 10
  %cond = select i1 %cmp, i32 %shr, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpnv_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.i, label %if.end, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tcp_is_cwnd_limited.exit:                         ; preds = %entry
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %6 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %if.end.thread

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %nv_allow_cwnd_growth = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %nv_allow_cwnd_growth to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %nv_allow_cwnd_growth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread:                                    ; preds = %tcp_is_cwnd_limited.exit
  %nv_allow_cwnd_growth41 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %nv_allow_cwnd_growth41 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load42 = load i8, ptr %nv_allow_cwnd_growth41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %tobool.not43 = icmp sgt i8 %bf.load42, -1
  br i1 %tobool.not43, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.if.end11_crit_edge

if.end.thread.if.end11_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.thread.if.end11_crit_edge
  %acked.addr.0 = phi i32 [ %call7, %if.then6.if.end11_crit_edge ], [ %acked, %if.end.thread.if.end11_crit_edge ]
  %cwnd_growth_factor = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 1
  %9 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cwnd_growth_factor, align 4
  %conv = sext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp slt i8 %10, 0
  %11 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_cwnd.i.i, align 8
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nsw i32 0, %conv
  %shl = shl i32 %12, %sub
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %12, %conv
  %13 = tail call i32 @llvm.umax.i32(i32 %shr, i32 4)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then13
  %shl.sink = phi i32 [ %shl, %if.then13 ], [ %13, %if.else ]
  tail call void @tcp_cong_avoid_ai(ptr noundef %sk, i32 noundef %shl.sink, i32 noundef %acked.addr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcpnv_state(ptr nocapture noundef %sk, i8 noundef zeroext %new_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %nv_reset = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %nv_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %nv_reset, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end41_crit_edge, label %if.then

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i = and i8 %bf.load, -65
  %2 = ptrtoint ptr %nv_reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.clear.i, ptr %nv_reset, align 4
  %nv_no_cong_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 16
  %3 = ptrtoint ptr %nv_no_cong_cnt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nv_no_cong_cnt.i, align 4
  %nv_rtt_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 7
  %4 = ptrtoint ptr %nv_rtt_cnt.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %nv_rtt_cnt.i, align 1
  %nv_last_rtt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 8
  %5 = ptrtoint ptr %nv_last_rtt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nv_last_rtt.i, align 4
  %nv_rtt_max_rate.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %6 = ptrtoint ptr %nv_rtt_max_rate.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nv_rtt_max_rate.i, align 4
  %snd_una.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %7 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_una.i, align 4
  %nv_rtt_start_seq.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 14
  %9 = ptrtoint ptr %nv_rtt_start_seq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nv_rtt_start_seq.i, align 4
  %nv_eval_call_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 5
  %10 = ptrtoint ptr %nv_eval_call_cnt.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %nv_eval_call_cnt.i, align 1
  %nv_last_snd_una.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %11 = ptrtoint ptr %nv_last_snd_una.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %nv_last_snd_una.i, align 4
  br label %if.end41

if.else:                                          ; preds = %entry
  %new_state.off = add i8 %new_state, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_state.off)
  %switch = icmp ult i8 %new_state.off, 3
  br i1 %switch, label %if.then13, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp4 = icmp eq i8 %new_state, 4
  %nv_reset14 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %nv_reset14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load15 = load i8, ptr %nv_reset14, align 4
  %bf.set = and i8 %bf.load15, 63
  %bf.clear18 = or i8 %bf.set, 64
  store i8 %bf.clear18, ptr %nv_reset14, align 4
  br i1 %cmp4, label %if.then23, label %if.then13.if.end41_crit_edge

if.then13.if.end41_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then23:                                        ; preds = %if.then13
  %cwnd_growth_factor = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 1
  %13 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cwnd_growth_factor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp25 = icmp sgt i8 %14, 0
  br i1 %cmp25, label %if.then23.if.then36_crit_edge, label %land.lhs.true31

if.then23.if.then36_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

land.lhs.true31:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %14)
  %cmp34 = icmp sgt i8 %14, -8
  br i1 %cmp34, label %land.lhs.true31.if.then36_crit_edge, label %land.lhs.true31.if.end41_crit_edge

land.lhs.true31.if.end41_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true31.if.then36_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true31.if.then36_crit_edge, %if.then23.if.then36_crit_edge
  %15 = phi i8 [ %14, %land.lhs.true31.if.then36_crit_edge ], [ 0, %if.then23.if.then36_crit_edge ]
  %dec = add nsw i8 %15, -1
  %16 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %dec, ptr %cwnd_growth_factor, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %land.lhs.true31.if.end41_crit_edge, %if.then13.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then, %land.lhs.true.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpnv_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #4 align 64 {
entry:
  %rand = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %1 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %3 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %cmp3.not = icmp ult i8 %bf.load, 8
  %bf.lshr.mask = and i8 %bf.load, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.lshr.mask)
  %cmp9.not = icmp eq i8 %bf.lshr.mask, 8
  %or.cond = or i1 %cmp3.not, %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %nv_catchup = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load13 = load i8, ptr %nv_catchup, align 4
  %5 = and i8 %bf.load13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end12.if.end26_crit_edge, label %land.lhs.true16

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true16:                                  ; preds = %if.end12
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %6 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_cwnd, align 8
  %8 = load i32, ptr @nv_min_cwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp17.not = icmp ult i32 %7, %8
  br i1 %cmp17.not, label %land.lhs.true16.if.end26_crit_edge, label %if.then19

land.lhs.true16.if.end26_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear24 = and i8 %bf.load13, 95
  %9 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear24, ptr %nv_catchup, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %land.lhs.true16.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %10 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_una, align 4
  %nv_last_snd_una = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %nv_last_snd_una to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nv_last_snd_una, align 4
  %sub = sub i32 %11, %13
  store i32 %11, ptr %nv_last_snd_una, align 4
  %in_flight = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 2
  %14 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp29 = icmp eq i32 %15, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.then35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.end26
  %nv_last_rtt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 8
  %16 = ptrtoint ptr %nv_last_rtt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nv_last_rtt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp36.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rtt_us, align 4
  br i1 %cmp36.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %conv40 = sext i32 %19 to i64
  %conv43 = zext i32 %17 to i64
  %mul718 = add nsw i64 %conv40, %conv43
  %20 = lshr i64 %mul718, 1
  %conv47 = trunc i64 %20 to i32
  br label %if.end49

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %19, 1
  %nv_min_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %21 = ptrtoint ptr %nv_min_rtt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %nv_min_rtt, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then38
  %avg_rtt.0 = phi i32 [ %conv47, %if.then38 ], [ %19, %if.else ]
  %22 = ptrtoint ptr %nv_last_rtt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %avg_rtt.0, ptr %nv_last_rtt, align 4
  %23 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_flight, align 4
  %conv55 = zext i32 %24 to i64
  %mul56 = mul nuw nsw i64 %conv55, 80000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avg_rtt.0)
  %tobool57.not = icmp eq i32 %avg_rtt.0, 0
  %. = select i1 %tobool57.not, i32 1, i32 %avg_rtt.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul56)
  %cmp239 = icmp ult i64 %mul56, 4294967296
  br i1 %cmp239, label %if.then243, label %if.else249, !prof !79

if.then243:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %conv244 = trunc i64 %mul56 to i32
  %div247 = udiv i32 %conv244, %.
  br label %if.end253

if.else249:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %., i64 %mul56) #12, !srcloc !80
  %asmresult1.i = extractvalue { i64, i64 } %25, 1
  %extract.t749 = trunc i64 %asmresult1.i to i32
  br label %if.end253

if.end253:                                        ; preds = %if.else249, %if.then243
  %rate64.0.off0 = phi i32 [ %div247, %if.then243 ], [ %extract.t749, %if.else249 ]
  %nv_rtt_max_rate = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %26 = ptrtoint ptr %nv_rtt_max_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nv_rtt_max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %rate64.0.off0)
  %cmp256 = icmp ult i32 %27, %rate64.0.off0
  br i1 %cmp256, label %if.then258, label %if.end253.if.end260_crit_edge

if.end253.if.end260_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end260

if.then258:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %nv_rtt_max_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rate64.0.off0, ptr %nv_rtt_max_rate, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %if.end253.if.end260_crit_edge
  %nv_eval_call_cnt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 5
  %29 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nv_eval_call_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp262.not = icmp eq i8 %30, -1
  br i1 %cmp262.not, label %if.end260.if.end266_crit_edge, label %if.then264

if.end260.if.end266_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end266

if.then264:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i8 %30, 1
  %31 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %inc, ptr %nv_eval_call_cnt, align 1
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %if.end260.if.end266_crit_edge
  %nv_lower_bound_rtt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 12
  %32 = ptrtoint ptr %nv_lower_bound_rtt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nv_lower_bound_rtt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %avg_rtt.0)
  %cmp2.i = icmp ugt i32 %33, %avg_rtt.0
  br i1 %cmp2.i, label %if.end266.nv_get_bounded_rtt.exit_crit_edge, label %if.else.i723

if.end266.nv_get_bounded_rtt.exit_crit_edge:      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #11
  br label %nv_get_bounded_rtt.exit

if.else.i723:                                     ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #11
  %nv_base_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %34 = ptrtoint ptr %nv_base_rtt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nv_base_rtt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.not.i = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %avg_rtt.0)
  %cmp7.i = icmp ult i32 %35, %avg_rtt.0
  %or.cond19.i = and i1 %cmp4.not.i, %cmp7.i
  %spec.select.i = select i1 %or.cond19.i, i32 %35, i32 %avg_rtt.0
  br label %nv_get_bounded_rtt.exit

nv_get_bounded_rtt.exit:                          ; preds = %if.else.i723, %if.end266.nv_get_bounded_rtt.exit_crit_edge
  %retval.0.i = phi i32 [ %33, %if.end266.nv_get_bounded_rtt.exit_crit_edge ], [ %spec.select.i, %if.else.i723 ]
  %nv_min_rtt268 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %36 = ptrtoint ptr %nv_min_rtt268 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nv_min_rtt268, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %37)
  %cmp269 = icmp ult i32 %retval.0.i, %37
  br i1 %cmp269, label %if.then271, label %nv_get_bounded_rtt.exit.if.end273_crit_edge

nv_get_bounded_rtt.exit.if.end273_crit_edge:      ; preds = %nv_get_bounded_rtt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end273

if.then271:                                       ; preds = %nv_get_bounded_rtt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %nv_min_rtt268 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i, ptr %nv_min_rtt268, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %nv_get_bounded_rtt.exit.if.end273_crit_edge
  %nv_min_rtt_new = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 10
  %39 = ptrtoint ptr %nv_min_rtt_new to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nv_min_rtt_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %40)
  %cmp274 = icmp ult i32 %retval.0.i, %40
  br i1 %cmp274, label %if.then276, label %if.end273.if.end278_crit_edge

if.end273.if.end278_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278

if.then276:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %nv_min_rtt_new to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i, ptr %nv_min_rtt_new, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.end273.if.end278_crit_edge
  %42 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %icsk_ca_priv.i, align 4
  %sub279 = sub i32 %0, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub279)
  %cmp280 = icmp sgt i32 %sub279, -1
  br i1 %cmp280, label %if.then282, label %if.end278.if.end304_crit_edge

if.end278.if.end304_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end304

if.then282:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rand) #9
  %44 = ptrtoint ptr %rand to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %rand, align 1, !annotation !81
  %45 = ptrtoint ptr %nv_min_rtt_new to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nv_min_rtt_new, align 4
  %47 = ptrtoint ptr %nv_min_rtt268 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %nv_min_rtt268, align 4
  store i32 -1, ptr %nv_min_rtt_new, align 4
  call void @get_random_bytes(ptr noundef nonnull %rand, i32 noundef 1) #9
  %48 = load i32, ptr @nv_reset_period, align 4
  %49 = ptrtoint ptr %rand to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rand, align 1
  %conv286 = zext i8 %50 to i32
  %add287 = add nuw nsw i32 %conv286, 384
  %mul288 = mul i32 %48, 100
  %mul289 = mul i32 %mul288, %add287
  %shr290 = ashr i32 %mul289, 9
  %add291 = add i32 %shr290, %0
  %51 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add291, ptr %icsk_ca_priv.i, align 4
  %nv_min_cwnd = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 6
  %52 = ptrtoint ptr %nv_min_cwnd to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nv_min_cwnd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %53)
  %cmp296 = icmp ugt i8 %53, 9
  %54 = lshr i8 %53, 1
  %cond301 = select i1 %cmp296, i8 %54, i8 4
  %55 = ptrtoint ptr %nv_min_cwnd to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %cond301, ptr %nv_min_cwnd, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rand) #9
  br label %if.end304

if.end304:                                        ; preds = %if.then282, %if.end278.if.end304_crit_edge
  %nv_rtt_start_seq = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 14
  %56 = ptrtoint ptr %nv_rtt_start_seq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nv_rtt_start_seq, align 4
  %58 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %snd_una, align 4
  %sub.i724 = sub i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i724)
  %cmp.i = icmp slt i32 %sub.i724, 0
  br i1 %cmp.i, label %if.then307, label %if.end304.cleanup_crit_edge

if.end304.cleanup_crit_edge:                      ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then307:                                       ; preds = %if.end304
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %60 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %snd_nxt, align 4
  %62 = ptrtoint ptr %nv_rtt_start_seq to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %nv_rtt_start_seq, align 4
  %nv_rtt_cnt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 7
  %63 = ptrtoint ptr %nv_rtt_cnt to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nv_rtt_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp310.not = icmp eq i8 %64, -1
  br i1 %cmp310.not, label %if.then307.if.end315_crit_edge, label %if.then312

if.then307.if.end315_crit_edge:                   ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end315

if.then312:                                       ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #11
  %inc314 = add nuw i8 %64, 1
  %65 = ptrtoint ptr %nv_rtt_cnt to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %inc314, ptr %nv_rtt_cnt, align 1
  br label %if.end315

if.end315:                                        ; preds = %if.then312, %if.then307.if.end315_crit_edge
  %66 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nv_eval_call_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp318 = icmp eq i8 %67, 1
  br i1 %cmp318, label %land.lhs.true320, label %if.end315.if.end357_crit_edge

if.end315.if.end357_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end357

land.lhs.true320:                                 ; preds = %if.end315
  %nv_min_cwnd321 = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 6
  %68 = ptrtoint ptr %nv_min_cwnd321 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nv_min_cwnd321, align 2
  %conv322 = zext i8 %69 to i32
  %sub323 = add nsw i32 %conv322, -1
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %70 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mss_cache, align 4
  %mul324 = mul i32 %sub323, %71
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul324)
  %cmp325.not = icmp uge i32 %sub, %mul324
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %69)
  %cmp330 = icmp ult i8 %69, 81
  %or.cond719 = select i1 %cmp325.not, i1 %cmp330, i1 false
  br i1 %or.cond719, label %if.then332, label %land.lhs.true320.if.end357_crit_edge

land.lhs.true320.if.end357_crit_edge:             ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end357

if.then332:                                       ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %69)
  %cmp337 = icmp ult i8 %69, 79
  %add335 = add nuw nsw i8 %69, 2
  %cond342 = select i1 %cmp337, i8 %add335, i8 81
  %72 = ptrtoint ptr %nv_min_cwnd321 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %cond342, ptr %nv_min_cwnd321, align 2
  %conv347 = zext i8 %cond342 to i32
  %mul349 = mul i32 %71, %conv347
  %add350 = add i32 %mul349, %61
  %73 = ptrtoint ptr %nv_rtt_start_seq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add350, ptr %nv_rtt_start_seq, align 4
  %74 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %nv_eval_call_cnt, align 1
  %75 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load354 = load i8, ptr %nv_catchup, align 4
  %bf.set356 = or i8 %bf.load354, -128
  store i8 %bf.set356, ptr %nv_catchup, align 4
  br label %cleanup

if.end357:                                        ; preds = %land.lhs.true320.if.end357_crit_edge, %if.end315.if.end357_crit_edge
  %76 = ptrtoint ptr %nv_rtt_max_rate to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nv_rtt_max_rate, align 4
  %conv359 = zext i32 %77 to i64
  %78 = ptrtoint ptr %nv_min_rtt268 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nv_min_rtt268, align 4
  %conv361 = zext i32 %79 to i64
  %mul362 = mul nuw i64 %conv361, %conv359
  %mss_cache363 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %80 = ptrtoint ptr %mss_cache363 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mss_cache363, align 4
  %conv364 = zext i32 %81 to i64
  %mul365 = mul nuw nsw i64 %conv364, 80000
  %call366 = call i64 @div64_u64(i64 noundef %mul362, i64 noundef %mul365) #9
  %conv367 = trunc i64 %call366 to i32
  %82 = load i32, ptr @nv_pad, align 4
  %add368 = add i32 %82, %conv367
  %snd_cwnd369 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %83 = ptrtoint ptr %snd_cwnd369 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %snd_cwnd369, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %add368)
  %cmp370 = icmp ugt i32 %84, %add368
  br i1 %cmp370, label %if.then372, label %if.else451

if.then372:                                       ; preds = %if.end357
  %85 = ptrtoint ptr %nv_rtt_cnt to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nv_rtt_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp375 = icmp ult i8 %86, 2
  br i1 %cmp375, label %if.then372.cleanup_crit_edge, label %if.else378

if.then372.cleanup_crit_edge:                     ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else378:                                       ; preds = %if.then372
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %87 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %snd_ssthresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %88)
  %cmp379 = icmp eq i32 %88, 2147483647
  %89 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nv_eval_call_cnt, align 1
  br i1 %cmp379, label %if.then381, label %if.else388

if.then381:                                       ; preds = %if.else378
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %90)
  %cmp384 = icmp ult i8 %90, 30
  br i1 %cmp384, label %if.then381.cleanup_crit_edge, label %if.then381.if.end412_crit_edge

if.then381.if.end412_crit_edge:                   ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end412

if.then381.cleanup_crit_edge:                     ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else388:                                       ; preds = %if.else378
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %90)
  %cmp391 = icmp ult i8 %90, 60
  br i1 %cmp391, label %if.then393, label %if.else388.if.end412_crit_edge

if.else388.if.end412_crit_edge:                   ; preds = %if.else388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end412

if.then393:                                       ; preds = %if.else388
  %91 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load395 = load i8, ptr %nv_catchup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load395)
  %tobool398.not = icmp slt i8 %bf.load395, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %86)
  %cmp402 = icmp ugt i8 %86, 10
  %or.cond720 = select i1 %tobool398.not, i1 %cmp402, i1 false
  br i1 %or.cond720, label %if.then404, label %if.then393.cleanup_crit_edge

if.then393.cleanup_crit_edge:                     ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then404:                                       ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear407 = and i8 %bf.load395, 127
  %92 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %bf.clear407, ptr %nv_catchup, align 4
  br label %cleanup

if.end412:                                        ; preds = %if.else388.if.end412_crit_edge, %if.then381.if.end412_crit_edge
  %93 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load414 = load i8, ptr %nv_catchup, align 4
  %bf.clear415 = and i8 %bf.load414, 127
  store i8 %bf.clear415, ptr %nv_catchup, align 4
  %mul417 = and i32 %add368, 536870911
  %94 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul417, ptr %snd_ssthresh, align 4
  %sub421 = sub i32 %84, %add368
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub421)
  %cmp422 = icmp ugt i32 %sub421, 2
  br i1 %cmp422, label %if.then424, label %if.end412.if.end444_crit_edge

if.end412.if.end444_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end444

if.then424:                                       ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #11
  %mul427 = mul i32 %sub421, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mul427)
  %cmp430 = icmp ult i32 %mul427, 256
  %shr428 = lshr i32 %mul427, 7
  %cond435 = select i1 %cmp430, i32 2, i32 %shr428
  %sub437 = sub i32 %84, %cond435
  br label %if.end444

if.end444:                                        ; preds = %if.then424, %if.end412.if.end444_crit_edge
  %storemerge = phi i32 [ %sub437, %if.then424 ], [ %add368, %if.end412.if.end444_crit_edge ]
  %95 = ptrtoint ptr %snd_cwnd369 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %storemerge, ptr %snd_cwnd369, align 8
  %cwnd_growth_factor = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 1
  %96 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cwnd_growth_factor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp446 = icmp sgt i8 %97, 0
  br i1 %cmp446, label %if.then448, label %if.end444.if.end450_crit_edge

if.end444.if.end450_crit_edge:                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end450

if.then448:                                       ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %cwnd_growth_factor, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %if.end444.if.end450_crit_edge
  %nv_no_cong_cnt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 16
  br label %if.end504.sink.split

if.else451:                                       ; preds = %if.end357
  %sub453 = add i32 %add368, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %sub453)
  %cmp454.not = icmp ugt i32 %84, %sub453
  br i1 %cmp454.not, label %if.else451.cleanup_crit_edge, label %if.then456

if.else451.cleanup_crit_edge:                     ; preds = %if.else451
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then456:                                       ; preds = %if.else451
  %99 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %nv_eval_call_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %100)
  %cmp459 = icmp ult i8 %100, 20
  br i1 %cmp459, label %if.then456.cleanup_crit_edge, label %if.end462

if.then456.cleanup_crit_edge:                     ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end462:                                        ; preds = %if.then456
  %101 = ptrtoint ptr %nv_catchup to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load464 = load i8, ptr %nv_catchup, align 4
  %bf.set466 = or i8 %bf.load464, -128
  store i8 %bf.set466, ptr %nv_catchup, align 4
  %nv_no_cong_cnt467 = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 16
  %102 = ptrtoint ptr %nv_no_cong_cnt467 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nv_no_cong_cnt467, align 4
  %inc468 = add i32 %103, 1
  store i32 %inc468, ptr %nv_no_cong_cnt467, align 4
  %cwnd_growth_factor469 = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 1
  %104 = ptrtoint ptr %cwnd_growth_factor469 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cwnd_growth_factor469, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp471 = icmp slt i8 %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc468)
  %cmp478 = icmp ugt i32 %inc468, 8
  %or.cond721 = select i1 %cmp471, i1 %cmp478, i1 false
  br i1 %or.cond721, label %if.then480, label %if.end462.if.end504_crit_edge

if.end462.if.end504_crit_edge:                    ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end504

if.then480:                                       ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #11
  %inc482 = add nsw i8 %105, 1
  %106 = ptrtoint ptr %cwnd_growth_factor469 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %inc482, ptr %cwnd_growth_factor469, align 4
  br label %if.end504.sink.split

if.end504.sink.split:                             ; preds = %if.then480, %if.end450
  %nv_no_cong_cnt467.sink = phi ptr [ %nv_no_cong_cnt467, %if.then480 ], [ %nv_no_cong_cnt, %if.end450 ]
  %107 = ptrtoint ptr %nv_no_cong_cnt467.sink to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %nv_no_cong_cnt467.sink, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.end504.sink.split, %if.end462.if.end504_crit_edge
  %108 = ptrtoint ptr %nv_eval_call_cnt to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %nv_eval_call_cnt, align 1
  %109 = ptrtoint ptr %nv_rtt_cnt to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %nv_rtt_cnt, align 1
  %110 = ptrtoint ptr %nv_rtt_max_rate to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %nv_rtt_max_rate, align 4
  %111 = ptrtoint ptr %snd_cwnd369 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %snd_cwnd369, align 8
  %113 = load i32, ptr @nv_min_cwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %113)
  %cmp509 = icmp ult i32 %112, %113
  br i1 %cmp509, label %if.then511, label %if.end504.cleanup_crit_edge

if.end504.cleanup_crit_edge:                      ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then511:                                       ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %snd_cwnd369 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %snd_cwnd369, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then511, %if.end504.cleanup_crit_edge, %if.then456.cleanup_crit_edge, %if.else451.cleanup_crit_edge, %if.then404, %if.then393.cleanup_crit_edge, %if.then381.cleanup_crit_edge, %if.then372.cleanup_crit_edge, %if.then332, %if.end304.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcpnv_get_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef writeonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ext, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %info, align 4
  %nv_rtt_cnt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 7
  %1 = ptrtoint ptr %nv_rtt_cnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nv_rtt_cnt, align 1
  %conv = zext i8 %2 to i32
  %tcpv_rttcnt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %tcpv_rttcnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %tcpv_rttcnt, align 4
  %nv_last_rtt = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 8
  %4 = ptrtoint ptr %nv_last_rtt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nv_last_rtt, align 4
  %tcpv_rtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %tcpv_rtt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tcpv_rtt, align 4
  %nv_min_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %7 = ptrtoint ptr %nv_min_rtt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nv_min_rtt, align 4
  %tcpv_minrtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %tcpv_minrtt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tcpv_minrtt, align 4
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcpnv_init(ptr noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %nv_reset.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %nv_reset.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %nv_reset.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %nv_reset.i, align 4
  %nv_no_cong_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 16
  %1 = ptrtoint ptr %nv_no_cong_cnt.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nv_no_cong_cnt.i, align 4
  %nv_rtt_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 7
  %2 = ptrtoint ptr %nv_rtt_cnt.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %nv_rtt_cnt.i, align 1
  %nv_last_rtt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 8
  %3 = ptrtoint ptr %nv_last_rtt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nv_last_rtt.i, align 4
  %nv_rtt_max_rate.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %4 = ptrtoint ptr %nv_rtt_max_rate.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nv_rtt_max_rate.i, align 4
  %snd_una.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %5 = ptrtoint ptr %snd_una.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_una.i, align 4
  %nv_rtt_start_seq.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 14
  %7 = ptrtoint ptr %nv_rtt_start_seq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nv_rtt_start_seq.i, align 4
  %nv_eval_call_cnt.i = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 5
  %8 = ptrtoint ptr %nv_eval_call_cnt.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %nv_eval_call_cnt.i, align 1
  %nv_last_snd_una.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %9 = ptrtoint ptr %nv_last_snd_una.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %nv_last_snd_una.i, align 4
  %call1 = tail call fastcc i32 @tcp_call_bpf(ptr noundef %sk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  %mul = mul i32 %call1, 205
  %shr = ashr i32 %mul, 8
  %10 = call i32 @llvm.smax.i32(i32 %call1, i32 0)
  %.sink = select i1 %cmp, i32 %shr, i32 0
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %13, align 4
  %15 = ptrtoint ptr %nv_reset.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %nv_reset.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 200
  %17 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %icsk_ca_priv.i, align 4
  %nv_min_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %18 = ptrtoint ptr %nv_min_rtt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %nv_min_rtt, align 4
  %nv_min_rtt_new = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 10
  %19 = ptrtoint ptr %nv_min_rtt_new to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %nv_min_rtt_new, align 4
  %nv_min_cwnd = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 6
  %20 = ptrtoint ptr %nv_min_cwnd to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %nv_min_cwnd, align 2
  %bf.set = and i8 %bf.load, 95
  %bf.clear5 = or i8 %bf.set, -128
  store i8 %bf.clear5, ptr %nv_reset.i, align 4
  %cwnd_growth_factor = getelementptr inbounds %struct.tcpnv, ptr %icsk_ca_priv.i, i32 0, i32 1
  %21 = ptrtoint ptr %cwnd_growth_factor to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cwnd_growth_factor, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_call_bpf(ptr noundef %sk) unnamed_addr #7 align 64 {
entry:
  %sock_ops = alloca %struct.bpf_sock_ops_kern, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sock_ops) #9
  %0 = getelementptr inbounds i8, ptr %sock_ops, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !81
  %2 = call ptr @memset(ptr %sock_ops, i32 0, i32 40)
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %is_fullsock = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 6
  %5 = ptrtoint ptr %is_fullsock to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %is_fullsock, align 1
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lockdep_sock_is_held.exit.i:                      ; preds = %if.then
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.if.end_crit_edge

lockdep_sock_is_held.exit.i.if.end_crit_edge:     ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end_crit_edge, label %land.rhs3.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.if.end_crit_edge, label %if.then.i, !prof !79

land.rhs3.i.if.end_crit_edge:                     ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1750, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs3.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %lockdep_sock_is_held.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %sock_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sk, ptr %sock_ops, align 8
  %op2 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 5
  %8 = ptrtoint ptr %op2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %op2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 3), ptr blockaddress(@tcp_call_bpf, %land.lhs.true)) #9
          to label %if.then25 [label %land.lhs.true], !srcloc !82

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %sock_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock_ops, align 8
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true.if.then25_crit_edge, label %land.lhs.true.i

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %skc_state.i2 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %12)
  %cmp.i = icmp eq i8 %12, 12
  br i1 %cmp.i, label %sk_to_full_sk.exit, label %land.lhs.true.i.land.lhs.true15_crit_edge

land.lhs.true.i.land.lhs.true15_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

sk_to_full_sk.exit:                               ; preds = %land.lhs.true.i
  %13 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %sk_to_full_sk.exit.if.then25_crit_edge, label %sk_to_full_sk.exit.land.lhs.true15_crit_edge

sk_to_full_sk.exit.land.lhs.true15_crit_edge:     ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

sk_to_full_sk.exit.if.then25_crit_edge:           ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

land.lhs.true15:                                  ; preds = %sk_to_full_sk.exit.land.lhs.true15_crit_edge, %land.lhs.true.i.land.lhs.true15_crit_edge
  %sk.addr.0.i12 = phi ptr [ %15, %sk_to_full_sk.exit.land.lhs.true15_crit_edge ], [ %10, %land.lhs.true.i.land.lhs.true15_crit_edge ]
  %skc_state.i4 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i12, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state.i4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i4, align 2
  %conv.i5 = zext i8 %17 to i32
  %shl.i6 = shl nuw i32 1, %conv.i5
  %and.i7 = and i32 %shl.i6, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.i8.not = icmp eq i32 %and.i7, 0
  br i1 %tobool.i8.not, label %land.lhs.true15.if.then25_crit_edge, label %if.then18

land.lhs.true15.if.then25_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef nonnull %sk.addr.0.i12, ptr noundef nonnull %sock_ops, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %phi.cmp = icmp eq i32 %call19, 0
  br i1 %phi.cmp, label %if.then18.if.then25_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then18.if.then25_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %if.then18.if.then25_crit_edge, %land.lhs.true15.if.then25_crit_edge, %sk_to_full_sk.exit.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge, %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = getelementptr inbounds %struct.bpf_sock_ops_kern, ptr %sock_ops, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then18.if.end26_crit_edge
  %ret.0 = phi i32 [ %20, %if.then25 ], [ -1, %if.then18.if.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sock_ops) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sock_ops(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_nv_pad, !1, !"__param_nv_pad", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_nv.c", i32 73, i32 1}
!2 = !{ptr @__UNIQUE_ID_nv_padtype593, !1, !"__UNIQUE_ID_nv_padtype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nv_pad594, !4, !"__UNIQUE_ID_nv_pad594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_nv.c", i32 74, i32 1}
!5 = !{ptr @__param_nv_reset_period, !6, !"__param_nv_reset_period", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_nv.c", i32 75, i32 1}
!7 = !{ptr @__UNIQUE_ID_nv_reset_periodtype595, !6, !"__UNIQUE_ID_nv_reset_periodtype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nv_reset_period596, !9, !"__UNIQUE_ID_nv_reset_period596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_nv.c", i32 76, i32 1}
!10 = !{ptr @__param_nv_min_cwnd, !11, !"__param_nv_min_cwnd", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_nv.c", i32 77, i32 1}
!12 = !{ptr @__UNIQUE_ID_nv_min_cwndtype597, !11, !"__UNIQUE_ID_nv_min_cwndtype597", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nv_min_cwnd598, !14, !"__UNIQUE_ID_nv_min_cwnd598", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_nv.c", i32 78, i32 1}
!15 = !{ptr @__initcall__kmod_tcp_nv__610_495_tcpnv_register6, !16, !"__initcall__kmod_tcp_nv__610_495_tcpnv_register6", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_nv.c", i32 495, i32 1}
!17 = !{ptr @__exitcall_tcpnv_unregister, !18, !"__exitcall_tcpnv_unregister", i1 false, i1 false}
!18 = !{!"../net/ipv4/tcp_nv.c", i32 496, i32 1}
!19 = !{ptr @__UNIQUE_ID_author611, !20, !"__UNIQUE_ID_author611", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_nv.c", i32 498, i32 1}
!21 = !{ptr @__UNIQUE_ID_file612, !22, !"__UNIQUE_ID_file612", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_nv.c", i32 499, i32 1}
!23 = !{ptr @__UNIQUE_ID_license613, !22, !"__UNIQUE_ID_license613", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_description614, !25, !"__UNIQUE_ID_description614", i1 false, i1 false}
!25 = !{!"../net/ipv4/tcp_nv.c", i32 500, i32 1}
!26 = !{ptr @__UNIQUE_ID_version615, !27, !"__UNIQUE_ID_version615", i1 false, i1 false}
!27 = !{!"../net/ipv4/tcp_nv.c", i32 501, i32 1}
!28 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__modver_attr, !27, !"__modver_attr", i1 false, i1 false}
!32 = !{ptr @__param_str_nv_pad, !1, !"__param_str_nv_pad", i1 false, i1 false}
!33 = !{ptr @nv_pad, !34, !"nv_pad", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_nv.c", i32 57, i32 12}
!35 = !{ptr @__param_str_nv_reset_period, !6, !"__param_str_nv_reset_period", i1 false, i1 false}
!36 = !{ptr @nv_reset_period, !37, !"nv_reset_period", i1 false, i1 false}
!37 = !{!"../net/ipv4/tcp_nv.c", i32 59, i32 12}
!38 = !{ptr @__param_str_nv_min_cwnd, !11, !"__param_str_nv_min_cwnd", i1 false, i1 false}
!39 = !{ptr @nv_min_cwnd, !40, !"nv_min_cwnd", i1 false, i1 false}
!40 = !{!"../net/ipv4/tcp_nv.c", i32 60, i32 12}
!41 = !{ptr @tcpnv, !42, !"tcpnv", i1 false, i1 false}
!42 = !{!"../net/ipv4/tcp_nv.c", i32 470, i32 34}
!43 = distinct !{null, !44, !"nv_loss_dec_factor", i1 false, i1 false}
!44 = !{!"../net/ipv4/tcp_nv.c", i32 64, i32 12}
!45 = distinct !{null, !46, !"nv_cwnd_growth_rate_neg", i1 false, i1 false}
!46 = !{!"../net/ipv4/tcp_nv.c", i32 65, i32 12}
!47 = distinct !{null, !48, !"nv_rtt_factor", i1 false, i1 false}
!48 = !{!"../net/ipv4/tcp_nv.c", i32 63, i32 12}
!49 = distinct !{null, !50, !"nv_rtt_min_cnt", i1 false, i1 false}
!50 = !{!"../net/ipv4/tcp_nv.c", i32 71, i32 12}
!51 = distinct !{null, !52, !"nv_ssthresh_eval_min_calls", i1 false, i1 false}
!52 = !{!"../net/ipv4/tcp_nv.c", i32 69, i32 12}
!53 = distinct !{null, !54, !"nv_dec_eval_min_calls", i1 false, i1 false}
!54 = !{!"../net/ipv4/tcp_nv.c", i32 67, i32 12}
!55 = distinct !{null, !56, !"nv_stop_rtt_cnt", i1 false, i1 false}
!56 = !{!"../net/ipv4/tcp_nv.c", i32 70, i32 12}
!57 = distinct !{null, !58, !"nv_ssthresh_factor", i1 false, i1 false}
!58 = !{!"../net/ipv4/tcp_nv.c", i32 62, i32 12}
!59 = distinct !{null, !60, !"nv_cong_dec_mult", i1 false, i1 false}
!60 = !{!"../net/ipv4/tcp_nv.c", i32 61, i32 12}
!61 = distinct !{null, !62, !"nv_pad_buffer", i1 false, i1 false}
!62 = !{!"../net/ipv4/tcp_nv.c", i32 58, i32 12}
!63 = distinct !{null, !64, !"nv_inc_eval_min_calls", i1 false, i1 false}
!64 = !{!"../net/ipv4/tcp_nv.c", i32 68, i32 12}
!65 = distinct !{null, !66, !"nv_cwnd_growth_rate_pos", i1 false, i1 false}
!66 = !{!"../net/ipv4/tcp_nv.c", i32 66, i32 12}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/net/sock.h", i32 1750, i32 2}
!69 = !{ptr @.str.3, !68, !"<string literal>", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148200524, i64 2148200804, i64 2148201138, i64 2148201472}
!81 = !{!"auto-init"}
!82 = !{i64 2148967477, i64 2148967482, i64 2148967495, i64 2148967539, i64 2148967573, i64 2148967594}
