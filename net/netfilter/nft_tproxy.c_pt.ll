; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_tproxy.c_pt.bc'
source_filename = "../net/netfilter/nft_tproxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.in6_addr = type { %union.anon.29 }
%union.anon.29 = type { [4 x i32] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_tproxy = type { i8, i8, i8 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock_common = type { %union.anon.140, %union.anon.142, %union.anon.143, i16, i8, i8, i32, %union.anon.145, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.148, [0 x i32], %union.anon.149, i16, i16, %union.anon.150, %struct.refcount_struct, [0 x i32], %union.anon.151 }
%union.anon.140 = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.194 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, ptr }
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
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@nft_tproxy_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_tproxy_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_tproxy_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_tproxy__658_343_nft_tproxy_module_init6 = internal global ptr @nft_tproxy_module_init, section ".initcall6.init", align 4
@__exitcall_nft_tproxy_module_exit = internal global ptr @nft_tproxy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file659 = internal constant [41 x i8] c"nft_tproxy.file=net/netfilter/nft_tproxy\00", section ".modinfo", align 1
@__UNIQUE_ID_license660 = internal constant [23 x i8] c"nft_tproxy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author661 = internal constant [30 x i8] c"nft_tproxy.author=M\C3\A1t\C3\A9 Eckl\00", section ".modinfo", align 1
@__UNIQUE_ID_description662 = internal constant [55 x i8] c"nft_tproxy.description=nf_tables tproxy support module\00", section ".modinfo", align 1
@__UNIQUE_ID_alias663 = internal constant [33 x i8] c"nft_tproxy.alias=nft-expr-tproxy\00", section ".modinfo", align 1
@nft_tproxy_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_tproxy_eval, ptr null, i32 16, ptr @nft_tproxy_init, ptr null, ptr null, ptr @nft_tproxy_destroy, ptr null, ptr @nft_tproxy_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_tproxy_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tproxy\00", [25 x i8] zeroinitializer }, align 32
@nft_tproxy_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 10]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"nft_tproxy_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 316, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 326, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"nft_tproxy_policy\00", align 1
@___asan_gen_.17 = private constant [30 x i8] c"../net/netfilter/nft_tproxy.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 185, i32 32 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias663, ptr @__UNIQUE_ID_author661, ptr @__UNIQUE_ID_description662, ptr @__UNIQUE_ID_file659, ptr @__UNIQUE_ID_license660, ptr @__exitcall_nft_tproxy_module_exit, ptr @__initcall__kmod_nft_tproxy__658_343_nft_tproxy_module_init6, ptr @nft_tproxy_module_exit, ptr @nft_tproxy_ops, ptr @.str, ptr @nft_tproxy_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tproxy_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tproxy_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_tproxy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_tproxy_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tproxy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_tproxy_type) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_tproxy_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %_hdr.i17 = alloca %struct.udphdr, align 8
  %taddr.i = alloca %struct.in6_addr, align 4
  %_hdr.i = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.sw.epilog9_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb4
  ]

entry.sw.epilog9_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog9

sw.bb:                                            ; preds = %entry
  %family = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 2
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %family, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %6, label %sw.bb.sw.epilog9_crit_edge [
    i8 2, label %sw.bb.sw.bb3_crit_edge
    i8 0, label %sw.bb.sw.bb3_crit_edge73
  ]

sw.bb.sw.bb3_crit_edge73:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.bb.sw.epilog9_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog9

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge73
  %8 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pkt, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr.i) #4
  %tprot.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %14 = ptrtoint ptr %_hdr.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %_hdr.i, align 8
  %15 = ptrtoint ptr %tprot.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tprot.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %16, label %if.then.i [
    i8 6, label %sw.bb3.if.end.i_crit_edge
    i8 17, label %sw.bb3.if.end.i_crit_edge74
  ]

sw.bb3.if.end.i_crit_edge74:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

sw.bb3.if.end.i_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v4.exit

if.end.i:                                         ; preds = %sw.bb3.if.end.i_crit_edge, %sw.bb3.if.end.i_crit_edge74
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %20 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %20 to i32
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i, align 8
  %25 = add i32 %24, %mul.i.i
  %sub.i1.i.i = sub i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 7
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !30

if.end.i.i.i:                                     ; preds = %if.end.i
  %tobool2.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.then10.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.if.then10.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %9, i32 noundef %mul.i.i, ptr noundef nonnull %_hdr.i, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.if.then10.i_crit_edge, label %lor.lhs.false.i.i.i.if.end12.i_crit_edge

lor.lhs.false.i.i.i.if.end12.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

lor.lhs.false.i.i.i.if.then10.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10.i

