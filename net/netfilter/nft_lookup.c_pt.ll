; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_lookup.c_pt.bc'
source_filename = "../net/netfilter/nft_lookup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.atomic_t = type { i32 }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_set_elem_expr = type { i8, [7 x i8], [0 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.38, i32, %struct.spinlock }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_set_iter = type { i8, i32, i32, i32, ptr }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nft_set_elem = type { %union.anon.125, %union.anon.126, %union.anon.127, ptr, [4 x i8] }
%union.anon.125 = type { [16 x i32] }
%union.anon.126 = type { [16 x i32] }
%union.anon.127 = type { [16 x i32] }
%struct.nft_verdict = type { i32, ptr }

@nft_lookup_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_lookup_eval, ptr null, i32 32, ptr @nft_lookup_init, ptr @nft_lookup_activate, ptr @nft_lookup_deactivate, ptr @nft_lookup_destroy, ptr null, ptr @nft_lookup_dump, ptr @nft_lookup_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_lookup_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lookup\00", [25 x i8] zeroinitializer }, align 32
@nft_lookup_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 255, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@nft_lookup_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_lookup_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_lookup_policy, i32 5, i8 0, i8 0 }, section ".data..read_mostly", align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"nft_lookup_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 256, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 269, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"nft_lookup_policy\00", align 1
@___asan_gen_.8 = private constant [30 x i8] c"../net/netfilter/nft_lookup.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 86, i32 32 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nft_lookup_ops, ptr @.str, ptr @nft_lookup_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_lookup_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_lookup_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_lookup_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr noundef %pkt) #0 align 64 {
entry:
  %ext = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext) #6
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ext, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %7 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sreg, align 4
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %ops.i = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 128
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = call zeroext i1 %12(ptr noundef %6, ptr noundef %1, ptr noundef %arrayidx, ptr noundef nonnull %ext) #6
  %invert = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %invert, align 2, !range !17
  %15 = zext i1 %call.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %tobool5.not = icmp eq i8 %14, %15
  br i1 %tobool5.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %call7 = call ptr @nft_set_catchall_lookup(ptr noundef %6, ptr noundef %1) #6
  %16 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %ext, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %18 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %ext, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %19 = phi ptr [ %.pr, %if.end10.if.then12_crit_edge ], [ %call7, %if.then.if.then12_crit_edge ]
  %flags = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %flags, align 4
  %21 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool14.not = icmp eq i16 %21, 0
  br i1 %tobool14.not, label %if.then12.if.end20_crit_edge, label %if.then15

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then15:                                        ; preds = %if.then12
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dreg, align 1
  %idxprom16 = zext i8 %23 to i32
  %arrayidx17 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom16
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %19, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %dlen = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dlen, align 1
  %conv19 = zext i8 %27 to i32
  %rem.i = and i32 %conv19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then15.nft_data_copy.exit_crit_edge, label %if.then.i

if.then15.nft_data_copy.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_data_copy.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %div4.i = lshr i32 %conv19, 2
  %arrayidx.i = getelementptr i32, ptr %arrayidx17, i32 %div4.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx.i, align 4
  br label %nft_data_copy.exit

nft_data_copy.exit:                               ; preds = %if.then.i, %if.then15.nft_data_copy.exit_crit_edge
  %29 = call ptr @memcpy(ptr %arrayidx17, ptr %add.ptr.i.i, i32 %conv19)
  br label %if.end20

if.end20:                                         ; preds = %nft_data_copy.exit, %if.then12.if.end20_crit_edge
  %arrayidx.i.i37 = getelementptr %struct.nft_set_ext, ptr %19, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not.i = icmp eq i8 %31, 0
  br i1 %tobool.i.not.i, label %if.end20.cleanup_crit_edge, label %if.then.i38

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i38:                                      ; preds = %if.end20
  %conv.i.i.i = zext i8 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp23.not.i = icmp eq i8 %33, 0
  br i1 %cmp23.not.i, label %if.then.i38.cleanup_crit_edge, label %for.body.preheader.i

