; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_bic.c_pt.bc'
source_filename = "../net/ipv4/tcp_bic.c"
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
%struct.bictcp = type { i32, i32, i32, i32, i32, i32 }

@__param_str_fast_convergence = internal constant [25 x i8] c"tcp_bic.fast_convergence\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fast_convergence = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fast_convergence = internal constant %struct.kernel_param { ptr @__param_str_fast_convergence, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @fast_convergence } }, section "__param", align 4
@__UNIQUE_ID_fast_convergencetype593 = internal constant [38 x i8] c"tcp_bic.parmtype=fast_convergence:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fast_convergence594 = internal constant [59 x i8] c"tcp_bic.parm=fast_convergence:turn on/off fast convergence\00", section ".modinfo", align 1
@__param_str_max_increment = internal constant [22 x i8] c"tcp_bic.max_increment\00", align 1
@max_increment = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_max_increment = internal constant %struct.kernel_param { ptr @__param_str_max_increment, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @max_increment } }, section "__param", align 4
@__UNIQUE_ID_max_incrementtype595 = internal constant [35 x i8] c"tcp_bic.parmtype=max_increment:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_increment596 = internal constant [75 x i8] c"tcp_bic.parm=max_increment:Limit on increment allowed during binary search\00", section ".modinfo", align 1
@__param_str_low_window = internal constant [19 x i8] c"tcp_bic.low_window\00", align 1
@low_window = internal global { i32, [28 x i8] } { i32 14, [28 x i8] zeroinitializer }, align 32
@__param_low_window = internal constant %struct.kernel_param { ptr @__param_str_low_window, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @low_window } }, section "__param", align 4
@__UNIQUE_ID_low_windowtype597 = internal constant [32 x i8] c"tcp_bic.parmtype=low_window:int\00", section ".modinfo", align 1
@__UNIQUE_ID_low_window598 = internal constant [80 x i8] c"tcp_bic.parm=low_window:lower bound on congestion window (for TCP friendliness)\00", section ".modinfo", align 1
@__param_str_beta = internal constant [13 x i8] c"tcp_bic.beta\00", align 1
@beta = internal global { i32, [28 x i8] } { i32 819, [28 x i8] zeroinitializer }, align 32
@__param_beta = internal constant %struct.kernel_param { ptr @__param_str_beta, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @beta } }, section "__param", align 4
@__UNIQUE_ID_betatype599 = internal constant [26 x i8] c"tcp_bic.parmtype=beta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_beta600 = internal constant [51 x i8] c"tcp_bic.parm=beta:beta for multiplicative increase\00", section ".modinfo", align 1
@__param_str_initial_ssthresh = internal constant [25 x i8] c"tcp_bic.initial_ssthresh\00", align 1
@initial_ssthresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_initial_ssthresh = internal constant %struct.kernel_param { ptr @__param_str_initial_ssthresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @initial_ssthresh } }, section "__param", align 4
@__UNIQUE_ID_initial_ssthreshtype601 = internal constant [38 x i8] c"tcp_bic.parmtype=initial_ssthresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_initial_ssthresh602 = internal constant [68 x i8] c"tcp_bic.parm=initial_ssthresh:initial value of slow start threshold\00", section ".modinfo", align 1
@__param_str_smooth_part = internal constant [20 x i8] c"tcp_bic.smooth_part\00", align 1
@smooth_part = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_smooth_part = internal constant %struct.kernel_param { ptr @__param_str_smooth_part, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @smooth_part } }, section "__param", align 4
@__UNIQUE_ID_smooth_parttype603 = internal constant [33 x i8] c"tcp_bic.parmtype=smooth_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_smooth_part604 = internal constant [86 x i8] c"tcp_bic.parm=smooth_part:log(B/(B*Smin))/log(B/(B-1))+B, # of RTT from Wmax-B to Wmax\00", section ".modinfo", align 1
@bictcp = internal global %struct.tcp_congestion_ops { ptr @bictcp_recalc_ssthresh, ptr @bictcp_cong_avoid, ptr @bictcp_state, ptr null, ptr null, ptr @bictcp_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"bic\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @bictcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_bic__610_224_bictcp_register6 = internal global ptr @bictcp_register, section ".initcall6.init", align 4
@__exitcall_bictcp_unregister = internal global ptr @bictcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author611 = internal constant [33 x i8] c"tcp_bic.author=Stephen Hemminger\00", section ".modinfo", align 1
@__UNIQUE_ID_file612 = internal constant [30 x i8] c"tcp_bic.file=net/ipv4/tcp_bic\00", section ".modinfo", align 1
@__UNIQUE_ID_license613 = internal constant [20 x i8] c"tcp_bic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description614 = internal constant [28 x i8] c"tcp_bic.description=BIC TCP\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"fast_convergence\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 29, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"max_increment\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 30, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"low_window\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 31, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 32, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"initial_ssthresh\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 33, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"smooth_part\00", align 1
@___asan_gen_.17 = private constant [22 x i8] c"../net/ipv4/tcp_bic.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 34, i32 12 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author611, ptr @__UNIQUE_ID_beta600, ptr @__UNIQUE_ID_betatype599, ptr @__UNIQUE_ID_description614, ptr @__UNIQUE_ID_fast_convergence594, ptr @__UNIQUE_ID_fast_convergencetype593, ptr @__UNIQUE_ID_file612, ptr @__UNIQUE_ID_initial_ssthresh602, ptr @__UNIQUE_ID_initial_ssthreshtype601, ptr @__UNIQUE_ID_license613, ptr @__UNIQUE_ID_low_window598, ptr @__UNIQUE_ID_low_windowtype597, ptr @__UNIQUE_ID_max_increment596, ptr @__UNIQUE_ID_max_incrementtype595, ptr @__UNIQUE_ID_smooth_part604, ptr @__UNIQUE_ID_smooth_parttype603, ptr @__exitcall_bictcp_unregister, ptr @__initcall__kmod_tcp_bic__610_224_bictcp_register6, ptr @__param_beta, ptr @__param_fast_convergence, ptr @__param_initial_ssthresh, ptr @__param_low_window, ptr @__param_max_increment, ptr @__param_smooth_part, ptr @bictcp_unregister, ptr @fast_convergence, ptr @max_increment, ptr @low_window, ptr @beta, ptr @initial_ssthresh, ptr @smooth_part], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_convergence to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_increment to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_window to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beta to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initial_ssthresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smooth_part to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bictcp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @bictcp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bictcp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @bictcp) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bictcp_recalc_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %epoch_start = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %0 = ptrtoint ptr %epoch_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %epoch_start, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %1 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snd_cwnd, align 8
  %last_max_cwnd = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %3 = ptrtoint ptr %last_max_cwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_max_cwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr @fast_convergence, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr @beta, align 4
  %add = add i32 %6, 1024
  %mul = mul i32 %add, %2
  %div37 = lshr i32 %mul, 11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %div37, %if.then ], [ %2, %land.lhs.true.if.end_crit_edge ], [ %2, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %last_max_cwnd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %last_max_cwnd, align 4
  %8 = load i32, ptr @low_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp7.not = icmp ugt i32 %2, %8
  br i1 %cmp7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp10 = icmp ugt i32 %2, 5
  %shr = lshr i32 %2, 1
  %cond = select i1 %cmp10, i32 %shr, i32 2
  br label %cleanup

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @beta, align 4
  %mul13 = mul i32 %9, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %mul13)
  %cmp16 = icmp ugt i32 %mul13, 3071
  %div1436 = lshr i32 %mul13, 10
  %cond20 = select i1 %cmp16, i32 %div1436, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then8
  %retval.0 = phi i32 [ %cond, %if.then8 ], [ %cond20, %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bictcp_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then.i
  %call5 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %tcp_is_cwnd_limited.exit.if.end8_crit_edge
  %acked.addr.0 = phi i32 [ %call5, %if.then4.if.end8_crit_edge ], [ %acked, %tcp_is_cwnd_limited.exit.if.end8_crit_edge ]
  %7 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_cwnd.i.i, align 8
  %last_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %last_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_cwnd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.i19 = icmp eq i32 %10, %8
  br i1 %cmp.i19, label %land.lhs.true.i, label %if.end8.if.end.i20_crit_edge

if.end8.if.end.i20_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i20

land.lhs.true.i:                                  ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_time.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %12 = ptrtoint ptr %last_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_time.i, align 4
  %sub.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 4
  br i1 %cmp1.i, label %land.lhs.true.i.bictcp_update.exit_crit_edge, label %land.lhs.true.i.if.end.i20_crit_edge

land.lhs.true.i.if.end.i20_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i20

land.lhs.true.i.bictcp_update.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bictcp_update.exit

if.end.i20:                                       ; preds = %land.lhs.true.i.if.end.i20_crit_edge, %if.end8.if.end.i20_crit_edge
  %14 = ptrtoint ptr %last_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %last_cwnd.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_time3.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %16 = ptrtoint ptr %last_time3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_time3.i, align 4
  %epoch_start.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %17 = ptrtoint ptr %epoch_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %epoch_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp eq i32 %18, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i20.if.end7.i_crit_edge

if.end.i20.if.end7.i_crit_edge:                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %epoch_start.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %epoch_start.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i20.if.end7.i_crit_edge
  %21 = load i32, ptr @low_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %8)
  %cmp8.not.i = icmp ult i32 %21, %8
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end7.i.if.end68.sink.split.i_crit_edge

