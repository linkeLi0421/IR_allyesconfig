; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_htcp.c_pt.bc'
source_filename = "../net/ipv4/tcp_htcp.c"
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
%struct.htcp = type { i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@__param_str_use_rtt_scaling = internal constant [25 x i8] c"tcp_htcp.use_rtt_scaling\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_rtt_scaling = internal global i32 1, section ".data..read_mostly", align 4
@__param_use_rtt_scaling = internal constant %struct.kernel_param { ptr @__param_str_use_rtt_scaling, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_rtt_scaling } }, section "__param", align 4
@__UNIQUE_ID_use_rtt_scalingtype593 = internal constant [38 x i8] c"tcp_htcp.parmtype=use_rtt_scaling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_rtt_scaling594 = internal constant [54 x i8] c"tcp_htcp.parm=use_rtt_scaling:turn on/off RTT scaling\00", section ".modinfo", align 1
@__param_str_use_bandwidth_switch = internal constant [30 x i8] c"tcp_htcp.use_bandwidth_switch\00", align 1
@use_bandwidth_switch = internal global i32 1, section ".data..read_mostly", align 4
@__param_use_bandwidth_switch = internal constant %struct.kernel_param { ptr @__param_str_use_bandwidth_switch, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_bandwidth_switch } }, section "__param", align 4
@__UNIQUE_ID_use_bandwidth_switchtype595 = internal constant [43 x i8] c"tcp_htcp.parmtype=use_bandwidth_switch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_bandwidth_switch596 = internal constant [66 x i8] c"tcp_htcp.parm=use_bandwidth_switch:turn on/off bandwidth switcher\00", section ".modinfo", align 1
@htcp = internal global %struct.tcp_congestion_ops { ptr @htcp_recalc_ssthresh, ptr @htcp_cong_avoid, ptr @htcp_state, ptr null, ptr null, ptr @measure_achieved_throughput, ptr null, ptr null, ptr @htcp_cwnd_undo, ptr null, ptr null, [16 x i8] c"htcp\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @htcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_htcp__605_312_htcp_register6 = internal global ptr @htcp_register, section ".initcall6.init", align 4
@__exitcall_htcp_unregister = internal global ptr @htcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author606 = internal constant [28 x i8] c"tcp_htcp.author=Baruch Even\00", section ".modinfo", align 1
@__UNIQUE_ID_file607 = internal constant [32 x i8] c"tcp_htcp.file=net/ipv4/tcp_htcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license608 = internal constant [21 x i8] c"tcp_htcp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description609 = internal constant [27 x i8] c"tcp_htcp.description=H-TCP\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author606, ptr @__UNIQUE_ID_description609, ptr @__UNIQUE_ID_file607, ptr @__UNIQUE_ID_license608, ptr @__UNIQUE_ID_use_bandwidth_switch596, ptr @__UNIQUE_ID_use_bandwidth_switchtype595, ptr @__UNIQUE_ID_use_rtt_scaling594, ptr @__UNIQUE_ID_use_rtt_scalingtype593, ptr @__exitcall_htcp_unregister, ptr @__initcall__kmod_tcp_htcp__605_312_htcp_register6, ptr @__param_use_bandwidth_switch, ptr @__param_use_rtt_scaling, ptr @htcp_unregister], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @htcp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @htcp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @htcp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @htcp) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @htcp_recalc_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %minRTT1.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %0 = ptrtoint ptr %minRTT1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minRTT1.i, align 4
  %maxRTT2.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %2 = ptrtoint ptr %maxRTT2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxRTT2.i, align 4
  %4 = load i32, ptr @use_bandwidth_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %entry.if.end9.i.i_crit_edge, label %if.then.i.i

entry.if.end9.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %entry
  %maxB1.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %5 = ptrtoint ptr %maxB1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxB1.i.i, align 4
  %old_maxB2.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %7 = ptrtoint ptr %old_maxB2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old_maxB2.i.i, align 4
  store i32 %6, ptr %old_maxB2.i.i, align 4
  %mul.i.i = mul i32 %6, 5
  %mul5.neg.i.i = mul i32 %8, -4
  %sub.i.i.i = shl i32 %8, 1
  %sub1.i.i.i = add i32 %mul5.neg.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %sub1.i.i.i)
  %cmp.i.not.i.i = icmp ult i32 %sub.i.i.i, %sub1.i.i.i
  br i1 %cmp.i.not.i.i, label %cleanup.i.i, label %if.then.i.i.if.end9.i.i_crit_edge

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %beta.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %9 = ptrtoint ptr %beta.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %beta.i.i, align 4
  %modeswitch.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 2
  %10 = ptrtoint ptr %modeswitch.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %modeswitch.i.i, align 1
  br label %htcp_beta_update.exit.i

