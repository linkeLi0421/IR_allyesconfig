; ModuleID = '/llk/IR_all_yes/net/decnet/dn_rules.c_pt.bc'
source_filename = "../net/decnet/dn_rules.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
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
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dn_fib_res = type { ptr, ptr, i8, i8, i8, i8 }
%struct.dn_fib_table = type { %struct.hlist_node, i32, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.dn_fib_info = type { ptr, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i32, i32, i16, i32, [17 x i32], i32, i32, [0 x %struct.dn_fib_nh] }
%struct.dn_fib_nh = type { ptr, i32, i8, i32, i32, i32, i16 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.dn_fib_rule = type { %struct.fib_rule, i8, i8, i16, i16, i16, i16, i16, i8 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }

@dn_fib_rules_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dn_fib_rules_ops_template = internal constant { %struct.fib_rules_ops, [32 x i8] } { %struct.fib_rules_ops { i32 12, %struct.list_head zeroinitializer, i32 144, i32 2, i32 0, i32 0, i32 0, ptr @dn_fib_rule_action, ptr null, ptr @dn_fib_rule_match, ptr @dn_fib_rule_configure, ptr null, ptr @dn_fib_rule_compare, ptr @dn_fib_rule_fill, ptr null, ptr @dn_fib_rule_flush_cache, i32 16, %struct.list_head zeroinitializer, ptr null, ptr @init_net, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@dn_fib_rule_configure.__msg = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid tos value\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"dn_fib_rules_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 38, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"dn_fib_rules_ops_template\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 223, i32 51 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.8 = private constant [25 x i8] c"../net/decnet/dn_rules.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 127, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @dn_fib_rules_cleanup, ptr @dn_fib_rules_ops, ptr @dn_fib_rules_ops_template, ptr @dn_fib_rule_configure.__msg], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_rules_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_rules_ops_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_rule_configure.__msg to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_fib_lookup(ptr noundef %flp, ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.fib_lookup_arg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #8
  %0 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %2 = call ptr @memset(ptr %arg, i32 0, i32 24)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %res, ptr %0, align 4
  %4 = load ptr, ptr @dn_fib_rules_ops, align 4
  %call1 = call i32 @fib_rules_lookup(ptr noundef %4, ptr noundef %flp, i32 noundef 0, ptr noundef nonnull %arg) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %res, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #8
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dnet_addr_type(i16 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  %fld = alloca %struct.flowidn, align 8
  %res = alloca %struct.dn_fib_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld) #8
  %0 = call ptr @memset(ptr %fld, i32 0, i32 48)
  %daddr = getelementptr inbounds %struct.flowidn, ptr %fld, i32 0, i32 1
  %1 = ptrtoint ptr %daddr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %addr, ptr %daddr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %res, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %call = tail call ptr @dn_fib_get_table(i32 noundef 255, i32 noundef 0) #8
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %res, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %lookup = getelementptr inbounds %struct.dn_fib_table, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lookup, align 4
  %call1 = call i32 %8(ptr noundef nonnull %call, ptr noundef nonnull %fld, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %if.then.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  %fib_clntref.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !15
  call void @llvm.prefetch.p0(ptr %fib_clntref.i.i, i32 1, i32 3, i32 1) #8
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i.i, ptr %fib_clntref.i.i, i32 1, ptr elementtype(i32) %fib_clntref.i.i) #8, !srcloc !16
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !17

if.end5.i.i.i.i.i.if.end.i_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %fib_clntref.i.i, i32 noundef 3) #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !18
  call void @dn_fib_free_info(ptr noundef nonnull %12) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  %refcnt.i.i = getelementptr inbounds %struct.fib_rule, ptr %15, i32 0, i32 15
  %call.i.i.i.i.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !15
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !16
  %asmresult.i.i.i.i.i.i.i11.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i11.i)
  %cmp.i.i.i.i12.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i11.i, 1
  br i1 %cmp.i.i.i.i12.i, label %do.end.i.i, label %if.end5.i.i.i.i14.i

if.end5.i.i.i.i14.i:                              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i11.i)
  %.not.i.i.i.i13.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i13.i, label %if.end5.i.i.i.i14.i.if.end4_crit_edge, label %if.then10.i.i.i.i15.i, !prof !17

if.end5.i.i.i.i14.i.if.end4_crit_edge:            ; preds = %if.end5.i.i.i.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then10.i.i.i.i15.i:                            ; preds = %if.end5.i.i.i.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #8
  br label %if.end4

do.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !18
  %rcu.i.i = getelementptr inbounds %struct.fib_rule, ptr %15, i32 0, i32 24
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 120 to ptr)) #8
  br label %if.end4

