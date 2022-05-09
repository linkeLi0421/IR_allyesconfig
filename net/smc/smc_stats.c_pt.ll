; ModuleID = '/llk/IR_all_yes/net/smc/smc_stats.c_pt.bc'
source_filename = "../net/smc/smc_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.112, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.112 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.130, [0 x i32], %union.anon.131, i16, i16, %union.anon.132, %struct.refcount_struct, [0 x i32], %union.anon.133 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { %struct.hlist_node }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.smc_stats = type { [2 x %struct.smc_stats_tech], i64, i64 }
%struct.smc_stats_tech = type { %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_memsize, %struct.smc_stats_rmbcnt, %struct.smc_stats_rmbcnt, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.smc_stats_memsize = type { [9 x i64] }
%struct.smc_stats_rmbcnt = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.smc_stats_rsn = type { [30 x %struct.smc_stats_fback], [30 x %struct.smc_stats_fback], i64, i64 }
%struct.smc_stats_fback = type { i32, i16 }

@smc_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&net->smc.mutex_fback_rsn\00", [38 x i8] zeroinitializer }, align 32
@smc_gen_nl_family = external dso_local global %struct.genl_family, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private constant [23 x i8] c"../net/smc/smc_stats.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 29, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 991, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @smc_stats_init.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_stats_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 496) #9
  %fback_rsn = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 55, i32 2
  %1 = ptrtoint ptr %fback_rsn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fback_rsn, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %smc = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 55
  %call3 = tail call noalias ptr @__alloc_percpu(i32 noundef 1024, i32 noundef 8) #10
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %smc, align 4
  %tobool7.not = icmp eq ptr %call3, null
  br i1 %tobool7.not, label %err_stats, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mutex_fback_rsn = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 55, i32 1
  tail call void @__mutex_init(ptr noundef %mutex_fback_rsn, ptr noundef nonnull @.str, ptr noundef nonnull @smc_stats_init.__key) #6
  br label %return

err_stats:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %fback_rsn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fback_rsn, align 4
  tail call void @kfree(ptr noundef %4) #6
  br label %return

return:                                           ; preds = %err_stats, %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.return_crit_edge ], [ -12, %err_stats ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_stats_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smc = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 55
  %fback_rsn = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 55, i32 2
  %0 = ptrtoint ptr %fback_rsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback_rsn, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_percpu(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_get_stats(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i84 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid, align 4
  %nlh4 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %12 = ptrtoint ptr %nlh4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh4, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %call5 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %11, i32 noundef %15, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 7) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool10.not92 = icmp eq ptr %17, null
  %tobool10.not = select i1 %cmp.i.i, i1 true, i1 %tobool10.not92
  br i1 %tobool10.not, label %if.end8.if.then.i_crit_edge, label %if.end12

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1024) #9
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.if.then.i.i_crit_edge, label %for.cond.preheader

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.cond.preheader:                               ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %call1796 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call1796, i32 %19)
  %cmp97 = icmp ult i32 %call1796, %19
  br i1 %cmp97, label %do.body.lr.ph, label %for.cond.preheader.for.end25_crit_edge

for.cond.preheader.for.end25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %smc = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 55
  br label %do.body

