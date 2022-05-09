; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_tables_offload.c_pt.bc'
source_filename = "../net/netfilter/nf_tables_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nft_flow_rule = type { i16, %struct.nft_flow_match, ptr }
%struct.nft_flow_match = type { %struct.flow_dissector, %struct.nft_flow_key, %struct.nft_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nft_flow_key = type { %struct.flow_dissector_key_basic, %struct.flow_dissector_key_control, %union.anon, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_eth_addrs, %struct.flow_dissector_key_meta }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%union.anon = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.flow_dissector_key_ports = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.2, i16 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.nft_rule = type { %struct.list_head, i64, [0 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.nft_offload_ctx = type { %struct.anon.155, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.155 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.nft_data = type { %union.anon.156 }
%union.anon.156 = type { [4 x i32] }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.4, ptr }
%union.anon.4 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.5, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.5 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.29 }
%union.anon.29 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nftables_pernet = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, i32, i8 }
%struct.nft_trans = type { %struct.list_head, i32, i8, %struct.nft_ctx, [0 x i8] }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_hook = type { %struct.list_head, i8, %struct.nf_hook_ops, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.43, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.48, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.48 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.46, i32, %struct.spinlock }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_base_chain = type { %struct.nf_hook_ops, %struct.list_head, ptr, i8, i8, ptr, %struct.nft_chain, %struct.flow_block }
%struct.flow_block = type { %struct.list_head }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.nft_table = type { %struct.list_head, %struct.rhltable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, i16, i32, ptr, i16, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_tables_offload.c\00", [62 x i8] zeroinitializer }, align 32
@nft_offload_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nft_offload_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nf_tables_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nft_block_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nft_flow_rule_offload_abort.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 175, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [28 x i8] c"nft_offload_netdev_notifier\00", align 1
@___asan_gen_.16 = private constant [37 x i8] c"../net/netfilter/nf_tables_offload.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 658, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 45, i32 7 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @nft_offload_netdev_notifier, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_offload_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nft_flow_rule_set_addr_type(ptr nocapture noundef %flow, i32 noundef %addr_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %match1 = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1
  %0 = ptrtoint ptr %match1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %match1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %addr_type to i16
  %addr_type4 = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %addr_type4 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %addr_type4, align 2
  %addr_type6 = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %addr_type6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %addr_type6, align 2
  %or = or i32 %1, 1
  %4 = ptrtoint ptr %match1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %match1, align 4
  %offset = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nft_flow_rule_create(ptr noundef %net, ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_rule, ptr %rule, i32 0, i32 2
  %dlen.i.i = getelementptr inbounds %struct.nft_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %bf.load.i.i85 = load i64, ptr %dlen.i.i, align 8
  %1 = trunc i64 %bf.load.i.i85 to i32
  %2 = lshr i32 %1, 8
  %idxprom.i.i86 = and i32 %2, 4095
  %arrayidx.i.i87 = getelementptr %struct.nft_rule, ptr %rule, i32 0, i32 2, i32 %idxprom.i.i86
  %cmp.not.i88 = icmp eq ptr %arrayidx.i.i87, %data.i
  br i1 %cmp.not.i88, label %entry.cleanup_crit_edge, label %entry.nft_expr_more.exit_crit_edge

entry.nft_expr_more.exit_crit_edge:               ; preds = %entry
  br label %nft_expr_more.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nft_expr_more.exit:                               ; preds = %if.end.nft_expr_more.exit_crit_edge, %entry.nft_expr_more.exit_crit_edge
  %expr.090 = phi ptr [ %add.ptr.i, %if.end.nft_expr_more.exit_crit_edge ], [ %data.i, %entry.nft_expr_more.exit_crit_edge ]
  %num_actions.089 = phi i32 [ %num_actions.1, %if.end.nft_expr_more.exit_crit_edge ], [ 0, %entry.nft_expr_more.exit_crit_edge ]
  %3 = ptrtoint ptr %expr.090 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %expr.090, align 8
  %tobool.i.not = icmp eq ptr %4, null
  br i1 %tobool.i.not, label %nft_expr_more.exit.while.end_crit_edge, label %while.body

nft_expr_more.exit.while.end_crit_edge:           ; preds = %nft_expr_more.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %nft_expr_more.exit
  %5 = ptrtoint ptr %expr.090 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %expr.090, align 8
  %offload_action = getelementptr inbounds %struct.nft_expr_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %offload_action to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %offload_action, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call zeroext i1 %8(ptr noundef %expr.090) #9
  %inc = zext i1 %call4 to i32
  %spec.select = add i32 %num_actions.089, %inc
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body.if.end_crit_edge
  %num_actions.1 = phi i32 [ %num_actions.089, %while.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %9 = ptrtoint ptr %expr.090 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %expr.090, align 8
  %size.i = getelementptr inbounds %struct.nft_expr_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %expr.090, i32 %12
  %13 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %bf.load.i.i = load i64, ptr %dlen.i.i, align 8
  %14 = trunc i64 %bf.load.i.i to i32
  %15 = lshr i32 %14, 8
  %idxprom.i.i = and i32 %15, 4095
  %arrayidx.i.i = getelementptr %struct.nft_rule, ptr %rule, i32 0, i32 2, i32 %idxprom.i.i
  %cmp.not.i = icmp eq ptr %arrayidx.i.i, %add.ptr.i
  br i1 %cmp.not.i, label %if.end.while.end_crit_edge, label %if.end.nft_expr_more.exit_crit_edge

if.end.nft_expr_more.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_expr_more.exit

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %nft_expr_more.exit.while.end_crit_edge
  %num_actions.0.lcssa = phi i32 [ %num_actions.089, %nft_expr_more.exit.while.end_crit_edge ], [ %num_actions.1, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actions.0.lcssa)
  %cmp = icmp eq i32 %num_actions.0.lcssa, 0
  br i1 %cmp, label %while.end.cleanup_crit_edge, label %if.end8

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 228) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call1.i = tail call ptr @flow_rule_alloc(i32 noundef %num_actions.0.lcssa) #9
  %rule.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i, ptr %rule.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end13

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %match.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %match.i, ptr %call1.i, align 8
  %mask.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rule.i, align 8
  %mask12.i = getelementptr inbounds %struct.flow_match, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mask12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mask.i, ptr %mask12.i, align 4
  %key.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %rule.i, align 8
  %key16.i = getelementptr inbounds %struct.flow_match, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %key16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %key.i, ptr %key16.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 1360) #12
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end13.err_out_crit_edge, label %if.end18

if.end13.err_out_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end18:                                         ; preds = %if.end13
  %net19 = getelementptr inbounds %struct.nft_offload_ctx, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %net19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %net, ptr %net19, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %bf.load.i.i7194 = load i64, ptr %dlen.i.i, align 8
  %28 = trunc i64 %bf.load.i.i7194 to i32
  %29 = lshr i32 %28, 8
  %idxprom.i.i7295 = and i32 %29, 4095
  %arrayidx.i.i7396 = getelementptr %struct.nft_rule, ptr %rule, i32 0, i32 2, i32 %idxprom.i.i7295
  %cmp.not.i7497 = icmp eq ptr %arrayidx.i.i7396, %data.i
  br i1 %cmp.not.i7497, label %if.end18.while.end34_crit_edge, label %if.end18.nft_expr_more.exit77_crit_edge

if.end18.nft_expr_more.exit77_crit_edge:          ; preds = %if.end18
  br label %nft_expr_more.exit77

if.end18.while.end34_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end34

nft_expr_more.exit77:                             ; preds = %if.end32.nft_expr_more.exit77_crit_edge, %if.end18.nft_expr_more.exit77_crit_edge
  %expr.198 = phi ptr [ %add.ptr.i79, %if.end32.nft_expr_more.exit77_crit_edge ], [ %data.i, %if.end18.nft_expr_more.exit77_crit_edge ]
  %30 = ptrtoint ptr %expr.198 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %expr.198, align 8
  %tobool.i75.not = icmp eq ptr %31, null
  br i1 %tobool.i75.not, label %nft_expr_more.exit77.while.end34_crit_edge, label %while.body22

nft_expr_more.exit77.while.end34_crit_edge:       ; preds = %nft_expr_more.exit77
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end34

while.body22:                                     ; preds = %nft_expr_more.exit77
  %32 = ptrtoint ptr %expr.198 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %expr.198, align 8
  %offload = getelementptr inbounds %struct.nft_expr_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %offload, align 4
  %tobool24.not = icmp eq ptr %35, null
  br i1 %tobool24.not, label %while.body22.err_out_crit_edge, label %if.end26

while.body22.err_out_crit_edge:                   ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end26:                                         ; preds = %while.body22
  %call29 = tail call i32 %35(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i, ptr noundef %expr.198) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end26.err_out_crit_edge, label %if.end32

if.end26.err_out_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end32:                                         ; preds = %if.end26
  %36 = ptrtoint ptr %expr.198 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %expr.198, align 8
  %size.i78 = getelementptr inbounds %struct.nft_expr_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %size.i78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %expr.198, i32 %39
  %40 = ptrtoint ptr %dlen.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %bf.load.i.i71 = load i64, ptr %dlen.i.i, align 8
  %41 = trunc i64 %bf.load.i.i71 to i32
  %42 = lshr i32 %41, 8
  %idxprom.i.i72 = and i32 %42, 4095
  %arrayidx.i.i73 = getelementptr %struct.nft_rule, ptr %rule, i32 0, i32 2, i32 %idxprom.i.i72
  %cmp.not.i74 = icmp eq ptr %arrayidx.i.i73, %add.ptr.i79
  br i1 %cmp.not.i74, label %if.end32.while.end34_crit_edge, label %if.end32.nft_expr_more.exit77_crit_edge

if.end32.nft_expr_more.exit77_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_expr_more.exit77

if.end32.while.end34_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end34

while.end34:                                      ; preds = %if.end32.while.end34_crit_edge, %nft_expr_more.exit77.while.end34_crit_edge, %if.end18.while.end34_crit_edge
  %43 = ptrtoint ptr %key.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %key.i, align 8
  %45 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mask.i, align 8
  %47 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %match.i, align 4
  %and.i = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i81 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i81, label %while.end34.if.else.i_crit_edge, label %land.lhs.true.i

while.end34.if.else.i_crit_edge:                  ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %while.end34
  %vlan_tpid.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5, i32 1
  %49 = ptrtoint ptr %vlan_tpid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan_tpid.i, align 4
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i16 %50, label %land.lhs.true.i.if.else.i_crit_edge [
    i16 -32512, label %land.lhs.true.i.if.then.i_crit_edge
    i16 -30552, label %land.lhs.true.i.if.then.i_crit_edge101
  ]

land.lhs.true.i.if.then.i_crit_edge101:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge101
  %vlan_tpid14.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6, i32 1
  %52 = ptrtoint ptr %vlan_tpid14.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vlan_tpid14.i, align 8
  %54 = ptrtoint ptr %key.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %key.i, align 8
  %vlan_tpid20.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 6, i32 1
  %55 = ptrtoint ptr %vlan_tpid20.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vlan_tpid20.i, align 8
  %57 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %mask.i, align 8
  store i16 %50, ptr %vlan_tpid14.i, align 8
  %vlan_tpid32.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 5, i32 1
  %58 = ptrtoint ptr %vlan_tpid32.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vlan_tpid32.i, align 4
  store i16 %59, ptr %vlan_tpid20.i, align 8
  %60 = ptrtoint ptr %vlan_tpid.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %44, ptr %vlan_tpid.i, align 4
  store i16 %46, ptr %vlan_tpid32.i, align 4
  %arrayidx.i = getelementptr %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 22
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 54, ptr %arrayidx.i, align 4
  br label %if.end92.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %while.end34.if.else.i_crit_edge
  %and49.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.else.i.nft_flow_rule_transfer_vlan.exit_crit_edge, label %land.lhs.true51.i

if.else.i.nft_flow_rule_transfer_vlan.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_rule_transfer_vlan.exit

land.lhs.true51.i:                                ; preds = %if.else.i
  %62 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %44, label %land.lhs.true51.i.nft_flow_rule_transfer_vlan.exit_crit_edge [
    i16 -32512, label %land.lhs.true51.i.if.then65.i_crit_edge
    i16 -30552, label %land.lhs.true51.i.if.then65.i_crit_edge102
  ]

land.lhs.true51.i.if.then65.i_crit_edge102:       ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

land.lhs.true51.i.if.then65.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

land.lhs.true51.i.nft_flow_rule_transfer_vlan.exit_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_rule_transfer_vlan.exit

if.then65.i:                                      ; preds = %land.lhs.true51.i.if.then65.i_crit_edge, %land.lhs.true51.i.if.then65.i_crit_edge102
  %vlan_tpid68.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5, i32 1
  %63 = ptrtoint ptr %vlan_tpid68.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vlan_tpid68.i, align 4
  %65 = ptrtoint ptr %key.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %key.i, align 8
  %vlan_tpid74.i = getelementptr inbounds %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 5, i32 1
  %66 = ptrtoint ptr %vlan_tpid74.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vlan_tpid74.i, align 4
  %68 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %mask.i, align 8
  store i16 %44, ptr %vlan_tpid68.i, align 4
  store i16 %46, ptr %vlan_tpid74.i, align 4
  %arrayidx88.i = getelementptr %struct.nft_flow_rule, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 10
  %69 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 50, ptr %arrayidx88.i, align 4
  br label %if.end92.sink.split.i

if.end92.sink.split.i:                            ; preds = %if.then65.i, %if.then.i
  %.sink.i = phi i32 [ 1024, %if.then65.i ], [ 4194304, %if.then.i ]
  %or91.i = or i32 %.sink.i, %48
  %70 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or91.i, ptr %match.i, align 4
  br label %nft_flow_rule_transfer_vlan.exit

nft_flow_rule_transfer_vlan.exit:                 ; preds = %if.end92.sink.split.i, %land.lhs.true51.i.nft_flow_rule_transfer_vlan.exit_crit_edge, %if.else.i.nft_flow_rule_transfer_vlan.exit_crit_edge
  %l3num = getelementptr inbounds %struct.anon.155, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %l3num, align 4
  %73 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

err_out:                                          ; preds = %if.end26.err_out_crit_edge, %while.body22.err_out_crit_edge, %if.end13.err_out_crit_edge
  %err.0 = phi i32 [ -12, %if.end13.err_out_crit_edge ], [ -95, %while.body22.err_out_crit_edge ], [ %call29, %if.end26.err_out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #9
  tail call void @nft_flow_rule_destroy(ptr noundef nonnull %call7.i.i.i)
  %74 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %nft_flow_rule_transfer_vlan.exit, %if.then4.i, %if.end8.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %74, %err_out ], [ %call7.i.i.i, %nft_flow_rule_transfer_vlan.exit ], [ inttoptr (i32 -95 to ptr), %while.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then4.i ], [ inttoptr (i32 -12 to ptr), %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_flow_rule_destroy(ptr noundef %flow) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %action315 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %action315 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action315, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %entries = getelementptr inbounds %struct.flow_rule, ptr %1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry1.017 = phi ptr [ %arrayidx7, %for.inc.for.body_crit_edge ], [ %entries, %for.body.preheader ]
  %4 = ptrtoint ptr %entry1.017 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry1.017, align 8
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp eq i32 %6, 4
  br i1 %switch, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %7 = getelementptr inbounds %struct.flow_action_entry, ptr %entry1.017, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb.for.inc_crit_edge, label %do.body1.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body1.i:                                       ; preds = %sw.bb
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !29
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !30
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !31

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !32
  br label %for.inc

for.inc:                                          ; preds = %do.end30.i, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rule, align 4
  %entries6 = getelementptr inbounds %struct.flow_rule, ptr %25, i32 1
  %inc = add nuw i32 %i.018, 1
  %arrayidx7 = getelementptr [0 x %struct.flow_action_entry], ptr %entries6, i32 0, i32 %inc
  %action3 = getelementptr inbounds %struct.flow_rule, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %action3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action3, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %25, %for.inc.for.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #9
  tail call void @kfree(ptr noundef %flow) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nft_offload_set_dependency(ptr nocapture noundef writeonly %ctx, i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %ctx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_offload_update_dependency(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %data, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %sw.bb.if.end_crit_edge, label %do.end, !prof !33

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %l3num = getelementptr inbounds %struct.anon.155, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %data, align 1
  %5 = ptrtoint ptr %l3num to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %l3num, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp22.not = icmp eq i32 %len, 1
  br i1 %cmp22.not, label %sw.bb20.if.end44_crit_edge, label %do.end38, !prof !33

sw.bb20.if.end44_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end38:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %sw.bb20.if.end44_crit_edge
  %protonum = getelementptr inbounds %struct.anon.155, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %8 = ptrtoint ptr %protonum to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %protonum, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end44, %if.end, %entry.sw.epilog_crit_edge
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ctx, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nft_chain_offload_priority(ptr nocapture noundef readonly %basechain) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.nf_hook_ops, ptr %basechain, i32 0, i32 6
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority, align 4
  %2 = add i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %2)
  %3 = icmp ult i32 %2, -65535
  %retval.0 = sext i1 %3 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_flow_rule_stats(ptr noundef readonly %chain, ptr noundef %rule) local_unnamed_addr #2 align 64 {
entry:
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #9
  %0 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  %flags.i.i = getelementptr inbounds %struct.nft_chain, ptr %chain, i32 0, i32 8
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %flags.i.i, align 4
  %2 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i, label %entry.nft_flow_offload_cmd.exit.thread_crit_edge, label %if.end.i

entry.nft_flow_offload_cmd.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_cmd.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = call ptr @memset(ptr %cls_flow, i32 0, i32 80)
  %priority.c15.i.i = getelementptr i8, ptr %chain, i32 -28
  %4 = ptrtoint ptr %priority.c15.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority.c15.i.i, align 4
  %protocol.i18.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 1
  %6 = ptrtoint ptr %protocol.i18.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %protocol.i18.i.i, align 4
  %prio.i19.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 2
  %7 = ptrtoint ptr %prio.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %prio.i19.i.i, align 8
  %extack1.i20.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 3
  %8 = ptrtoint ptr %extack1.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %extack.i, ptr %extack1.i20.i.i, align 4
  %command2.c16.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow, i32 0, i32 1
  %9 = ptrtoint ptr %command2.c16.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %command2.c16.i.i, align 8
  %10 = ptrtoint ptr %rule to i32
  %cookie.c17.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow, i32 0, i32 2
  %11 = ptrtoint ptr %cookie.c17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cookie.c17.i.i, align 4
  %flow_block.i = getelementptr i8, ptr %chain, i32 72
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ %flow_block.i, %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %flow_block.i
  br i1 %cmp.not.i.i, label %if.end, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cb.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb.i.i, align 4
  %cb_priv.i.i = getelementptr i8, ptr %.pn.i.i, i32 16
  %15 = ptrtoint ptr %cb_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cb_priv.i.i, align 4
  %call.i.i = call i32 %14(i32 noundef 2, ptr noundef nonnull %cls_flow, ptr noundef %16) #9
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.nft_flow_offload_cmd.exit.thread_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.nft_flow_offload_cmd.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_cmd.exit.thread

nft_flow_offload_cmd.exit.thread:                 ; preds = %for.body.i.i.nft_flow_offload_cmd.exit.thread_crit_edge, %entry.nft_flow_offload_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %entry.nft_flow_offload_cmd.exit.thread_crit_edge ], [ %call.i.i, %for.body.i.i.nft_flow_offload_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #9
  br label %cleanup

if.end:                                           ; preds = %for.cond.i.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #9
  %data.i = getelementptr inbounds %struct.nft_rule, ptr %rule, i32 0, i32 2
  %dlen.i = getelementptr inbounds %struct.nft_rule, ptr %rule, i32 0, i32 1
  %17 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %bf.load.i = load i64, ptr %dlen.i, align 8
  %18 = trunc i64 %bf.load.i to i32
  %19 = lshr i32 %18, 8
  %idxprom.i = and i32 %19, 4095
  %arrayidx.i = getelementptr %struct.nft_rule, ptr %rule, i32 0, i32 2, i32 %idxprom.i
  %cmp3.not21 = icmp eq ptr %data.i, %arrayidx.i
  br i1 %cmp3.not21, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %expr.022 = phi ptr [ %data.i, %for.body.lr.ph ], [ %add.ptr.i, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %expr.022 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %expr.022, align 8
  %offload_stats = getelementptr inbounds %struct.nft_expr_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %offload_stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %offload_stats, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void %23(ptr noundef %expr.022, ptr noundef %stats) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %expr.022 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %expr.022, align 8
  %size.i = getelementptr inbounds %struct.nft_expr_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %expr.022, i32 %27
  %cmp3.not = icmp eq ptr %add.ptr.i, %arrayidx.i
  br i1 %cmp3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nft_flow_offload_cmd.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %nft_flow_offload_cmd.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_flow_rule_offload_commit(ptr noundef %net) local_unnamed_addr #2 align 64 {
entry:
  %extack.i.i150.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i151.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i133 = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i134 = alloca %struct.flow_cls_offload, align 8
  %extack.i.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nft_pernet(ptr noundef %net)
  %commit_list = getelementptr inbounds %struct.nftables_pernet, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %trans.0178 = load ptr, ptr %commit_list, align 4
  %cmp.not179 = icmp eq ptr %trans.0178, %commit_list
  br i1 %cmp.not179, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i134, i32 0, i32 1
  %2 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i134, i32 0, i32 2
  %3 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i134, i32 0, i32 3
  %4 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i134, i32 0, i32 1
  %5 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i134, i32 0, i32 2
  %rule6.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %trans.0180 = phi ptr [ %trans.0178, %for.body.lr.ph ], [ %trans.0, %for.inc.for.body_crit_edge ]
  %family = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp2.not = icmp eq i8 %12, 5
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %msg_type = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 1
  %13 = ptrtoint ptr %msg_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %14, label %if.end.for.inc_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb16
    i32 6, label %sw.bb33
    i32 8, label %sw.bb64
  ]

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  %chain = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chain, align 4
  %flags = getelementptr inbounds %struct.nft_chain, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %flags, align 4
  %19 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %sw.bb.for.inc_crit_edge, label %lor.lhs.false

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %sw.bb
  %data = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %if.end9, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end9:                                          ; preds = %lor.lhs.false
  %22 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i = icmp eq i8 %22, 0
  br i1 %tobool.i.not.i, label %if.end9.if.then82_crit_edge, label %if.end.i

if.end9.if.then82_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.end.i:                                         ; preds = %if.end9
  %policy12 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 1, i32 2
  %23 = ptrtoint ptr %policy12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %policy12, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp7.i = icmp eq i8 %24, 0
  br i1 %cmp7.i, label %if.end.i.if.then82_crit_edge, label %if.end10.i

if.end.i.if.then82_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.end10.i:                                       ; preds = %if.end.i
  %hook_list.i.i = getelementptr i8, ptr %17, i32 -24
  %25 = ptrtoint ptr %hook_list.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %hook.066.i.i = load ptr, ptr %hook_list.i.i, align 4
  %cmp.not67.i.i = icmp eq ptr %hook.066.i.i, %hook_list.i.i
  br i1 %cmp.not67.i.i, label %if.end10.i.for.inc_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.for.inc_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %hook.069.i.i = phi ptr [ %hook.0.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ %hook.066.i.i, %if.end10.i.for.body.i.i_crit_edge ]
  %i.068.i.i = phi i32 [ %inc.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %dev2.i.i = getelementptr inbounds %struct.nft_hook, ptr %hook.069.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2.i.i, align 4
  %call.i.i = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i, ptr noundef %27, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i.i, label %if.then7.i.i, label %if.end11.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  %28 = ptrtoint ptr %hook_list.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %hook.170.i.i = load ptr, ptr %hook_list.i.i, align 4
  %cmp25.not71.i.i = icmp eq ptr %hook.170.i.i, %hook_list.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.068.i.i)
  %cmp2872.i.i = icmp slt i32 %i.068.i.i, 1
  %or.cond6373.i.i = select i1 %cmp25.not71.i.i, i1 true, i1 %cmp2872.i.i
  br i1 %or.cond6373.i.i, label %if.then7.i.i.if.then82_crit_edge, label %if.then7.i.i.if.end30.i.i_crit_edge

if.then7.i.i.if.end30.i.i_crit_edge:              ; preds = %if.then7.i.i
  br label %if.end30.i.i

if.then7.i.i.if.then82_crit_edge:                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.end11.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.068.i.i, 1
  %29 = ptrtoint ptr %hook.069.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %hook.0.i.i = load ptr, ptr %hook.069.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %hook.0.i.i, %hook_list.i.i
  br i1 %cmp.not.i.i, label %if.end11.i.i.for.inc_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end11.i.i.for.inc_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end30.i.i:                                     ; preds = %if.end30.i.i.if.end30.i.i_crit_edge, %if.then7.i.i.if.end30.i.i_crit_edge
  %hook.175.i.i = phi ptr [ %hook.1.i.i, %if.end30.i.i.if.end30.i.i_crit_edge ], [ %hook.170.i.i, %if.then7.i.i.if.end30.i.i_crit_edge ]
  %i.274.i.i = phi i32 [ %dec.i.i, %if.end30.i.i.if.end30.i.i_crit_edge ], [ %i.068.i.i, %if.then7.i.i.if.end30.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %i.274.i.i, -1
  %dev32.i.i = getelementptr inbounds %struct.nft_hook, ptr %hook.175.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32.i.i, align 4
  %call33.i.i = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i, ptr noundef %31, i32 noundef 1) #9
  %32 = ptrtoint ptr %hook.175.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %hook.1.i.i = load ptr, ptr %hook.175.i.i, align 4
  %cmp25.not.i.i = icmp eq ptr %hook.1.i.i, %hook_list.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.274.i.i)
  %cmp28.i.i = icmp ult i32 %i.274.i.i, 2
  %or.cond63.i.i = select i1 %cmp25.not.i.i, i1 true, i1 %cmp28.i.i
  br i1 %or.cond63.i.i, label %if.end30.i.i.sw.epilog_crit_edge, label %if.end30.i.i.if.end30.i.i_crit_edge

if.end30.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.end30.i.i.sw.epilog_crit_edge:                 ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %chain18 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %chain18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chain18, align 4
  %flags19 = getelementptr inbounds %struct.nft_chain, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %flags19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load20 = load i8, ptr %flags19, align 4
  %36 = and i8 %bf.load20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool24.not = icmp eq i8 %36, 0
  br i1 %tobool24.not, label %sw.bb16.for.inc_crit_edge, label %if.end26

sw.bb16.for.inc_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26:                                         ; preds = %sw.bb16
  %37 = and i8 %bf.load20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i114 = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i114, label %if.end26.if.then82_crit_edge, label %if.end.i116

if.end26.if.then82_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.end.i116:                                      ; preds = %if.end26
  %add.ptr.i.i115 = getelementptr i8, ptr %34, i32 -48
  %hook_list.i.i117 = getelementptr i8, ptr %34, i32 -24
  %38 = ptrtoint ptr %hook_list.i.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %hook.066.i.i118 = load ptr, ptr %hook_list.i.i117, align 4
  %cmp.not67.i.i119 = icmp eq ptr %hook.066.i.i118, %hook_list.i.i117
  br i1 %cmp.not67.i.i119, label %if.end.i116.for.inc_crit_edge, label %if.end.i116.for.body.i.i126_crit_edge

if.end.i116.for.body.i.i126_crit_edge:            ; preds = %if.end.i116
  br label %for.body.i.i126

if.end.i116.for.inc_crit_edge:                    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i.i126:                                  ; preds = %for.body.i.i126.for.body.i.i126_crit_edge, %if.end.i116.for.body.i.i126_crit_edge
  %hook.069.i.i121 = phi ptr [ %hook.0.i.i128, %for.body.i.i126.for.body.i.i126_crit_edge ], [ %hook.066.i.i118, %if.end.i116.for.body.i.i126_crit_edge ]
  %dev2.i.i123 = getelementptr inbounds %struct.nft_hook, ptr %hook.069.i.i121, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %dev2.i.i123 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev2.i.i123, align 4
  %call.i.i124 = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i115, ptr noundef %40, i32 noundef 1) #9
  %41 = ptrtoint ptr %hook.069.i.i121 to i32
  call void @__asan_load4_noabort(i32 %41)
  %hook.0.i.i128 = load ptr, ptr %hook.069.i.i121, align 4
  %cmp.not.i.i129 = icmp eq ptr %hook.0.i.i128, %hook_list.i.i117
  br i1 %cmp.not.i.i129, label %for.body.i.i126.for.inc_crit_edge, label %for.body.i.i126.for.body.i.i126_crit_edge

for.body.i.i126.for.body.i.i126_crit_edge:        ; preds = %for.body.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i126

for.body.i.i126.for.inc_crit_edge:                ; preds = %for.body.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb33:                                          ; preds = %if.end
  %chain35 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %chain35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chain35, align 4
  %flags36 = getelementptr inbounds %struct.nft_chain, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %flags36 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load37 = load i8, ptr %flags36, align 4
  %45 = and i8 %bf.load37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool41.not = icmp eq i8 %45, 0
  br i1 %tobool41.not, label %sw.bb33.for.inc_crit_edge, label %if.end43

sw.bb33.for.inc_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end43:                                         ; preds = %sw.bb33
  %flags45 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 6
  %46 = ptrtoint ptr %flags45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags45, align 4
  %48 = and i16 %47, 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %48)
  %.not = icmp eq i16 %48, 2048
  br i1 %.not, label %if.end56, label %if.end43.if.then82_crit_edge

if.end43.if.then82_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.end56:                                         ; preds = %if.end43
  %data59 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 4
  %49 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data59, align 4
  %flow = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %flow, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i) #9
  %53 = call ptr @memset(ptr %extack.i.i, i32 0, i32 36)
  %54 = ptrtoint ptr %flags36 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i.i = load i8, ptr %flags36, align 4
  %55 = and i8 %bf.load.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.i.not.i.i, label %if.end56.nft_flow_offload_rule.exit_crit_edge, label %if.end.i.i