skb_header_pointer.exit.i:                        ; preds = %if.end.i
  %data.i105.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %26 = ptrtoint ptr %data.i105.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i105.i, align 4
  %add.ptr.i.i106.i = getelementptr i8, ptr %27, i32 %mul.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i106.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.if.then10.i_crit_edge, label %skb_header_pointer.exit.i.if.end12.i_crit_edge

skb_header_pointer.exit.i.if.end12.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

skb_header_pointer.exit.i.if.then10.i_crit_edge:  ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10.i

if.then10.i:                                      ; preds = %skb_header_pointer.exit.i.if.then10.i_crit_edge, %lor.lhs.false.i.i.i.if.then10.i_crit_edge, %if.end.i.i.i.if.then10.i_crit_edge
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v4.exit

if.end12.i:                                       ; preds = %skb_header_pointer.exit.i.if.end12.i_crit_edge, %lor.lhs.false.i.i.i.if.end12.i_crit_edge
  %retval.0.i.i117.i = phi ptr [ %add.ptr.i.i106.i, %skb_header_pointer.exit.i.if.end12.i_crit_edge ], [ %_hdr.i, %lor.lhs.false.i.i.i.if.end12.i_crit_edge ]
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state.i, align 4
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i.i, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %protocol.i, align 1
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %37 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daddr.i, align 4
  %39 = ptrtoint ptr %retval.0.i.i117.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %retval.0.i.i117.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i117.i, i32 0, i32 1
  %41 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dest.i, align 2
  %43 = getelementptr inbounds %struct.anon.4, ptr %9, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %call14.i = call ptr @nf_tproxy_get_sock_v4(ptr noundef %32, ptr noundef %9, i8 noundef zeroext %34, i32 noundef %36, i32 noundef %38, i16 noundef zeroext %40, i16 noundef zeroext %42, ptr noundef %45, i32 noundef 1) #4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool15.not.i = icmp eq i8 %47, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then16.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i = zext i8 %47 to i32
  %arrayidx.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end18.i_crit_edge
  %taddr.0.i = phi i32 [ %49, %if.then16.i ], [ 0, %if.end12.i.if.end18.i_crit_edge ]
  %50 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %daddr.i, align 4
  %call20.i = call i32 @nf_tproxy_laddr4(ptr noundef %9, i32 noundef %taddr.0.i, i32 noundef %51) #4
  %sreg_port.i = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 1
  %52 = ptrtoint ptr %sreg_port.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sreg_port.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool21.not.i = icmp eq i8 %53, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.then29.i_crit_edge, label %if.end27.i

if.end18.i.if.then29.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i

if.end27.i:                                       ; preds = %if.end18.i
  %idxprom24.i = zext i8 %53 to i32
  %arrayidx25.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom24.i
  %54 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool28.not.i = icmp eq i16 %55, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.then29.i_crit_edge, label %if.end27.i.if.end31.i_crit_edge

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.end27.i.if.then29.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i.if.then29.i_crit_edge, %if.end18.i.if.then29.i_crit_edge
  %56 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dest.i, align 2
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  %tport.1.i = phi i16 [ %55, %if.end27.i.if.end31.i_crit_edge ], [ %57, %if.then29.i ]
  %tobool32.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool32.not.i, label %if.then41.critedge.i, label %land.lhs.true33.i

land.lhs.true33.i:                                ; preds = %if.end31.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call14.i, i32 0, i32 4
  %58 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %59)
  %cmp35.i = icmp eq i8 %59, 6
  br i1 %cmp35.i, label %if.then37.i, label %land.lhs.true33.i.land.lhs.true50.i_crit_edge

land.lhs.true33.i.land.lhs.true50.i_crit_edge:    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true50.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state.i, align 4
  %net.i108.i = getelementptr inbounds %struct.nf_hook_state, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %net.i108.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net.i108.i, align 4
  %call39.i = call ptr @nf_tproxy_handle_time_wait4(ptr noundef %63, ptr noundef %9, i32 noundef %call20.i, i16 noundef zeroext %tport.1.i, ptr noundef nonnull %call14.i) #4
  br label %if.end48.i

if.then41.critedge.i:                             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %state.i, align 4
  %net.i110.i = getelementptr inbounds %struct.nf_hook_state, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %net.i110.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net.i110.i, align 4
  %68 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %protocol.i, align 1
  %70 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %saddr.i, align 4
  %72 = ptrtoint ptr %retval.0.i.i117.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %retval.0.i.i117.i, align 2
  %74 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %43, align 8
  %call46.i = call ptr @nf_tproxy_get_sock_v4(ptr noundef %67, ptr noundef %9, i8 noundef zeroext %69, i32 noundef %71, i32 noundef %call20.i, i16 noundef zeroext %73, i16 noundef zeroext %tport.1.i, ptr noundef %75, i32 noundef 0) #4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then41.critedge.i, %if.then37.i
  %sk.0.i = phi ptr [ %call39.i, %if.then37.i ], [ %call46.i, %if.then41.critedge.i ]
  %tobool49.not.i = icmp eq ptr %sk.0.i, null
  br i1 %tobool49.not.i, label %if.end48.i.if.else54.i_crit_edge, label %if.end48.i.land.lhs.true50.i_crit_edge

