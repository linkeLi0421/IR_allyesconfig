; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_in.c_pt.bc'
source_filename = "../net/ax25/ax25_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.ax25_address = type { [7 x i8] }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ax25_digi = type { [8 x %struct.ax25_address], [8 x i8], i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax25_sock = type { %struct.sock, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.99, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.99 = type { ptr }

@init_net = external dso_local global %struct.net, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 204]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 204, i64 205, i64 240]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 15, i64 47, i64 111]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_rx_iframe(ptr noundef %ax25, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ax25_start_idletimer(ptr noundef %ax25) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end17 [
    i8 -52, label %if.then3
    i8 8, label %if.then14
  ]

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @skb_copy(ptr noundef nonnull %skb, i32 noundef 2592) #5
  %cmp4.not = icmp eq ptr %call, null
  br i1 %cmp4.not, label %if.then3.if.end7_crit_edge, label %if.then6

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3.if.end7_crit_edge
  %skb.addr.0 = phi ptr [ %call, %if.then6 ], [ %skb, %if.then3.if.end7_crit_edge ]
  %call8 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0, i32 noundef 1) #5
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header, align 4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %mac_header, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %12 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ax25_dev, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2048, ptr %protocol, align 8
  %call9 = tail call i32 @netif_rx(ptr noundef nonnull %skb.addr.0) #5
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %call15 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 1) #5
  %fragno.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 26
  %20 = ptrtoint ptr %fragno.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fragno.i, align 2
  %conv.i84 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 0
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then14
  %conv2.i = zext i8 %25 to i32
  %and.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i
  %sub.i = add nsw i32 %conv.i84, -1
  %and8.i = and i32 %conv2.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and8.i)
  %cmp9.i = icmp eq i32 %sub.i, %and8.i
  br i1 %cmp9.i, label %if.then11.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i:                                      ; preds = %if.then3.i
  %conv15.i = trunc i32 %sub.i to i16
  %26 = ptrtoint ptr %fragno.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv15.i, ptr %fragno.i, align 2
  %call.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 1) #5
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %fraglen.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 27
  %29 = ptrtoint ptr %fraglen.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fraglen.i, align 4
  %31 = trunc i32 %28 to i16
  %conv18.i = add i16 %30, %31
  store i16 %conv18.i, ptr %fraglen.i, align 4
  %frag_queue.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 31
  tail call void @skb_queue_tail(ptr noundef %frag_queue.i, ptr noundef nonnull %skb) #5
  %32 = ptrtoint ptr %fragno.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fragno.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp21.i = icmp eq i16 %33, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.then11.i.cleanup_crit_edge

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23.i:                                      ; preds = %if.then11.i
  %34 = ptrtoint ptr %fraglen.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fraglen.i, align 4
  %conv25.i = zext i16 %35 to i32
  %add26.i = add nuw nsw i32 %conv25.i, 73
  %call.i101 = tail call ptr @__alloc_skb(i32 noundef %add26.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool28.not.i = icmp eq ptr %call.i101, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end.i

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_queue_purge(ptr noundef %frag_queue.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then23.i
  %data.i100 = getelementptr inbounds %struct.sk_buff, ptr %call.i101, i32 0, i32 19
  %36 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i100, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 73
  store ptr %add.ptr.i, ptr %data.i100, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i101, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %39, i32 73
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %ax25_dev.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %40 = ptrtoint ptr %ax25_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ax25_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.ax25_dev, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = getelementptr inbounds %struct.anon.0, ptr %call.i101, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %44, align 8
  %head.i94 = getelementptr inbounds %struct.sk_buff, ptr %call.i101, i32 0, i32 18
  %46 = ptrtoint ptr %head.i94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i94, align 8
  %sub.ptr.lhs.cast.i95 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i96 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i97 = sub i32 %sub.ptr.lhs.cast.i95, %sub.ptr.rhs.cast.i96
  %conv.i98 = trunc i32 %sub.ptr.sub.i97 to i16
  %network_header.i99 = getelementptr inbounds %struct.sk_buff, ptr %call.i101, i32 0, i32 15, i32 0, i32 20
  %48 = ptrtoint ptr %network_header.i99 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i98, ptr %network_header.i99, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i101, i32 0, i32 15, i32 0, i32 19
  %49 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i98, ptr %transport_header.i, align 2
  %call32.i102 = tail call ptr @skb_dequeue(ptr noundef %frag_queue.i) #5
  %cmp33.not.i103 = icmp eq ptr %call32.i102, null
  br i1 %cmp33.not.i103, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %call32.i104 = phi ptr [ %call32.i, %while.body.i.while.body.i_crit_edge ], [ %call32.i102, %if.end.i.while.body.i_crit_edge ]
  %len35.i = getelementptr inbounds %struct.sk_buff, ptr %call32.i104, i32 0, i32 6
  %50 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len35.i, align 4
  %call36.i = tail call ptr @skb_put(ptr noundef nonnull %call.i101, i32 noundef %51) #5
  %52 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len35.i, align 4
  %data.i86 = getelementptr inbounds %struct.sk_buff, ptr %call32.i104, i32 0, i32 19
  %54 = ptrtoint ptr %data.i86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i86, align 4
  %56 = call ptr @memcpy(ptr %call36.i, ptr %55, i32 %53)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call32.i104, i32 noundef 0) #5
  %call32.i = tail call ptr @skb_dequeue(ptr noundef %frag_queue.i) #5
  %cmp33.not.i = icmp eq ptr %call32.i, null
  br i1 %cmp33.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %57 = ptrtoint ptr %fraglen.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %fraglen.i, align 4
  %call39.i = tail call i32 @ax25_rx_iframe(ptr noundef %ax25, ptr noundef nonnull %call.i101) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp eq i32 %call39.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %while.end.i.cleanup_crit_edge

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i101, i32 noundef 0) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool50.not.i = icmp sgt i8 %25, -1
  br i1 %tobool50.not.i, label %if.else.i.cleanup_crit_edge, label %if.then51.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %frag_queue52.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 31
  tail call void @skb_queue_purge(ptr noundef %frag_queue52.i) #5
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %62 = and i8 %61, 127
  %conv56.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %fragno.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv56.i, ptr %fragno.i, align 2
  %call58.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 1) #5
  %len59.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len59.i, align 4
  %conv60.i = trunc i32 %65 to i16
  %fraglen61.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 27
  %66 = ptrtoint ptr %fraglen61.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv60.i, ptr %fraglen61.i, align 4
  tail call void @skb_queue_tail(ptr noundef %frag_queue52.i, ptr noundef nonnull %skb) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv = zext i8 %3 to i32
  %call19 = tail call ptr @ax25_protocol_function(i32 noundef %conv) #5
  %cmp20.not = icmp eq ptr %call19, null
  br i1 %cmp20.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 1) #5
  %call24 = tail call i32 %call19(ptr noundef nonnull %skb, ptr noundef %ax25) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %sk = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %67 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sk, align 4
  %cmp26.not = icmp eq ptr %68, null
  br i1 %cmp26.not, label %if.end25.cleanup_crit_edge, label %land.lhs.true

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end25
  %ax25_dev28 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %69 = ptrtoint ptr %ax25_dev28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ax25_dev28, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %70, i32 0, i32 5, i32 3
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp29 = icmp eq i32 %72, 2
  br i1 %cmp29, label %if.then31, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  %pidincl = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 8
  %73 = ptrtoint ptr %pidincl to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pidincl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not = icmp eq i8 %74, 0
  br i1 %tobool.not, label %land.lhs.true32, label %if.then31.if.then41_crit_edge