if.end9.i.i:                                      ; preds = %if.then.i.i.if.end9.i.i_crit_edge, %entry.if.end9.i.i_crit_edge
  %modeswitch10.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 2
  %11 = ptrtoint ptr %modeswitch10.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %modeswitch10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool11.not.i.i, label %if.end9.i.i.if.else33.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.i.if.else33.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else33.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not.i.i = icmp eq i32 %3, 0
  %or.cond.i.i = or i1 %cmp.i.i, %tobool15.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.else33.i.i_crit_edge, label %if.then16.i.i

land.lhs.true.i.i.if.else33.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else33.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i
  %shl.i.i = shl i32 %1, 7
  %div.i.i = udiv i32 %shl.i.i, %3
  %conv17.i.i = trunc i32 %div.i.i to i8
  %beta18.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %13 = ptrtoint ptr %beta18.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17.i.i, ptr %beta18.i.i, align 4
  %conv20.i.i = and i32 %div.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv20.i.i)
  %cmp21.i.i = icmp ult i32 %conv20.i.i, 64
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.else.i.i

if.then23.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %beta18.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %beta18.i.i, align 4
  br label %htcp_beta_update.exit.i

if.else.i.i:                                      ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %conv20.i.i)
  %cmp27.i.i = icmp ugt i32 %conv20.i.i, 102
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.else.i.i.htcp_beta_update.exit.i_crit_edge

if.else.i.i.htcp_beta_update.exit.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %htcp_beta_update.exit.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %beta18.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 102, ptr %beta18.i.i, align 4
  br label %htcp_beta_update.exit.i

if.else33.i.i:                                    ; preds = %land.lhs.true.i.i.if.else33.i.i_crit_edge, %if.end9.i.i.if.else33.i.i_crit_edge
  %beta34.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %16 = ptrtoint ptr %beta34.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %beta34.i.i, align 4
  %17 = ptrtoint ptr %modeswitch10.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %modeswitch10.i.i, align 1
  br label %htcp_beta_update.exit.i

htcp_beta_update.exit.i:                          ; preds = %if.else33.i.i, %if.then29.i.i, %if.else.i.i.htcp_beta_update.exit.i_crit_edge, %if.then23.i.i, %cleanup.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_cong.i.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %19 = ptrtoint ptr %last_cong.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_cong.i.i.i, align 4
  %sub.i.i16.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i.i16.i)
  %cmp.i17.i = icmp ugt i32 %sub.i.i16.i, 100
  br i1 %cmp.i17.i, label %if.then.i19.i, label %htcp_beta_update.exit.i.if.end.i.i_crit_edge

htcp_beta_update.exit.i.if.end.i.i_crit_edge:     ; preds = %htcp_beta_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i19.i:                                    ; preds = %htcp_beta_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %sub.i.i16.i, -100
  %mul.i18.i = mul i32 %sub.i.i, 10
  %div48.i.i = lshr i32 %sub.i.i, 1
  %mul3.i.i = mul i32 %div48.i.i, %div48.i.i
  %div4.i.i = udiv i32 %mul3.i.i, 100
  %add.i.i = add i32 %div4.i.i, %mul.i18.i
  %div5.i.i = udiv i32 %add.i.i, 100
  %add6.i.i = add nuw nsw i32 %div5.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i19.i, %htcp_beta_update.exit.i.if.end.i.i_crit_edge
  %factor.0.i.i = phi i32 [ %add6.i.i, %if.then.i19.i ], [ 1, %htcp_beta_update.exit.i.if.end.i.i_crit_edge ]
  %21 = load i32, ptr @use_rtt_scaling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i20.i = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not.i.i = icmp eq i32 %1, 0
  %or.cond.i21.i = select i1 %tobool.not.i20.i, i1 true, i1 %tobool7.not.i.i
  br i1 %or.cond.i21.i, label %if.end.i.i.htcp_alpha_update.exit.i_crit_edge, label %if.then8.i.i