if.end7.i.if.end68.sink.split.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.sink.split.i

if.end10.i:                                       ; preds = %if.end7.i
  %last_max_cwnd.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %22 = ptrtoint ptr %last_max_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_max_cwnd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %8)
  %cmp11.i = icmp ugt i32 %23, %8
  br i1 %cmp11.i, label %if.then12.i, label %if.else28.i

if.then12.i:                                      ; preds = %if.end10.i
  %sub14.i = sub i32 %23, %8
  %div112.i = lshr i32 %sub14.i, 2
  %24 = load i32, ptr @max_increment, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div112.i, i32 %24)
  %cmp15.i = icmp ugt i32 %div112.i, %24
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %div17.i = udiv i32 %8, %24
  br label %if.end60.sink.split.i

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub14.i)
  %cmp19.i = icmp ult i32 %sub14.i, 8
  br i1 %cmp19.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i32, ptr @smooth_part, align 4
  %mul.i21 = mul i32 %25, %8
  %div21113.i = lshr i32 %mul.i21, 2
  br label %if.end60.sink.split.i

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div24.i = udiv i32 %8, %div112.i
  br label %if.end60.sink.split.i

if.else28.i:                                      ; preds = %if.end10.i
  %add.i = add i32 %23, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %8)
  %cmp30.i = icmp ugt i32 %add.i, %8
  br i1 %cmp30.i, label %if.then31.i, label %if.else35.i