for.cond.loopexit:                                ; preds = %for.body22
  %call17 = tail call i32 @cpumask_next(i32 noundef %call1798, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp = icmp ult i32 %call17, %19
  br i1 %cmp, label %for.cond.loopexit.do.body_crit_edge, label %for.cond.loopexit.for.end25_crit_edge

for.cond.loopexit.for.end25_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end25

for.cond.loopexit.do.body_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.cond.loopexit.do.body_crit_edge, %do.body.lr.ph
  %call1798 = phi i32 [ %call1796, %do.body.lr.ph ], [ %call17, %for.cond.loopexit.do.body_crit_edge ]
  %20 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smc, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1798
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %24, %22
  %25 = inttoptr i32 %add to ptr
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %do.body
  %sum.095 = phi ptr [ %call7.i.i, %do.body ], [ %incdec.ptr23, %for.body22.for.body22_crit_edge ]
  %src.094 = phi ptr [ %25, %do.body ], [ %incdec.ptr, %for.body22.for.body22_crit_edge ]
  %i.093 = phi i32 [ 0, %do.body ], [ %inc, %for.body22.for.body22_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %src.094, i32 1
  %26 = ptrtoint ptr %src.094 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %src.094, align 8
  %incdec.ptr23 = getelementptr i64, ptr %sum.095, i32 1
  %28 = ptrtoint ptr %sum.095 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sum.095, align 8
  %add24 = add i64 %29, %27
  store i64 %add24, ptr %sum.095, align 8
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

for.end25:                                        ; preds = %for.cond.loopexit.for.end25_crit_edge, %for.cond.preheader.for.end25_crit_edge
  %call26 = tail call fastcc i32 @smc_nl_fill_stats_tech_data(ptr noundef %skb, ptr noundef nonnull %call7.i.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %for.end25.errattr_crit_edge

for.end25.errattr_crit_edge:                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %errattr

if.end29:                                         ; preds = %for.end25
  %call30 = tail call fastcc i32 @smc_nl_fill_stats_tech_data(ptr noundef %skb, ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.errattr_crit_edge

if.end29.errattr_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %errattr

if.end33:                                         ; preds = %if.end29
  %clnt_hshake_err_cnt = getelementptr inbounds %struct.smc_stats, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %clnt_hshake_err_cnt to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %clnt_hshake_err_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.errattr_crit_edge

if.end33.errattr_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %errattr

if.end37:                                         ; preds = %if.end33
  %srv_hshake_err_cnt = getelementptr inbounds %struct.smc_stats, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %srv_hshake_err_cnt to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %srv_hshake_err_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i84) #6
  %35 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %tmp.i84, align 8
  %call.i85 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i84, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool39.not = icmp eq i32 %call.i85, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.errattr_crit_edge

if.end37.errattr_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %errattr

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %17, align 2
  %add.ptr1.i = getelementptr i8, ptr %call5, i32 -20
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %0, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

errattr:                                          ; preds = %if.end37.errattr_crit_edge, %if.end33.errattr_crit_edge, %if.end29.errattr_crit_edge, %for.end25.errattr_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %errattr, %if.end12.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i87 = icmp ugt ptr %43, %17
  br i1 %cmp.i.i87, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !14

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i88 = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i89 = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i90 = sub i32 %sub.ptr.lhs.cast.i.i88, %sub.ptr.rhs.cast.i.i89
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i90) #6
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end8.if.then.i_crit_edge
  %add.ptr1.i91 = getelementptr i8, ptr %call5, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i91, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %47, %add.ptr1.i91
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !14

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i91 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_nl_fill_stats_tech_data(ptr noundef %skb, ptr nocapture noundef readonly %stats, i32 noundef %tech) unnamed_addr #0 align 64 {
entry:
  %tmp.i157 = alloca i64, align 8
  %tmp.i155 = alloca i64, align 8
  %tmp.i153 = alloca i64, align 8
  %tmp.i151 = alloca i64, align 8
  %tmp.i149 = alloca i64, align 8
  %tmp.i147 = alloca i64, align 8
  %tmp.i145 = alloca i64, align 8
  %tmp.i143 = alloca i64, align 8
  %tmp.i141 = alloca i64, align 8
  %tmp.i139 = alloca i64, align 8
  %tmp.i137 = alloca i64, align 8
  %tmp.i135 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tech)
  %cmp = icmp eq i32 %tech, 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not.old = icmp eq ptr %1, null
  %or.cond164 = select i1 %cmp.i.i, i1 true, i1 %tobool.not.old
  br i1 %or.cond164, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call1.i.i132 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i132)
  %cmp.i.i133 = icmp slt i32 %call1.i.i132, 0
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i.i133, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %if.then.if.end3_crit_edge
  %call4 = tail call fastcc i32 @smc_nl_fill_stats_rmb_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.if.then.i.i_crit_edge

if.end3.if.then.i.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @smc_nl_fill_stats_rmb_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.if.then.i.i_crit_edge

if.end7.if.then.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @smc_nl_fill_stats_bufsize_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.if.then.i.i_crit_edge

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @smc_nl_fill_stats_bufsize_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.if.then.i.i_crit_edge

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end19:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @smc_nl_fill_stats_bufsize_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.if.then.i.i_crit_edge