if.then31.if.then41_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

land.lhs.true32:                                  ; preds = %if.then31
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %68, i32 0, i32 46
  %75 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sk_protocol, align 4
  %77 = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %77)
  %cmp36 = icmp eq i16 %76, %77
  br i1 %cmp36, label %land.lhs.true32.if.then41_crit_edge, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true32.if.then41_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %land.lhs.true32.if.then41_crit_edge, %if.then31.if.then41_crit_edge
  %call43 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %68, ptr noundef nonnull %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then41.cleanup_crit_edge, label %if.else

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %78 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %condition, align 2
  %80 = or i8 %79, 8
  store i8 %80, ptr %condition, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then41.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then22, %if.then51.i, %if.else.i.cleanup_crit_edge, %if.then42.i, %while.end.i.cleanup_crit_edge, %if.then29.i, %if.then11.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end7 ], [ %call24, %if.then22 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 1, %if.then41.cleanup_crit_edge ], [ 1, %if.then29.i ], [ 1, %if.then51.i ], [ 1, %while.end.i.cleanup_crit_edge ], [ 1, %if.then42.i ], [ 1, %if.then11.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 0, %land.lhs.true32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_protocol_function(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_kiss_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %ptype, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  %src.i = alloca %struct.ax25_address, align 1
  %dest.i = alloca %struct.ax25_address, align 1
  %type.i = alloca i32, align 4
  %dama.i = alloca i32, align 4
  %dp.i = alloca %struct.ax25_digi, align 1
  %reverse_dp.i = alloca %struct.ax25_digi, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %skb) #5
  %2 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %destructor.i, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !9

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %9, @init_net
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

if.end:                                           ; preds = %skb_orphan.exit
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %14 = and i8 %13, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %src.i) #5
  %17 = call ptr @memset(ptr %src.i, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %dest.i) #5
  %18 = call ptr @memset(ptr %dest.i, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #5
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dama.i) #5
  %20 = ptrtoint ptr %dama.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dama.i, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %dp.i) #5
  %21 = call ptr @memset(ptr %dp.i, i32 255, i32 66)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %reverse_dp.i) #5
  %22 = call ptr @memset(ptr %reverse_dp.i, i32 255, i32 66)
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %27 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %ax25_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %28 = ptrtoint ptr %ax25_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ax25_ptr.i.i, align 4
  %cmp.i14 = icmp eq ptr %29, null
  br i1 %cmp.i14, label %if.end4.free.i_crit_edge, label %if.end.i

if.end4.free.i_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end.i:                                         ; preds = %if.end4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %call1.i = call ptr @ax25_addr_parse(ptr noundef %24, i32 noundef %31, ptr noundef nonnull %src.i, ptr noundef nonnull %dest.i, ptr noundef nonnull %dp.i, ptr noundef nonnull %type.i, ptr noundef nonnull %dama.i) #5
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.end.i.free.i_crit_edge, label %if.end4.i

