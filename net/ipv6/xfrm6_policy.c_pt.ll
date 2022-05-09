; ModuleID = '/llk/IR_all_yes/net/ipv6/xfrm6_policy.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_policy_afinfo = type { ptr, ptr, ptr, ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.150, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.150 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.119, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.119 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.156, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.156 = type { %struct.rt6_info }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.111, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.111 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.114, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.114 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.rt6_statistics = type { i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.103, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.105, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.103 = type { %struct.hlist_node }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.105 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@xfrm6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm6_net_init, ptr null, ptr @xfrm6_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@xfrm6_policy_afinfo = internal constant { %struct.xfrm_policy_afinfo, [44 x i8] } { %struct.xfrm_policy_afinfo { ptr @xfrm6_dst_ops_template, ptr @xfrm6_dst_lookup, ptr @xfrm6_get_saddr, ptr @xfrm6_fill_dst, ptr @ip6_blackhole_route }, [44 x i8] zeroinitializer }, align 32
@xfrm6_dst_ops_template = internal global %struct.dst_ops { i16 10, i32 32768, ptr null, ptr null, ptr null, ptr null, ptr @dst_cow_metrics_generic, ptr @xfrm6_dst_destroy, ptr @xfrm6_dst_ifdown, ptr null, ptr null, ptr @xfrm6_update_pmtu, ptr @xfrm6_redirect, ptr @__ip6_local_out, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [56 x i8] undef }, align 128
@in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dst_entries_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xfrm6_policy_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr getelementptr (i8, ptr @init_net, i64 3972), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv6\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xfrm6_gc_thresh\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"xfrm6_net_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 272, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"xfrm6_policy_afinfo\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 168, i32 40 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 359, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 695, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 723, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 306, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"../include/net/dst_ops.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 65, i32 9 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"xfrm6_policy_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 187, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 212, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [27 x i8] c"../net/ipv6/xfrm6_policy.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 189, i32 21 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @xfrm6_net_ops, ptr @xfrm6_policy_afinfo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dst_entries_init.__key, ptr @xfrm6_policy_table, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_policy_afinfo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dst_entries_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_policy_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @xfrm_policy_register_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfrm6_state_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_policy_crit_edge

if.end.out_policy_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_policy

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xfrm6_protocol_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %out_state

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm6_net_ops) #7
  br label %out

out:                                              ; preds = %out_policy, %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %ret.1, %out_policy ], [ 0, %if.end8 ]
  ret i32 %ret.0

out_state:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xfrm6_state_fini() #7
  br label %out_policy

out_policy:                                       ; preds = %out_state, %if.end.out_policy_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.out_policy_crit_edge ], [ %call5, %out_state ]
  tail call void @xfrm_policy_unregister_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo) #7
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_state_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_protocol_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm6_state_fini() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfrm6_fini() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_net_ops) #7
  tail call void @xfrm6_protocol_fini() #7
  tail call void @xfrm_policy_unregister_afinfo(ptr noundef nonnull @xfrm6_policy_afinfo) #7
  tail call void @xfrm6_state_fini() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm6_protocol_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_policy_register_afinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfrm6_dst_lookup(ptr noundef %net, i32 noundef %tos, i32 noundef %oif, ptr noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %mark) #3 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #7
  %0 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oif)
  %tobool.not.i = icmp eq i32 %oif, 0
  br i1 %tobool.not.i, label %entry.l3mdev_master_ifindex_by_index.exit_crit_edge, label %if.then.i, !prof !40

entry.l3mdev_master_ifindex_by_index.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_master_ifindex_by_index.exit

if.then.i:                                        ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %oif) #7
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then4.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef nonnull %call.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %rcu_read_lock.exit.i.if.end.i_crit_edge ]
  %call.i9.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i9.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i12.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i12.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %5 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i16.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %l3mdev_master_ifindex_by_index.exit

l3mdev_master_ifindex_by_index.exit:              ; preds = %rcu_read_unlock.exit.i, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %rcu_read_unlock.exit.i ], [ 0, %entry.l3mdev_master_ifindex_by_index.exit_crit_edge ]
  %9 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rc.1.i, ptr %fl6, align 8
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 6
  %10 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %flowic_flags, align 1
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %11 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mark, ptr %flowic_mark, align 8
  %daddr3 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %daddr3, ptr %daddr, i32 16)
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %l3mdev_master_ifindex_by_index.exit.if.end_crit_edge, label %if.then

