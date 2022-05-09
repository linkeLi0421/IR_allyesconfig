; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_socket.c_pt.bc'
source_filename = "../net/netfilter/nft_socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_socket = type { i8, i8, %union.anon.194, i8 }
%union.anon.194 = type { i8 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.140, %union.anon.142, %union.anon.143, i16, i8, i8, i32, %union.anon.145, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.148, [0 x i32], %union.anon.149, i16, i16, %union.anon.150, %struct.refcount_struct, [0 x i32], %union.anon.151 }
%union.anon.140 = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.29 }
%union.anon.29 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.195 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.152, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.153, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.154, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.152 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { ptr }
%struct.sk_buff_head = type { %union.anon.97, i32, %struct.spinlock }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.flowi = type { %union.anon.24 }
%union.anon.24 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.141 = type { i32, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }

@nft_socket_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_socket_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_socket_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_socket__658_228_nft_socket_module_init6 = internal global ptr @nft_socket_module_init, section ".initcall6.init", align 4
@__exitcall_nft_socket_module_exit = internal global ptr @nft_socket_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file659 = internal constant [41 x i8] c"nft_socket.file=net/netfilter/nft_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_license660 = internal constant [23 x i8] c"nft_socket.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author661 = internal constant [30 x i8] c"nft_socket.author=M\C3\A1t\C3\A9 Eckl\00", section ".modinfo", align 1
@__UNIQUE_ID_description662 = internal constant [53 x i8] c"nft_socket.description=nf_tables socket match module\00", section ".modinfo", align 1
@__UNIQUE_ID_alias663 = internal constant [33 x i8] c"nft_socket.alias=nft-expr-socket\00", section ".modinfo", align 1
@nft_socket_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_socket_eval, ptr null, i32 16, ptr @nft_socket_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_socket_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_socket_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"socket\00", [25 x i8] zeroinitializer }, align 32
@nft_socket_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_socket_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_socket.c\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"nft_socket_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 202, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 211, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"nft_socket_policy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 126, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [30 x i8] c"../net/netfilter/nft_socket.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 80, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias663, ptr @__UNIQUE_ID_author661, ptr @__UNIQUE_ID_description662, ptr @__UNIQUE_ID_file659, ptr @__UNIQUE_ID_license660, ptr @__exitcall_nft_socket_module_exit, ptr @__initcall__kmod_nft_socket__658_228_nft_socket_module_init6, ptr @nft_socket_module_exit, ptr @nft_socket_ops, ptr @.str, ptr @nft_socket_policy, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_socket_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_socket_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_socket_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_socket_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_socket_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_socket_type) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_socket_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.then7_crit_edge, label %land.lhs.true

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %11, %13
  br i1 %cmp.i.not, label %land.lhs.true.if.end56_crit_edge, label %land.lhs.true.if.then7_crit_edge

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %entry.if.then7_crit_edge
  %state.i149 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %14 = ptrtoint ptr %state.i149 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i149, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pf.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %land.end [
    i8 2, label %sw.bb
    i8 10, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %net.i151 = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 5
  %19 = ptrtoint ptr %net.i151 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i151, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in.i, align 4
  %call11 = tail call ptr @nf_sk_lookup_slow_v4(ptr noundef %20, ptr noundef %1, ptr noundef %22) #5
  br label %if.end52

sw.bb12:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %net.i154 = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 5
  %23 = ptrtoint ptr %net.i154 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i154, align 4
  %in.i156 = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 2
  %25 = ptrtoint ptr %in.i156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in.i156, align 4
  %call15 = tail call ptr @nf_sk_lookup_slow_v6(ptr noundef %24, ptr noundef %1, ptr noundef %26) #5
  br label %if.end52

land.end:                                         ; preds = %if.then7
  %.b148 = load i1, ptr @nft_socket_eval.__already_done, align 1
  br i1 %.b148, label %land.end.if.end44_crit_edge, label %if.then22, !prof !33

land.end.if.end44_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nft_socket_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then22, %land.end.if.end44_crit_edge
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end52:                                         ; preds = %sw.bb12, %sw.bb
  %sk.1 = phi ptr [ %call15, %sw.bb12 ], [ %call11, %sw.bb ]
  %tobool53.not = icmp eq ptr %sk.1, null
  br i1 %tobool53.not, label %if.then54, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end52.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge
  %sk.1172 = phi ptr [ %sk.1, %if.end52.if.end56_crit_edge ], [ %4, %land.lhs.true.if.end56_crit_edge ]
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load147 = load i8, ptr %data.i, align 4
  %30 = zext i8 %bf.load147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load147, label %do.end89 [
    i8 0, label %sw.bb57
    i8 1, label %sw.bb60
    i8 2, label %sw.bb65
    i8 3, label %sw.bb70
  ]

sw.bb57:                                          ; preds = %if.end56
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.1172, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state.i, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %32, label %sw.epilog.i [
    i8 6, label %sw.bb.i
    i8 12, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %tw_transparent.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.1172, i32 0, i32 5
  %34 = ptrtoint ptr %tw_transparent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i = load i32, ptr %tw_transparent.i, align 8
  %35 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i = icmp ne i32 %35, 0
  br label %inet_sk_transparent.exit

sw.bb1.i:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %no_srccheck.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.1172, i32 0, i32 1
  %36 = ptrtoint ptr %no_srccheck.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load4.i = load i16, ptr %no_srccheck.i, align 8
  %37 = and i16 %bf.load4.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool7.i = icmp ne i16 %37, 0
  br label %inet_sk_transparent.exit

sw.epilog.i:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk.1172, i32 0, i32 12
  %38 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load9.i = load i16, ptr %transparent.i, align 8
  %39 = and i16 %bf.load9.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool12.i = icmp ne i16 %39, 0
  br label %inet_sk_transparent.exit

inet_sk_transparent.exit:                         ; preds = %sw.epilog.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i1 [ %tobool12.i, %sw.epilog.i ], [ %tobool7.i, %sw.bb1.i ], [ %tobool.i, %sw.bb.i ]
  %conv59 = zext i1 %retval.0.i to i8
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv59, ptr %arrayidx, align 1
  br label %sw.epilog104

sw.bb60:                                          ; preds = %if.end56
  %skc_state.i157 = getelementptr inbounds %struct.sock_common, ptr %sk.1172, i32 0, i32 4
  %41 = ptrtoint ptr %skc_state.i157 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %skc_state.i157, align 2
  %conv.i158 = zext i8 %42 to i32
  %shl.i = shl nuw i32 1, %conv.i158
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i159.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i159.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk.1172, i32 0, i32 34
  %43 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sk_mark, align 8
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx, align 4
  br label %sw.epilog104

if.else:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %if.end56
  %skc_state.i160 = getelementptr inbounds %struct.sock_common, ptr %sk.1172, i32 0, i32 4
  %47 = ptrtoint ptr %skc_state.i160 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %skc_state.i160, align 2
  %conv.i161 = zext i8 %48 to i32
  %shl.i162 = shl nuw i32 1, %conv.i161
  %and.i163 = and i32 %shl.i162, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.i164.not = icmp eq i32 %and.i163, 0
  br i1 %tobool.i164.not, label %if.then67, label %if.end69

if.then67:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end69:                                         ; preds = %sw.bb65
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pf.i.i, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %53, label %sw.default.i [
    i8 2, label %sw.bb.i166
    i8 10, label %sw.bb5.i
  ]

sw.bb.i166:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.141, ptr %sk.1172, i32 0, i32 1
  %55 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %skc_rcv_saddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i165 = icmp eq i32 %56, 0
  %conv4.i = zext i1 %cmp.i165 to i8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv4.i, ptr %arrayidx, align 1
  br label %sw.epilog104

sw.bb5.i:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk.1172, i32 0, i32 11
  %58 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %sk.1172, i32 0, i32 11, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %61, %59
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %sk.1172, i32 0, i32 11, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %63
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %sk.1172, i32 0, i32 11, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  %conv8.i = zext i1 %cmp.i.i to i8
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv8.i, ptr %arrayidx, align 1
  br label %sw.epilog104

sw.default.i:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog104

sw.bb70:                                          ; preds = %if.end56
  %level = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 1
  %68 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %level, align 1
  %conv71 = zext i8 %69 to i32
  %call72 = tail call fastcc zeroext i1 @nft_sock_get_eval_cgroupv2(ptr noundef %arrayidx, ptr noundef %pkt, i32 noundef %conv71)
  br i1 %call72, label %sw.bb70.sw.epilog104_crit_edge, label %if.then73

sw.bb70.sw.epilog104_crit_edge:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog104

if.then73:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

do.end89:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 9, ptr noundef null) #5
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog104

sw.epilog104:                                     ; preds = %do.end89, %sw.bb70.sw.epilog104_crit_edge, %sw.default.i, %sw.bb5.i, %sw.bb.i166, %if.then62, %inet_sk_transparent.exit
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  %cmp.not = icmp eq ptr %sk.1172, %73
  br i1 %cmp.not, label %sw.epilog104.cleanup_crit_edge, label %if.then106

sw.epilog104.cleanup_crit_edge:                   ; preds = %sw.epilog104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then106:                                       ; preds = %sw.epilog104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sock_gen_put(ptr noundef nonnull %sk.1172) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %sw.epilog104.cleanup_crit_edge, %if.then73, %if.then67, %if.else, %if.then54, %if.end44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_socket_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %lor.lhs.false

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup23_crit_edge, label %if.end

lor.lhs.false.cleanup23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end:                                           ; preds = %lor.lhs.false
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %5, label %if.end.cleanup23_crit_edge [
    i8 2, label %if.end.sw.epilog_crit_edge
    i8 10, label %if.end.sw.epilog_crit_edge39
    i8 1, label %if.end.sw.epilog_crit_edge40
  ]

if.end.sw.epilog_crit_edge40:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge39:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge39, %if.end.sw.epilog_crit_edge40
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %9 = trunc i32 %8 to i8
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data.i, align 4
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %9, label %sw.epilog.cleanup23_crit_edge [
    i8 0, label %sw.epilog.sw.epilog20_crit_edge
    i8 2, label %sw.epilog.sw.epilog20_crit_edge41
    i8 1, label %sw.bb6
    i8 3, label %sw.bb7
  ]

sw.epilog.sw.epilog20_crit_edge41:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog20

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog20

sw.epilog.cleanup23_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog20

sw.bb7:                                           ; preds = %sw.epilog
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %sw.bb7.cleanup23_crit_edge, label %if.end11

sw.bb7.cleanup23_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

if.end11:                                         ; preds = %sw.bb7
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %cmp = icmp ugt i32 %15, 255
  br i1 %cmp, label %if.end11.cleanup23_crit_edge, label %cleanup

if.end11.cleanup23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup23

cleanup:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %conv17 = trunc i32 %15 to i8
  %level18 = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 1
  %16 = ptrtoint ptr %level18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %level18, align 1
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %cleanup, %sw.bb6, %sw.epilog.sw.epilog20_crit_edge, %sw.epilog.sw.epilog20_crit_edge41
  %len.1 = phi i32 [ 8, %cleanup ], [ 4, %sw.bb6 ], [ 1, %sw.epilog.sw.epilog20_crit_edge ], [ 1, %sw.epilog.sw.epilog20_crit_edge41 ]
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 2
  %call22 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %18, ptr noundef %19, ptr noundef null, i32 noundef 0, i32 noundef %len.1) #5
  br label %cleanup23