if.end.i.free.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end4.i:                                        ; preds = %if.end.i
  %lastrepeat.i = getelementptr inbounds %struct.ax25_digi, ptr %dp.i, i32 0, i32 3
  %32 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lastrepeat.i, align 1
  %conv.i15 = sext i8 %33 to i32
  %add.i = add nsw i32 %conv.i15, 1
  %ndigi.i = getelementptr inbounds %struct.ax25_digi, ptr %dp.i, i32 0, i32 2
  %34 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ndigi.i, align 1
  %conv5.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv5.i)
  %cmp6.i = icmp slt i32 %add.i, %conv5.i
  %arrayidx.i = getelementptr [8 x %struct.ax25_address], ptr %dp.i, i32 0, i32 %add.i
  %spec.select.i = select i1 %cmp6.i, ptr %arrayidx.i, ptr null
  %call13.i = call i32 @ax25_addr_size(ptr noundef nonnull %dp.i) #5
  %call14.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %call13.i) #5
  %call15.i = call i32 @ax25cmp(ptr noundef nonnull %dest.i, ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.end4.i.land.lhs.true27.i_crit_edge

if.end4.i.land.lhs.true27.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true27.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %36 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %lastrepeat.i, align 1
  %conv19.i = sext i8 %37 to i32
  %add20.i = add nsw i32 %conv19.i, 1
  %38 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ndigi.i, align 1
  %conv22.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %conv22.i)
  %cmp23.not.i = icmp eq i32 %add20.i, %conv22.i
  br i1 %cmp23.not.i, label %land.lhs.true.i.if.end39.i_crit_edge, label %land.lhs.true.i.land.lhs.true27.i_crit_edge

land.lhs.true.i.land.lhs.true27.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true27.i

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true27.i:                                ; preds = %land.lhs.true.i.land.lhs.true27.i_crit_edge, %if.end4.i.land.lhs.true27.i_crit_edge
  %call28.i = call i32 @ax25_listen_mine(ptr noundef nonnull %dest.i, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true27.i.if.end39.i_crit_edge, label %land.lhs.true30.i

land.lhs.true27.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true30.i:                                ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %lastrepeat.i, align 1
  %conv32.i = sext i8 %41 to i32
  %add33.i = add nsw i32 %conv32.i, 1
  %42 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ndigi.i, align 1
  %conv35.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %conv35.i)
  %cmp36.i = icmp ne i32 %add33.i, %conv35.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true30.i, %land.lhs.true27.i.if.end39.i_crit_edge, %land.lhs.true.i.if.end39.i_crit_edge
  %tobool167.not.i = phi i1 [ true, %land.lhs.true27.i.if.end39.i_crit_edge ], [ false, %land.lhs.true.i.if.end39.i_crit_edge ], [ %cmp36.i, %land.lhs.true30.i ]
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %48 = and i8 %47, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp42.i = icmp eq i8 %48, 3
  br i1 %cmp42.i, label %land.lhs.true44.i, label %if.end39.i.if.end96.i_crit_edge

if.end39.i.if.end96.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96.i

land.lhs.true44.i:                                ; preds = %if.end39.i
  %49 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lastrepeat.i, align 1
  %conv46.i = sext i8 %50 to i32
  %add47.i = add nsw i32 %conv46.i, 1
  %51 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ndigi.i, align 1
  %conv49.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.i, i32 %conv49.i)
  %cmp50.i = icmp eq i32 %add47.i, %conv49.i
  br i1 %cmp50.i, label %if.then52.i, label %land.lhs.true44.i.if.end96.i_crit_edge

land.lhs.true44.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96.i

if.then52.i:                                      ; preds = %land.lhs.true44.i
  %53 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %add.i.i = add i16 %conv.i.i.i, 2
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %add.i.i, ptr %transport_header.i.i, align 2
  %arrayidx54.i = getelementptr i8, ptr %45, i32 1
  %56 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %57 to i32
  call void @ax25_send_to_raw(ptr noundef nonnull %dest.i, ptr noundef %skb, i32 noundef %conv55.i) #5
  br i1 %tobool167.not.i, label %land.lhs.true57.i, label %if.then52.i.if.end62.i_crit_edge

if.then52.i.if.end62.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