l3mdev_master_ifindex_by_index.exit.if.end_crit_edge: ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %l3mdev_master_ifindex_by_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %saddr4 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %saddr4, ptr %saddr, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %l3mdev_master_ifindex_by_index.exit.if.end_crit_edge
  %call.i16 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #7
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i16, i32 0, i32 15
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not = icmp eq i16 %15, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i16 %15 to i32
  call void @dst_release(ptr noundef %call.i16) #7
  %16 = inttoptr i32 %conv to ptr
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %dst.0 = phi ptr [ %16, %if.then8 ], [ %call.i16, %if.end.if.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #7
  ret ptr %dst.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_get_saddr(ptr noundef %net, i32 noundef %oif, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %mark) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfrm6_dst_lookup(ptr noundef %net, i32 noundef 0, i32 noundef %oif, ptr noundef null, ptr noundef %daddr, i32 noundef %mark)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt6i_idev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %call5 = tail call i32 @ipv6_dev_get_saddr(ptr noundef %5, ptr noundef %3, ptr noundef %daddr, i32 noundef 0, ptr noundef %saddr) #7
  tail call void @dst_release(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -113, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_fill_dst(ptr noundef %xdst, ptr noundef %dev, ptr nocapture noundef readnone %fl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %xdst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %2 = ptrtoint ptr %xdst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %xdst, align 4
  %dev_tracker = getelementptr inbounds %struct.dst_entry, ptr %xdst, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %dev_hold_track.exit, label %do.body1.i.i

do.body1.i.i:                                     ; preds = %entry
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !43
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, 1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !44
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold_track.exit.thread_crit_edge, !prof !40

do.body1.i.i.dev_hold_track.exit.thread_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold_track.exit.thread

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_hold_track.exit.thread

dev_hold_track.exit:                              ; preds = %entry
  %call = tail call fastcc ptr @in6_dev_get(ptr noundef null)
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 6
  %17 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %rt6i_idev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %dev_hold_track.exit.cleanup_crit_edge, label %dev_hold_track.exit.if.end_crit_edge

dev_hold_track.exit.if.end_crit_edge:             ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dev_hold_track.exit.cleanup_crit_edge:            ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_hold_track.exit.thread:                       ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold_track.exit.thread_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #7, !srcloc !45
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i40 = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 2592) #7
  %call56 = tail call fastcc ptr @in6_dev_get(ptr noundef nonnull %dev)
  %rt6i_idev57 = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 6
  %18 = ptrtoint ptr %rt6i_idev57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call56, ptr %rt6i_idev57, align 4
  %tobool.not58 = icmp eq ptr %call56, null
  br i1 %tobool.not58, label %do.body1.i.i52, label %dev_hold_track.exit.thread.if.end_crit_edge

dev_hold_track.exit.thread.if.end_crit_edge:      ; preds = %dev_hold_track.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1.i.i52:                                   ; preds = %dev_hold_track.exit.thread
  %call.i.i43 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #7
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !43
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i45 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i45 to ptr
  %cpu.i.i46 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i46, align 4
  %arrayidx.i.i47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i47, align 4
  %add.i.i48 = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i48 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i49 = add i32 %31, -1
  store i32 %add13.i.i49, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !44
  %and.i.i.i.i50 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i50)
  %tobool24.not.i.i51 = icmp eq i32 %and.i.i.i.i50, 0
  br i1 %tobool24.not.i.i51, label %if.then28.i.i53, label %do.body1.i.i52.dev_put.exit.i_crit_edge, !prof !40

do.body1.i.i52.dev_put.exit.i_crit_edge:          ; preds = %do.body1.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i

if.then28.i.i53:                                  ; preds = %do.body1.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i53, %do.body1.i.i52.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #7, !srcloc !45
  br label %cleanup

if.end:                                           ; preds = %dev_hold_track.exit.thread.if.end_crit_edge, %dev_hold_track.exit.if.end_crit_edge
  %rt6i_flags = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rt6i_flags, align 4
  %and = and i32 %34, -2146435072
  %rt6i_flags9 = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 7
  %35 = ptrtoint ptr %rt6i_flags9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and, ptr %rt6i_flags9, align 4
  %sernum.i = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %sernum.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i54 = icmp eq i32 %37, 0
  br i1 %tobool.not.i54, label %if.end.i, label %if.end.rt6_get_cookie.exit_crit_edge

if.end.rt6_get_cookie.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rt6_get_cookie.exit

if.end.i:                                         ; preds = %if.end
  %38 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i55 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i55, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %from2.i = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %from2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %from2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 306, ptr noundef nonnull @.str.1) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %43, null
  br i1 %tobool14.not.i, label %do.end12.i.if.end17.i_crit_edge, label %if.then15.i