if.end56.nft_flow_offload_rule.exit_crit_edge:    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit

if.end.i.i:                                       ; preds = %if.end56
  %56 = call ptr @memset(ptr %cls_flow.i, i32 0, i32 80)
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.end7.critedge.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %52, align 4
  %priority.c.i.i.i = getelementptr i8, ptr %43, i32 -28
  %59 = ptrtoint ptr %priority.c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %priority.c.i.i.i, align 4
  %rule5.i.i.i = getelementptr inbounds %struct.nft_flow_rule, ptr %52, i32 0, i32 2
  %61 = ptrtoint ptr %rule5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rule5.i.i.i, align 4
  %63 = ptrtoint ptr %rule6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %rule6.i.i.i, align 8
  br label %nft_flow_cls_offload_setup.exit.i.i

if.end7.critedge.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %priority.c15.i.i.i = getelementptr i8, ptr %43, i32 -28
  %64 = ptrtoint ptr %priority.c15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %priority.c15.i.i.i, align 4
  br label %nft_flow_cls_offload_setup.exit.i.i

nft_flow_cls_offload_setup.exit.i.i:              ; preds = %if.end7.critedge.i.i.i, %if.then.i.i.i
  %.sink2.i = phi i16 [ 3, %if.end7.critedge.i.i.i ], [ %58, %if.then.i.i.i ]
  %.sink1.i = phi i32 [ %65, %if.end7.critedge.i.i.i ], [ %60, %if.then.i.i.i ]
  %.sink.i = ptrtoint ptr %50 to i32
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %.sink2.i, ptr %6, align 4
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink1.i, ptr %7, align 8
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %extack.i.i, ptr %8, align 4
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %9, align 8
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink.i, ptr %10, align 4
  %flow_block.i.i = getelementptr i8, ptr %43, i32 72
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %nft_flow_cls_offload_setup.exit.i.i
  %.pn.in.i.i.i = phi ptr [ %flow_block.i.i, %nft_flow_cls_offload_setup.exit.i.i ], [ %.pn.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %71 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %flow_block.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.nft_flow_offload_rule.exit_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.nft_flow_offload_rule.exit_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %cb.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 8
  %72 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cb.i.i.i, align 4
  %cb_priv.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 16
  %74 = ptrtoint ptr %cb_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cb_priv.i.i.i, align 4
  %call.i.i.i = call i32 %73(i32 noundef 2, ptr noundef nonnull %cls_flow.i, ptr noundef %75) #9
  %cmp1.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.nft_flow_offload_rule.exit_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i

for.body.i.i.i.nft_flow_offload_rule.exit_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit

nft_flow_offload_rule.exit:                       ; preds = %for.body.i.i.i.nft_flow_offload_rule.exit_crit_edge, %for.cond.i.i.i.nft_flow_offload_rule.exit_crit_edge, %if.end56.nft_flow_offload_rule.exit_crit_edge
  %retval.0.i.i = phi i32 [ -95, %if.end56.nft_flow_offload_rule.exit_crit_edge ], [ 0, %for.cond.i.i.i.nft_flow_offload_rule.exit_crit_edge ], [ %call.i.i.i, %for.body.i.i.i.nft_flow_offload_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i) #9
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end
  %chain66 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %chain66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chain66, align 4
  %flags67 = getelementptr inbounds %struct.nft_chain, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %flags67 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load68 = load i8, ptr %flags67, align 4
  %79 = and i8 %bf.load68, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool72.not = icmp eq i8 %79, 0
  br i1 %tobool72.not, label %sw.bb64.for.inc_crit_edge, label %if.end74

sw.bb64.for.inc_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end74:                                         ; preds = %sw.bb64
  %data77 = getelementptr inbounds %struct.nft_trans, ptr %trans.0180, i32 0, i32 4
  %80 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data77, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i134) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i133) #9
  %82 = call ptr @memset(ptr %extack.i.i133, i32 0, i32 36)
  %83 = ptrtoint ptr %flags67 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i.i.i136 = load i8, ptr %flags67, align 4
  %84 = and i8 %bf.load.i.i.i136, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i.not.i.i137 = icmp eq i8 %84, 0
  br i1 %tobool.i.not.i.i137, label %if.end74.nft_flow_offload_rule.exit156_crit_edge, label %if.end.i.i138