if.then31.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load i32, ptr @smooth_part, align 4
  %mul32.i = mul i32 %26, %8
  %div33111.i = lshr i32 %mul32.i, 2
  br label %if.end51.i

if.else35.i:                                      ; preds = %if.else28.i
  %27 = load i32, ptr @max_increment, align 4
  %mul37.i = mul i32 %27, 3
  %add38.i = add i32 %mul37.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %8)
  %cmp39.i = icmp ugt i32 %add38.i, %8
  br i1 %cmp39.i, label %if.then40.i, label %if.else46.i

if.then40.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul41.i = mul i32 %8, 3
  %sub43.i = sub i32 %8, %23
  %div44.i = udiv i32 %mul41.i, %sub43.i
  br label %if.end51.i

if.else46.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  %div47.i = udiv i32 %8, %27
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else46.i, %if.then40.i, %if.then31.i
  %div33111.sink.i = phi i32 [ %div33111.i, %if.then31.i ], [ %div47.i, %if.else46.i ], [ %div44.i, %if.then40.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp53.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %div33111.sink.i)
  %cmp56.i = icmp ugt i32 %div33111.sink.i, 20
  %or.cond = select i1 %cmp53.i, i1 %cmp56.i, i1 false
  br i1 %or.cond, label %if.end51.i.if.end60.sink.split.i_crit_edge, label %if.end51.i.if.end60.i_crit_edge

if.end51.i.if.end60.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.end51.i.if.end60.sink.split.i_crit_edge:       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.sink.split.i