if.end.i.i.htcp_alpha_update.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %htcp_alpha_update.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %mul9.i.i = mul i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %mul9.i.i)
  %cmp11.i.i = icmp ult i32 %mul9.i.i, 161
  br i1 %cmp11.i.i, label %cond.end.i.i, label %if.then8.i.i.cond.end.thread.i.i_crit_edge

if.then8.i.i.cond.end.thread.i.i_crit_edge:       ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i.i

cond.end.i.i:                                     ; preds = %if.then8.i.i
  %div10.rhs.trunc.i.i = trunc i32 %mul9.i.i to i16
  %div1052.i.i = udiv i16 800, %div10.rhs.trunc.i.i
  %div10.zext.i.i = zext i16 %div1052.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %div10.rhs.trunc.i.i)
  %cmp13.i.i = icmp ugt i16 %div10.rhs.trunc.i.i, 10
  br i1 %cmp13.i.i, label %cond.end.i.i.cond.end.thread.i.i_crit_edge, label %cond.end.i.i._crit_edge

cond.end.i.i._crit_edge:                          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %22

cond.end.i.i.cond.end.thread.i.i_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %cond.end.i.i.cond.end.thread.i.i_crit_edge, %if.then8.i.i.cond.end.thread.i.i_crit_edge
  %cond51.i.i = phi i32 [ %div10.zext.i.i, %cond.end.i.i.cond.end.thread.i.i_crit_edge ], [ 4, %if.then8.i.i.cond.end.thread.i.i_crit_edge ]
  br label %22

22:                                               ; preds = %cond.end.thread.i.i, %cond.end.i.i._crit_edge
  %23 = phi i32 [ %cond51.i.i, %cond.end.thread.i.i ], [ 80, %cond.end.i.i._crit_edge ]
  %shl.i22.i = shl nuw nsw i32 %factor.0.i.i, 3
  %div18.i.i = udiv i32 %shl.i22.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %shl.i22.i)
  %tobool19.not.i.i = icmp ugt i32 %23, %shl.i22.i
  %spec.store.select.i.i = select i1 %tobool19.not.i.i, i32 1, i32 %div18.i.i
  br label %htcp_alpha_update.exit.i

htcp_alpha_update.exit.i:                         ; preds = %22, %if.end.i.i.htcp_alpha_update.exit.i_crit_edge
  %factor.1.i.i = phi i32 [ %spec.store.select.i.i, %22 ], [ %factor.0.i.i, %if.end.i.i.htcp_alpha_update.exit.i_crit_edge ]
  %mul23.i.i = shl nuw nsw i32 %factor.1.i.i, 1
  %beta.i23.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %24 = ptrtoint ptr %beta.i23.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %beta.i23.i, align 4
  %conv.i.i = zext i8 %25 to i32
  %sub24.i.i = sub nsw i32 128, %conv.i.i
  %mul25.i.i = mul i32 %sub24.i.i, %mul23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul25.i.i)
  %tobool27.not.i.i = icmp eq i32 %mul25.i.i, 0
  %spec.select.i.i = select i1 %tobool27.not.i.i, i32 128, i32 %mul25.i.i
  %26 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i.i, ptr %icsk_ca_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp3.i = icmp ugt i32 %3, %1
  %or.cond.i = and i1 %cmp.not.i, %cmp3.i
  br i1 %or.cond.i, label %if.then.i, label %htcp_alpha_update.exit.i.htcp_param_update.exit_crit_edge

htcp_alpha_update.exit.i.htcp_param_update.exit_crit_edge: ; preds = %htcp_alpha_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %htcp_param_update.exit