if.end19.if.then.i.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end23:                                         ; preds = %if.end19
  %call24 = tail call fastcc i32 @smc_nl_fill_stats_bufsize_data(ptr noundef %skb, ptr noundef %stats, i32 noundef %tech, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.if.then.i.i_crit_edge

if.end23.if.then.i.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end27:                                         ; preds = %if.end23
  %clnt_v1_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 6
  %2 = ptrtoint ptr %clnt_v1_succ_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %clnt_v1_succ_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.if.then.i.i_crit_edge

if.end27.if.then.i.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end31:                                         ; preds = %if.end27
  %clnt_v2_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 7
  %5 = ptrtoint ptr %clnt_v2_succ_cnt to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %clnt_v2_succ_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i135) #6
  %7 = ptrtoint ptr %tmp.i135 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tmp.i135, align 8
  %call.i136 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i135, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool33.not = icmp eq i32 %call.i136, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.if.then.i.i_crit_edge

if.end31.if.then.i.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end35:                                         ; preds = %if.end31
  %srv_v1_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 8
  %8 = ptrtoint ptr %srv_v1_succ_cnt to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %srv_v1_succ_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i137) #6
  %10 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tmp.i137, align 8
  %call.i138 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i137, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i137) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool37.not = icmp eq i32 %call.i138, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.if.then.i.i_crit_edge

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end39:                                         ; preds = %if.end35
  %srv_v2_succ_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 9
  %11 = ptrtoint ptr %srv_v2_succ_cnt to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %srv_v2_succ_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i139) #6
  %13 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tmp.i139, align 8
  %call.i140 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i139, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i139) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool41.not = icmp eq i32 %call.i140, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.if.then.i.i_crit_edge

if.end39.if.then.i.i_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end43:                                         ; preds = %if.end39
  %rx_bytes = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 15
  %14 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i141) #6
  %16 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i141, align 8
  %call.i142 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %tmp.i141, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i141) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool45.not = icmp eq i32 %call.i142, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.if.then.i.i_crit_edge

if.end43.if.then.i.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end47:                                         ; preds = %if.end43
  %tx_bytes = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 16
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i143) #6
  %19 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tmp.i143, align 8
  %call.i144 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 17, i32 noundef 8, ptr noundef nonnull %tmp.i143, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool49.not = icmp eq i32 %call.i144, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.if.then.i.i_crit_edge

if.end47.if.then.i.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end51:                                         ; preds = %if.end47
  %rx_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 17
  %20 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i145) #6
  %22 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tmp.i145, align 8
  %call.i146 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 18, i32 noundef 8, ptr noundef nonnull %tmp.i145, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i145) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool53.not = icmp eq i32 %call.i146, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.if.then.i.i_crit_edge

if.end51.if.then.i.i_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end55:                                         ; preds = %if.end51
  %tx_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 18
  %23 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i147) #6
  %25 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tmp.i147, align 8
  %call.i148 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 19, i32 noundef 8, ptr noundef nonnull %tmp.i147, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i147) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool57.not = icmp eq i32 %call.i148, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.if.then.i.i_crit_edge

if.end55.if.then.i.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end59:                                         ; preds = %if.end55
  %sendpage_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 10
  %26 = ptrtoint ptr %sendpage_cnt to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sendpage_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i149) #6
  %28 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %tmp.i149, align 8
  %call.i150 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i149, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i149) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool61.not = icmp eq i32 %call.i150, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.if.then.i.i_crit_edge

if.end59.if.then.i.i_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end63:                                         ; preds = %if.end59
  %cork_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 13
  %29 = ptrtoint ptr %cork_cnt to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cork_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i151) #6
  %31 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tmp.i151, align 8
  %call.i152 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 13, i32 noundef 8, ptr noundef nonnull %tmp.i151, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i151) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool65.not = icmp eq i32 %call.i152, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.if.then.i.i_crit_edge

if.end63.if.then.i.i_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end67:                                         ; preds = %if.end63
  %ndly_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 14
  %32 = ptrtoint ptr %ndly_cnt to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ndly_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i153) #6
  %34 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tmp.i153, align 8
  %call.i154 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 14, i32 noundef 8, ptr noundef nonnull %tmp.i153, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i153) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool69.not = icmp eq i32 %call.i154, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.if.then.i.i_crit_edge