if.end74.nft_flow_offload_rule.exit156_crit_edge: ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit156

if.end.i.i138:                                    ; preds = %if.end74
  %85 = call ptr @memset(ptr %cls_flow.i134, i32 0, i32 80)
  %priority.c15.i.i.i139 = getelementptr i8, ptr %77, i32 -28
  %86 = ptrtoint ptr %priority.c15.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %priority.c15.i.i.i139, align 4
  %.sink.i143 = ptrtoint ptr %81 to i32
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 3, ptr %1, align 4
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %2, align 8
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %extack.i.i133, ptr %3, align 4
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %4, align 8
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink.i143, ptr %5, align 4
  %flow_block.i.i144 = getelementptr i8, ptr %77, i32 72
  br label %for.cond.i.i.i149

for.cond.i.i.i149:                                ; preds = %for.body.i.i.i154.for.cond.i.i.i149_crit_edge, %if.end.i.i138
  %.pn.in.i.i.i146 = phi ptr [ %flow_block.i.i144, %if.end.i.i138 ], [ %.pn.i.i.i147, %for.body.i.i.i154.for.cond.i.i.i149_crit_edge ]
  %93 = ptrtoint ptr %.pn.in.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i.i.i147 = load ptr, ptr %.pn.in.i.i.i146, align 4
  %cmp.not.i.i.i148 = icmp eq ptr %.pn.i.i.i147, %flow_block.i.i144
  br i1 %cmp.not.i.i.i148, label %for.cond.i.i.i149.nft_flow_offload_rule.exit156_crit_edge, label %for.body.i.i.i154