if.end48.i.land.lhs.true50.i_crit_edge:           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true50.i

if.end48.i.if.else54.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else54.i

land.lhs.true50.i:                                ; preds = %if.end48.i.land.lhs.true50.i_crit_edge, %land.lhs.true33.i.land.lhs.true50.i_crit_edge
  %sk.0122.i = phi ptr [ %sk.0.i, %if.end48.i.land.lhs.true50.i_crit_edge ], [ %call14.i, %land.lhs.true33.i.land.lhs.true50.i_crit_edge ]
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0122.i, i32 0, i32 4
  %76 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %77, label %sw.epilog.i.i.i [
    i8 6, label %inet_sk_transparent.exit.i.i
    i8 12, label %sw.bb1.i.i.i
  ]

sw.bb1.i.i.i:                                     ; preds = %land.lhs.true50.i
  %no_srccheck.i.i.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.0122.i, i32 0, i32 1
  %79 = ptrtoint ptr %no_srccheck.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load4.i.i.i = load i16, ptr %no_srccheck.i.i.i, align 8
  %80 = and i16 %bf.load4.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool7.i.not.i.i = icmp eq i16 %80, 0
  br i1 %tobool7.i.not.i.i, label %sw.bb1.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge, label %sw.bb1.i.i.i.if.then53.i_crit_edge

sw.bb1.i.i.i.if.then53.i_crit_edge:               ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i

sw.bb1.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge: ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i

sw.epilog.i.i.i:                                  ; preds = %land.lhs.true50.i
  %transparent.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk.0122.i, i32 0, i32 12
  %81 = ptrtoint ptr %transparent.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load9.i.i.i = load i16, ptr %transparent.i.i.i, align 8
  %82 = and i16 %bf.load9.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool12.i.not.i.i = icmp eq i16 %82, 0
  br i1 %tobool12.i.not.i.i, label %sw.epilog.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge, label %sw.epilog.i.i.i.if.then53.i_crit_edge

sw.epilog.i.i.i.if.then53.i_crit_edge:            ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i

sw.epilog.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i

inet_sk_transparent.exit.i.i:                     ; preds = %land.lhs.true50.i
  %tw_transparent.i.i.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.0122.i, i32 0, i32 5
  %83 = ptrtoint ptr %tw_transparent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load.i.i.i = load i32, ptr %tw_transparent.i.i.i, align 8
  %84 = and i32 %bf.load.i.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i.i, label %inet_sk_transparent.exit.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge, label %inet_sk_transparent.exit.i.i.if.then53.i_crit_edge

inet_sk_transparent.exit.i.i.if.then53.i_crit_edge: ; preds = %inet_sk_transparent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then53.i

inet_sk_transparent.exit.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge: ; preds = %inet_sk_transparent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i

nf_tproxy_sk_is_transparent.exit.i:               ; preds = %inet_sk_transparent.exit.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge, %sw.epilog.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge, %sw.bb1.i.i.i.nf_tproxy_sk_is_transparent.exit.i_crit_edge
  call void @sock_gen_put(ptr noundef nonnull %sk.0122.i) #4
  br label %if.else54.i

if.then53.i:                                      ; preds = %inet_sk_transparent.exit.i.i.if.then53.i_crit_edge, %sw.epilog.i.i.i.if.then53.i_crit_edge, %sw.bb1.i.i.i.if.then53.i_crit_edge
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 4, i32 0, i32 1
  %85 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i111.i

if.then.i.i111.i:                                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %86(ptr noundef %9) #4
  br label %nf_tproxy_assign_sock.exit.i

do.body.i.i.i:                                    ; preds = %if.then53.i
  %87 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool3.not.i.i.i = icmp eq ptr %89, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.nf_tproxy_assign_sock.exit.i_crit_edge, label %do.body7.i.i.i, !prof !30

do.body.i.i.i.nf_tproxy_assign_sock.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_assign_sock.exit.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

nf_tproxy_assign_sock.exit.i:                     ; preds = %do.body.i.i.i.nf_tproxy_assign_sock.exit.i_crit_edge, %if.then.i.i111.i
  %90 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %sk.0122.i, ptr %90, align 4
  %92 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @sock_edemux, ptr %destructor.i.i.i, align 4
  br label %nft_tproxy_eval_v4.exit