if.end67.if.then.i.i_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end71:                                         ; preds = %if.end67
  %splice_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 12
  %35 = ptrtoint ptr %splice_cnt to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %splice_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i155) #6
  %37 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %tmp.i155, align 8
  %call.i156 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i155, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i155) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool73.not = icmp eq i32 %call.i156, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.if.then.i.i_crit_edge

if.end71.if.then.i.i_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end75:                                         ; preds = %if.end71
  %urg_data_cnt = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 11
  %38 = ptrtoint ptr %urg_data_cnt to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %urg_data_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i157) #6
  %40 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %tmp.i157, align 8
  %call.i158 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 15, i32 noundef 8, ptr noundef nonnull %tmp.i157, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i157) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool77.not = icmp eq i32 %call.i158, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.if.then.i.i_crit_edge

if.end75.if.then.i.i_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end79:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end75.if.then.i.i_crit_edge, %if.end71.if.then.i.i_crit_edge, %if.end67.if.then.i.i_crit_edge, %if.end63.if.then.i.i_crit_edge, %if.end59.if.then.i.i_crit_edge, %if.end55.if.then.i.i_crit_edge, %if.end51.if.then.i.i_crit_edge, %if.end47.if.then.i.i_crit_edge, %if.end43.if.then.i.i_crit_edge, %if.end39.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge, %if.end31.if.then.i.i_crit_edge, %if.end27.if.then.i.i_crit_edge, %if.end23.if.then.i.i_crit_edge, %if.end19.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.end7.if.then.i.i_crit_edge, %if.end3.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i159 = icmp ugt ptr %45, %1
  br i1 %cmp.i.i159, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !14

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end79, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end79 ], [ -90, %nla_nest_cancel.exit ], [ -90, %if.then.cleanup_crit_edge ], [ -90, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_nl_get_fback_stats(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %mutex_fback_rsn = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 55, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex_fback_rsn, i32 noundef 0) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %skip_serv.054 = phi i32 [ %7, %entry ], [ %skip_serv.2, %for.inc.for.body_crit_edge ]
  %k.052 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %rc_srv.051 = phi i32 [ 0, %entry ], [ %rc_srv.2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.052, i32 %9)
  %cmp4 = icmp slt i32 %k.052, %9
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_serv.054)
  %tobool.not = icmp eq i32 %skip_serv.054, 0
  br i1 %tobool.not, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %call7 = tail call fastcc i32 @smc_nl_get_fback_details(ptr noundef %skb, ptr noundef %cb, i32 noundef %k.052, i1 noundef zeroext true)
  %10 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %if.then5.for.end_crit_edge [
    i32 0, label %if.then5.if.end12_crit_edge
    i32 -61, label %if.end12.fold.split
  ]

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end12.fold.split:                              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.fold.split, %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %rc_srv.1 = phi i32 [ %call7, %if.then5.if.end12_crit_edge ], [ -61, %if.end12.fold.split ], [ %rc_srv.051, %if.end.if.end12_crit_edge ]
  %call14 = tail call fastcc i32 @smc_nl_get_fback_details(ptr noundef %skb, ptr noundef %cb, i32 noundef %k.052, i1 noundef zeroext false)
  %11 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call14, label %if.end12.for.end_crit_edge [
    i32 -61, label %land.lhs.true21
    i32 0, label %if.end12.for.inc_crit_edge
  ]

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true21:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %rc_srv.1)
  %cmp22 = icmp eq i32 %rc_srv.1, -61
  br i1 %cmp22, label %land.lhs.true21.for.end_crit_edge, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true21.for.end_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true21.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %rc_srv.2 = phi i32 [ %rc_srv.051, %for.body.for.inc_crit_edge ], [ %rc_srv.1, %land.lhs.true21.for.inc_crit_edge ], [ %rc_srv.1, %if.end12.for.inc_crit_edge ]
  %skip_serv.2 = phi i32 [ %skip_serv.054, %for.body.for.inc_crit_edge ], [ 0, %land.lhs.true21.for.inc_crit_edge ], [ %call14, %if.end12.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %k.052, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true21.for.end_crit_edge, %if.end12.for.end_crit_edge, %if.then5.for.end_crit_edge
  %k.0.lcssa = phi i32 [ %k.052, %if.end12.for.end_crit_edge ], [ %k.052, %if.then5.for.end_crit_edge ], [ %k.052, %land.lhs.true21.for.end_crit_edge ], [ 30, %for.inc.for.end_crit_edge ]
  %skip_serv.3 = phi i32 [ 1, %if.end12.for.end_crit_edge ], [ 0, %if.then5.for.end_crit_edge ], [ 0, %land.lhs.true21.for.end_crit_edge ], [ %skip_serv.2, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex_fback_rsn) #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %skip_serv.3, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %k.0.lcssa, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_nl_get_fback_details(ptr noundef %skb, ptr nocapture noundef %cb, i32 noundef %pos, i1 noundef zeroext %is_srv) unnamed_addr #0 align 64 {
entry:
  %tmp.i95 = alloca i16, align 2
  %tmp.i93 = alloca i32, align 4
  %tmp.i91 = alloca i64, align 8
  %tmp.i89 = alloca i64, align 8
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_srv to i8
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %fback_rsn = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 55, i32 2
  %7 = ptrtoint ptr %fback_rsn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fback_rsn, align 4
  %clnt = getelementptr inbounds %struct.smc_stats_rsn, ptr %8, i32 0, i32 1
  %trgt_arr.0 = select i1 %is_srv, ptr %8, ptr %clnt
  %arrayidx7 = getelementptr %struct.smc_stats_fback, ptr %trgt_arr.0, i32 %pos
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %11 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 12
  %13 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid, align 4
  %nlh13 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %15 = ptrtoint ptr %nlh13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nlh13, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlmsg_seq, align 4
  %call14 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %14, i32 noundef %18, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 8) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool19.not103 = icmp eq ptr %20, null
  %tobool19.not = select i1 %cmp.i.i, i1 true, i1 %tobool19.not103
  br i1 %tobool19.not, label %if.end17.if.then.i_crit_edge, label %if.end21