cleanup23:                                        ; preds = %sw.epilog20, %if.end11.cleanup23_crit_edge, %sw.bb7.cleanup23_crit_edge, %sw.epilog.cleanup23_crit_edge, %if.end.cleanup23_crit_edge, %lor.lhs.false.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ %call22, %sw.epilog20 ], [ -22, %lor.lhs.false.cleanup23_crit_edge ], [ -22, %entry.cleanup23_crit_edge ], [ -95, %if.end.cleanup23_crit_edge ], [ -95, %sw.epilog.cleanup23_crit_edge ], [ -95, %if.end11.cleanup23_crit_edge ], [ -22, %sw.bb7.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_socket_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i19 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 2
  %conv = zext i8 %4 to i32
  %call2 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load6 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load6)
  %cmp = icmp eq i8 %bf.load6, 3
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %level = getelementptr inbounds %struct.nft_socket, ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %level, align 1
  %conv9 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19) #5
  %8 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv9, ptr %tmp.i19, align 4
  %call.i20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool11.not = icmp eq i32 %call.i20, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_sk_lookup_slow_v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_sk_lookup_slow_v6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @nft_sock_get_eval_cgroupv2(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %pkt, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %6)
  %cmp.i.i = icmp eq i8 %6, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.lor.lhs.false_crit_edge