land.lhs.true57.i:                                ; preds = %if.then52.i
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %call58.i = call i32 @ax25cmp(ptr noundef nonnull %dest.i, ptr noundef %broadcast.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.not.i = icmp eq i32 %call58.i, 0
  br i1 %cmp59.not.i, label %land.lhs.true57.i.if.end62.i_crit_edge, label %land.lhs.true57.i.free.i_crit_edge

land.lhs.true57.i.free.i_crit_edge:               ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

land.lhs.true57.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.end62.i:                                       ; preds = %land.lhs.true57.i.if.end62.i_crit_edge, %if.then52.i.if.end62.i_crit_edge
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %arrayidx64.i = getelementptr i8, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx64.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %61, label %sw.default.i [
    i8 -52, label %sw.bb.i
    i8 -51, label %sw.bb68.i
    i8 -16, label %sw.bb76.i
  ]

sw.bb.i:                                          ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %call66.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i5.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i6.i = ptrtoint ptr %66 to i32
  %sub.ptr.sub.i7.i = sub i32 %sub.ptr.lhs.cast.i5.i, %sub.ptr.rhs.cast.i6.i
  %conv.i8.i = trunc i32 %sub.ptr.sub.i7.i to i16
  %67 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i8.i, ptr %transport_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %68 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i8.i, ptr %network_header.i.i, align 4
  %69 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev, ptr %69, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %71 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %72 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2048, ptr %protocol.i, align 8
  %call67.i = call i32 @netif_rx(ptr noundef %skb) #5
  br label %ax25_rcv.exit

sw.bb68.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %call69.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i18.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i19.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i20.i = sub i32 %sub.ptr.lhs.cast.i18.i, %sub.ptr.rhs.cast.i19.i
  %conv.i21.i = trunc i32 %sub.ptr.sub.i20.i to i16
  %77 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i21.i, ptr %transport_header.i.i, align 2
  %network_header.i29.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %78 = ptrtoint ptr %network_header.i29.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i21.i, ptr %network_header.i29.i, align 4
  %79 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %79, align 8
  %pkt_type70.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %81 = ptrtoint ptr %pkt_type70.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load71.i = load i16, ptr %pkt_type70.i, align 8
  %bf.clear72.i = and i16 %bf.load71.i, 8191
  store i16 %bf.clear72.i, ptr %pkt_type70.i, align 8
  %protocol74.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %82 = ptrtoint ptr %protocol74.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 2054, ptr %protocol74.i, align 8
  %call75.i = call i32 @netif_rx(ptr noundef %skb) #5
  br label %ax25_rcv.exit

sw.bb76.i:                                        ; preds = %if.end62.i
  %call77.i = call ptr @ax25_get_socket(ptr noundef nonnull %dest.i, ptr noundef nonnull %src.i, i32 noundef 2) #5
  %cmp78.not.i = icmp eq ptr %call77.i, null
  br i1 %cmp78.not.i, label %if.else94.i, label %if.then80.i

if.then80.i:                                      ; preds = %sw.bb76.i
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call77.i, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock.i) #5
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %call77.i, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #5
  %83 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %call77.i, i32 0, i32 15
  %85 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp82.not.i = icmp slt i32 %84, %86
  br i1 %cmp82.not.i, label %if.else.i, label %if.then80.i.if.end91.sink.split.i_crit_edge

if.then80.i.if.end91.sink.split.i_crit_edge:      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.sink.split.i

if.else.i:                                        ; preds = %if.then80.i
  %call85.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %call86.i = call i32 @sock_queue_rcv_skb(ptr noundef nonnull %call77.i, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.not.i = icmp eq i32 %call86.i, 0
  br i1 %cmp87.not.i, label %if.else.i.if.end91.i_crit_edge, label %if.else.i.if.end91.sink.split.i_crit_edge

if.else.i.if.end91.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.sink.split.i

if.else.i.if.end91.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.i

if.end91.sink.split.i:                            ; preds = %if.else.i.if.end91.sink.split.i_crit_edge, %if.then80.i.if.end91.sink.split.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end91.sink.split.i, %if.else.i.if.end91.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #5
  %skc_refcnt.i43 = getelementptr inbounds %struct.sock_common, ptr %call77.i, i32 0, i32 19
  %call.i.i.i.i.i.i44 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i43, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i43, i32 1, i32 3, i32 1) #5
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i43, ptr %skc_refcnt.i43, i32 1, ptr elementtype(i32) %skc_refcnt.i43) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i45 = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i45)
  %cmp.i.i.i.i46 = icmp eq i32 %asmresult.i.i.i.i.i.i.i45, 1
  br i1 %cmp.i.i.i.i46, label %if.then.i50, label %if.end5.i.i.i.i48

if.end5.i.i.i.i48:                                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i45)
  %.not.i.i.i.i47 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i45, 0
  br i1 %.not.i.i.i.i47, label %if.end5.i.i.i.i48.ax25_rcv.exit_crit_edge, label %if.then10.i.i.i.i49, !prof !9

if.end5.i.i.i.i48.ax25_rcv.exit_crit_edge:        ; preds = %if.end5.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then10.i.i.i.i49:                              ; preds = %if.end5.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i43, i32 noundef 3) #5
  br label %ax25_rcv.exit

if.then.i50:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @sk_free(ptr noundef nonnull %call77.i) #5
  br label %ax25_rcv.exit

if.else94.i:                                      ; preds = %sw.bb76.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %ax25_rcv.exit

sw.default.i:                                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %ax25_rcv.exit

if.end96.i:                                       ; preds = %land.lhs.true44.i.if.end96.i_crit_edge, %if.end39.i.if.end96.i_crit_edge
  %arrayidx97.i = getelementptr %struct.ax25_dev, ptr %29, i32 0, i32 5, i32 3
  %88 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp98.i = icmp eq i32 %89, 0
  br i1 %cmp98.i, label %if.end96.i.free.i_crit_edge, label %if.end101.i

if.end96.i.free.i_crit_edge:                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end101.i:                                      ; preds = %if.end96.i
  call void @ax25_digi_invert(ptr noundef nonnull %dp.i, ptr noundef nonnull %reverse_dp.i) #5
  %call102.i = call ptr @ax25_find_cb(ptr noundef nonnull %dest.i, ptr noundef nonnull %src.i, ptr noundef nonnull %reverse_dp.i, ptr noundef %dev) #5
  %cmp103.not.i = icmp eq ptr %call102.i, null
  br i1 %cmp103.not.i, label %if.end111.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.end101.i
  %90 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i, align 4
  %92 = ptrtoint ptr %dama.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dama.i, align 4
  %state.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call102.i, i32 0, i32 6
  %94 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %state.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp.i.i = icmp eq i8 %95, 0
  br i1 %cmp.i.i, label %if.then105.i.if.then109.i_crit_edge, label %if.end.i.i