if.end17.if.then.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end21:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.if.then.i.i_crit_edge

if.end21.if.then.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not = icmp eq i32 %6, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then28:                                        ; preds = %if.end26
  %fback_rsn30 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 55, i32 2
  %22 = ptrtoint ptr %fback_rsn30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fback_rsn30, align 4
  %srv_fback_cnt = getelementptr inbounds %struct.smc_stats_rsn, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %srv_fback_cnt to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %srv_fback_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i89) #6
  %26 = ptrtoint ptr %tmp.i89 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tmp.i89, align 8
  %call.i90 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i89, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool32.not = icmp eq i32 %call.i90, 0
  br i1 %tobool32.not, label %if.end34, label %if.then28.if.then.i.i_crit_edge

if.then28.if.then.i.i_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end34:                                         ; preds = %if.then28
  %27 = ptrtoint ptr %fback_rsn30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fback_rsn30, align 4
  %clnt_fback_cnt = getelementptr inbounds %struct.smc_stats_rsn, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %clnt_fback_cnt to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %clnt_fback_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i91) #6
  %31 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tmp.i91, align 8
  %call.i92 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i91, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i91) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool38.not = icmp eq i32 %call.i92, 0
  br i1 %tobool38.not, label %if.end34.if.end41_crit_edge, label %if.end34.if.then.i.i_crit_edge

if.end34.if.then.i.i_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %if.end34.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %cnt_reported.0 = phi i32 [ %6, %if.end26.if.end41_crit_edge ], [ 1, %if.end34.if.end41_crit_edge ]
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i93) #6
  %34 = ptrtoint ptr %tmp.i93 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i93, align 4
  %call.i94 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i93) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool45.not = icmp eq i32 %call.i94, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.if.then.i.i_crit_edge

if.end41.if.then.i.i_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end47:                                         ; preds = %if.end41
  %count = getelementptr %struct.smc_stats_fback, ptr %trgt_arr.0, i32 %pos, i32 1
  %35 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i95) #6
  %37 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %tmp.i95, align 2
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i95) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool50.not = icmp eq i32 %call.i96, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.if.then.i.i_crit_edge