if.else54.i:                                      ; preds = %nf_tproxy_sk_is_transparent.exit.i, %if.end48.i.if.else54.i_crit_edge
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v4.exit

nft_tproxy_eval_v4.exit:                          ; preds = %if.else54.i, %nf_tproxy_assign_sock.exit.i, %if.then10.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i) #4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %family5 = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 2
  %94 = ptrtoint ptr %family5 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %family5, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %95, label %sw.bb4.sw.epilog9_crit_edge [
    i8 10, label %sw.bb4.sw.bb7_crit_edge
    i8 0, label %sw.bb4.sw.bb7_crit_edge75
  ]

sw.bb4.sw.bb7_crit_edge75:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.bb4.sw.bb7_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.bb4.sw.epilog9_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog9

sw.bb7:                                           ; preds = %sw.bb4.sw.bb7_crit_edge, %sw.bb4.sw.bb7_crit_edge75
  %97 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pkt, align 4
  %head.i.i.i19 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 18
  %99 = ptrtoint ptr %head.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i.i19, align 8
  %network_header.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 15, i32 0, i32 20
  %101 = ptrtoint ptr %network_header.i.i.i20 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %network_header.i.i.i20, align 4
  %conv.i.i.i21 = zext i16 %102 to i32
  %add.ptr.i.i.i22 = getelementptr i8, ptr %100, i32 %conv.i.i.i21
  %thoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %103 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %thoff.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr.i17) #4
  %105 = ptrtoint ptr %_hdr.i17 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 -1, ptr %_hdr.i17, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %taddr.i) #4
  %106 = call ptr @memset(ptr %taddr.i, i32 0, i32 16)
  %tprot.i23 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %107 = ptrtoint ptr %tprot.i23 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %tprot.i23, align 1
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %108, label %if.then.i24 [
    i8 6, label %sw.bb7.if.end.i29_crit_edge
    i8 17, label %sw.bb7.if.end.i29_crit_edge76
  ]

sw.bb7.if.end.i29_crit_edge76:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i29

sw.bb7.if.end.i29_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i29

if.then.i24:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v6.exit

if.end.i29:                                       ; preds = %sw.bb7.if.end.i29_crit_edge, %sw.bb7.if.end.i29_crit_edge76
  %conv10.i = zext i8 %108 to i32
  %len.i.i.i25 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 6
  %111 = ptrtoint ptr %len.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i.i25, align 4
  %data_len.i.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 7
  %113 = ptrtoint ptr %data_len.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i.i26, align 8
  %115 = add i32 %104, %114
  %sub.i1.i.i27 = sub i32 %112, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i.i27)
  %cmp.i.i.i28 = icmp sgt i32 %sub.i1.i.i27, 7
  br i1 %cmp.i.i.i28, label %skb_header_pointer.exit.i35, label %if.end.i.i.i31, !prof !30

if.end.i.i.i31:                                   ; preds = %if.end.i29
  %tobool2.not.i.i.i30 = icmp eq ptr %98, null
  br i1 %tobool2.not.i.i.i30, label %if.end.i.i.i31.if.then14.i_crit_edge, label %lor.lhs.false.i.i.i34

if.end.i.i.i31.if.then14.i_crit_edge:             ; preds = %if.end.i.i.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