if.then105.i.if.then109.i_crit_edge:              ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109.i

if.end.i.i:                                       ; preds = %if.then105.i
  %ax25_dev.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call102.i, i32 0, i32 4
  %96 = ptrtoint ptr %ax25_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ax25_dev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ax25_dev, ptr %97, i32 0, i32 5, i32 12
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i.i, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %99, label %if.end.i.i.if.then109.i_crit_edge [
    i32 0, label %if.end.i.i.sw.bb.i.i_crit_edge
    i32 1, label %if.end.i.i.sw.bb.i.i_crit_edge53
    i32 2, label %sw.bb2.i.i
  ]

if.end.i.i.sw.bb.i.i_crit_edge53:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

if.end.i.i.if.then109.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge53
  %call.i.i = call i32 @ax25_std_frame_in(ptr noundef nonnull %call102.i, ptr noundef %skb, i32 noundef %91) #5
  br label %ax25_process_rx_frame.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %sw.bb2.i.i.if.then7.i.i_crit_edge

sw.bb2.i.i.if.then7.i.i_crit_edge:                ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb2.i.i
  %dama4.i.i = getelementptr inbounds %struct.ax25_dev, ptr %97, i32 0, i32 6
  %101 = ptrtoint ptr %dama4.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %dama4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool6.not.i.i = icmp eq i8 %102, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then7.i.i_crit_edge

lor.lhs.false.i.i.if.then7.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then7.i.i_crit_edge, %sw.bb2.i.i.if.then7.i.i_crit_edge
  %call8.i.i = call i32 @ax25_ds_frame_in(ptr noundef nonnull %call102.i, ptr noundef %skb, i32 noundef %91) #5
  br label %ax25_process_rx_frame.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i.i = call i32 @ax25_std_frame_in(ptr noundef nonnull %call102.i, ptr noundef %skb, i32 noundef %91) #5
  br label %ax25_process_rx_frame.exit.i

ax25_process_rx_frame.exit.i:                     ; preds = %if.else.i.i, %if.then7.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %call8.i.i, %if.then7.i.i ], [ %call9.i.i, %if.else.i.i ], [ %call.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp107.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp107.i, label %ax25_process_rx_frame.exit.i.if.then109.i_crit_edge, label %ax25_process_rx_frame.exit.i.if.end110.i_crit_edge

ax25_process_rx_frame.exit.i.if.end110.i_crit_edge: ; preds = %ax25_process_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110.i

ax25_process_rx_frame.exit.i.if.then109.i_crit_edge: ; preds = %ax25_process_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then109.i

if.then109.i:                                     ; preds = %ax25_process_rx_frame.exit.i.if.then109.i_crit_edge, %if.end.i.i.if.then109.i_crit_edge, %if.then105.i.if.then109.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then109.i, %ax25_process_rx_frame.exit.i.if.end110.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call102.i, i32 0, i32 36
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #5
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ax25_rcv.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !9

if.end5.i.i.i.i.i.ax25_rcv.exit_crit_edge:        ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #5
  br label %ax25_rcv.exit

if.then.i.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  %digipeat.i.i = getelementptr inbounds %struct.ax25_cb, ptr %call102.i, i32 0, i32 3
  %104 = ptrtoint ptr %digipeat.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %digipeat.i.i, align 4
  call void @kfree(ptr noundef %105) #5
  call void @kfree(ptr noundef nonnull %call102.i) #5
  br label %ax25_rcv.exit

if.end111.i:                                      ; preds = %if.end101.i
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 1
  %110 = and i8 %109, -17
  %111 = zext i8 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %110, label %land.lhs.true129.i [
    i8 47, label %if.end111.i.if.end133.i_crit_edge
    i8 111, label %if.end111.i.if.end133.i_crit_edge54
    i8 15, label %if.end111.i.free.i_crit_edge
  ]

if.end111.i.free.i_crit_edge:                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end111.i.if.end133.i_crit_edge54:              ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

if.end111.i.if.end133.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133.i

land.lhs.true129.i:                               ; preds = %if.end111.i
  br i1 %tobool167.not.i, label %land.lhs.true129.i.free.i_crit_edge, label %land.lhs.true129.i.free.sink.split.i_crit_edge

land.lhs.true129.i.free.sink.split.i_crit_edge:   ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.sink.split.i

land.lhs.true129.i.free.i_crit_edge:              ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end133.i:                                      ; preds = %if.end111.i.if.end133.i_crit_edge, %if.end111.i.if.end133.i_crit_edge54
  %112 = ptrtoint ptr %lastrepeat.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %lastrepeat.i, align 1
  %conv135.i = sext i8 %113 to i32
  %add136.i = add nsw i32 %conv135.i, 1
  %114 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ndigi.i, align 1
  %conv138.i = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add136.i, i32 %conv138.i)
  %cmp139.i = icmp eq i32 %add136.i, %conv138.i
  br i1 %cmp139.i, label %if.then141.i, label %if.else143.i