for.cond.i.i.i149.nft_flow_offload_rule.exit156_crit_edge: ; preds = %for.cond.i.i.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit156

for.body.i.i.i154:                                ; preds = %for.cond.i.i.i149
  %cb.i.i.i150 = getelementptr i8, ptr %.pn.i.i.i147, i32 8
  %94 = ptrtoint ptr %cb.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cb.i.i.i150, align 4
  %cb_priv.i.i.i151 = getelementptr i8, ptr %.pn.i.i.i147, i32 16
  %96 = ptrtoint ptr %cb_priv.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cb_priv.i.i.i151, align 4
  %call.i.i.i152 = call i32 %95(i32 noundef 2, ptr noundef nonnull %cls_flow.i134, ptr noundef %97) #9
  %cmp1.i.i.i153 = icmp slt i32 %call.i.i.i152, 0
  br i1 %cmp1.i.i.i153, label %for.body.i.i.i154.nft_flow_offload_rule.exit156_crit_edge, label %for.body.i.i.i154.for.cond.i.i.i149_crit_edge

for.body.i.i.i154.for.cond.i.i.i149_crit_edge:    ; preds = %for.body.i.i.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i149

for.body.i.i.i154.nft_flow_offload_rule.exit156_crit_edge: ; preds = %for.body.i.i.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit156

nft_flow_offload_rule.exit156:                    ; preds = %for.body.i.i.i154.nft_flow_offload_rule.exit156_crit_edge, %for.cond.i.i.i149.nft_flow_offload_rule.exit156_crit_edge, %if.end74.nft_flow_offload_rule.exit156_crit_edge
  %retval.0.i.i155 = phi i32 [ -95, %if.end74.nft_flow_offload_rule.exit156_crit_edge ], [ 0, %for.cond.i.i.i149.nft_flow_offload_rule.exit156_crit_edge ], [ %call.i.i.i152, %for.body.i.i.i154.nft_flow_offload_rule.exit156_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i133) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i134) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %nft_flow_offload_rule.exit156, %nft_flow_offload_rule.exit, %if.end30.i.i.sw.epilog_crit_edge
  %err.1 = phi i32 [ %retval.0.i.i155, %nft_flow_offload_rule.exit156 ], [ %retval.0.i.i, %nft_flow_offload_rule.exit ], [ %call.i.i, %if.end30.i.i.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool81.not = icmp eq i32 %err.1, 0
  br i1 %tobool81.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.if.then82_crit_edge

sw.epilog.if.then82_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then82:                                        ; preds = %sw.epilog.if.then82_crit_edge, %if.end43.if.then82_crit_edge, %if.end26.if.then82_crit_edge, %if.then7.i.i.if.then82_crit_edge, %if.end.i.if.then82_crit_edge, %if.end9.if.then82_crit_edge
  %err.1169 = phi i32 [ %err.1, %sw.epilog.if.then82_crit_edge ], [ -95, %if.end26.if.then82_crit_edge ], [ %call.i.i, %if.then7.i.i.if.then82_crit_edge ], [ -95, %if.end.i.if.then82_crit_edge ], [ -95, %if.end9.if.then82_crit_edge ], [ -95, %if.end43.if.then82_crit_edge ]
  %call.i = call fastcc ptr @nft_pernet(ptr noundef %net) #9
  %commit_list.i = getelementptr inbounds %struct.nftables_pernet, ptr %call.i, i32 0, i32 1
  %trans.addr.0.in178.i = getelementptr inbounds %struct.list_head, ptr %trans.0180, i32 0, i32 1
  %98 = ptrtoint ptr %trans.addr.0.in178.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %trans.addr.0179.i = load ptr, ptr %trans.addr.0.in178.i, align 4
  %cmp.not180.i = icmp eq ptr %trans.addr.0179.i, %commit_list.i
  br i1 %cmp.not180.i, label %if.then82.for.end_crit_edge, label %for.body.lr.ph.i

if.then82.for.end_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %if.then82
  %rule6.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i151.i, i32 0, i32 3
  %99 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i151.i, i32 0, i32 1
  %100 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i151.i, i32 0, i32 2
  %101 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i151.i, i32 0, i32 3
  %102 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i151.i, i32 0, i32 1
  %103 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i151.i, i32 0, i32 2
  %104 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i, i32 0, i32 1
  %105 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i, i32 0, i32 2
  %106 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i, i32 0, i32 3
  %107 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i, i32 0, i32 1
  %108 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %trans.addr.0181.i = phi ptr [ %trans.addr.0179.i, %for.body.lr.ph.i ], [ %trans.addr.0.i, %for.inc.i.for.body.i_crit_edge ]
  %family.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 3, i32 7
  %109 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %110)
  %cmp2.not.i = icmp eq i8 %110, 5
  br i1 %cmp2.not.i, label %if.end.i157, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i157:                                      ; preds = %for.body.i
  %msg_type.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 1
  %111 = ptrtoint ptr %msg_type.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %msg_type.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %112, label %if.end.i157.for.inc.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 5, label %sw.bb13.i
    i32 6, label %sw.bb27.i
    i32 8, label %sw.bb43.i
  ]

if.end.i157.for.inc.i_crit_edge:                  ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end.i157
  %chain.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chain.i, align 4
  %flags.i = getelementptr inbounds %struct.nft_chain, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %117 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i, label %sw.bb.i.for.inc.i_crit_edge, label %lor.lhs.false.i

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %data.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 4
  %118 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool6.not.i = icmp eq i8 %119, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %120 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.i.not.i.i158 = icmp eq i8 %120, 0
  br i1 %tobool.i.not.i.i158, label %if.end9.i.land.rhs.i_crit_edge, label %if.end.i.i159

if.end9.i.land.rhs.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end.i.i159:                                    ; preds = %if.end9.i
  %add.ptr.i.i.i = getelementptr i8, ptr %115, i32 -48
  %hook_list.i.i.i = getelementptr i8, ptr %115, i32 -24
  %121 = ptrtoint ptr %hook_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %hook.066.i.i.i = load ptr, ptr %hook_list.i.i.i, align 4
  %cmp.not67.i.i.i = icmp eq ptr %hook.066.i.i.i, %hook_list.i.i.i
  br i1 %cmp.not67.i.i.i, label %if.end.i.i159.for.inc.i_crit_edge, label %if.end.i.i159.for.body.i.i.i162_crit_edge

if.end.i.i159.for.body.i.i.i162_crit_edge:        ; preds = %if.end.i.i159
  br label %for.body.i.i.i162

if.end.i.i159.for.inc.i_crit_edge:                ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.i.i162:                                ; preds = %for.body.i.i.i162.for.body.i.i.i162_crit_edge, %if.end.i.i159.for.body.i.i.i162_crit_edge
  %hook.069.i.i.i = phi ptr [ %hook.0.i.i.i, %for.body.i.i.i162.for.body.i.i.i162_crit_edge ], [ %hook.066.i.i.i, %if.end.i.i159.for.body.i.i.i162_crit_edge ]
  %dev2.i.i.i = getelementptr inbounds %struct.nft_hook, ptr %hook.069.i.i.i, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev2.i.i.i, align 4
  %call.i.i.i160 = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i.i, ptr noundef %123, i32 noundef 1) #9
  %124 = ptrtoint ptr %hook.069.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %hook.0.i.i.i = load ptr, ptr %hook.069.i.i.i, align 4
  %cmp.not.i.i.i161 = icmp eq ptr %hook.0.i.i.i, %hook_list.i.i.i
  br i1 %cmp.not.i.i.i161, label %for.body.i.i.i162.for.inc.i_crit_edge, label %for.body.i.i.i162.for.body.i.i.i162_crit_edge

for.body.i.i.i162.for.body.i.i.i162_crit_edge:    ; preds = %for.body.i.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i162

for.body.i.i.i162.for.inc.i_crit_edge:            ; preds = %for.body.i.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %if.end.i157
  %chain15.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 3, i32 2
  %125 = ptrtoint ptr %chain15.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chain15.i, align 4
  %flags16.i = getelementptr inbounds %struct.nft_chain, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load17.i = load i8, ptr %flags16.i, align 4
  %128 = and i8 %bf.load17.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool21.not.i = icmp eq i8 %128, 0
  br i1 %tobool21.not.i, label %sw.bb13.i.for.inc.i_crit_edge, label %if.end23.i