do.end12.i.if.end17.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then15.i:                                      ; preds = %do.end12.i
  %fib6_node.i.i = getelementptr inbounds %struct.fib6_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fib6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %fib6_node.i.i, align 4
  %call.i24.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i, label %if.then15.i.do.end7.i.i_crit_edge

if.then15.i.do.end7.i.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

land.lhs.true.i26.i:                              ; preds = %if.then15.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i26.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i26.i.do.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i26.i
  %.b1.i.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i27.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i.i

if.then.i27.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 284, ptr noundef nonnull @.str.1) #7
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i27.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i26.i.do.end7.i.i_crit_edge, %if.then15.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %45, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end17.i_crit_edge, label %do.end13.i.i

do.end7.i.i.if.end17.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fn_sernum.i.i = getelementptr inbounds %struct.fib6_node, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %fn_sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %fn_sernum.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i.i, %do.end7.i.i.if.end17.i_crit_edge, %do.end12.i.if.end17.i_crit_edge
  %cookie.1.i = phi i32 [ 0, %do.end12.i.if.end17.i_crit_edge ], [ 0, %do.end7.i.i.if.end17.i_crit_edge ], [ %47, %do.end13.i.i ]
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i28.i, label %if.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

if.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %if.end17.i
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %if.end17.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %48 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i35.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %rt6_get_cookie.exit

rt6_get_cookie.exit:                              ; preds = %rcu_read_unlock.exit.i, %if.end.rt6_get_cookie.exit_crit_edge
  %retval.0.i = phi i32 [ %cookie.1.i, %rcu_read_unlock.exit.i ], [ %37, %if.end.rt6_get_cookie.exit_crit_edge ]
  %route_cookie = getelementptr inbounds %struct.xfrm_dst, ptr %xdst, i32 0, i32 11
  %52 = ptrtoint ptr %route_cookie to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i, ptr %route_cookie, align 4
  %rt6i_gateway = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 5
  %rt6i_gateway12 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 5
  %53 = call ptr @memcpy(ptr %rt6i_gateway, ptr %rt6i_gateway12, i32 16)
  %rt6i_dst = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 3
  %rt6i_dst14 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 3
  %54 = call ptr @memcpy(ptr %rt6i_dst, ptr %rt6i_dst14, i32 20)
  %rt6i_src = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 4
  %rt6i_src16 = getelementptr inbounds %struct.rt6_info, ptr %1, i32 0, i32 4
  %55 = call ptr @memcpy(ptr %rt6i_src, ptr %rt6i_src16, i32 20)
  %rt6i_uncached = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 8
  %56 = ptrtoint ptr %rt6i_uncached to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %rt6i_uncached, ptr %rt6i_uncached, align 4
  %prev.i = getelementptr inbounds %struct.rt6_info, ptr %xdst, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rt6i_uncached, ptr %prev.i, align 4
  tail call void @rt6_uncached_list_add(ptr noundef %xdst) #7
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %58 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nd_net.i, align 4
  %rt6_stats = getelementptr inbounds %struct.net, ptr %59, i32 0, i32 36, i32 8
  %60 = ptrtoint ptr %rt6_stats to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rt6_stats, align 8
  %fib_rt_uncache = getelementptr inbounds %struct.rt6_statistics, ptr %61, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_rt_uncache, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %fib_rt_uncache, i32 1, i32 3, i32 1) #7
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_rt_uncache, ptr %fib_rt_uncache, i32 1, ptr elementtype(i32) %fib_rt_uncache) #7, !srcloc !47
  br label %cleanup