lor.lhs.false.i.i.i34:                            ; preds = %if.end.i.i.i31
  %call.i.i.i32 = call i32 @skb_copy_bits(ptr noundef nonnull %98, i32 noundef %104, ptr noundef nonnull %_hdr.i17, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp3.i.i.i33 = icmp slt i32 %call.i.i.i32, 0
  br i1 %cmp3.i.i.i33, label %lor.lhs.false.i.i.i34.if.then14.i_crit_edge, label %lor.lhs.false.i.i.i34.if.end16.i_crit_edge

lor.lhs.false.i.i.i34.if.end16.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

lor.lhs.false.i.i.i34.if.then14.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

skb_header_pointer.exit.i35:                      ; preds = %if.end.i29
  %data.i115.i = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 19
  %116 = ptrtoint ptr %data.i115.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i115.i, align 4
  %add.ptr.i.i116.i = getelementptr i8, ptr %117, i32 %104
  %cmp12.i = icmp eq ptr %add.ptr.i.i116.i, null
  br i1 %cmp12.i, label %skb_header_pointer.exit.i35.if.then14.i_crit_edge, label %skb_header_pointer.exit.i35.if.end16.i_crit_edge

skb_header_pointer.exit.i35.if.end16.i_crit_edge: ; preds = %skb_header_pointer.exit.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

skb_header_pointer.exit.i35.if.then14.i_crit_edge: ; preds = %skb_header_pointer.exit.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %skb_header_pointer.exit.i35.if.then14.i_crit_edge, %lor.lhs.false.i.i.i34.if.then14.i_crit_edge, %if.end.i.i.i31.if.then14.i_crit_edge
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v6.exit

if.end16.i:                                       ; preds = %skb_header_pointer.exit.i35.if.end16.i_crit_edge, %lor.lhs.false.i.i.i34.if.end16.i_crit_edge
  %retval.0.i.i130.i = phi ptr [ %add.ptr.i.i116.i, %skb_header_pointer.exit.i35.if.end16.i_crit_edge ], [ %_hdr.i17, %lor.lhs.false.i.i.i34.if.end16.i_crit_edge ]
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state.i, align 4
  %net.i.i37 = getelementptr inbounds %struct.nf_hook_state, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %net.i.i37 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net.i.i37, align 4
  %saddr.i38 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i22, i32 0, i32 5
  %daddr.i39 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i22, i32 0, i32 6
  %123 = ptrtoint ptr %retval.0.i.i130.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %retval.0.i.i130.i, align 2
  %dest.i40 = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i130.i, i32 0, i32 1
  %125 = ptrtoint ptr %dest.i40 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %dest.i40, align 2
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %120, i32 0, i32 2
  %127 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %in.i.i, align 4
  %call20.i41 = call ptr @nf_tproxy_get_sock_v6(ptr noundef %122, ptr noundef %98, i32 noundef %104, i8 noundef zeroext %108, ptr noundef %saddr.i38, ptr noundef %daddr.i39, i16 noundef zeroext %124, i16 noundef zeroext %126, ptr noundef %128, i32 noundef 1) #4
  %129 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i42 = icmp eq i8 %130, 0
  br i1 %tobool.not.i42, label %if.end16.i.if.end23.i_crit_edge, label %if.then21.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i43 = zext i8 %130 to i32
  %arrayidx.i44 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i43
  %131 = call ptr @memcpy(ptr %taddr.i, ptr %arrayidx.i44, i32 16)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end23.i_crit_edge
  %call25.i = call ptr @nf_tproxy_laddr6(ptr noundef %98, ptr noundef nonnull %taddr.i, ptr noundef %daddr.i39) #4
  %132 = call ptr @memcpy(ptr %taddr.i, ptr %call25.i, i32 16)
  %sreg_port.i45 = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 1
  %133 = ptrtoint ptr %sreg_port.i45 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sreg_port.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool26.not.i = icmp eq i8 %134, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.then34.i_crit_edge, label %if.end32.i

if.end23.i.if.then34.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34.i

if.end32.i:                                       ; preds = %if.end23.i
  %idxprom29.i = zext i8 %134 to i32
  %arrayidx30.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom29.i
  %135 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool33.not.i = icmp eq i16 %136, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.then34.i_crit_edge, label %if.end32.i.if.end36.i_crit_edge

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.end32.i.if.then34.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.end32.i.if.then34.i_crit_edge, %if.end23.i.if.then34.i_crit_edge
  %137 = ptrtoint ptr %dest.i40 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %dest.i40, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end32.i.if.end36.i_crit_edge
  %tport.1.i46 = phi i16 [ %136, %if.end32.i.if.end36.i_crit_edge ], [ %138, %if.then34.i ]
  %tobool37.not.i = icmp eq ptr %call20.i41, null
  br i1 %tobool37.not.i, label %if.then46.critedge.i, label %land.lhs.true38.i

land.lhs.true38.i:                                ; preds = %if.end36.i
  %skc_state.i47 = getelementptr inbounds %struct.sock_common, ptr %call20.i41, i32 0, i32 4
  %139 = ptrtoint ptr %skc_state.i47 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load volatile i8, ptr %skc_state.i47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %140)
  %cmp40.i = icmp eq i8 %140, 6
  br i1 %cmp40.i, label %if.then42.i, label %land.lhs.true38.i.land.lhs.true56.i_crit_edge

land.lhs.true38.i.land.lhs.true56.i_crit_edge:    ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true56.i

if.then42.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %state.i, align 4
  %net.i119.i = getelementptr inbounds %struct.nf_hook_state, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %net.i119.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %net.i119.i, align 4
  %call44.i = call ptr @nf_tproxy_handle_time_wait6(ptr noundef %98, i32 noundef %conv10.i, i32 noundef %104, ptr noundef %144, ptr noundef nonnull %taddr.i, i16 noundef zeroext %tport.1.i46, ptr noundef nonnull %call20.i41) #4
  br label %if.end54.i