if.end4:                                          ; preds = %do.end.i.i, %if.then10.i.i.i.i15.i, %if.end5.i.i.i.i14.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0.shrunk = phi i8 [ 1, %if.then.if.end4_crit_edge ], [ 1, %entry.if.end4_crit_edge ], [ %10, %if.end.i.if.end4_crit_edge ], [ %10, %if.end5.i.i.i.i14.i.if.end4_crit_edge ], [ %10, %if.then10.i.i.i.i15.i ], [ %10, %do.end.i.i ]
  %ret.0 = zext i8 %ret.0.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_fib_get_table(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_rules_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fib_rules_register(ptr noundef nonnull @dn_fib_rules_ops_template, ptr noundef nonnull @init_net) #8
  store ptr %call, ptr @dn_fib_rules_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body3, label %do.body7, !prof !19

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/decnet/dn_rules.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

do.body7:                                         ; preds = %entry
  %call8 = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 32767, i32 noundef 254, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end22, label %do.body17, !prof !17

do.body17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/decnet/dn_rules.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

do.end22:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_rules_cleanup() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtnl_lock() #8
  %0 = load ptr, ptr @dn_fib_rules_ops, align 4
  tail call void @fib_rules_unregister(ptr noundef %0) #8
  tail call void @rtnl_unlock() #8
  tail call void @rcu_barrier() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_free_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_rule_action(ptr nocapture noundef readonly %rule, ptr noundef %flp, i32 noundef %flags, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 1, label %sw.epilog
    i8 7, label %entry.errout_crit_edge
    i8 8, label %sw.bb1
  ]

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

sw.epilog:                                        ; preds = %entry
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %table, align 4
  %call = tail call ptr @dn_fib_get_table(i32 noundef %4, i32 noundef 0) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %sw.epilog.errout_crit_edge, label %if.end

sw.epilog.errout_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %lookup = getelementptr inbounds %struct.dn_fib_table, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %lookup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lookup, align 4
  %result = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %result, align 4
  %call4 = tail call i32 %6(ptr noundef nonnull %call, ptr noundef %flp, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  %spec.store.select = select i1 %cmp5, i32 -11, i32 %call4
  br label %errout

errout:                                           ; preds = %if.end, %sw.epilog.errout_crit_edge, %sw.default, %sw.bb1, %entry.errout_crit_edge
  %err.0 = phi i32 [ -22, %sw.default ], [ -13, %sw.bb1 ], [ -11, %sw.epilog.errout_crit_edge ], [ %spec.store.select, %if.end ], [ -101, %entry.errout_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dn_fib_rule_match(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %fl, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr2 = getelementptr inbounds %struct.flowidn, ptr %fl, i32 0, i32 2
  %0 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %saddr2, align 2
  %src = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 3
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %src, align 2
  %xor18 = xor i16 %3, %1
  %srcmask = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 4
  %4 = ptrtoint ptr %srcmask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %srcmask, align 4
  %and19 = and i16 %xor18, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and19)
  %tobool.not = icmp eq i16 %and19, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %daddr1 = getelementptr inbounds %struct.flowidn, ptr %fl, i32 0, i32 1
  %6 = ptrtoint ptr %daddr1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %daddr1, align 8
  %dst = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 5
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dst, align 2
  %xor720 = xor i16 %9, %7
  %dstmask = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 6
  %10 = ptrtoint ptr %dstmask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dstmask, align 8
  %and921 = and i16 %xor720, %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and921)
  %tobool10.not = icmp eq i16 %and921, 0
  %spec.select = zext i1 %tobool10.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_rule_configure(ptr nocapture noundef %rule, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dn_fib_rule_configure.__msg) #8
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup35_crit_edge, label %if.then2

do.body.cleanup35_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dn_fib_rule_configure.__msg, ptr %extack, align 4
  br label %cleanup35

if.end3:                                          ; preds = %entry
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then4, label %if.end3.if.end15_crit_edge

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then4:                                         ; preds = %if.end3
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %5 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp5 = icmp eq i8 %6, 1
  br i1 %cmp5, label %if.then7, label %if.then4.if.end15_crit_edge

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then7:                                         ; preds = %if.then4
  %call = tail call ptr @dn_fib_empty_table() #8
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.then7.cleanup35_crit_edge, label %cleanup.thread

if.then7.cleanup35_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %n = getelementptr inbounds %struct.dn_fib_table, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  %9 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %table, align 4
  br label %if.end15

if.end15:                                         ; preds = %cleanup.thread, %if.then4.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %10 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %src = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 3
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %src, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %17 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 1
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx22, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i55, align 2
  %dst = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 5
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %dst, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %24 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src_len, align 2
  %src_len26 = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 2
  %26 = ptrtoint ptr %src_len26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %src_len26, align 1
  %conv28 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  %sub.i = sub nsw i32 16, %conv28
  %notmask.i = shl nsw i32 -1, %sub.i
  %conv.i = trunc i32 %notmask.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %retval.0.i = select i1 %tobool.not.i, i16 0, i16 %27
  %srcmask = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 4
  %28 = ptrtoint ptr %srcmask to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %retval.0.i, ptr %srcmask, align 4
  %29 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dst_len, align 1
  %dst_len31 = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 1
  %31 = ptrtoint ptr %dst_len31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dst_len31, align 8
  %conv33 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i56 = icmp eq i8 %30, 0
  %sub.i57 = sub nsw i32 16, %conv33
  %notmask.i58 = shl nsw i32 -1, %sub.i57
  %conv.i59 = trunc i32 %notmask.i58 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i59) #8
  %retval.0.i60 = select i1 %tobool.not.i56, i16 0, i16 %32
  %dstmask = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 6
  %33 = ptrtoint ptr %dstmask to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %retval.0.i60, ptr %dstmask, align 8
  br label %cleanup35

cleanup35:                                        ; preds = %if.end24, %if.then7.cleanup35_crit_edge, %if.then2, %do.body.cleanup35_crit_edge
  %err.1 = phi i32 [ 0, %if.end24 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup35_crit_edge ], [ -105, %if.then7.cleanup35_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dn_fib_rule_compare(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %0 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %src_len1 = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %src_len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src_len1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp.not = icmp eq i8 %3, %1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %4 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %land.lhs.true8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.end
  %dst_len9 = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 1
  %6 = ptrtoint ptr %dst_len9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dst_len9, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp13.not = icmp eq i8 %7, %5
  br i1 %cmp13.not, label %land.lhs.true8.if.end16_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true8.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br i1 %tobool.not, label %if.end16.if.end26_crit_edge, label %land.lhs.true20

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end16
  %src = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 3
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %src, align 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp23.not = icmp eq i16 %9, %13
  br i1 %cmp23.not, label %land.lhs.true20.if.end26_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true20.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  br i1 %tobool7.not, label %if.end26.if.end38_crit_edge, label %land.lhs.true30

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true30:                                  ; preds = %if.end26
  %dst = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 5
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dst, align 2
  %arrayidx32 = getelementptr ptr, ptr %tb, i32 1
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx32, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i48, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %19)
  %cmp35.not = icmp eq i16 %15, %19
  br i1 %cmp35.not, label %land.lhs.true30.if.end38_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true30.if.end38_crit_edge, %if.end26.if.end38_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %land.lhs.true30.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end38 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ], [ 0, %land.lhs.true30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_rule_fill(ptr nocapture noundef readonly %rule, ptr noundef %skb, ptr nocapture noundef writeonly %frh) #0 align 64 {
entry:
  %tmp.i19 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_len = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dst_len, align 8
  %dst_len1 = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %2 = ptrtoint ptr %dst_len1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dst_len1, align 1
  %src_len = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 2
  %3 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src_len, align 1
  %src_len2 = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %5 = ptrtoint ptr %src_len2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %src_len2, align 2
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tos, align 1
  %7 = load i8, ptr %dst_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 5
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dst, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %src_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %src = getelementptr inbounds %struct.dn_fib_rule, ptr %rule, i32 0, i32 3
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %src, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i19) #8
  %15 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %tmp.i19, align 2
  %call.i20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool10.not = icmp eq i32 %call.i20, 0
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.nla_put_failure_crit_edge

land.lhs.true8.nla_put_failure_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true8.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %nla_put_failure ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_fib_rule_flush_cache(ptr nocapture noundef readnone %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dn_rt_cache_flush(i32 noundef -1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_fib_empty_table() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_rt_cache_flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @dn_fib_rules_ops, !1, !"dn_fib_rules_ops", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_rules.c", i32 38, i32 30}
!2 = !{ptr @dn_fib_rules_ops_template, !3, !"dn_fib_rules_ops_template", i1 false, i1 false}
!3 = !{!"../net/decnet/dn_rules.c", i32 223, i32 51}
!4 = !{ptr @dn_fib_rule_configure.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/decnet/dn_rules.c", i32 127, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148436324}
!16 = !{i64 2148350788, i64 2148350820, i64 2148350849, i64 2148350883, i64 2148350914, i64 2148350937}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2150431112}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2156865351, i64 2156865837, i64 2156865388, i64 2156865444, i64 2156865478, i64 2156865502, i64 2156865543, i64 2156865564, i64 2156865592, i64 2156865626}
!21 = !{i64 2156867071, i64 2156867557, i64 2156867108, i64 2156867164, i64 2156867198, i64 2156867222, i64 2156867263, i64 2156867284, i64 2156867312, i64 2156867346}