cleanup:                                          ; preds = %rt6_get_cookie.exit, %dev_put.exit.i, %dev_hold_track.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rt6_get_cookie.exit ], [ -19, %dev_hold_track.exit.cleanup_crit_edge ], [ -19, %dev_put.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_blackhole_route(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cow_metrics_generic(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_dst_destroy(ptr noundef %dst) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 6
  %0 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt6i_idev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !40

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %_metrics.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %3 = ptrtoint ptr %_metrics.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_metrics.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i15, label %if.end.dst_destroy_metrics_generic.exit_crit_edge

if.end.dst_destroy_metrics_generic.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_destroy_metrics_generic.exit

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dst_destroy_metrics_generic(ptr noundef %dst, i32 noundef %4) #7
  br label %dst_destroy_metrics_generic.exit

dst_destroy_metrics_generic.exit:                 ; preds = %if.then.i15, %if.end.dst_destroy_metrics_generic.exit_crit_edge
  %rt6i_uncached_list = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 9
  %5 = ptrtoint ptr %rt6i_uncached_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rt6i_uncached_list, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %dst_destroy_metrics_generic.exit.if.end9_crit_edge, label %if.then7

dst_destroy_metrics_generic.exit.if.end9_crit_edge: ; preds = %dst_destroy_metrics_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %dst_destroy_metrics_generic.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rt6_uncached_list_del(ptr noundef %dst) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %dst_destroy_metrics_generic.exit.if.end9_crit_edge
  %pols.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 4
  %num_pols.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 5
  %7 = ptrtoint ptr %num_pols.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pols.i, align 4
  %i.03.i.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.03.i.i)
  %cmp4.i.i = icmp sgt i32 %i.03.i.i, -1
  br i1 %cmp4.i.i, label %if.end9.for.body.i.i_crit_edge, label %if.end9.xfrm_pols_put.exit.i_crit_edge

if.end9.xfrm_pols_put.exit.i_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pols_put.exit.i

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %i.0.i.i, %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge ], [ %i.03.i.i, %if.end9.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %pols.i, i32 %i.05.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %refcnt.i.i.i = getelementptr inbounds %struct.xfrm_policy, ptr %10, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !50

if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pol_put.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #7
  br label %xfrm_pol_put.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @xfrm_policy_destroy(ptr noundef %10) #7
  br label %xfrm_pol_put.exit.i.i

xfrm_pol_put.exit.i.i:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.xfrm_pol_put.exit.i.i_crit_edge
  %i.0.i.i = add i32 %i.05.i.i, -1
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge, label %xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge

xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge: ; preds = %xfrm_pol_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_pols_put.exit.i

xfrm_pol_put.exit.i.i.for.body.i.i_crit_edge:     ; preds = %xfrm_pol_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

xfrm_pols_put.exit.i:                             ; preds = %xfrm_pol_put.exit.i.i.xfrm_pols_put.exit.i_crit_edge, %if.end9.xfrm_pols_put.exit.i_crit_edge
  %route.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %12 = ptrtoint ptr %route.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %route.i, align 4
  tail call void @dst_release(ptr noundef %13) #7
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 4
  %14 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i16 = icmp eq ptr %15, null
  br i1 %tobool.not.i16, label %xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge, label %if.then.i17, !prof !40

xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge: ; preds = %xfrm_pols_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_destroy.exit

if.then.i17:                                      ; preds = %xfrm_pols_put.exit.i
  %refcnt.i.i = getelementptr inbounds %struct.xfrm_state, ptr %15, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !50

if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_destroy.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #7
  br label %xfrm_dst_destroy.exit

if.then.i.i:                                      ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %15, i1 noundef zeroext false) #7
  br label %xfrm_dst_destroy.exit

xfrm_dst_destroy.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.xfrm_dst_destroy.exit_crit_edge, %xfrm_pols_put.exit.i.xfrm_dst_destroy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_dst_ifdown(ptr noundef %dst, ptr noundef %dev, i32 noundef %unregister) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unregister)
  %tobool.not = icmp eq i32 %unregister, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 6
  %0 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt6i_idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %dev
  br i1 %cmp, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %loopback_dev, align 4
  %call3 = tail call fastcc ptr @in6_dev_get(ptr noundef %7)
  %refcnt.i22 = getelementptr inbounds %struct.inet6_dev, ptr %call3, i32 0, i32 25
  br label %do.body

do.body:                                          ; preds = %xfrm_dst_child.exit.do.body_crit_edge, %if.then2
  %xdst.0 = phi ptr [ %dst, %if.then2 ], [ %retval.0.i, %xfrm_dst_child.exit.do.body_crit_edge ]
  %rt6i_idev5 = getelementptr inbounds %struct.rt6_info, ptr %xdst.0, i32 0, i32 6
  %8 = ptrtoint ptr %rt6i_idev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt6i_idev5, align 4
  %refcnt.i = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.in6_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.in6_dev_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in6_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #7
  br label %in6_dev_put.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @in6_dev_finish_destroy(ptr noundef %9) #7
  br label %in6_dev_put.exit

in6_dev_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.in6_dev_put.exit_crit_edge
  %11 = ptrtoint ptr %rt6i_idev5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %rt6i_idev5, align 4
  %call.i.i.i.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i22, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt.i22, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i22, ptr %refcnt.i22, i32 1, ptr elementtype(i32) %refcnt.i22) #7, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %in6_dev_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !40