if.then46.critedge.i:                             ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  %145 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %state.i, align 4
  %net.i121.i = getelementptr inbounds %struct.nf_hook_state, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %net.i121.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %net.i121.i, align 4
  %149 = ptrtoint ptr %retval.0.i.i130.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %retval.0.i.i130.i, align 2
  %in.i123.i = getelementptr inbounds %struct.nf_hook_state, ptr %146, i32 0, i32 2
  %151 = ptrtoint ptr %in.i123.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %in.i123.i, align 4
  %call52.i = call ptr @nf_tproxy_get_sock_v6(ptr noundef %148, ptr noundef %98, i32 noundef %104, i8 noundef zeroext %108, ptr noundef %saddr.i38, ptr noundef nonnull %taddr.i, i16 noundef zeroext %150, i16 noundef zeroext %tport.1.i46, ptr noundef %152, i32 noundef 0) #4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then46.critedge.i, %if.then42.i
  %sk.0.i48 = phi ptr [ %call44.i, %if.then42.i ], [ %call52.i, %if.then46.critedge.i ]
  %tobool55.not.i = icmp eq ptr %sk.0.i48, null
  br i1 %tobool55.not.i, label %if.end54.i.if.else60.i_crit_edge, label %if.end54.i.land.lhs.true56.i_crit_edge

if.end54.i.land.lhs.true56.i_crit_edge:           ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true56.i

if.end54.i.if.else60.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else60.i

land.lhs.true56.i:                                ; preds = %if.end54.i.land.lhs.true56.i_crit_edge, %land.lhs.true38.i.land.lhs.true56.i_crit_edge
  %sk.0135.i = phi ptr [ %sk.0.i48, %if.end54.i.land.lhs.true56.i_crit_edge ], [ %call20.i41, %land.lhs.true38.i.land.lhs.true56.i_crit_edge ]
  %skc_state.i.i.i49 = getelementptr inbounds %struct.sock_common, ptr %sk.0135.i, i32 0, i32 4
  %153 = ptrtoint ptr %skc_state.i.i.i49 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load volatile i8, ptr %skc_state.i.i.i49, align 2
  %155 = zext i8 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %154, label %sw.epilog.i.i.i57 [
    i8 6, label %inet_sk_transparent.exit.i.i61
    i8 12, label %sw.bb1.i.i.i53
  ]

sw.bb1.i.i.i53:                                   ; preds = %land.lhs.true56.i
  %no_srccheck.i.i.i50 = getelementptr inbounds %struct.inet_request_sock, ptr %sk.0135.i, i32 0, i32 1
  %156 = ptrtoint ptr %no_srccheck.i.i.i50 to i32
  call void @__asan_load2_noabort(i32 %156)
  %bf.load4.i.i.i51 = load i16, ptr %no_srccheck.i.i.i50, align 8
  %157 = and i16 %bf.load4.i.i.i51, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool7.i.not.i.i52 = icmp eq i16 %157, 0
  br i1 %tobool7.i.not.i.i52, label %sw.bb1.i.i.i53.nf_tproxy_sk_is_transparent.exit.i62_crit_edge, label %sw.bb1.i.i.i53.if.then59.i_crit_edge

sw.bb1.i.i.i53.if.then59.i_crit_edge:             ; preds = %sw.bb1.i.i.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

sw.bb1.i.i.i53.nf_tproxy_sk_is_transparent.exit.i62_crit_edge: ; preds = %sw.bb1.i.i.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i62

sw.epilog.i.i.i57:                                ; preds = %land.lhs.true56.i
  %transparent.i.i.i54 = getelementptr inbounds %struct.inet_sock, ptr %sk.0135.i, i32 0, i32 12
  %158 = ptrtoint ptr %transparent.i.i.i54 to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load9.i.i.i55 = load i16, ptr %transparent.i.i.i54, align 8
  %159 = and i16 %bf.load9.i.i.i55, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool12.i.not.i.i56 = icmp eq i16 %159, 0
  br i1 %tobool12.i.not.i.i56, label %sw.epilog.i.i.i57.nf_tproxy_sk_is_transparent.exit.i62_crit_edge, label %sw.epilog.i.i.i57.if.then59.i_crit_edge

sw.epilog.i.i.i57.if.then59.i_crit_edge:          ; preds = %sw.epilog.i.i.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

sw.epilog.i.i.i57.nf_tproxy_sk_is_transparent.exit.i62_crit_edge: ; preds = %sw.epilog.i.i.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i62

inet_sk_transparent.exit.i.i61:                   ; preds = %land.lhs.true56.i
  %tw_transparent.i.i.i58 = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.0135.i, i32 0, i32 5
  %160 = ptrtoint ptr %tw_transparent.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load.i.i.i59 = load i32, ptr %tw_transparent.i.i.i58, align 8
  %161 = and i32 %bf.load.i.i.i59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.i.not.i.i60 = icmp eq i32 %161, 0
  br i1 %tobool.i.not.i.i60, label %inet_sk_transparent.exit.i.i61.nf_tproxy_sk_is_transparent.exit.i62_crit_edge, label %inet_sk_transparent.exit.i.i61.if.then59.i_crit_edge