if.end60.sink.split.i:                            ; preds = %if.end51.i.if.end60.sink.split.i_crit_edge, %if.else23.i, %if.then20.i, %if.then16.i
  %div21113.sink.i = phi i32 [ %div21113.i, %if.then20.i ], [ %div24.i, %if.else23.i ], [ %div17.i, %if.then16.i ], [ 20, %if.end51.i.if.end60.sink.split.i_crit_edge ]
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end60.sink.split.i, %if.end51.i.if.end60.i_crit_edge
  %storemerge = phi i32 [ %div21113.sink.i, %if.end60.sink.split.i ], [ %div33111.sink.i, %if.end51.i.if.end60.i_crit_edge ]
  %shl.i = shl i32 %storemerge, 4
  %delayed_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %28 = ptrtoint ptr %delayed_ack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delayed_ack.i, align 4
  %div62.i = udiv i32 %shl.i, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %shl.i)
  %cmp65.i = icmp ugt i32 %29, %shl.i
  %spec.store.select.i = select i1 %cmp65.i, i32 1, i32 %div62.i
  br label %if.end68.sink.split.i

if.end68.sink.split.i:                            ; preds = %if.end60.i, %if.end7.i.if.end68.sink.split.i_crit_edge
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %if.end60.i ], [ %8, %if.end7.i.if.end68.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select.sink.i, ptr %icsk_ca_priv.i, align 4
  br label %bictcp_update.exit

bictcp_update.exit:                               ; preds = %if.end68.sink.split.i, %land.lhs.true.i.bictcp_update.exit_crit_edge
  %31 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %icsk_ca_priv.i, align 4
  tail call void @tcp_cong_avoid_ai(ptr noundef %sk, i32 noundef %32, i32 noundef %acked.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %bictcp_update.exit, %if.then4.cleanup_crit_edge, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @bictcp_state(ptr nocapture noundef writeonly %sk, i8 noundef zeroext %new_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %delayed_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %0 = call ptr @memset(ptr %icsk_ca_priv.i, i32 0, i32 20)
  %1 = ptrtoint ptr %delayed_ack.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %delayed_ack.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bictcp_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %1 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sample, align 4
  %delayed_ack = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %3 = ptrtoint ptr %delayed_ack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delayed_ack, align 4
  %shr = lshr i32 %4, 4
  %sub = add i32 %4, %2
  %add = sub i32 %sub, %shr
  store i32 %add, ptr %delayed_ack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bictcp_init(ptr nocapture noundef writeonly %sk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %delayed_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %0 = call ptr @memset(ptr %icsk_ca_priv.i, i32 0, i32 20)
  %1 = ptrtoint ptr %delayed_ack.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %delayed_ack.i, align 4
  %2 = load i32, ptr @initial_ssthresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %3 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %snd_ssthresh, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__param_fast_convergence, !1, !"__param_fast_convergence", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_bic.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_fast_convergencetype593, !1, !"__UNIQUE_ID_fast_convergencetype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fast_convergence594, !4, !"__UNIQUE_ID_fast_convergence594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_bic.c", i32 37, i32 1}
!5 = !{ptr @__param_max_increment, !6, !"__param_max_increment", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_bic.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_incrementtype595, !6, !"__UNIQUE_ID_max_incrementtype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_increment596, !9, !"__UNIQUE_ID_max_increment596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_bic.c", i32 39, i32 1}
!10 = !{ptr @__param_low_window, !11, !"__param_low_window", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_bic.c", i32 40, i32 1}
!12 = !{ptr @__UNIQUE_ID_low_windowtype597, !11, !"__UNIQUE_ID_low_windowtype597", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_low_window598, !14, !"__UNIQUE_ID_low_window598", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_bic.c", i32 41, i32 1}
!15 = !{ptr @__param_beta, !16, !"__param_beta", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_bic.c", i32 42, i32 1}
!17 = !{ptr @__UNIQUE_ID_betatype599, !16, !"__UNIQUE_ID_betatype599", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_beta600, !19, !"__UNIQUE_ID_beta600", i1 false, i1 false}
!19 = !{!"../net/ipv4/tcp_bic.c", i32 43, i32 1}
!20 = !{ptr @__param_initial_ssthresh, !21, !"__param_initial_ssthresh", i1 false, i1 false}
!21 = !{!"../net/ipv4/tcp_bic.c", i32 44, i32 1}
!22 = !{ptr @__UNIQUE_ID_initial_ssthreshtype601, !21, !"__UNIQUE_ID_initial_ssthreshtype601", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_initial_ssthresh602, !24, !"__UNIQUE_ID_initial_ssthresh602", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_bic.c", i32 45, i32 1}
!25 = !{ptr @__param_smooth_part, !26, !"__param_smooth_part", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_bic.c", i32 46, i32 1}
!27 = !{ptr @__UNIQUE_ID_smooth_parttype603, !26, !"__UNIQUE_ID_smooth_parttype603", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_smooth_part604, !29, !"__UNIQUE_ID_smooth_part604", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_bic.c", i32 47, i32 1}
!30 = !{ptr @__initcall__kmod_tcp_bic__610_224_bictcp_register6, !31, !"__initcall__kmod_tcp_bic__610_224_bictcp_register6", i1 false, i1 false}
!31 = !{!"../net/ipv4/tcp_bic.c", i32 224, i32 1}
!32 = !{ptr @__exitcall_bictcp_unregister, !33, !"__exitcall_bictcp_unregister", i1 false, i1 false}
!33 = !{!"../net/ipv4/tcp_bic.c", i32 225, i32 1}
!34 = !{ptr @__UNIQUE_ID_author611, !35, !"__UNIQUE_ID_author611", i1 false, i1 false}
!35 = !{!"../net/ipv4/tcp_bic.c", i32 227, i32 1}
!36 = !{ptr @__UNIQUE_ID_file612, !37, !"__UNIQUE_ID_file612", i1 false, i1 false}
!37 = !{!"../net/ipv4/tcp_bic.c", i32 228, i32 1}
!38 = !{ptr @__UNIQUE_ID_license613, !37, !"__UNIQUE_ID_license613", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_description614, !40, !"__UNIQUE_ID_description614", i1 false, i1 false}
!40 = !{!"../net/ipv4/tcp_bic.c", i32 229, i32 1}
!41 = !{ptr @initial_ssthresh, !42, !"initial_ssthresh", i1 false, i1 false}
!42 = !{!"../net/ipv4/tcp_bic.c", i32 33, i32 12}
!43 = !{ptr @__param_str_fast_convergence, !1, !"__param_str_fast_convergence", i1 false, i1 false}
!44 = !{ptr @fast_convergence, !45, !"fast_convergence", i1 false, i1 false}
!45 = !{!"../net/ipv4/tcp_bic.c", i32 29, i32 12}
!46 = !{ptr @__param_str_max_increment, !6, !"__param_str_max_increment", i1 false, i1 false}
!47 = !{ptr @max_increment, !48, !"max_increment", i1 false, i1 false}
!48 = !{!"../net/ipv4/tcp_bic.c", i32 30, i32 12}
!49 = !{ptr @__param_str_low_window, !11, !"__param_str_low_window", i1 false, i1 false}
!50 = !{ptr @low_window, !51, !"low_window", i1 false, i1 false}
!51 = !{!"../net/ipv4/tcp_bic.c", i32 31, i32 12}
!52 = !{ptr @__param_str_beta, !16, !"__param_str_beta", i1 false, i1 false}
!53 = !{ptr @beta, !54, !"beta", i1 false, i1 false}
!54 = !{!"../net/ipv4/tcp_bic.c", i32 32, i32 12}
!55 = !{ptr @__param_str_initial_ssthresh, !21, !"__param_str_initial_ssthresh", i1 false, i1 false}
!56 = !{ptr @__param_str_smooth_part, !26, !"__param_str_smooth_part", i1 false, i1 false}
!57 = !{ptr @smooth_part, !58, !"smooth_part", i1 false, i1 false}
!58 = !{!"../net/ipv4/tcp_bic.c", i32 34, i32 12}
!59 = !{ptr @bictcp, !60, !"bictcp", i1 false, i1 false}
!60 = !{!"../net/ipv4/tcp_bic.c", i32 202, i32 34}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