if.then141.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  %call142.i = call ptr @ax25_find_listener(ptr noundef nonnull %dest.i, i32 noundef 0, ptr noundef %dev, i32 noundef 5) #5
  br label %if.end145.i

if.else143.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  %call144.i = call ptr @ax25_find_listener(ptr noundef %spec.select.i, i32 noundef 1, ptr noundef %dev, i32 noundef 5) #5
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else143.i, %if.then141.i
  %sk.0.i = phi ptr [ %call142.i, %if.then141.i ], [ %call144.i, %if.else143.i ]
  %cmp146.not.i = icmp eq ptr %sk.0.i, null
  br i1 %cmp146.not.i, label %if.else166.i, label %if.then148.i

if.then148.i:                                     ; preds = %if.end145.i
  %sk_lock149.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock149.i) #5
  %sk_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 53
  %116 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %sk_ack_backlog.i.i, align 4
  %sk_max_ack_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 54
  %118 = ptrtoint ptr %sk_max_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %sk_max_ack_backlog.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp.i31.i = icmp ugt i32 %117, %119
  br i1 %cmp.i31.i, label %if.then148.i.if.then156.i_crit_edge, label %lor.lhs.false.i

if.then148.i.if.then156.i_crit_edge:              ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then156.i

lor.lhs.false.i:                                  ; preds = %if.then148.i
  %call153.i = call ptr @ax25_make_new(ptr noundef nonnull %sk.0.i, ptr noundef nonnull %29) #5
  %cmp154.i = icmp eq ptr %call153.i, null
  br i1 %cmp154.i, label %lor.lhs.false.i.if.then156.i_crit_edge, label %if.end162.i

lor.lhs.false.i.if.then156.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then156.i

if.then156.i:                                     ; preds = %lor.lhs.false.i.if.then156.i_crit_edge, %if.then148.i.if.then156.i_crit_edge
  br i1 %tobool167.not.i, label %if.then156.i.if.end159.i_crit_edge, label %if.then158.i

if.then156.i.if.end159.i_crit_edge:               ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end159.i

if.then158.i:                                     ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ax25_return_dm(ptr noundef %dev, ptr noundef nonnull %src.i, ptr noundef nonnull %dest.i, ptr noundef nonnull %dp.i) #5
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then158.i, %if.then156.i.if.end159.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  call void @_raw_spin_unlock(ptr noundef %sk_lock149.i) #5
  %skc_refcnt.i33 = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 19
  %call.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i33, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i33, i32 1, i32 3, i32 1) #5
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i33, ptr %skc_refcnt.i33, i32 1, ptr elementtype(i32) %skc_refcnt.i33) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i36, label %if.then.i40, label %if.end5.i.i.i.i38

if.end5.i.i.i.i38:                                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i38.ax25_rcv.exit_crit_edge, label %if.then10.i.i.i.i39, !prof !9

if.end5.i.i.i.i38.ax25_rcv.exit_crit_edge:        ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then10.i.i.i.i39:                              ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i33, i32 noundef 3) #5
  br label %ax25_rcv.exit

if.then.i40:                                      ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @sk_free(ptr noundef nonnull %sk.0.i) #5
  br label %ax25_rcv.exit

if.end162.i:                                      ; preds = %lor.lhs.false.i
  %cb.i.i = getelementptr inbounds %struct.ax25_sock, ptr %call153.i, i32 0, i32 1
  %121 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cb.i.i, align 8
  %123 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i.i28 = icmp eq ptr %124, null
  br i1 %tobool.not.i.i28, label %do.body.i.i, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %124(ptr noundef %skb) #5
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end162.i
  %125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %tobool3.not.i.i = icmp eq ptr %127, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !9

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i29
  %128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call153.i, ptr %128, align 4
  %130 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @sock_rfree, ptr %destructor.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %131 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i30 = getelementptr inbounds %struct.sock, ptr %call153.i, i32 0, i32 9
  %call.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i30, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %sk_backlog.i30, i32 1, i32 3, i32 1) #5
  %133 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i30, ptr %sk_backlog.i30, i32 %132, ptr elementtype(i32) %sk_backlog.i30) #5, !srcloc !15
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call153.i, i32 0, i32 8
  %134 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %135, i32 0, i32 32
  %136 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %137, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i32

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_set_owner_r.exit

if.end.i.i32:                                     ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %call153.i, i32 0, i32 11
  %140 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %141, %139
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i32, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue.i, ptr noundef %skb) #5
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call153.i, i32 0, i32 4
  %142 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store volatile i8 1, ptr %skc_state.i, align 2
  %143 = ptrtoint ptr %sk_ack_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sk_ack_backlog.i.i, align 4
  %add.i33.i = add i32 %144, 1
  store volatile i32 %add.i33.i, ptr %sk_ack_backlog.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock149.i) #5
  br label %if.end175.i

if.else166.i:                                     ; preds = %if.end145.i
  br i1 %tobool167.not.i, label %if.else166.i.free.i_crit_edge, label %if.end169.i

if.else166.i.free.i_crit_edge:                    ; preds = %if.else166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.end169.i:                                      ; preds = %if.else166.i
  %call170.i = call ptr @ax25_create_cb() #5
  %cmp171.i = icmp eq ptr %call170.i, null
  br i1 %cmp171.i, label %if.end169.i.free.sink.split.i_crit_edge, label %if.end174.i