in6_dev_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %in6_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %in6_dev_put.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i24 = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i24, label %if.else.i.i.i.i.in6_dev_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.in6_dev_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %in6_dev_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %in6_dev_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %in6_dev_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i22, i32 noundef %.sink.i.i.i.i) #7
  br label %in6_dev_hold.exit

in6_dev_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.in6_dev_hold.exit_crit_edge
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %xdst.0, i32 0, i32 4
  %14 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %in6_dev_hold.exit.if.then.i25_crit_edge

in6_dev_hold.exit.if.then.i25_crit_edge:          ; preds = %in6_dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i25

lor.lhs.false.i:                                  ; preds = %in6_dev_hold.exit
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %xdst.0, i32 0, i32 7
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 4
  %18 = and i16 %17, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool1.not.i = icmp eq i16 %18, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_dst_child.exit_crit_edge, label %lor.lhs.false.i.if.then.i25_crit_edge

lor.lhs.false.i.if.then.i25_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i25

lor.lhs.false.i.xfrm_dst_child.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_dst_child.exit

if.then.i25:                                      ; preds = %lor.lhs.false.i.if.then.i25_crit_edge, %in6_dev_hold.exit.if.then.i25_crit_edge
  %child.i = getelementptr inbounds %struct.xfrm_dst, ptr %xdst.0, i32 0, i32 2
  %19 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %child.i, align 4
  br label %xfrm_dst_child.exit

xfrm_dst_child.exit:                              ; preds = %if.then.i25, %lor.lhs.false.i.xfrm_dst_child.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.then.i25 ], [ null, %lor.lhs.false.i.xfrm_dst_child.exit_crit_edge ]
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfrm, align 4
  %tobool11.not = icmp eq ptr %22, null
  br i1 %tobool11.not, label %do.end, label %xfrm_dst_child.exit.do.body_crit_edge

xfrm_dst_child.exit.do.body_crit_edge:            ; preds = %xfrm_dst_child.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %xfrm_dst_child.exit
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i22, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcnt.i22, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i22, ptr %refcnt.i22, i32 1, ptr elementtype(i32) %refcnt.i22) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i27 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i27)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i27, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %do.end.if.end12_crit_edge, !prof !40

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3.i.i.i:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i22, i32 noundef 4) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then3.i.i.i, %do.end.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @xfrm_dst_ifdown(ptr noundef %dst, ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_update_pmtu(ptr nocapture noundef readonly %dst, ptr noundef %sk, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext %confirm_neigh) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %ops = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_pmtu, align 4
  tail call void %5(ptr noundef %1, ptr noundef %sk, ptr noundef %skb, i32 noundef %mtu, i1 noundef zeroext %confirm_neigh) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_redirect(ptr nocapture noundef readonly %dst, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %route = getelementptr inbounds %struct.xfrm_dst, ptr %dst, i32 0, i32 1
  %0 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route, align 4
  %ops = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %redirect = getelementptr inbounds %struct.dst_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %redirect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %redirect, align 16
  tail call void %5(ptr noundef %1, ptr noundef %sk, ptr noundef %skb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip6_local_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_uncached_list_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dst_destroy_metrics_generic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @in6_dev_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip6_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %4 = ptrtoint ptr %ip6_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip6_ptr, align 8
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @in6_dev_get.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.1) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end11_crit_edge, label %if.then10

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %do.end7
  %refcnt = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !52
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then10.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !40

if.then10.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then10
  %add.i.i.i15 = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i15, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end11_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !50

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end11_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then10.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then10.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end11_crit_edge, %do.end7.if.end11_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i16, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end11
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %8 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_dst_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_uncached_list_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_net_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfrm6_dst_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 27
  %0 = call ptr @memcpy(ptr %xfrm6_dst_ops, ptr @xfrm6_dst_ops_template, i32 256)
  %pcpuc_entries.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 27, i32 18
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef %pcpuc_entries.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end4.thread.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @xfrm6_policy_table, i32 noundef 72, i32 noundef 3264) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then5_crit_edge, label %if.end4.i

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end4.i:                                        ; preds = %if.then.i
  %gc_thresh.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 27, i32 1
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %call1.i, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gc_thresh.i, ptr %data.i, align 4
  %call5.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.6, ptr noundef nonnull %call1.i) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then11.i, label %if.end4.i.xfrm6_net_sysctl_init.exit_crit_edge