if.then.i38.cleanup_crit_edge:                    ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.then.i38
  %data.i39 = getelementptr inbounds %struct.nft_set_elem_expr, ptr %add.ptr.i.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.025.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %expr.024.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %data.i39, %for.body.preheader.i ]
  %34 = ptrtoint ptr %expr.024.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %expr.024.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  call void %37(ptr noundef %expr.024.i, ptr noundef %regs, ptr noundef %pkt) #6
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %39)
  %cmp4.i = icmp eq i32 %39, -2
  br i1 %cmp4.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %expr.024.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %expr.024.i, align 8
  %size8.i = getelementptr inbounds %struct.nft_expr_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size8.i, align 4
  %add.i = add i32 %43, %size.025.i
  %add.ptr.i = getelementptr i8, ptr %expr.024.i, i32 %43
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i.i, align 8
  %conv.i = zext i8 %45 to i32
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then.i38.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_catchall_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_lookup_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %nft.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 2
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %table = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call ptr @nft_set_lookup_global(ptr noundef %1, ptr noundef %9, ptr noundef nonnull %5, ptr noundef %11, i8 noundef zeroext %shl.i) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %klen = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 23
  %15 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %klen, align 2
  %conv = zext i8 %16 to i32
  %call13 = tail call i32 @nft_parse_register_load(ptr noundef %14, ptr noundef %sreg, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 5
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end17.if.end35_crit_edge, label %if.then19

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then19:                                        ; preds = %if.end17
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool22.not = icmp ult i32 %20, 2
  br i1 %tobool22.not, label %if.end24, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.then27

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then27:                                        ; preds = %if.end24
  %flags28 = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 22
  %21 = ptrtoint ptr %flags28 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %flags28, align 4
  %22 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool31.not = icmp eq i16 %22, 0
  br i1 %tobool31.not, label %if.end33, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %invert = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %23 = ptrtoint ptr %invert to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %invert, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end24.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %arrayidx36 = getelementptr ptr, ptr %tb, i32 3
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx36, align 4
  %cmp37.not = icmp eq ptr %25, null
  br i1 %cmp37.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end35
  %invert40 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %invert40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %invert40, align 2, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool41.not = icmp eq i8 %27, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  %flags44 = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 22
  %28 = ptrtoint ptr %flags44 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load45 = load i16, ptr %flags44, align 4
  %29 = and i16 %bf.load45, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool49.not = icmp eq i16 %29, 0
  br i1 %tobool49.not, label %if.end43.cleanup_crit_edge, label %if.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %dtype = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 7
  %30 = ptrtoint ptr %dtype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dtype, align 4
  %dlen = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 24
  %32 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dlen, align 1
  %conv53 = zext i8 %33 to i32
  %call54 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef nonnull %25, ptr noundef %dreg, ptr noundef null, i32 noundef %31, i32 noundef %conv53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end51.cleanup_crit_edge, label %if.end51.if.end67_crit_edge

if.end51.if.end67_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end35
  %flags59 = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 22
  %34 = ptrtoint ptr %flags59 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load60 = load i16, ptr %flags59, align 4
  %35 = and i16 %bf.load60, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool64.not = icmp eq i16 %35, 0
  br i1 %tobool64.not, label %if.else.if.end67_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end67:                                         ; preds = %if.else.if.end67_crit_edge, %if.end51.if.end67_crit_edge
  %flags68 = getelementptr inbounds %struct.nft_set, ptr %call7, i32 0, i32 22
  %36 = ptrtoint ptr %flags68 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load69 = load i16, ptr %flags68, align 4
  %bf.lshr70 = lshr i16 %bf.load69, 2
  %37 = and i16 %bf.lshr70, 8
  %and72 = zext i16 %37 to i32
  %binding = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %flags73 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1
  %38 = ptrtoint ptr %flags73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and72, ptr %flags73, align 4
  %call75 = tail call i32 @nf_tables_bind_set(ptr noundef %ctx, ptr noundef %call7, ptr noundef %binding) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end67.cleanup_crit_edge, label %if.end79

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7, ptr %data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.end67.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then9 ], [ 0, %if.end79 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %if.then39.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ %call54, %if.end51.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call75, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_lookup_activate(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %use = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %use, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_lookup_deactivate(ptr noundef %ctx, ptr noundef %expr, i32 noundef %phase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %binding = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  tail call void @nf_tables_deactivate_set(ptr noundef %ctx, ptr noundef %1, ptr noundef %binding, i32 noundef %phase) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_lookup_destroy(ptr noundef %ctx, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @nf_tables_destroy_set(ptr noundef %ctx, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_lookup_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %invert = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %0 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert, align 2, !range !17
  %2 = zext i8 %1 to i32
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %name = getelementptr inbounds %struct.nft_set, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call.i = tail call i32 @strlen(ptr noundef %6) #9
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %7 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sreg, align 4
  %conv = zext i8 %8 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %flags8 = getelementptr inbounds %struct.nft_set, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %flags8, align 4
  %12 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool10.not = icmp eq i16 %12, 0
  br i1 %tobool10.not, label %if.end6.if.end17_crit_edge, label %if.then11

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then11:                                        ; preds = %if.end6
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dreg, align 1
  %conv12 = zext i8 %14 to i32
  %call13 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 3, i32 noundef %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then11.if.end17_crit_edge, label %if.then11.nla_put_failure_crit_edge

if.then11.nla_put_failure_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %2, ptr %tmp.i, align 4
  %call.i30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool19.not = icmp eq i32 %call.i30, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end17.nla_put_failure_crit_edge

if.end17.nla_put_failure_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end17.nla_put_failure_crit_edge, %if.then11.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_lookup_validate(ptr noundef %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  %iter = alloca %struct.nft_set_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iter) #6
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %iter, align 4
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %flags = getelementptr inbounds %struct.nft_set, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %flags, align 4
  %4 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dtype = getelementptr inbounds %struct.nft_set, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %dtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %6)
  %cmp.not = icmp eq i32 %6, -256
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  %nft.i.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %shl.i, ptr %iter, align 4
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %skip, align 4
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %count, align 4
  %err = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %err, align 4
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %15 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nft_lookup_validate_setelem, ptr %fn, align 4
  %ops = getelementptr inbounds %struct.nft_set, ptr %2, i32 0, i32 21
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 128
  %walk = getelementptr inbounds %struct.nft_set_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %walk, align 4
  call void %19(ptr noundef %ctx, ptr noundef %2, ptr noundef nonnull %iter) #6
  %20 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %err, align 4
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %22, %if.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_lookup_global(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_tables_bind_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_deactivate_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_destroy_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_lookup_validate_setelem(ptr noundef %ctx, ptr nocapture noundef readonly %set, ptr nocapture noundef readnone %iter, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 21
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 128
  %elemsize.i = getelementptr inbounds %struct.nft_set_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %elemsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elemsize.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %nft_set_ext_exists.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nft_set_ext_exists.exit:                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %add.ptr.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i.not = icmp eq i8 %7, 0
  br i1 %tobool.i.i.not, label %nft_set_ext_exists.exit.if.end_crit_edge, label %land.lhs.true

nft_set_ext_exists.exit.if.end_crit_edge:         ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %nft_set_ext_exists.exit
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %nft_set_ext_exists.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i19 = getelementptr %struct.nft_set_ext, ptr %add.ptr.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i19, align 1
  %conv.i.i20 = zext i8 %14 to i32
  %add.ptr.i.i21 = getelementptr i8, ptr %add.ptr.i, i32 %conv.i.i20
  %15 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i21, align 8
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %17)
  %switch = icmp eq i32 %17, -4
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %level = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 8
  %18 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %level, align 1
  %inc = add i8 %19, 1
  store i8 %inc, ptr %level, align 1
  %chain = getelementptr inbounds %struct.nft_verdict, ptr %add.ptr.i.i21, i32 0, i32 1
  %20 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chain, align 4
  %call4 = tail call i32 @nft_chain_validate(ptr noundef %ctx, ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %level, align 1
  %dec = add i8 %23, -1
  store i8 %dec, ptr %level, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call4, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_lookup.c", i32 269, i32 11}
!2 = !{ptr @nft_lookup_type, !3, !"nft_lookup_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_lookup.c", i32 268, i32 22}
!4 = !{ptr @nft_lookup_ops, !5, !"nft_lookup_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_lookup.c", i32 256, i32 34}
!6 = !{ptr @nft_lookup_policy, !7, !"nft_lookup_policy", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_lookup.c", i32 86, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