if.end169.i.free.sink.split.i_crit_edge:          ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.sink.split.i

if.end174.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ax25_fillin_cb(ptr noundef nonnull %call170.i, ptr noundef nonnull %29) #5
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.end174.i, %skb_set_owner_r.exit
  %ax25.0.i = phi ptr [ %122, %skb_set_owner_r.exit ], [ %call170.i, %if.end174.i ]
  %source_addr.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 1
  %145 = call ptr @memcpy(ptr %source_addr.i, ptr %dest.i, i32 7)
  %dest_addr.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 2
  %146 = call ptr @memcpy(ptr %dest_addr.i, ptr %src.i, i32 7)
  %147 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ndigi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool178.not.i = icmp eq i8 %148, 0
  br i1 %tobool178.not.i, label %if.end175.i.if.then195.i_crit_edge, label %land.lhs.true179.i

if.end175.i.if.then195.i_crit_edge:               ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then195.i

land.lhs.true179.i:                               ; preds = %if.end175.i
  %digipeat.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 3
  %149 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %digipeat.i, align 4
  %tobool180.not.i = icmp eq ptr %150, null
  br i1 %tobool180.not.i, label %land.lhs.true181.i, label %land.lhs.true179.i.if.end190.i_crit_edge

land.lhs.true179.i.if.end190.i_crit_edge:         ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190.i

land.lhs.true181.i:                               ; preds = %land.lhs.true179.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %151 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %151, i32 noundef 2592, i32 noundef 66) #8
  %152 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call7.i.i, ptr %digipeat.i, align 4
  %cmp184.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp184.i, label %if.then186.i, label %land.lhs.true181.i.if.end190.i_crit_edge

land.lhs.true181.i.if.end190.i_crit_edge:         ; preds = %land.lhs.true181.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190.i

if.then186.i:                                     ; preds = %land.lhs.true181.i
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  call void @ax25_destroy_socket(ptr noundef %ax25.0.i) #5
  br i1 %cmp146.not.i, label %if.then186.i.ax25_rcv.exit_crit_edge, label %if.then188.i

if.then186.i.ax25_rcv.exit_crit_edge:             ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then188.i:                                     ; preds = %if.then186.i
  %skc_refcnt.i18 = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 19
  %call.i.i.i.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i18, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i18, i32 1, i32 3, i32 1) #5
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i18, ptr %skc_refcnt.i18, i32 1, ptr elementtype(i32) %skc_refcnt.i18) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i21, label %if.then.i25, label %if.end5.i.i.i.i23

if.end5.i.i.i.i23:                                ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i20)
  %.not.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i22, label %if.end5.i.i.i.i23.ax25_rcv.exit_crit_edge, label %if.then10.i.i.i.i24, !prof !9

if.end5.i.i.i.i23.ax25_rcv.exit_crit_edge:        ; preds = %if.end5.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then10.i.i.i.i24:                              ; preds = %if.end5.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i18, i32 noundef 3) #5
  br label %ax25_rcv.exit

if.then.i25:                                      ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @sk_free(ptr noundef nonnull %sk.0.i) #5
  br label %ax25_rcv.exit

if.end190.i:                                      ; preds = %land.lhs.true181.i.if.end190.i_crit_edge, %land.lhs.true179.i.if.end190.i_crit_edge
  %154 = ptrtoint ptr %ndigi.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %.pr.i = load i8, ptr %ndigi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp193.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp193.i, label %if.end190.i.if.then195.i_crit_edge, label %if.else198.i

if.end190.i.if.then195.i_crit_edge:               ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then195.i

if.then195.i:                                     ; preds = %if.end190.i.if.then195.i_crit_edge, %if.end175.i.if.then195.i_crit_edge
  %digipeat196.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 3
  %155 = ptrtoint ptr %digipeat196.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %digipeat196.i, align 4
  call void @kfree(ptr noundef %156) #5
  %157 = ptrtoint ptr %digipeat196.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %digipeat196.i, align 4
  br label %if.end200.i

if.else198.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %digipeat.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %digipeat.i, align 4
  %160 = call ptr @memcpy(ptr %159, ptr %reverse_dp.i, i32 66)
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.else198.i, %if.then195.i
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  %165 = and i8 %164, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %165)
  %cmp204.i = icmp eq i8 %165, 111
  %modulus.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 7
  br i1 %cmp204.i, label %if.then206.i, label %if.else210.i

if.then206.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %modulus.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -128, ptr %modulus.i, align 2
  %arrayidx208.i = getelementptr %struct.ax25_dev, ptr %29, i32 0, i32 5, i32 5
  br label %if.end216.i

if.else210.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %modulus.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 8, ptr %modulus.i, align 2
  %arrayidx213.i = getelementptr %struct.ax25_dev, ptr %29, i32 0, i32 5, i32 4
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else210.i, %if.then206.i
  %conv214.sink.in.in.i = phi ptr [ %arrayidx208.i, %if.then206.i ], [ %arrayidx213.i, %if.else210.i ]
  %168 = ptrtoint ptr %conv214.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %conv214.sink.in.i = load i32, ptr %conv214.sink.in.in.i, align 4
  %conv214.sink.i = trunc i32 %conv214.sink.in.i to i8
  %169 = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 32
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv214.sink.i, ptr %169, align 4
  call void @ax25_send_control(ptr noundef %ax25.0.i, i32 noundef 99, i32 noundef 1, i32 noundef 2) #5
  %171 = ptrtoint ptr %dama.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dama.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool217.not.i = icmp eq i32 %172, 0
  br i1 %tobool217.not.i, label %if.end216.i.if.end225.i_crit_edge, label %land.lhs.true218.i