land.lhs.true.i.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.cleanup_crit_edge, label %skb_to_full_sk.exit.lor.lhs.false_crit_edge

skb_to_full_sk.exit.lor.lhs.false_crit_edge:      ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

skb_to_full_sk.exit.cleanup_crit_edge:            ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_to_full_sk.exit.lor.lhs.false_crit_edge, %land.lhs.true.i.i.lor.lhs.false_crit_edge
  %sk.addr.0.i.i24 = phi ptr [ %9, %skb_to_full_sk.exit.lor.lhs.false_crit_edge ], [ %4, %land.lhs.true.i.i.lor.lhs.false_crit_edge ]
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i.i24, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i.i24, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %15, %17
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %sk_cgrp_data = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i24, i32 0, i32 74
  %18 = ptrtoint ptr %sk_cgrp_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_cgrp_data, align 4
  %level8 = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %level8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %level)
  %cmp = icmp ult i32 %21, %level
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.cgroup, ptr %19, i32 0, i32 37, i32 %level
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  %24 = ptrtoint ptr %dest to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %dest, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_to_full_sk.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %lor.lhs.false2.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %skb_to_full_sk.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_nft_socket__658_228_nft_socket_module_init6, !1, !"__initcall__kmod_nft_socket__658_228_nft_socket_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_socket.c", i32 228, i32 1}
!2 = !{ptr @__exitcall_nft_socket_module_exit, !3, !"__exitcall_nft_socket_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_socket.c", i32 229, i32 1}
!4 = !{ptr @__UNIQUE_ID_file659, !5, !"__UNIQUE_ID_file659", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_socket.c", i32 231, i32 1}
!6 = !{ptr @__UNIQUE_ID_license660, !5, !"__UNIQUE_ID_license660", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author661, !8, !"__UNIQUE_ID_author661", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_socket.c", i32 232, i32 1}
!9 = !{ptr @__UNIQUE_ID_description662, !10, !"__UNIQUE_ID_description662", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_socket.c", i32 233, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias663, !12, !"__UNIQUE_ID_alias663", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_socket.c", i32 234, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_socket.c", i32 211, i32 11}
!15 = !{ptr @nft_socket_type, !16, !"nft_socket_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_socket.c", i32 210, i32 29}
!17 = !{ptr @nft_socket_ops, !18, !"nft_socket_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_socket.c", i32 202, i32 34}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_socket.c", i32 80, i32 4}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nft_socket_policy, !23, !"nft_socket_policy", i1 false, i1 false}
!23 = !{!"../net/netfilter/nft_socket.c", i32 126, i32 32}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