if.end4.i.xfrm6_net_sysctl_init.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm6_net_sysctl_init.exit

if.end4.thread.i:                                 ; preds = %if.end
  %call526.i = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.6, ptr noundef nonnull @xfrm6_policy_table) #7
  %tobool6.not27.i = icmp eq ptr %call526.i, null
  br i1 %tobool6.not27.i, label %if.end4.thread.i.if.then5_crit_edge, label %if.end4.thread.i.xfrm6_net_sysctl_init.exit_crit_edge

if.end4.thread.i.xfrm6_net_sysctl_init.exit_crit_edge: ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm6_net_sysctl_init.exit

if.end4.thread.i.if.then5_crit_edge:              ; preds = %if.end4.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call1.i) #7
  br label %if.then5

xfrm6_net_sysctl_init.exit:                       ; preds = %if.end4.thread.i.xfrm6_net_sysctl_init.exit_crit_edge, %if.end4.i.xfrm6_net_sysctl_init.exit_crit_edge
  %call529.i = phi ptr [ %call526.i, %if.end4.thread.i.xfrm6_net_sysctl_init.exit_crit_edge ], [ %call5.i, %if.end4.i.xfrm6_net_sysctl_init.exit_crit_edge ]
  %xfrm6_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 4
  %2 = ptrtoint ptr %xfrm6_hdr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call529.i, ptr %xfrm6_hdr.i, align 16
  br label %cleanup

if.then5:                                         ; preds = %if.then11.i, %if.end4.thread.i.if.then5_crit_edge, %if.then.i.if.then5_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %pcpuc_entries.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %xfrm6_net_sysctl_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.then5 ], [ 0, %xfrm6_net_sysctl_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_net_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xfrm6_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 4
  %0 = ptrtoint ptr %xfrm6_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfrm6_hdr.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xfrm6_net_sysctl_exit.exit_crit_edge, label %if.end.i

entry.xfrm6_net_sysctl_exit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm6_net_sysctl_exit.exit

if.end.i:                                         ; preds = %entry
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %1) #7
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.i.xfrm6_net_sysctl_exit.exit_crit_edge, label %if.then8.i

if.end.i.xfrm6_net_sysctl_exit.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm6_net_sysctl_exit.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %3) #7
  br label %xfrm6_net_sysctl_exit.exit

xfrm6_net_sysctl_exit.exit:                       ; preds = %if.then8.i, %if.end.i.xfrm6_net_sysctl_exit.exit_crit_edge, %entry.xfrm6_net_sysctl_exit.exit_crit_edge
  %pcpuc_entries.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 46, i32 27, i32 18
  tail call void @percpu_counter_destroy(ptr noundef %pcpuc_entries.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_unregister_afinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @xfrm6_policy_afinfo, !1, !"xfrm6_policy_afinfo", i1 false, i1 false}
!1 = !{!"../net/ipv6/xfrm6_policy.c", i32 168, i32 40}
!2 = !{ptr @xfrm6_dst_ops_template, !3, !"xfrm6_dst_ops_template", i1 false, i1 false}
!3 = !{!"../net/ipv6/xfrm6_policy.c", i32 157, i32 23}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/net/addrconf.h", i32 359, i32 9}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!20 = !{ptr @xfrm6_net_ops, !21, !"xfrm6_net_ops", i1 false, i1 false}
!21 = !{!"../net/ipv6/xfrm6_policy.c", i32 272, i32 33}
!22 = !{ptr @dst_entries_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/net/dst_ops.h", i32 65, i32 9}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/xfrm6_policy.c", i32 212, i32 33}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/xfrm6_policy.c", i32 189, i32 21}
!28 = !{ptr @xfrm6_policy_table, !29, !"xfrm6_policy_table", i1 false, i1 false}
!29 = !{!"../net/ipv6/xfrm6_policy.c", i32 187, i32 25}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2149593123}
!42 = !{i64 2149593389}
!43 = !{i64 607220, i64 607281}
!44 = !{i64 609952}
!45 = !{i64 610237}
!46 = !{i64 2157769415}
!47 = !{i64 2148214739, i64 2148214765, i64 2148214794, i64 2148214828, i64 2148214859, i64 2148214882}
!48 = !{i64 2148304270}
!49 = !{i64 2148218734, i64 2148218766, i64 2148218795, i64 2148218829, i64 2148218860, i64 2148218883}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2149810873}
!52 = !{i64 2148216269, i64 2148216301, i64 2148216330, i64 2148216364, i64 2148216395, i64 2148216418}