if.end47.if.then.i.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cnt_reported.0, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %20, align 2
  %add.ptr1.i = getelementptr i8, ptr %call14, i32 -20
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %43 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end47.if.then.i.i_crit_edge, %if.end41.if.then.i.i_crit_edge, %if.end34.if.then.i.i_crit_edge, %if.then28.if.then.i.i_crit_edge, %if.end21.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i98 = icmp ugt ptr %45, %20
  br i1 %cmp.i.i98, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !14

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i99 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i100 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i101 = sub i32 %sub.ptr.lhs.cast.i.i99, %sub.ptr.rhs.cast.i.i100
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i101) #6
  br label %if.then.i

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end17.if.then.i_crit_edge
  %add.ptr1.i102 = getelementptr i8, ptr %call14, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i102, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %49, %add.ptr1.i102
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !14

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i102 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end52, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -61, %entry.cleanup_crit_edge ], [ -90, %if.end10.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_nl_fill_stats_rmb_data(ptr noundef %skb, ptr nocapture noundef readonly %stats, i32 noundef %tech, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tmp.i65 = alloca i64, align 8
  %tmp.i63 = alloca i64, align 8
  %tmp.i61 = alloca i64, align 8
  %tmp.i59 = alloca i64, align 8
  %tmp.i57 = alloca i64, align 8
  %tmp.i55 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp = icmp eq i32 %type, 5
  %rmb_tx = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 4
  %rmb_rx = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 5
  %stats_rmb_cnt.0 = select i1 %cmp, ptr %rmb_tx, ptr %rmb_rx
  %or.i = or i32 %type, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not68 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not68
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %reuse_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 4
  %2 = ptrtoint ptr %reuse_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reuse_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.then.i.i_crit_edge

if.end4.if.then.i.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end8:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %stats_rmb_cnt.0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %stats_rmb_cnt.0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i55) #6
  %7 = ptrtoint ptr %tmp.i55 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tmp.i55, align 8
  %call.i56 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i55, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool10.not = icmp eq i32 %call.i56, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.if.then.i.i_crit_edge

if.end8.if.then.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end12:                                         ; preds = %if.end8
  %buf_size_small_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 1
  %8 = ptrtoint ptr %buf_size_small_cnt to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buf_size_small_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i57) #6
  %10 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %tmp.i57, align 8
  %call.i58 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i57, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool14.not = icmp eq i32 %call.i58, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.if.then.i.i_crit_edge

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end16:                                         ; preds = %if.end12
  %buf_full_peer_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 2
  %11 = ptrtoint ptr %buf_full_peer_cnt to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %buf_full_peer_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i59) #6
  %13 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tmp.i59, align 8
  %call.i60 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i59, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool18.not = icmp eq i32 %call.i60, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end20:                                         ; preds = %if.end16
  %buf_full_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 3
  %14 = ptrtoint ptr %buf_full_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %buf_full_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i61) #6
  %16 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tmp.i61, align 8
  %call.i62 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i61, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool22.not = icmp eq i32 %call.i62, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end20
  %alloc_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 5
  %17 = ptrtoint ptr %alloc_cnt to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %alloc_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i63) #6
  %19 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tmp.i63, align 8
  %call.i64 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i63, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool26.not = icmp eq i32 %call.i64, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end28:                                         ; preds = %if.end24
  %dgrade_cnt = getelementptr inbounds %struct.smc_stats_rmbcnt, ptr %stats_rmb_cnt.0, i32 0, i32 6
  %20 = ptrtoint ptr %dgrade_cnt to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dgrade_cnt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i65) #6
  %22 = ptrtoint ptr %tmp.i65 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tmp.i65, align 8
  %call.i66 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i65, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool30.not = icmp eq i32 %call.i66, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.if.then.i.i_crit_edge