inet_sk_transparent.exit.i.i61.if.then59.i_crit_edge: ; preds = %inet_sk_transparent.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59.i

inet_sk_transparent.exit.i.i61.nf_tproxy_sk_is_transparent.exit.i62_crit_edge: ; preds = %inet_sk_transparent.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_sk_is_transparent.exit.i62

nf_tproxy_sk_is_transparent.exit.i62:             ; preds = %inet_sk_transparent.exit.i.i61.nf_tproxy_sk_is_transparent.exit.i62_crit_edge, %sw.epilog.i.i.i57.nf_tproxy_sk_is_transparent.exit.i62_crit_edge, %sw.bb1.i.i.i53.nf_tproxy_sk_is_transparent.exit.i62_crit_edge
  call void @sock_gen_put(ptr noundef nonnull %sk.0135.i) #4
  br label %if.else60.i

if.then59.i:                                      ; preds = %inet_sk_transparent.exit.i.i61.if.then59.i_crit_edge, %sw.epilog.i.i.i57.if.then59.i_crit_edge, %sw.bb1.i.i.i53.if.then59.i_crit_edge
  %destructor.i.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 4, i32 0, i32 1
  %162 = ptrtoint ptr %destructor.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %destructor.i.i.i63, align 4
  %tobool.not.i.i.i64 = icmp eq ptr %163, null
  br i1 %tobool.not.i.i.i64, label %do.body.i.i.i66, label %if.then.i.i124.i

if.then.i.i124.i:                                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #6
  call void %163(ptr noundef %98) #4
  br label %nf_tproxy_assign_sock.exit.i68

do.body.i.i.i66:                                  ; preds = %if.then59.i
  %164 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 1
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %tobool3.not.i.i.i65 = icmp eq ptr %166, null
  br i1 %tobool3.not.i.i.i65, label %do.body.i.i.i66.nf_tproxy_assign_sock.exit.i68_crit_edge, label %do.body7.i.i.i67, !prof !30

do.body.i.i.i66.nf_tproxy_assign_sock.exit.i68_crit_edge: ; preds = %do.body.i.i.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_tproxy_assign_sock.exit.i68

do.body7.i.i.i67:                                 ; preds = %do.body.i.i.i66
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

nf_tproxy_assign_sock.exit.i68:                   ; preds = %do.body.i.i.i66.nf_tproxy_assign_sock.exit.i68_crit_edge, %if.then.i.i124.i
  %167 = getelementptr inbounds %struct.sk_buff, ptr %98, i32 0, i32 1
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %sk.0135.i, ptr %167, align 4
  %169 = ptrtoint ptr %destructor.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @sock_edemux, ptr %destructor.i.i.i63, align 4
  br label %nft_tproxy_eval_v6.exit

if.else60.i:                                      ; preds = %nf_tproxy_sk_is_transparent.exit.i62, %if.end54.i.if.else60.i_crit_edge
  %170 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -2, ptr %regs, align 4
  br label %nft_tproxy_eval_v6.exit

nft_tproxy_eval_v6.exit:                          ; preds = %if.else60.i, %nf_tproxy_assign_sock.exit.i68, %if.then14.i, %if.then.i24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %taddr.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i17) #4
  br label %cleanup