sw.bb13.i.for.inc.i_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end23.i:                                       ; preds = %sw.bb13.i
  %129 = and i8 %bf.load17.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.i.not.i133.i = icmp eq i8 %129, 0
  br i1 %tobool.i.not.i133.i, label %if.end23.i.land.rhs.i_crit_edge, label %if.end.i135.i

if.end23.i.land.rhs.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end.i135.i:                                    ; preds = %if.end23.i
  %add.ptr.i.i134.i = getelementptr i8, ptr %126, i32 -48
  %policy2.i.i = getelementptr i8, ptr %126, i32 -12
  %130 = ptrtoint ptr %policy2.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %cond.in17.i.i = load i8, ptr %policy2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.in17.i.i)
  %cmp7.i.i = icmp eq i8 %cond.in17.i.i, 0
  br i1 %cmp7.i.i, label %if.end.i135.i.land.rhs.i_crit_edge, label %if.end10.i.i

if.end.i135.i.land.rhs.i_crit_edge:               ; preds = %if.end.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end10.i.i:                                     ; preds = %if.end.i135.i
  %hook_list.i.i136.i = getelementptr i8, ptr %126, i32 -24
  %131 = ptrtoint ptr %hook_list.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %hook.066.i.i137.i = load ptr, ptr %hook_list.i.i136.i, align 4
  %cmp.not67.i.i138.i = icmp eq ptr %hook.066.i.i137.i, %hook_list.i.i136.i
  br i1 %cmp.not67.i.i138.i, label %if.end10.i.i.for.inc.i_crit_edge, label %if.end10.i.i.for.body.i.i144.i_crit_edge

if.end10.i.i.for.body.i.i144.i_crit_edge:         ; preds = %if.end10.i.i
  br label %for.body.i.i144.i

if.end10.i.i.for.inc.i_crit_edge:                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.i144.i:                                ; preds = %if.end11.i.i.i.for.body.i.i144.i_crit_edge, %if.end10.i.i.for.body.i.i144.i_crit_edge
  %hook.069.i.i139.i = phi ptr [ %hook.0.i.i146.i, %if.end11.i.i.i.for.body.i.i144.i_crit_edge ], [ %hook.066.i.i137.i, %if.end10.i.i.for.body.i.i144.i_crit_edge ]
  %i.068.i.i140.i = phi i32 [ %inc.i.i145.i, %if.end11.i.i.i.for.body.i.i144.i_crit_edge ], [ 0, %if.end10.i.i.for.body.i.i144.i_crit_edge ]
  %dev2.i.i141.i = getelementptr inbounds %struct.nft_hook, ptr %hook.069.i.i139.i, i32 0, i32 2, i32 1
  %132 = ptrtoint ptr %dev2.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev2.i.i141.i, align 4
  %call.i.i142.i = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i134.i, ptr noundef %133, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142.i)
  %cmp4.i.i143.i = icmp slt i32 %call.i.i142.i, 0
  br i1 %cmp4.i.i143.i, label %if.then7.i.i.i, label %if.end11.i.i.i

if.then7.i.i.i:                                   ; preds = %for.body.i.i144.i
  %134 = ptrtoint ptr %hook_list.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %hook.170.i.i.i = load ptr, ptr %hook_list.i.i136.i, align 4
  %cmp25.not71.i.i.i = icmp eq ptr %hook.170.i.i.i, %hook_list.i.i136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.068.i.i140.i)
  %cmp2872.i.i.i = icmp slt i32 %i.068.i.i140.i, 1
  %or.cond6373.i.i.i = select i1 %cmp25.not71.i.i.i, i1 true, i1 %cmp2872.i.i.i
  br i1 %or.cond6373.i.i.i, label %if.then7.i.i.i.land.rhs.i_crit_edge, label %if.then7.i.i.i.if.end30.i.i.i_crit_edge

if.then7.i.i.i.if.end30.i.i.i_crit_edge:          ; preds = %if.then7.i.i.i
  br label %if.end30.i.i.i

if.then7.i.i.i.land.rhs.i_crit_edge:              ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end11.i.i.i:                                   ; preds = %for.body.i.i144.i
  %inc.i.i145.i = add i32 %i.068.i.i140.i, 1
  %135 = ptrtoint ptr %hook.069.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %hook.0.i.i146.i = load ptr, ptr %hook.069.i.i139.i, align 4
  %cmp.not.i.i147.i = icmp eq ptr %hook.0.i.i146.i, %hook_list.i.i136.i
  br i1 %cmp.not.i.i147.i, label %if.end11.i.i.i.for.inc.i_crit_edge, label %if.end11.i.i.i.for.body.i.i144.i_crit_edge

if.end11.i.i.i.for.body.i.i144.i_crit_edge:       ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i144.i

if.end11.i.i.i.for.inc.i_crit_edge:               ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end30.i.i.i:                                   ; preds = %if.end30.i.i.i.if.end30.i.i.i_crit_edge, %if.then7.i.i.i.if.end30.i.i.i_crit_edge
  %hook.175.i.i.i = phi ptr [ %hook.1.i.i.i, %if.end30.i.i.i.if.end30.i.i.i_crit_edge ], [ %hook.170.i.i.i, %if.then7.i.i.i.if.end30.i.i.i_crit_edge ]
  %i.274.i.i.i = phi i32 [ %dec.i.i.i, %if.end30.i.i.i.if.end30.i.i.i_crit_edge ], [ %i.068.i.i140.i, %if.then7.i.i.i.if.end30.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %i.274.i.i.i, -1
  %dev32.i.i.i = getelementptr inbounds %struct.nft_hook, ptr %hook.175.i.i.i, i32 0, i32 2, i32 1
  %136 = ptrtoint ptr %dev32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev32.i.i.i, align 4
  %call33.i.i.i = call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i.i134.i, ptr noundef %137, i32 noundef 1) #9
  %138 = ptrtoint ptr %hook.175.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %hook.1.i.i.i = load ptr, ptr %hook.175.i.i.i, align 4
  %cmp25.not.i.i.i = icmp eq ptr %hook.1.i.i.i, %hook_list.i.i136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.274.i.i.i)
  %cmp28.i.i.i = icmp ult i32 %i.274.i.i.i, 2
  %or.cond63.i.i.i = select i1 %cmp25.not.i.i.i, i1 true, i1 %cmp28.i.i.i
  br i1 %or.cond63.i.i.i, label %if.end30.i.i.i.land.rhs.i_crit_edge, label %if.end30.i.i.i.if.end30.i.i.i_crit_edge

if.end30.i.i.i.if.end30.i.i.i_crit_edge:          ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i.i

if.end30.i.i.i.land.rhs.i_crit_edge:              ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

sw.bb27.i:                                        ; preds = %if.end.i157
  %chain29.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 3, i32 2
  %139 = ptrtoint ptr %chain29.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %chain29.i, align 4
  %flags30.i = getelementptr inbounds %struct.nft_chain, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load31.i = load i8, ptr %flags30.i, align 4
  %142 = and i8 %bf.load31.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool35.not.i = icmp eq i8 %142, 0
  br i1 %tobool35.not.i, label %sw.bb27.i.for.inc.i_crit_edge, label %if.end37.i

sw.bb27.i.for.inc.i_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end37.i:                                       ; preds = %sw.bb27.i
  %data40.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 4
  %143 = ptrtoint ptr %data40.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data40.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i.i) #9
  %145 = call ptr @memset(ptr %extack.i.i.i, i32 0, i32 36)
  %146 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load.i.i.i.i = load i8, ptr %flags30.i, align 4
  %147 = and i8 %bf.load.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.i.not.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool.i.not.i.i.i, label %if.end37.i.nft_flow_offload_rule.exit.i_crit_edge, label %if.end.i.i.i

if.end37.i.nft_flow_offload_rule.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit.i

if.end.i.i.i:                                     ; preds = %if.end37.i
  %148 = call ptr @memset(ptr %cls_flow.i.i, i32 0, i32 80)
  %priority.c15.i.i.i.i = getelementptr i8, ptr %140, i32 -28
  %149 = ptrtoint ptr %priority.c15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %priority.c15.i.i.i.i, align 4
  %.sink.i.i = ptrtoint ptr %144 to i32
  %151 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 3, ptr %104, align 4
  %152 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %150, ptr %105, align 8
  %153 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %extack.i.i.i, ptr %106, align 4
  %154 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %107, align 8
  %155 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %.sink.i.i, ptr %108, align 4
  %flow_block.i.i.i = getelementptr i8, ptr %140, i32 72
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end.i.i.i
  %.pn.in.i.i.i.i = phi ptr [ %flow_block.i.i.i, %if.end.i.i.i ], [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %156 = ptrtoint ptr %.pn.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %flow_block.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge, label %for.body.i.i.i.i

for.cond.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  %cb.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 8
  %157 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cb.i.i.i.i, align 4
  %cb_priv.i.i.i.i = getelementptr i8, ptr %.pn.i.i.i.i, i32 16
  %159 = ptrtoint ptr %cb_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cb_priv.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %158(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i, ptr noundef %160) #9
  %cmp1.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp1.i.i.i.i, label %for.body.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge, label %for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i.i

for.body.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit.i

nft_flow_offload_rule.exit.i:                     ; preds = %for.body.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge, %for.cond.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge, %if.end37.i.nft_flow_offload_rule.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ -95, %if.end37.i.nft_flow_offload_rule.exit.i_crit_edge ], [ %call.i.i.i.i, %for.body.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge ], [ 0, %for.cond.i.i.i.i.nft_flow_offload_rule.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i) #9
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.end.i157
  %chain45.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 3, i32 2
  %161 = ptrtoint ptr %chain45.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %chain45.i, align 4
  %flags46.i = getelementptr inbounds %struct.nft_chain, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load47.i = load i8, ptr %flags46.i, align 4
  %164 = and i8 %bf.load47.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool51.not.i = icmp eq i8 %164, 0
  br i1 %tobool51.not.i, label %sw.bb43.i.for.inc.i_crit_edge, label %if.end53.i

sw.bb43.i.for.inc.i_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end53.i:                                       ; preds = %sw.bb43.i
  %data56.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 0, i32 4
  %165 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data56.i, align 4
  %flow.i = getelementptr inbounds %struct.nft_trans, ptr %trans.addr.0181.i, i32 1, i32 0, i32 1
  %167 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %flow.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i151.i) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i150.i) #9
  %169 = call ptr @memset(ptr %extack.i.i150.i, i32 0, i32 36)
  %170 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load.i.i.i153.i = load i8, ptr %flags46.i, align 4
  %171 = and i8 %bf.load.i.i.i153.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.i.not.i.i154.i = icmp eq i8 %171, 0
  br i1 %tobool.i.not.i.i154.i, label %if.end53.i.nft_flow_offload_rule.exit169.i_crit_edge, label %if.end.i.i155.i

if.end53.i.nft_flow_offload_rule.exit169.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit169.i