if.then.i:                                        ; preds = %htcp_alpha_update.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 %3, %1
  %mul.i = mul i32 %sub.i, 95
  %div.i = udiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %1
  %27 = ptrtoint ptr %maxRTT2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %maxRTT2.i, align 4
  br label %htcp_param_update.exit

htcp_param_update.exit:                           ; preds = %if.then.i, %htcp_alpha_update.exit.i.htcp_param_update.exit_crit_edge
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %28 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %snd_cwnd, align 8
  %30 = ptrtoint ptr %beta.i23.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %beta.i23.i, align 4
  %conv = zext i8 %31 to i32
  %mul = mul i32 %29, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %mul)
  %cmp = icmp ugt i32 %mul, 383
  %shr = lshr i32 %mul, 7
  %cond = select i1 %cmp, i32 %shr, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htcp_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
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
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %if.else

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #5
  br label %cleanup

if.else:                                          ; preds = %tcp_is_cwnd_limited.exit
  %snd_cwnd_cnt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 64
  %7 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_cwnd_cnt, align 4
  %9 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icsk_ca_priv.i, align 4
  %mul = mul i32 %10, %8
  %shr = lshr i32 %mul, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %1)
  %cmp.not = icmp ult i32 %shr, %1
  br i1 %cmp.not, label %if.else13, label %if.then6

if.then6:                                         ; preds = %if.else
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %11 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_cwnd_clamp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %12)
  %cmp8 = icmp ult i32 %1, %12
  br i1 %cmp8, label %if.then9, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw i32 %1, 1
  %13 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %snd_cwnd.i.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6.if.end11_crit_edge
  %14 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %snd_cwnd_cnt, align 4
  %minRTT1.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %15 = ptrtoint ptr %minRTT1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minRTT1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %last_cong.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %18 = ptrtoint ptr %last_cong.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_cong.i.i, align 4
  %sub.i.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i.i)
  %cmp.i33 = icmp ugt i32 %sub.i.i, 100
  br i1 %cmp.i33, label %if.then.i35, label %if.end11.if.end.i36_crit_edge

if.end11.if.end.i36_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i36

if.then.i35:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add i32 %sub.i.i, -100
  %mul.i34 = mul i32 %sub.i, 10
  %div48.i = lshr i32 %sub.i, 1
  %mul3.i = mul i32 %div48.i, %div48.i
  %div4.i = udiv i32 %mul3.i, 100
  %add.i = add i32 %div4.i, %mul.i34
  %div5.i = udiv i32 %add.i, 100
  %add6.i = add nuw nsw i32 %div5.i, 1
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i35, %if.end11.if.end.i36_crit_edge
  %factor.0.i = phi i32 [ %add6.i, %if.then.i35 ], [ 1, %if.end11.if.end.i36_crit_edge ]
  %20 = load i32, ptr @use_rtt_scaling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %if.end.i36.htcp_alpha_update.exit_crit_edge, label %if.then8.i

if.end.i36.htcp_alpha_update.exit_crit_edge:      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %htcp_alpha_update.exit

if.then8.i:                                       ; preds = %if.end.i36
  %mul9.i = mul i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %mul9.i)
  %cmp11.i = icmp ult i32 %mul9.i, 161
  br i1 %cmp11.i, label %cond.end.i, label %if.then8.i.cond.end.thread.i_crit_edge

if.then8.i.cond.end.thread.i_crit_edge:           ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.then8.i
  %div10.rhs.trunc.i = trunc i32 %mul9.i to i16
  %div1052.i = udiv i16 800, %div10.rhs.trunc.i
  %div10.zext.i = zext i16 %div1052.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %div10.rhs.trunc.i)
  %cmp13.i = icmp ugt i16 %div10.rhs.trunc.i, 10
  br i1 %cmp13.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i._crit_edge

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %21

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %if.then8.i.cond.end.thread.i_crit_edge
  %cond51.i = phi i32 [ %div10.zext.i, %cond.end.i.cond.end.thread.i_crit_edge ], [ 4, %if.then8.i.cond.end.thread.i_crit_edge ]
  br label %21