sw.epilog9:                                       ; preds = %sw.bb4.sw.epilog9_crit_edge, %sw.bb.sw.epilog9_crit_edge, %entry.sw.epilog9_crit_edge
  %171 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog9, %nft_tproxy_eval_v6.exit, %nft_tproxy_eval_v4.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tproxy_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %conv = trunc i32 %7 to i8
  %family = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %family to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %family, align 1
  %family7 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %9 = ptrtoint ptr %family7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family7, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %10, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb14
    i8 1, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %conv10 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv10)
  %cmp.not = icmp eq i32 %conv10, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %conv16 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv16)
  %cmp17.not = icmp eq i32 %conv16, 10
  br i1 %cmp17.not, label %sw.bb14.sw.epilog_crit_edge, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %12 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %conv, label %sw.epilog.cleanup_crit_edge [
    i8 0, label %land.lhs.true25
    i8 2, label %sw.bb32
    i8 10, label %sw.bb37
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true25:                                  ; preds = %sw.epilog
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %sw.bb43, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb32:                                          ; preds = %sw.epilog
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %call33 = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %sw.bb32.sw.epilog55_crit_edge, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb32.sw.epilog55_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog55

sw.bb37:                                          ; preds = %sw.epilog
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %call39 = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %sw.bb37.sw.epilog55_crit_edge, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb37.sw.epilog55_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog55

sw.bb43:                                          ; preds = %land.lhs.true25
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %call45 = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %sw.bb43
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %call50 = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.sw.epilog55_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48.sw.epilog55_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %if.end48.sw.epilog55_crit_edge, %sw.bb37.sw.epilog55_crit_edge, %sw.bb32.sw.epilog55_crit_edge
  %alen.0 = phi i32 [ 0, %if.end48.sw.epilog55_crit_edge ], [ 16, %sw.bb37.sw.epilog55_crit_edge ], [ 4, %sw.bb32.sw.epilog55_crit_edge ]
  %23 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx1, align 4
  %tobool57.not = icmp eq ptr %24, null
  br i1 %tobool57.not, label %sw.epilog55.if.end65_crit_edge, label %if.then58

sw.epilog55.if.end65_crit_edge:                   ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then58:                                        ; preds = %sw.epilog55
  %call60 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %24, ptr noundef %data.i, i32 noundef %alen.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then58.cleanup_crit_edge, label %if.then58.if.end65_crit_edge

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end65:                                         ; preds = %if.then58.if.end65_crit_edge, %sw.epilog55.if.end65_crit_edge
  %arrayidx66 = getelementptr ptr, ptr %tb, i32 3
  %25 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx66, align 4
  %tobool67.not = icmp eq ptr %26, null
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %if.then68

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then68:                                        ; preds = %if.end65
  %sreg_port = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 1
  %call70 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %26, ptr noundef %sreg_port, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then68.cleanup_crit_edge, label %if.then68.if.end75_crit_edge

if.then68.if.end75_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end75:                                         ; preds = %if.then68.if.end75_crit_edge, %if.end65.if.end75_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then68.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %sw.bb43.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true25.cleanup_crit_edge ], [ %call33, %sw.bb32.cleanup_crit_edge ], [ %call39, %sw.bb37.cleanup_crit_edge ], [ %call45, %sw.bb43.cleanup_crit_edge ], [ %call50, %if.end48.cleanup_crit_edge ], [ %call60, %if.then58.cleanup_crit_edge ], [ %call70, %if.then68.cleanup_crit_edge ], [ -95, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_tproxy_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %family = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 2
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
    i8 0, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  tail call void @nf_defrag_ipv4_disable(ptr noundef %4) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void @nf_defrag_ipv6_disable(ptr noundef %6) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void @nf_defrag_ipv4_disable(ptr noundef %8) #4
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  tail call void @nf_defrag_ipv6_disable(ptr noundef %10) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tproxy_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %family = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 2
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 1
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %conv2 = zext i8 %4 to i32
  %call6 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %sreg_port = getelementptr inbounds %struct.nft_tproxy, ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %sreg_port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sreg_port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %land.lhs.true12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true12:                                  ; preds = %if.end9
  %conv10 = zext i8 %6 to i32
  %call15 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 3, i32 noundef %conv10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true12.if.end18_crit_edge, label %land.lhs.true12.cleanup_crit_edge

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true12.if.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_get_sock_v4(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_tproxy_laddr4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_handle_time_wait4(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_get_sock_v6(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_laddr6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_handle_time_wait6(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv4_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv6_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv4_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv6_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_nft_tproxy__658_343_nft_tproxy_module_init6, !1, !"__initcall__kmod_nft_tproxy__658_343_nft_tproxy_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_tproxy.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_nft_tproxy_module_exit, !3, !"__exitcall_nft_tproxy_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_tproxy.c", i32 344, i32 1}
!4 = !{ptr @__UNIQUE_ID_file659, !5, !"__UNIQUE_ID_file659", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_tproxy.c", i32 346, i32 1}
!6 = !{ptr @__UNIQUE_ID_license660, !5, !"__UNIQUE_ID_license660", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author661, !8, !"__UNIQUE_ID_author661", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_tproxy.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_description662, !10, !"__UNIQUE_ID_description662", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_tproxy.c", i32 348, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias663, !12, !"__UNIQUE_ID_alias663", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_tproxy.c", i32 349, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_tproxy.c", i32 326, i32 11}
!15 = !{ptr @nft_tproxy_type, !16, !"nft_tproxy_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_tproxy.c", i32 325, i32 29}
!17 = !{ptr @nft_tproxy_ops, !18, !"nft_tproxy_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_tproxy.c", i32 316, i32 34}
!19 = !{ptr @nft_tproxy_policy, !20, !"nft_tproxy_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_tproxy.c", i32 185, i32 32}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2154705320, i64 2154705808, i64 2154705357, i64 2154705413, i64 2154705447, i64 2154705471, i64 2154705512, i64 2154705533, i64 2154705561, i64 2154705595}