if.end.i.i155.i:                                  ; preds = %if.end53.i
  %172 = call ptr @memset(ptr %cls_flow.i151.i, i32 0, i32 80)
  %tobool.not.i.i.i.i = icmp eq ptr %168, null
  br i1 %tobool.not.i.i.i.i, label %if.end7.critedge.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %168 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %168, align 4
  %priority.c.i.i.i.i = getelementptr i8, ptr %162, i32 -28
  %175 = ptrtoint ptr %priority.c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %priority.c.i.i.i.i, align 4
  %rule5.i.i.i.i = getelementptr inbounds %struct.nft_flow_rule, ptr %168, i32 0, i32 2
  %177 = ptrtoint ptr %rule5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rule5.i.i.i.i, align 4
  %179 = ptrtoint ptr %rule6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %rule6.i.i.i.i, align 8
  br label %nft_flow_cls_offload_setup.exit.i.i.i

if.end7.critedge.i.i.i.i:                         ; preds = %if.end.i.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  %priority.c15.i.i.i156.i = getelementptr i8, ptr %162, i32 -28
  %180 = ptrtoint ptr %priority.c15.i.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %priority.c15.i.i.i156.i, align 4
  br label %nft_flow_cls_offload_setup.exit.i.i.i

nft_flow_cls_offload_setup.exit.i.i.i:            ; preds = %if.end7.critedge.i.i.i.i, %if.then.i.i.i.i
  %.sink2.i.i = phi i16 [ 3, %if.end7.critedge.i.i.i.i ], [ %174, %if.then.i.i.i.i ]
  %.sink1.i.i = phi i32 [ %181, %if.end7.critedge.i.i.i.i ], [ %176, %if.then.i.i.i.i ]
  %.sink.i157.i = ptrtoint ptr %166 to i32
  %182 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %.sink2.i.i, ptr %99, align 4
  %183 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %.sink1.i.i, ptr %100, align 8
  %184 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %extack.i.i150.i, ptr %101, align 4
  %185 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %102, align 8
  %186 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %.sink.i157.i, ptr %103, align 4
  %flow_block.i.i158.i = getelementptr i8, ptr %162, i32 72
  br label %for.cond.i.i.i162.i

for.cond.i.i.i162.i:                              ; preds = %for.body.i.i.i167.i.for.cond.i.i.i162.i_crit_edge, %nft_flow_cls_offload_setup.exit.i.i.i
  %.pn.in.i.i.i159.i = phi ptr [ %flow_block.i.i158.i, %nft_flow_cls_offload_setup.exit.i.i.i ], [ %.pn.i.i.i160.i, %for.body.i.i.i167.i.for.cond.i.i.i162.i_crit_edge ]
  %187 = ptrtoint ptr %.pn.in.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pn.i.i.i160.i = load ptr, ptr %.pn.in.i.i.i159.i, align 4
  %cmp.not.i.i.i161.i = icmp eq ptr %.pn.i.i.i160.i, %flow_block.i.i158.i
  br i1 %cmp.not.i.i.i161.i, label %for.cond.i.i.i162.i.nft_flow_offload_rule.exit169.i_crit_edge, label %for.body.i.i.i167.i

for.cond.i.i.i162.i.nft_flow_offload_rule.exit169.i_crit_edge: ; preds = %for.cond.i.i.i162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit169.i

for.body.i.i.i167.i:                              ; preds = %for.cond.i.i.i162.i
  %cb.i.i.i163.i = getelementptr i8, ptr %.pn.i.i.i160.i, i32 8
  %188 = ptrtoint ptr %cb.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cb.i.i.i163.i, align 4
  %cb_priv.i.i.i164.i = getelementptr i8, ptr %.pn.i.i.i160.i, i32 16
  %190 = ptrtoint ptr %cb_priv.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cb_priv.i.i.i164.i, align 4
  %call.i.i.i165.i = call i32 %189(i32 noundef 2, ptr noundef nonnull %cls_flow.i151.i, ptr noundef %191) #9
  %cmp1.i.i.i166.i = icmp slt i32 %call.i.i.i165.i, 0
  br i1 %cmp1.i.i.i166.i, label %for.body.i.i.i167.i.nft_flow_offload_rule.exit169.i_crit_edge, label %for.body.i.i.i167.i.for.cond.i.i.i162.i_crit_edge

for.body.i.i.i167.i.for.cond.i.i.i162.i_crit_edge: ; preds = %for.body.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i.i162.i

for.body.i.i.i167.i.nft_flow_offload_rule.exit169.i_crit_edge: ; preds = %for.body.i.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_flow_offload_rule.exit169.i

nft_flow_offload_rule.exit169.i:                  ; preds = %for.body.i.i.i167.i.nft_flow_offload_rule.exit169.i_crit_edge, %for.cond.i.i.i162.i.nft_flow_offload_rule.exit169.i_crit_edge, %if.end53.i.nft_flow_offload_rule.exit169.i_crit_edge
  %retval.0.i.i168.i = phi i32 [ -95, %if.end53.i.nft_flow_offload_rule.exit169.i_crit_edge ], [ %call.i.i.i165.i, %for.body.i.i.i167.i.nft_flow_offload_rule.exit169.i_crit_edge ], [ 0, %for.cond.i.i.i162.i.nft_flow_offload_rule.exit169.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i150.i) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i151.i) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %nft_flow_offload_rule.exit169.i, %nft_flow_offload_rule.exit.i
  %err.1.i = phi i32 [ %retval.0.i.i168.i, %nft_flow_offload_rule.exit169.i ], [ %retval.0.i.i.i, %nft_flow_offload_rule.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool62.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool62.not.i, label %sw.epilog.i.for.inc.i_crit_edge, label %sw.epilog.i.land.rhs.i_crit_edge

sw.epilog.i.land.rhs.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.rhs.i:                                       ; preds = %sw.epilog.i.land.rhs.i_crit_edge, %if.end30.i.i.i.land.rhs.i_crit_edge, %if.then7.i.i.i.land.rhs.i_crit_edge, %if.end.i135.i.land.rhs.i_crit_edge, %if.end23.i.land.rhs.i_crit_edge, %if.end9.i.land.rhs.i_crit_edge
  %.b129.i = load i1, ptr @nft_flow_rule_offload_abort.__already_done, align 1
  br i1 %.b129.i, label %land.rhs.i.for.end_crit_edge, label %if.then72.i, !prof !33

land.rhs.i.for.end_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then72.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nft_flow_rule_offload_abort.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 532, i32 noundef 9, ptr noundef null) #9
  br label %for.end

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %sw.bb43.i.for.inc.i_crit_edge, %sw.bb27.i.for.inc.i_crit_edge, %if.end11.i.i.i.for.inc.i_crit_edge, %if.end10.i.i.for.inc.i_crit_edge, %sw.bb13.i.for.inc.i_crit_edge, %for.body.i.i.i162.for.inc.i_crit_edge, %if.end.i.i159.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %if.end.i157.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %trans.addr.0.in.i = getelementptr inbounds %struct.list_head, ptr %trans.addr.0181.i, i32 0, i32 1
  %192 = ptrtoint ptr %trans.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %trans.addr.0.i = load ptr, ptr %trans.addr.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %trans.addr.0.i, %commit_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %sw.bb64.for.inc_crit_edge, %sw.bb33.for.inc_crit_edge, %for.body.i.i126.for.inc_crit_edge, %if.end.i116.for.inc_crit_edge, %sw.bb16.for.inc_crit_edge, %if.end11.i.i.for.inc_crit_edge, %if.end10.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %193 = ptrtoint ptr %trans.0180 to i32
  call void @__asan_load4_noabort(i32 %193)
  %trans.0 = load ptr, ptr %trans.0180, align 4
  %cmp.not = icmp eq ptr %trans.0, %commit_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.i.for.end_crit_edge, %if.then72.i, %land.rhs.i.for.end_crit_edge, %if.then82.for.end_crit_edge, %entry.for.end_crit_edge
  %err.3 = phi i32 [ %err.1169, %if.then82.for.end_crit_edge ], [ %err.1169, %land.rhs.i.for.end_crit_edge ], [ %err.1169, %if.then72.i ], [ 0, %entry.for.end_crit_edge ], [ %err.1169, %for.inc.i.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nft_pernet(ptr noundef %net) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_tables_net_id to i32))
  %0 = load i32, ptr @nf_tables_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %9 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_offload_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @nft_offload_netdev_notifier) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_offload_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nft_offload_netdev_notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_chain_offload_cmd(ptr noundef %basechain, ptr noundef %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %extack.i6 = alloca %struct.netlink_ext_ack, align 4
  %bo.i7 = alloca %struct.flow_block_offload, align 4
  %extack.i = alloca %struct.netlink_ext_ack, align 4
  %bo.i = alloca %struct.flow_block_offload, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i) #9
  %4 = call ptr @memset(ptr %extack.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo.i) #9
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %bo.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 32)
  %net1.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 4
  %9 = ptrtoint ptr %net1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %net1.i.i, align 4
  %flow_block.i.i = getelementptr inbounds %struct.nft_base_chain, ptr %basechain, i32 0, i32 7
  %block.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 5
  %10 = ptrtoint ptr %block.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %flow_block.i.i, ptr %block.i.i, align 4
  %11 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cmd, ptr %bo.i, align 4
  %binder_type.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 1
  %12 = ptrtoint ptr %binder_type.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %binder_type.i.i, align 4
  %extack2.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 8
  %13 = ptrtoint ptr %extack2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %extack.i, ptr %extack2.i.i, align 4
  %cb_list_head.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 10
  %14 = ptrtoint ptr %cb_list_head.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %flow_block.i.i, ptr %cb_list_head.i.i, align 4
  %cb_list4.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 6
  %15 = ptrtoint ptr %cb_list4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %cb_list4.i.i, ptr %cb_list4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb_list4.i.i, ptr %prev.i.i.i, align 4
  %call1.i = call i32 %3(ptr noundef %dev, i32 noundef 5, ptr noundef nonnull %bo.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.nft_block_offload_cmd.exit_crit_edge, label %if.end.i

if.then.nft_block_offload_cmd.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_block_offload_cmd.exit

if.end.i:                                         ; preds = %if.then
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %land.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %cb_list4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cb_list4.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %19, %cb_list4.i.i
  br i1 %cmp.i.not.i.i.i.i, label %sw.bb.i.i.nft_block_offload_cmd.exit_crit_edge, label %if.then.i.i.i.i

sw.bb.i.i.nft_block_offload_cmd.exit_crit_edge:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_block_offload_cmd.exit

if.then.i.i.i.i:                                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %flow_block.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flow_block.i.i, align 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %flow_block.i.i, ptr %prev3.i.i.i.i.i, align 4
  store ptr %19, ptr %flow_block.i.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %23, align 4
  %prev6.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev6.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev6.i.i.i.i.i, align 4
  br label %nft_block_offload_cmd.exit

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nft_flow_offload_unbind(ptr noundef nonnull %bo.i, ptr noundef %basechain) #9
  br label %nft_block_offload_cmd.exit

land.end.i.i:                                     ; preds = %if.end.i
  %.b39.i.i = load i1, ptr @nft_block_setup.__already_done, align 1
  br i1 %.b39.i.i, label %land.end.i.i.nft_block_offload_cmd.exit_crit_edge, label %if.then.i.i, !prof !33

land.end.i.i.nft_block_offload_cmd.exit_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_block_offload_cmd.exit

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nft_block_setup.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #9
  br label %nft_block_offload_cmd.exit

nft_block_offload_cmd.exit:                       ; preds = %if.then.i.i, %land.end.i.i.nft_block_offload_cmd.exit_crit_edge, %sw.bb1.i.i, %if.then.i.i.i.i, %sw.bb.i.i.nft_block_offload_cmd.exit_crit_edge, %if.then.nft_block_offload_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.nft_block_offload_cmd.exit_crit_edge ], [ 0, %sw.bb1.i.i ], [ -95, %if.then.i.i ], [ -95, %land.end.i.i.nft_block_offload_cmd.exit_crit_edge ], [ 0, %sw.bb.i.i.nft_block_offload_cmd.exit_crit_edge ], [ 0, %if.then.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i6) #9
  %27 = call ptr @memset(ptr %extack.i6, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo.i7) #9
  %nd_net.i.i8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %28 = ptrtoint ptr %nd_net.i.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nd_net.i.i8, align 4
  %30 = getelementptr inbounds i8, ptr %bo.i7, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 32)
  %net1.i.i9 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 4
  %32 = ptrtoint ptr %net1.i.i9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %net1.i.i9, align 4
  %flow_block.i.i10 = getelementptr inbounds %struct.nft_base_chain, ptr %basechain, i32 0, i32 7
  %block.i.i11 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 5
  %33 = ptrtoint ptr %block.i.i11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %flow_block.i.i10, ptr %block.i.i11, align 4
  %34 = ptrtoint ptr %bo.i7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cmd, ptr %bo.i7, align 4
  %binder_type.i.i12 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 1
  %35 = ptrtoint ptr %binder_type.i.i12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %binder_type.i.i12, align 4
  %extack2.i.i13 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 8
  %36 = ptrtoint ptr %extack2.i.i13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %extack.i6, ptr %extack2.i.i13, align 4
  %cb_list_head.i.i14 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 10
  %37 = ptrtoint ptr %cb_list_head.i.i14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %flow_block.i.i10, ptr %cb_list_head.i.i14, align 4
  %cb_list4.i.i15 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 6
  %38 = ptrtoint ptr %cb_list4.i.i15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %cb_list4.i.i15, ptr %cb_list4.i.i15, align 4
  %prev.i.i.i16 = getelementptr inbounds %struct.flow_block_offload, ptr %bo.i7, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %prev.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cb_list4.i.i15, ptr %prev.i.i.i16, align 4
  %call1.i17 = call i32 @flow_indr_dev_setup_offload(ptr noundef %dev, ptr noundef null, i32 noundef 5, ptr noundef %basechain, ptr noundef nonnull %bo.i7, ptr noundef nonnull @nft_indr_block_cleanup) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %cmp.i18 = icmp slt i32 %call1.i17, 0
  br i1 %cmp.i18, label %if.else.nft_indr_block_offload_cmd.exit_crit_edge, label %if.end.i19