if.end28.if.then.i.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end28.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge, %if.end12.if.then.i.i_crit_edge, %if.end8.if.then.i.i_crit_edge, %if.end4.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i67 = icmp ugt ptr %27, %1
  br i1 %cmp.i.i67, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !14

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_nl_fill_stats_bufsize_data(ptr noundef %skb, ptr nocapture noundef readonly %stats, i32 noundef %tech, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %tmp.i121 = alloca i64, align 8
  %tmp.i119 = alloca i64, align 8
  %tmp.i117 = alloca i64, align 8
  %tmp.i115 = alloca i64, align 8
  %tmp.i113 = alloca i64, align 8
  %tmp.i111 = alloca i64, align 8
  %tmp.i109 = alloca i64, align 8
  %tmp.i107 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 3, label %if.then
    i32 4, label %if.then2
    i32 1, label %if.then7
    i32 2, label %if.then12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pd = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 2
  br label %if.end18

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pd = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 3
  br label %if.end18

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech
  br label %if.end18

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_rmbsize = getelementptr [2 x %struct.smc_stats_tech], ptr %stats, i32 0, i32 %tech, i32 1
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.then7, %if.then2, %if.then
  %stats_pload.0 = phi ptr [ %tx_pd, %if.then ], [ %rx_pd, %if.then2 ], [ %arrayidx9, %if.then7 ], [ %rx_rmbsize, %if.then12 ]
  %or.i = or i32 %type, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %1 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not124 = icmp eq ptr %2, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not124
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %if.end20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end18
  %3 = ptrtoint ptr %stats_pload.0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %stats_pload.0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %arrayidx27 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx27, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i107) #6
  %8 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tmp.i107, align 8
  %call.i108 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i107, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool29.not = icmp eq i32 %call.i108, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end31:                                         ; preds = %if.end25
  %arrayidx33 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx33, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i109) #6
  %11 = ptrtoint ptr %tmp.i109 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tmp.i109, align 8
  %call.i110 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i109, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool35.not = icmp eq i32 %call.i110, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.if.then.i.i_crit_edge

if.end31.if.then.i.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end37:                                         ; preds = %if.end31
  %arrayidx39 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx39, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i111) #6
  %14 = ptrtoint ptr %tmp.i111 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %tmp.i111, align 8
  %call.i112 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i111, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool41.not = icmp eq i32 %call.i112, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.if.then.i.i_crit_edge

if.end37.if.then.i.i_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end43:                                         ; preds = %if.end37
  %arrayidx45 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx45, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i113) #6
  %17 = ptrtoint ptr %tmp.i113 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tmp.i113, align 8
  %call.i114 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i113, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool47.not = icmp eq i32 %call.i114, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.if.then.i.i_crit_edge

if.end43.if.then.i.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end49:                                         ; preds = %if.end43
  %arrayidx51 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx51, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i115) #6
  %20 = ptrtoint ptr %tmp.i115 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %tmp.i115, align 8
  %call.i116 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i115, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool53.not = icmp eq i32 %call.i116, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.if.then.i.i_crit_edge

if.end49.if.then.i.i_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end55:                                         ; preds = %if.end49
  %arrayidx57 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx57, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i117) #6
  %23 = ptrtoint ptr %tmp.i117 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tmp.i117, align 8
  %call.i118 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i117, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool59.not = icmp eq i32 %call.i118, 0
  br i1 %tobool59.not, label %if.end61, label %if.end55.if.then.i.i_crit_edge

if.end55.if.then.i.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end61:                                         ; preds = %if.end55
  %arrayidx63 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 7
  %24 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx63, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i119) #6
  %26 = ptrtoint ptr %tmp.i119 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %tmp.i119, align 8
  %call.i120 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i119, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool65.not = icmp eq i32 %call.i120, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.if.then.i.i_crit_edge

if.end61.if.then.i.i_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end67:                                         ; preds = %if.end61
  %arrayidx69 = getelementptr [9 x i64], ptr %stats_pload.0, i32 0, i32 8
  %27 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx69, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i121) #6
  %29 = ptrtoint ptr %tmp.i121 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %tmp.i121, align 8
  %call.i122 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %tmp.i121, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool71.not = icmp eq i32 %call.i122, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.if.then.i.i_crit_edge

if.end67.if.then.i.i_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %2, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end67.if.then.i.i_crit_edge, %if.end61.if.then.i.i_crit_edge, %if.end55.if.then.i.i_crit_edge, %if.end49.if.then.i.i_crit_edge, %if.end43.if.then.i.i_crit_edge, %if.end37.if.then.i.i_crit_edge, %if.end31.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i123 = icmp ugt ptr %34, %2
  br i1 %cmp.i.i123, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !14

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end73, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end18.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @smc_stats_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/smc/smc_stats.c", i32 29, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/net/netlink.h", i32 991, i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