if.end216.i.if.end225.i_crit_edge:                ; preds = %if.end216.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225.i

land.lhs.true218.i:                               ; preds = %if.end216.i
  %ax25_dev219.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 4
  %173 = ptrtoint ptr %ax25_dev219.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ax25_dev219.i, align 4
  %arrayidx221.i = getelementptr %struct.ax25_dev, ptr %174, i32 0, i32 5, i32 12
  %175 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx221.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp222.i = icmp eq i32 %176, 2
  br i1 %cmp222.i, label %if.then224.i, label %land.lhs.true218.i.if.end225.i_crit_edge

land.lhs.true218.i.if.end225.i_crit_edge:         ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225.i

if.then224.i:                                     ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ax25_dama_on(ptr noundef %ax25.0.i) #5
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.then224.i, %land.lhs.true218.i.if.end225.i_crit_edge, %if.end216.i.if.end225.i_crit_edge
  %state.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.0.i, i32 0, i32 6
  %177 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 3, ptr %state.i, align 1
  call void @ax25_cb_add(ptr noundef %ax25.0.i) #5
  call void @ax25_start_heartbeat(ptr noundef %ax25.0.i) #5
  call void @ax25_start_t3timer(ptr noundef %ax25.0.i) #5
  call void @ax25_start_idletimer(ptr noundef %ax25.0.i) #5
  br i1 %cmp146.not.i, label %if.end225.i.free.i_crit_edge, label %if.then227.i

if.end225.i.free.i_crit_edge:                     ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free.i

if.then227.i:                                     ; preds = %if.end225.i
  %178 = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 13
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %178, align 4
  %and1.i.i.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then229.i, label %if.then227.i.if.end230.i_crit_edge

if.then227.i.if.end230.i_crit_edge:               ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end230.i

if.then229.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #7
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %sk.0.i, i32 0, i32 77
  %181 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sk_data_ready.i, align 8
  call void %182(ptr noundef nonnull %sk.0.i) #5
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.then229.i, %if.then227.i.if.end230.i_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !12
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %183 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !13
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %183, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i16, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_rcv.exit_crit_edge, label %if.then10.i.i.i.i, !prof !9

if.end5.i.i.i.i.ax25_rcv.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ax25_rcv.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #5
  br label %ax25_rcv.exit

if.then.i16:                                      ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !14
  call void @sk_free(ptr noundef nonnull %sk.0.i) #5
  br label %ax25_rcv.exit

free.sink.split.i:                                ; preds = %if.end169.i.free.sink.split.i_crit_edge, %land.lhs.true129.i.free.sink.split.i_crit_edge
  call void @ax25_return_dm(ptr noundef %dev, ptr noundef nonnull %src.i, ptr noundef nonnull %dest.i, ptr noundef nonnull %dp.i) #5
  br label %free.i

free.i:                                           ; preds = %free.sink.split.i, %if.end225.i.free.i_crit_edge, %if.else166.i.free.i_crit_edge, %land.lhs.true129.i.free.i_crit_edge, %if.end111.i.free.i_crit_edge, %if.end96.i.free.i_crit_edge, %land.lhs.true57.i.free.i_crit_edge, %if.end.i.free.i_crit_edge, %if.end4.free.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %ax25_rcv.exit

ax25_rcv.exit:                                    ; preds = %free.i, %if.then.i16, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_rcv.exit_crit_edge, %if.then.i25, %if.then10.i.i.i.i24, %if.end5.i.i.i.i23.ax25_rcv.exit_crit_edge, %if.then186.i.ax25_rcv.exit_crit_edge, %if.then.i40, %if.then10.i.i.i.i39, %if.end5.i.i.i.i38.ax25_rcv.exit_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ax25_rcv.exit_crit_edge, %sw.default.i, %if.else94.i, %if.then.i50, %if.then10.i.i.i.i49, %if.end5.i.i.i.i48.ax25_rcv.exit_crit_edge, %sw.bb68.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %reverse_dp.i) #5
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %dp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dama.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %dest.i) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %src.i) #5
  br label %return

return:                                           ; preds = %ax25_rcv.exit, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_addr_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_listen_mine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_to_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_get_socket(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_digi_invert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_find_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_return_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_find_listener(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_make_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_create_cb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_fillin_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_destroy_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dama_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_cb_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_heartbeat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t3timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_std_frame_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ds_frame_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2154659060, i64 2154659548, i64 2154659097, i64 2154659153, i64 2154659187, i64 2154659211, i64 2154659252, i64 2154659273, i64 2154659301, i64 2154659335}
!11 = !{!"auto-init"}
!12 = !{i64 2148345044}
!13 = !{i64 2148259508, i64 2148259540, i64 2148259569, i64 2148259603, i64 2148259634, i64 2148259657}
!14 = !{i64 2149281324}
!15 = !{i64 2148255513, i64 2148255539, i64 2148255568, i64 2148255602, i64 2148255633, i64 2148255656}