if.else.nft_indr_block_offload_cmd.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_indr_block_offload_cmd.exit

if.end.i19:                                       ; preds = %if.else
  %40 = ptrtoint ptr %cb_list4.i.i15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %cb_list4.i.i15, align 4
  %cmp.i.not.i = icmp eq ptr %41, %cb_list4.i.i15
  br i1 %cmp.i.not.i, label %if.end.i19.nft_indr_block_offload_cmd.exit_crit_edge, label %if.end4.i

if.end.i19.nft_indr_block_offload_cmd.exit_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_indr_block_offload_cmd.exit

if.end4.i:                                        ; preds = %if.end.i19
  %42 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cmd, label %land.end.i.i27 [
    i32 0, label %sw.bb.i.i21
    i32 1, label %sw.bb1.i.i25
  ]

sw.bb.i.i21:                                      ; preds = %if.end4.i
  %43 = ptrtoint ptr %cb_list4.i.i15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %cb_list4.i.i15, align 4
  %cmp.i.not.i.i.i.i20 = icmp eq ptr %44, %cb_list4.i.i15
  br i1 %cmp.i.not.i.i.i.i20, label %sw.bb.i.i21.nft_indr_block_offload_cmd.exit_crit_edge, label %if.then.i.i.i.i24

sw.bb.i.i21.nft_indr_block_offload_cmd.exit_crit_edge: ; preds = %sw.bb.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_indr_block_offload_cmd.exit

if.then.i.i.i.i24:                                ; preds = %sw.bb.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %flow_block.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %flow_block.i.i10, align 4
  %47 = ptrtoint ptr %prev.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i16, align 4
  %prev3.i.i.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %flow_block.i.i10, ptr %prev3.i.i.i.i.i22, align 4
  store ptr %44, ptr %flow_block.i.i10, align 4
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %46, ptr %48, align 4
  %prev6.i.i.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev6.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev6.i.i.i.i.i23, align 4
  br label %nft_indr_block_offload_cmd.exit

sw.bb1.i.i25:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nft_flow_offload_unbind(ptr noundef nonnull %bo.i7, ptr noundef %basechain) #9
  br label %nft_indr_block_offload_cmd.exit

land.end.i.i27:                                   ; preds = %if.end4.i
  %.b39.i.i26 = load i1, ptr @nft_block_setup.__already_done, align 1
  br i1 %.b39.i.i26, label %land.end.i.i27.nft_indr_block_offload_cmd.exit_crit_edge, label %if.then.i.i28, !prof !33

land.end.i.i27.nft_indr_block_offload_cmd.exit_crit_edge: ; preds = %land.end.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_indr_block_offload_cmd.exit

if.then.i.i28:                                    ; preds = %land.end.i.i27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nft_block_setup.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #9
  br label %nft_indr_block_offload_cmd.exit

nft_indr_block_offload_cmd.exit:                  ; preds = %if.then.i.i28, %land.end.i.i27.nft_indr_block_offload_cmd.exit_crit_edge, %sw.bb1.i.i25, %if.then.i.i.i.i24, %sw.bb.i.i21.nft_indr_block_offload_cmd.exit_crit_edge, %if.end.i19.nft_indr_block_offload_cmd.exit_crit_edge, %if.else.nft_indr_block_offload_cmd.exit_crit_edge
  %retval.0.i29 = phi i32 [ %call1.i17, %if.else.nft_indr_block_offload_cmd.exit_crit_edge ], [ -95, %if.end.i19.nft_indr_block_offload_cmd.exit_crit_edge ], [ 0, %sw.bb1.i.i25 ], [ -95, %if.then.i.i28 ], [ -95, %land.end.i.i27.nft_indr_block_offload_cmd.exit_crit_edge ], [ 0, %sw.bb.i.i21.nft_indr_block_offload_cmd.exit_crit_edge ], [ 0, %if.then.i.i.i.i24 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo.i7) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i6) #9
  br label %if.end

if.end:                                           ; preds = %nft_indr_block_offload_cmd.exit, %nft_block_offload_cmd.exit
  %err.0 = phi i32 [ %retval.0.i, %nft_block_offload_cmd.exit ], [ %retval.0.i29, %nft_indr_block_offload_cmd.exit ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_flow_offload_unbind(ptr noundef readonly %bo, ptr noundef readonly %basechain) unnamed_addr #2 align 64 {
entry:
  %cls_flow = alloca %struct.flow_cls_offload, align 8
  %extack = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow) #9
  %0 = call ptr @memset(ptr %cls_flow, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #9
  %1 = call ptr @memset(ptr %extack, i32 255, i32 36)
  %rules = getelementptr inbounds %struct.nft_base_chain, ptr %basechain, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %rule.02 = load ptr, ptr %rules, align 8
  %cmp.not3 = icmp eq ptr %rule.02, %rules
  br i1 %cmp.not3, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priority.c15.i = getelementptr inbounds %struct.nf_hook_ops, ptr %basechain, i32 0, i32 6
  %protocol.i18.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 1
  %prio.i19.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 2
  %extack1.i20.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow, i32 0, i32 3
  %command2.c16.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow, i32 0, i32 1
  %cookie.c17.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow, i32 0, i32 2
  %cb_list = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %nft_setup_cb_call.exit.for.body_crit_edge, %for.body.lr.ph
  %rule.04 = phi ptr [ %rule.02, %for.body.lr.ph ], [ %rule.0, %nft_setup_cb_call.exit.for.body_crit_edge ]
  %3 = call ptr @memset(ptr %extack, i32 0, i32 36)
  %4 = call ptr @memset(ptr %cls_flow, i32 0, i32 80)
  %5 = ptrtoint ptr %priority.c15.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.c15.i, align 4
  %7 = ptrtoint ptr %protocol.i18.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 3, ptr %protocol.i18.i, align 4
  %8 = ptrtoint ptr %prio.i19.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %prio.i19.i, align 8
  %9 = ptrtoint ptr %extack1.i20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %extack, ptr %extack1.i20.i, align 4
  %10 = ptrtoint ptr %command2.c16.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %command2.c16.i, align 8
  %11 = ptrtoint ptr %rule.04 to i32
  %12 = ptrtoint ptr %cookie.c17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cookie.c17.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %cb_list, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cb_list
  br i1 %cmp.not.i, label %for.cond.i.nft_setup_cb_call.exit_crit_edge, label %for.body.i

for.cond.i.nft_setup_cb_call.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_setup_cb_call.exit

for.body.i:                                       ; preds = %for.cond.i
  %cb.i = getelementptr i8, ptr %.pn.i, i32 8
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb.i, align 4
  %cb_priv.i = getelementptr i8, ptr %.pn.i, i32 16
  %16 = ptrtoint ptr %cb_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb_priv.i, align 4
  %call.i = call i32 %15(i32 noundef 2, ptr noundef nonnull %cls_flow, ptr noundef %17) #9
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.nft_setup_cb_call.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.nft_setup_cb_call.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_setup_cb_call.exit

nft_setup_cb_call.exit:                           ; preds = %for.body.i.nft_setup_cb_call.exit_crit_edge, %for.cond.i.nft_setup_cb_call.exit_crit_edge
  %18 = ptrtoint ptr %rule.04 to i32
  call void @__asan_load4_noabort(i32 %18)
  %rule.0 = load ptr, ptr %rule.04, align 8
  %cmp.not = icmp eq ptr %rule.0, %rules
  br i1 %cmp.not, label %nft_setup_cb_call.exit.for.end_crit_edge, label %nft_setup_cb_call.exit.for.body_crit_edge

nft_setup_cb_call.exit.for.body_crit_edge:        ; preds = %nft_setup_cb_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

nft_setup_cb_call.exit.for.end_crit_edge:         ; preds = %nft_setup_cb_call.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %nft_setup_cb_call.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %cb_list10 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %19 = ptrtoint ptr %cb_list10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb_list10, align 4
  %cmp22.not5 = icmp eq ptr %20, %cb_list10
  br i1 %cmp22.not5, label %for.end.for.end32_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body24:                                       ; preds = %list_del.exit.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn.in6 = phi ptr [ %.pn, %list_del.exit.for.body24_crit_edge ], [ %20, %for.end.for.body24_crit_edge ]
  %block_cb.0 = getelementptr i8, ptr %.pn.in6, i32 -8
  %21 = ptrtoint ptr %.pn.in6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn.in6, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in6) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body24.list_del.exit_crit_edge