21:                                               ; preds = %cond.end.thread.i, %cond.end.i._crit_edge
  %22 = phi i32 [ %cond51.i, %cond.end.thread.i ], [ 80, %cond.end.i._crit_edge ]
  %shl.i = shl nuw nsw i32 %factor.0.i, 3
  %div18.i = udiv i32 %shl.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %shl.i)
  %tobool19.not.i = icmp ugt i32 %22, %shl.i
  %spec.store.select.i = select i1 %tobool19.not.i, i32 1, i32 %div18.i
  br label %htcp_alpha_update.exit

htcp_alpha_update.exit:                           ; preds = %21, %if.end.i36.htcp_alpha_update.exit_crit_edge
  %factor.1.i = phi i32 [ %spec.store.select.i, %21 ], [ %factor.0.i, %if.end.i36.htcp_alpha_update.exit_crit_edge ]
  %mul23.i = shl nuw nsw i32 %factor.1.i, 1
  %beta.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %23 = ptrtoint ptr %beta.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %beta.i, align 4
  %conv.i = zext i8 %24 to i32
  %sub24.i = sub nsw i32 128, %conv.i
  %mul25.i = mul i32 %sub24.i, %mul23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul25.i)
  %tobool27.not.i = icmp eq i32 %mul25.i, 0
  %spec.select.i = select i1 %tobool27.not.i, i32 128, i32 %mul25.i
  %25 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i, ptr %icsk_ca_priv.i, align 4
  br label %if.end15

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %pkts_acked = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %26 = ptrtoint ptr %pkts_acked to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pkts_acked, align 2
  %conv = zext i16 %27 to i32
  %add = add i32 %8, %conv
  %28 = ptrtoint ptr %snd_cwnd_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %snd_cwnd_cnt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %htcp_alpha_update.exit
  %pkts_acked16 = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %29 = ptrtoint ptr %pkts_acked16 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %pkts_acked16, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then4, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @htcp_state(ptr nocapture noundef %sk, i8 noundef zeroext %new_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %new_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %entry.sw.bb2_crit_edge
    i8 3, label %entry.sw.bb2_crit_edge8
    i8 4, label %entry.sw.bb2_crit_edge9
  ]

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %undo_last_cong = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %1 = ptrtoint ptr %undo_last_cong to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %undo_last_cong, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_cong = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %4 = ptrtoint ptr %last_cong to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_cong, align 4
  %5 = ptrtoint ptr %undo_last_cong to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %undo_last_cong, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge8, %entry.sw.bb2_crit_edge9
  %icsk_ca_priv.i7 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %last_cong.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i7, i32 0, i32 7
  %6 = ptrtoint ptr %last_cong.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_cong.i, align 4
  %undo_last_cong.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %8 = ptrtoint ptr %undo_last_cong.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %undo_last_cong.i, align 4
  %maxRTT.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %maxRTT.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxRTT.i, align 4
  %undo_maxRTT.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i7, i32 0, i32 9
  %11 = ptrtoint ptr %undo_maxRTT.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %undo_maxRTT.i, align 4
  %old_maxB.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i7, i32 0, i32 13
  %12 = ptrtoint ptr %old_maxB.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old_maxB.i, align 4
  %undo_old_maxB.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %14 = ptrtoint ptr %undo_old_maxB.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %undo_old_maxB.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  store i32 %15, ptr %last_cong.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @measure_achieved_throughput(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %1 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample, align 4
  %conv4 = trunc i32 %3 to i16
  %pkts_acked5 = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %4 = ptrtoint ptr %pkts_acked5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %pkts_acked5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %5 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %if.else.i, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.else.i:                                        ; preds = %if.end
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %6) #5
  %minRTT.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %7 = ptrtoint ptr %minRTT.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %minRTT.i, align 4
  %9 = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call3.i)
  %.not.i = icmp ult i32 %9, %call3.i
  br i1 %.not.i, label %if.else.i.if.end.i112_crit_edge, label %if.then.i111

if.else.i.if.end.i112_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i112

if.then.i111:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %minRTT.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %minRTT.i, align 4
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i111, %if.else.i.if.end.i112_crit_edge
  %11 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load.i)
  %cmp4.i = icmp ult i8 %bf.load.i, 8
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i112.if.end11_crit_edge