for.body24.list_del.exit_crit_edge:               ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in6, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn.in6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body24.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn.in6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in6, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @flow_block_cb_free(ptr noundef %block_cb.0) #9
  %cmp22.not = icmp eq ptr %.pn, %cb_list10
  br i1 %cmp22.not, label %list_del.exit.for.end32_crit_edge, label %list_del.exit.for.body24_crit_edge

list_del.exit.for.body24_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24

list_del.exit.for.end32_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.end32:                                        ; preds = %list_del.exit.for.end32_crit_edge, %for.end.for.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_indr_dev_setup_offload(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_indr_block_cleanup(ptr noundef %block_cb) #2 align 64 {
entry:
  %extack = alloca %struct.netlink_ext_ack, align 4
  %bo = alloca %struct.flow_block_offload, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #9
  %4 = call ptr @memset(ptr %extack, i32 0, i32 36)
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo) #9
  %7 = getelementptr inbounds i8, ptr %bo, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 32)
  %net1.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 4
  %9 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %net1.i, align 4
  %flow_block.i = getelementptr inbounds %struct.nft_base_chain, ptr %1, i32 0, i32 7
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 5
  %10 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %flow_block.i, ptr %block.i, align 4
  %11 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %bo, align 4
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 1
  %12 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %binder_type.i, align 4
  %extack2.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 8
  %13 = ptrtoint ptr %extack2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %extack, ptr %extack2.i, align 4
  %cb_list_head.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 10
  %14 = ptrtoint ptr %cb_list_head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %flow_block.i, ptr %cb_list_head.i, align 4
  %cb_list4.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %15 = ptrtoint ptr %cb_list4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %cb_list4.i, ptr %cb_list4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb_list4.i, ptr %prev.i.i, align 4
  %call4 = call fastcc ptr @nft_pernet(ptr noundef %6)
  %commit_mutex = getelementptr inbounds %struct.nftables_pernet, ptr %call4, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %block_cb) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i14 = getelementptr inbounds %struct.list_head, ptr %block_cb, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i14, align 4
  %19 = ptrtoint ptr %block_cb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %block_cb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %23 = ptrtoint ptr %block_cb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %block_cb, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block_cb, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1
  %call.i.i15 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i15, label %if.end.i.i18, label %list_del.exit.__list_del_entry.exit.i_crit_edge

list_del.exit.__list_del_entry.exit.i_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i18:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i16 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i16, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %prev1.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i17, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i18, %list_del.exit.__list_del_entry.exit.i_crit_edge
  %31 = ptrtoint ptr %cb_list4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb_list4.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %cb_list4.i, ptr noundef %32) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %prev1.i.i2.i, align 4
  %34 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cb_list4.i, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %cb_list4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %cb_list4.i, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call fastcc void @nft_flow_offload_unbind(ptr noundef nonnull %bo, ptr noundef %1)
  call void @mutex_unlock(ptr noundef %commit_mutex) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_offload_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp.not = icmp eq i32 %event, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call fastcc ptr @nft_pernet(ptr noundef %3)
  %commit_mutex = getelementptr inbounds %struct.nftables_pernet, ptr %call2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #9
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %table.085.i = load ptr, ptr %call2, align 4
  %cmp.not86.i = icmp eq ptr %table.085.i, %call2
  br i1 %cmp.not86.i, label %if.end.if.end7_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.i:                                       ; preds = %for.inc52.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %table.087.i = phi ptr [ %table.0.i, %for.inc52.i.for.body.i_crit_edge ], [ %table.085.i, %if.end.for.body.i_crit_edge ]
  %family.i = getelementptr inbounds %struct.nft_table, ptr %table.087.i, i32 0, i32 9
  %5 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %family.i, align 4
  %bf.lshr.mask.i = and i16 %bf.load.i, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %bf.lshr.mask.i)
  %cmp2.not.i = icmp eq i16 %bf.lshr.mask.i, 5120
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc52.i_crit_edge

for.body.i.for.inc52.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

if.end.i:                                         ; preds = %for.body.i
  %chains.i = getelementptr inbounds %struct.nft_table, ptr %table.087.i, i32 0, i32 2
  %6 = ptrtoint ptr %chains.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn82.i = load ptr, ptr %chains.i, align 4
  %cmp11.not83.i = icmp eq ptr %.pn82.i, %chains.i
  br i1 %cmp11.not83.i, label %if.end.i.for.inc52.i_crit_edge, label %if.end.i.for.body14.i_crit_edge

if.end.i.for.body14.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body14.i

if.end.i.for.inc52.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

for.body14.i:                                     ; preds = %for.inc45.i.for.body14.i_crit_edge, %if.end.i.for.body14.i_crit_edge
  %.pn84.i = phi ptr [ %.pn.i, %for.inc45.i.for.body14.i_crit_edge ], [ %.pn82.i, %if.end.i.for.body14.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn84.i, i32 36
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %flags.i.i, align 4
  %8 = and i8 %bf.load.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %8)
  %.not = icmp eq i8 %8, 24
  br i1 %.not, label %if.end19.i, label %for.body14.i.for.inc45.i_crit_edge

for.body14.i.for.inc45.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.i

if.end19.i:                                       ; preds = %for.body14.i
  %hook_list.i = getelementptr i8, ptr %.pn84.i, i32 -40
  br label %for.cond25.i

for.cond25.i:                                     ; preds = %for.body31.i.for.cond25.i_crit_edge, %if.end19.i
  %hook.0.in.i = phi ptr [ %hook_list.i, %if.end19.i ], [ %hook.0.i, %for.body31.i.for.cond25.i_crit_edge ]
  %9 = ptrtoint ptr %hook.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %hook.0.i = load ptr, ptr %hook.0.in.i, align 4
  %cmp28.not.i = icmp eq ptr %hook.0.i, %hook_list.i
  br i1 %cmp28.not.i, label %for.cond25.i.for.inc45.i_crit_edge, label %for.body31.i

for.cond25.i.for.inc45.i_crit_edge:               ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.i

for.body31.i:                                     ; preds = %for.cond25.i
  %dev32.i = getelementptr inbounds %struct.nft_hook, ptr %hook.0.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev32.i, align 4
  %cmp33.not.i = icmp eq ptr %11, %1
  br i1 %cmp33.not.i, label %for.end.i, label %for.body31.i.for.cond25.i_crit_edge

for.body31.i.for.cond25.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond25.i

for.end.i:                                        ; preds = %for.body31.i
  %tobool42.not.i = icmp eq ptr %hook.0.i, null
  br i1 %tobool42.not.i, label %for.end.i.for.inc45.i_crit_edge, label %__nft_offload_get_chain.exit

for.end.i.for.inc45.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %for.end.i.for.inc45.i_crit_edge, %for.cond25.i.for.inc45.i_crit_edge, %for.body14.i.for.inc45.i_crit_edge
  %12 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn84.i, align 4
  %cmp11.not.i = icmp eq ptr %.pn.i, %chains.i
  br i1 %cmp11.not.i, label %for.inc45.i.for.inc52.i_crit_edge, label %for.inc45.i.for.body14.i_crit_edge

for.inc45.i.for.body14.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

for.inc45.i.for.inc52.i_crit_edge:                ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %for.inc45.i.for.inc52.i_crit_edge, %if.end.i.for.inc52.i_crit_edge, %for.body.i.for.inc52.i_crit_edge
  %13 = ptrtoint ptr %table.087.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %table.0.i = load ptr, ptr %table.087.i, align 4
  %cmp.not.i = icmp eq ptr %table.0.i, %call2
  br i1 %cmp.not.i, label %for.inc52.i.if.end7_crit_edge, label %for.inc52.i.for.body.i_crit_edge

for.inc52.i.for.body.i_crit_edge:                 ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc52.i.if.end7_crit_edge:                    ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

__nft_offload_get_chain.exit:                     ; preds = %for.end.i
  %chain.0.le.i = getelementptr i8, ptr %.pn84.i, i32 -16
  %tobool.not = icmp eq ptr %chain.0.le.i, null
  br i1 %tobool.not, label %__nft_offload_get_chain.exit.if.end7_crit_edge, label %if.then4

__nft_offload_get_chain.exit.if.end7_crit_edge:   ; preds = %__nft_offload_get_chain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %__nft_offload_get_chain.exit
  %add.ptr.i = getelementptr i8, ptr %.pn84.i, i32 -64
  %14 = ptrtoint ptr %hook_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %hook.066.i = load ptr, ptr %hook_list.i, align 4
  %cmp.not67.i = icmp eq ptr %hook.066.i, %hook_list.i
  br i1 %cmp.not67.i, label %if.then4.if.end7_crit_edge, label %for.body.lr.ph.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then4
  %tobool.not.i18 = icmp eq ptr %1, null
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.inc.i.for.body.i19_crit_edge, %for.body.lr.ph.i
  %hook.069.i = phi ptr [ %hook.066.i, %for.body.lr.ph.i ], [ %hook.0.i21, %for.inc.i.for.body.i19_crit_edge ]
  %dev2.i = getelementptr inbounds %struct.nft_hook, ptr %hook.069.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2.i, align 4
  %cmp3.not.i = icmp eq ptr %16, %1
  %or.cond.i = select i1 %tobool.not.i18, i1 true, i1 %cmp3.not.i
  br i1 %or.cond.i, label %if.end.i20, label %for.body.i19.for.inc.i_crit_edge

for.body.i19.for.inc.i_crit_edge:                 ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i20:                                       ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @nft_chain_offload_cmd(ptr noundef %add.ptr.i, ptr noundef %16, i32 noundef 1) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i20, %for.body.i19.for.inc.i_crit_edge
  %17 = ptrtoint ptr %hook.069.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %hook.0.i21 = load ptr, ptr %hook.069.i, align 4
  %cmp.not.i22 = icmp eq ptr %hook.0.i21, %hook_list.i
  br i1 %cmp.not.i22, label %for.inc.i.if.end7_crit_edge, label %for.inc.i.for.body.i19_crit_edge

for.inc.i.for.body.i19_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i19

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %__nft_offload_get_chain.exit.if.end7_crit_edge, %for.inc52.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %commit_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !13, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_tables_offload.c", i32 175, i32 3}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_tables_offload.c", i32 338, i32 3}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_tables_offload.c", i32 532, i32 7}
!17 = !{ptr @nft_offload_netdev_notifier, !18, !"nft_offload_netdev_notifier", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_tables_offload.c", i32 658, i32 30}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 771020, i64 771081}
!30 = !{i64 773752}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 774037}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i8 0, i8 2}
!35 = !{i64 2149370995}
!36 = !{i64 2149371261}