if.end.i112.if.end11_crit_edge:                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6.i:                                       ; preds = %if.end.i112
  %maxRTT.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %12 = ptrtoint ptr %maxRTT.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxRTT.i, align 4
  %14 = ptrtoint ptr %minRTT.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minRTT.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp8.i = icmp ult i32 %13, %15
  br i1 %cmp8.i, label %if.then10.i, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %maxRTT.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %maxRTT.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then6.i.if.end13.i_crit_edge
  %17 = ptrtoint ptr %maxRTT.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxRTT.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call3.i)
  %cmp15.i = icmp uge i32 %18, %call3.i
  %add.i = add i32 %18, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call3.i)
  %cmp19.not.i = icmp ult i32 %add.i, %call3.i
  %or.cond41.i = or i1 %cmp15.i, %cmp19.not.i
  br i1 %or.cond41.i, label %if.end13.i.if.end11_crit_edge, label %if.then21.i

if.end13.i.if.end11_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %maxRTT.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.i, ptr %maxRTT.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then21.i, %if.end13.i.if.end11_crit_edge, %if.end.i112.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %20 = load i32, ptr @use_bandwidth_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load15 = load i8, ptr %icsk_ca_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.load15)
  %tobool18.not = icmp ugt i8 %bf.load15, 15
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %packetcount = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %22 = ptrtoint ptr %packetcount to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %packetcount, align 4
  %lasttime = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample, align 4
  %packetcount22 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %25 = ptrtoint ptr %packetcount22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packetcount22, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %packetcount22, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %27 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_cwnd, align 8
  %29 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icsk_ca_priv.i, align 4
  %shr = lshr i32 %30, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %30)
  %tobool24.not = icmp ult i32 %30, 128
  %shr. = select i1 %tobool24.not, i32 1, i32 %shr
  %sub = sub i32 %28, %shr.
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp25.not = icmp ult i32 %add, %sub
  br i1 %cmp25.not, label %if.end20.cleanup_crit_edge, label %land.lhs.true

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end20
  %lasttime27 = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  %31 = ptrtoint ptr %lasttime27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lasttime27, align 4
  %sub28 = sub i32 %0, %32
  %minRTT = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %33 = ptrtoint ptr %minRTT to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %minRTT, align 4
  %35 = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub28)
  %.not = icmp ult i32 %35, %sub28
  br i1 %.not, label %if.then35, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  %mul = mul i32 %add, 100
  %div = udiv i32 %mul, %sub28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last_cong.i.i = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %37 = ptrtoint ptr %last_cong.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_cong.i.i, align 4
  %sub.i.i113 = sub i32 %36, %38
  %div.i = udiv i32 %sub.i.i113, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i)
  %cmp40 = icmp ult i32 %div.i, 4
  %Bi = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %Bi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %Bi, align 4
  %maxB = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %40 = ptrtoint ptr %maxB to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div, ptr %maxB, align 4
  %minB = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %41 = ptrtoint ptr %minB to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div, ptr %minB, align 4
  br label %if.end64

if.else:                                          ; preds = %if.then35
  %42 = ptrtoint ptr %Bi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %Bi, align 4
  %mul44 = mul i32 %43, 3
  %add45 = add i32 %mul44, %div
  %div46110 = lshr i32 %add45, 2
  store i32 %div46110, ptr %Bi, align 4
  %maxB49 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %44 = ptrtoint ptr %maxB49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxB49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div46110, i32 %45)
  %cmp50 = icmp ugt i32 %div46110, %45
  br i1 %cmp50, label %if.then52, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %maxB49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div46110, ptr %maxB49, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.else.if.end55_crit_edge
  %minB56 = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %47 = ptrtoint ptr %minB56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %minB56, align 4
  %49 = ptrtoint ptr %maxB49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maxB49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp58 = icmp ugt i32 %48, %50
  br i1 %cmp58, label %if.then60, label %if.end55.if.end64_crit_edge

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %minB56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %minB56, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end55.if.end64_crit_edge, %if.then42
  %52 = ptrtoint ptr %packetcount22 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %packetcount22, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end64, %if.then19
  %lasttime27.sink = phi ptr [ %lasttime27, %if.end64 ], [ %lasttime, %if.then19 ]
  %53 = ptrtoint ptr %lasttime27.sink to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %0, ptr %lasttime27.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @htcp_cwnd_undo(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %undo_last_cong = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %undo_last_cong to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %undo_last_cong, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %last_cong = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %2 = ptrtoint ptr %last_cong to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %last_cong, align 4
  %undo_maxRTT = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %3 = ptrtoint ptr %undo_maxRTT to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %undo_maxRTT, align 4
  %maxRTT = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %5 = ptrtoint ptr %maxRTT to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %maxRTT, align 4
  %undo_old_maxB = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %6 = ptrtoint ptr %undo_old_maxB to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %undo_old_maxB, align 4
  %old_maxB = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %8 = ptrtoint ptr %old_maxB to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old_maxB, align 4
  %9 = ptrtoint ptr %undo_last_cong to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %undo_last_cong, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @tcp_reno_undo_cwnd(ptr noundef %sk) #5
  ret i32 %call3
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @htcp_init(ptr nocapture noundef writeonly %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = getelementptr inbounds i8, ptr %icsk_ca_priv.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 52)
  %2 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %icsk_ca_priv.i, align 4
  %beta = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %3 = ptrtoint ptr %beta to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %beta, align 4
  %pkts_acked = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %4 = ptrtoint ptr %pkts_acked to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %pkts_acked, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_cong = getelementptr inbounds %struct.htcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %6 = ptrtoint ptr %last_cong to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_cong, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__param_use_rtt_scaling, !1, !"__param_use_rtt_scaling", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_htcp.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_rtt_scalingtype593, !1, !"__UNIQUE_ID_use_rtt_scalingtype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_rtt_scaling594, !4, !"__UNIQUE_ID_use_rtt_scaling594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_htcp.c", i32 20, i32 1}
!5 = !{ptr @__param_use_bandwidth_switch, !6, !"__param_use_bandwidth_switch", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_htcp.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_use_bandwidth_switchtype595, !6, !"__UNIQUE_ID_use_bandwidth_switchtype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_use_bandwidth_switch596, !9, !"__UNIQUE_ID_use_bandwidth_switch596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_htcp.c", i32 24, i32 1}
!10 = !{ptr @__initcall__kmod_tcp_htcp__605_312_htcp_register6, !11, !"__initcall__kmod_tcp_htcp__605_312_htcp_register6", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_htcp.c", i32 312, i32 1}
!12 = !{ptr @__exitcall_htcp_unregister, !13, !"__exitcall_htcp_unregister", i1 false, i1 false}
!13 = !{!"../net/ipv4/tcp_htcp.c", i32 313, i32 1}
!14 = !{ptr @__UNIQUE_ID_author606, !15, !"__UNIQUE_ID_author606", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_htcp.c", i32 315, i32 1}
!16 = !{ptr @__UNIQUE_ID_file607, !17, !"__UNIQUE_ID_file607", i1 false, i1 false}
!17 = !{!"../net/ipv4/tcp_htcp.c", i32 316, i32 1}
!18 = !{ptr @__UNIQUE_ID_license608, !17, !"__UNIQUE_ID_license608", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description609, !20, !"__UNIQUE_ID_description609", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_htcp.c", i32 317, i32 1}
!21 = !{ptr @__param_str_use_rtt_scaling, !1, !"__param_str_use_rtt_scaling", i1 false, i1 false}
!22 = !{ptr @use_rtt_scaling, !23, !"use_rtt_scaling", i1 false, i1 false}
!23 = !{!"../net/ipv4/tcp_htcp.c", i32 18, i32 12}
!24 = !{ptr @__param_str_use_bandwidth_switch, !6, !"__param_str_use_bandwidth_switch", i1 false, i1 false}
!25 = !{ptr @use_bandwidth_switch, !26, !"use_bandwidth_switch", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_htcp.c", i32 22, i32 12}
!27 = !{ptr @htcp, !28, !"htcp", i1 false, i1 false}
!28 = !{!"../net/ipv4/tcp_htcp.c", i32 289, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
