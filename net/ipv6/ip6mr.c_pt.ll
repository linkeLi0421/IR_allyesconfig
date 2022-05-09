; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6mr.c_pt.bc'
source_filename = "../net/ipv6/ip6mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip6mr_rule_default\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6mr_rule_default\09\09\09\09"
module asm "\09.long\09__crc_ip6mr_rule_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6mr_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6mr_rule_default\22\09\09\09\09\09"
module asm "__kstrtabns_ip6mr_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mroute6_is_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_mroute6_is_socket\09\09\09\09"
module asm "\09.long\09__crc_mroute6_is_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mroute6_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22mroute6_is_socket\22\09\09\09\09\09"
module asm "__kstrtabns_mroute6_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.fib_notifier_ops = type { i32, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mr_table_ops = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.178, [0 x i32], %union.anon.179, i16, i16, %union.anon.180, %struct.refcount_struct, [0 x i32], %union.anon.181 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { %struct.hlist_node }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.191, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.191 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.mr_table = type { %struct.list_head, %struct.possible_net_t, %struct.mr_table_ops, i32, ptr, %struct.timer_list, %struct.list_head, [32 x %struct.vif_device], %struct.rhltable, %struct.list_head, i32, %struct.atomic_t, i8, i8, i8, i32 }
%struct.vif_device = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i16, i32, %struct.netdev_phys_item_id, i32, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.182, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.183, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.184, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.182 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.183 = type { ptr }
%union.anon.184 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.18 = type { i16, i16 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.mfc_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.ip6mr_result = type { ptr }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.158 = type { ptr }
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
%struct.mif6ctl = type { i16, i8, i8, i16, i32 }
%struct.mf6cctl = type { %struct.sockaddr_in6, %struct.sockaddr_in6, i16, %struct.if_set }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.if_set = type { [8 x i32] }
%struct.raw6_sock = type { %struct.inet_sock, i32, i32, %struct.icmp6_filter, i32, %struct.ipv6_pinfo }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.189 }
%union.anon.189 = type { %struct.flowi6 }
%struct.icmp6_filter = type { [8 x i32] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.199, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vif_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i16, i16, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.mfc6_cache_cmp_arg = type { %struct.in6_addr, %struct.in6_addr }
%struct.mr_mfc = type { %struct.rhlist_head, i16, i32, %union.anon.203, %struct.list_head, %struct.callback_head, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%union.anon.203 = type { %struct.anon.205 }
%struct.anon.205 = type { i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.refcount_struct }
%struct.mfc6_cache = type { %struct.mr_mfc, %union.anon.206 }
%union.anon.206 = type { %struct.anon.207 }
%struct.anon.207 = type { %struct.in6_addr, %struct.in6_addr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sioc_sg_req6 = type { %struct.sockaddr_in6, %struct.sockaddr_in6, i32, i32, i32 }
%struct.sioc_mif_req6 = type { i16, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mr_vif_iter = type { %struct.seq_net_private, ptr, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.mr_mfc_iter = type { %struct.seq_net_private, ptr, ptr, ptr }
%struct.pimreghdr = type { i8, i8, i16, i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.mrt6msg = type { i8, i8, i16, i32, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ip6mr_rule_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6mr_rule_default = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6mr_rule_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6mr_rule_default to i32), ptr @__kstrtab_ip6mr_rule_default, ptr @__kstrtabns_ip6mr_rule_default }, section "___ksymtab+ip6mr_rule_default", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip6_mrt_cache\00", [18 x i8] zeroinitializer }, align 32
@mrt_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ip6mr_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6mr_net_init, ptr null, ptr @ip6mr_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ip6_mr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ip6mr_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pim6_protocol = internal constant { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr null, ptr null, ptr @pim6_rcv, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ip6_mr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: can't add PIM protocol\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip6_mr_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/ipv6/ip6mr.c\00", [47 x i8] zeroinitializer }, align 32
@ip6_mr_init._entry_ptr = internal global ptr @ip6_mr_init._entry, section ".printk_index", align 4
@ip6mr_sk_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ip6mr_sk_done.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mrt_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_mroute6_is_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_mroute6_is_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_mroute6_is_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mroute6_is_socket to i32), ptr @__kstrtab_mroute6_is_socket, ptr @__kstrtabns_mroute6_is_socket }, section "___ksymtab+mroute6_is_socket", align 4
@ip6_mroute_setsockopt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6_mroute_setsockopt.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6_mr_vif\00", [21 x i8] zeroinitializer }, align 32
@ip6mr_vif_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ip6mr_vif_seq_start, ptr @ip6mr_vif_seq_stop, ptr @mr_vif_seq_next, ptr @ip6mr_vif_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip6_mr_cache\00", [19 x i8] zeroinitializer }, align 32
@ipmr_mfc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipmr_mfc_seq_start, ptr @mr_mfc_seq_stop, ptr @mr_mfc_seq_next, ptr @ipmr_mfc_seq_show }, [16 x i8] zeroinitializer }, align 32
@ip6mr_notifier_ops_template = internal constant { %struct.fib_notifier_ops, [32 x i8] } { %struct.fib_notifier_ops { i32 129, %struct.list_head zeroinitializer, ptr @ip6mr_seq_read, ptr @ip6mr_dump, ptr null, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ip6mr_seq_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ip6mr_rules_ops_template = internal constant { %struct.fib_rules_ops, [32 x i8] } { %struct.fib_rules_ops { i32 129, %struct.list_head zeroinitializer, i32 128, i32 16, i32 0, i32 0, i32 0, ptr @ip6mr_rule_action, ptr null, ptr @ip6mr_rule_match, ptr @ip6mr_rule_configure, ptr null, ptr @ip6mr_rule_compare, ptr @ip6mr_rule_fill, ptr null, ptr null, i32 19, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Interface      BytesIn  PktsIn  BytesOut PktsOut Flags\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%2td %-10s %8ld %7ld  %8ld %7ld %05X\0A\00", [58 x i8] zeroinitializer }, align 32
@mfc_unres_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mfc_unres_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"Group                            Origin                           Iif      Pkts  Bytes     Wrong  Oifs\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%pI6 %pI6 %-3hd\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" %8lu %8lu %8lu\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %2d:%-3d\00", [22 x i8] zeroinitializer }, align 32
@ip6mr_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mrt_lock\00", [23 x i8] zeroinitializer }, align 32
@ip6mr_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 3, i16 32, i16 100, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ip6mr_hash_cmp }, [36 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mr_call_mfc_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mroute_base.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ip6mr_get_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6mr_sk_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pim6reg%u\00", [22 x i8] zeroinitializer }, align 32
@reg_vif_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @reg_vif_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_vif_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip6mr_cache_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6mr_cache_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mroute6: pending queue full, dropping entries\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip6mr_cache_report\00", [45 x i8] zeroinitializer }, align 32
@ip6mr_cache_report._entry_ptr = internal global ptr @ip6mr_cache_report._entry, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@mr_call_vif_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ip6mr_mfc_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ip6mr: rhtable insert error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip6mr_mfc_add\00", [18 x i8] zeroinitializer }, align 32
@ip6mr_mfc_add._entry_ptr = internal global ptr @ip6mr_mfc_add._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip6mr_mr_table_ops = internal global { %struct.mr_table_ops, [24 x i8] } { %struct.mr_table_ops { ptr @ip6mr_rht_params, ptr @ip6mr_mr_table_ops_cmparg_any }, [24 x i8] zeroinitializer }, align 32
@ip6mr_mr_table_ops_cmparg_any = internal global { { { { [16 x i8] } }, { { [16 x i8] } } }, [32 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ip6mr_rtm_dumproute.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ipv6: MR table does not exist\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 201, i64 202, i64 203, i64 204, i64 205, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 205, i64 211]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 206, i64 207, i64 208]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 35296, i64 35297]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1354, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"ip6mr_net_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1345, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"ip6_mr_notifier\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1267, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"pim6_protocol\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 582, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1370, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1581, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1582, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"mrt_lock\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1314, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"ip6mr_vif_seq_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 447, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1317, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"ipmr_mfc_seq_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 508, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"ip6mr_notifier_ops_template\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1271, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1255, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [25 x i8] c"ip6mr_rules_ops_template\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 207, i32 51 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 432, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 435, i32 50 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 438, i32 7 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"mfc_unres_lock\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 70, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 472, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 480, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 485, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 494, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 65, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"ip6mr_rht_params\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 349, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1076, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"../include/linux/mroute_base.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 208, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 991, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 647, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"reg_vif_netdev_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 624, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1123, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 231, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 313, i32 9 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1457, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"ip6mr_mr_table_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 371, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"ip6mr_mr_table_ops_cmparg_any\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 366, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 230, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 214, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 174, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 695, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 723, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1984, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 229, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 271, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1011, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.232 = private constant [20 x i8] c"../net/ipv6/ip6mr.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 2507, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__ksymtab_ip6mr_rule_default, ptr @__ksymtab_mroute6_is_socket, ptr @ip6_mr_init._entry, ptr @ip6_mr_init._entry_ptr, ptr @ip6mr_cache_report._entry, ptr @ip6mr_cache_report._entry_ptr, ptr @ip6mr_mfc_add._entry, ptr @ip6mr_mfc_add._entry_ptr, ptr @.str, ptr @ip6mr_net_ops, ptr @ip6_mr_notifier, ptr @pim6_protocol, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mrt_lock, ptr @.str.8, ptr @ip6mr_vif_seq_ops, ptr @.str.9, ptr @ipmr_mfc_seq_ops, ptr @ip6mr_notifier_ops_template, ptr @.str.10, ptr @ip6mr_rules_ops_template, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mfc_unres_lock, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ip6mr_rht_params, ptr @.str.20, ptr @.str.21, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @reg_vif_netdev_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @ip6mr_mr_table_ops, ptr @ip6mr_mr_table_ops_cmparg_any, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @skb_queue_head_init.__key, ptr @.str.46, ptr @.str.47, ptr @.str.53, ptr @.str.54, ptr @ip6mr_rtm_dumproute.__msg], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_mr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_mr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_vif_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_mfc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_notifier_ops_template to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_rules_ops_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_unres_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vif_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_cache_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_mfc_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_mr_table_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_mr_table_ops_cmparg_any to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6mr_rtm_dumproute.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ip6mr_rule_default(ptr noundef %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @fib_rule_matchall(ptr noundef %rule) #16
  br i1 %call, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %3)
  %cmp3 = icmp eq i32 %3, 254
  br i1 %cmp3, label %land.rhs, label %land.lhs.true2.land.end_crit_edge

land.lhs.true2.land.end_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %4 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %land.lhs.true2.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool.not, %land.rhs ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_rule_matchall(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_mr_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 0, i32 noundef 8192, ptr noundef null) #16
  store ptr %call, ptr @mrt_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6mr_net_ops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.reg_pernet_fail_crit_edge

if.end.reg_pernet_fail_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %reg_pernet_fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ip6_mr_notifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.reg_notif_fail_crit_edge

if.end4.reg_notif_fail_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %reg_notif_fail

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @pim6_protocol, i8 noundef zeroext 103) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #19
  br label %add_proto_fail

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 129, i32 noundef 26, ptr noundef null, ptr noundef nonnull @ip6mr_rtm_dumproute, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @pim6_protocol, i8 noundef zeroext 103) #16
  br label %add_proto_fail

add_proto_fail:                                   ; preds = %if.end16, %do.end
  %err.0 = phi i32 [ -11, %do.end ], [ %call13, %if.end16 ]
  %call18 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ip6_mr_notifier) #16
  br label %reg_notif_fail

reg_notif_fail:                                   ; preds = %add_proto_fail, %if.end4.reg_notif_fail_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.reg_notif_fail_crit_edge ], [ %err.0, %add_proto_fail ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6mr_net_ops) #16
  br label %reg_pernet_fail

reg_pernet_fail:                                  ; preds = %reg_notif_fail, %if.end.reg_pernet_fail_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.reg_pernet_fail_crit_edge ], [ %err.1, %reg_notif_fail ]
  %0 = load ptr, ptr @mrt_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %reg_pernet_fail, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %reg_pernet_fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_rtm_dumproute(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %filter = alloca %struct.fib_dump_filter, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %filter) #16
  %2 = call ptr @memset(ptr %filter, i32 0, i32 20)
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %3 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %strict_check, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %call2 = call i32 @ip_valid_fib_dump_req(ptr noundef %9, ptr noundef %1, ptr noundef nonnull %filter, ptr noundef %cb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup26_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %10 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end24, label %if.then6

if.then6:                                         ; preds = %if.end4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %skc_net.i45 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i45, align 4
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.then6.do.end.i_crit_edge, label %lor.lhs.false.i

if.then6.do.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then6
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 36, i32 30
  %17 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.then6.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.if.then11_crit_edge, label %for.body.i

for.cond.i.if.then11_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %21, %11
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool10.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool10.not, label %ip6mr_get_table.exit.if.then11_crit_edge, label %if.end20

ip6mr_get_table.exit.if.then11_crit_edge:         ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.then11:                                        ; preds = %ip6mr_get_table.exit.if.then11_crit_edge, %for.cond.i.if.then11_crit_edge
  %22 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp.not.i46 = icmp eq i32 %25, 16
  br i1 %cmp.not.i46, label %if.then11.if.then15_crit_edge, label %rtnl_msg_family.exit

if.then11.if.then15_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

rtnl_msg_family.exit:                             ; preds = %if.then11
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 16
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %27)
  %cmp14.not = icmp eq i8 %27, -127
  br i1 %cmp14.not, label %do.body, label %rtnl_msg_family.exit.if.then15_crit_edge

rtnl_msg_family.exit.if.then15_crit_edge:         ; preds = %rtnl_msg_family.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.then15:                                        ; preds = %rtnl_msg_family.exit.if.then15_crit_edge, %if.then11.if.then15_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  br label %cleanup26

do.body:                                          ; preds = %rtnl_msg_family.exit
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip6mr_rtm_dumproute.__msg) #16
  %tobool17.not = icmp eq ptr %31, null
  br i1 %tobool17.not, label %do.body.cleanup26_crit_edge, label %if.then18

do.body.cleanup26_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup26

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ip6mr_rtm_dumproute.__msg, ptr %31, align 4
  br label %cleanup26

if.end20:                                         ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = call i32 @mr_table_dump(ptr noundef nonnull %mrt.0.i, ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @_ip6mr_fill_mroute, ptr noundef nonnull @mfc_unres_lock, ptr noundef nonnull %filter) #16
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool23.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool23.not, i32 %call21, i32 %34
  br label %cleanup26

if.end24:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = call i32 @mr_rtm_dumproute(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @ip6mr_mr_table_iter, ptr noundef nonnull @_ip6mr_fill_mroute, ptr noundef nonnull @mfc_unres_lock, ptr noundef nonnull %filter) #16
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.end20, %if.then18, %do.body.cleanup26_crit_edge, %if.then15, %if.then.cleanup26_crit_edge
  %retval.1 = phi i32 [ %call25, %if.end24 ], [ %call2, %if.then.cleanup26_crit_edge ], [ %spec.select, %if.end20 ], [ %29, %if.then15 ], [ -2, %if.then18 ], [ -2, %do.body.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %filter) #16
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6_mr_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_unregister(i32 noundef 129, i32 noundef 26) #16
  %call1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @pim6_protocol, i8 noundef zeroext 103) #16
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ip6_mr_notifier) #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6mr_net_ops) #16
  %0 = load ptr, ptr @mrt_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6mr_sk_done(ptr noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %6)
  %cmp5.not = icmp eq i16 %6, 58
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @rtnl_lock() #16
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call7, label %if.end.do.end_crit_edge, label %lor.lhs.false9

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false9:                                   ; preds = %if.end
  %mr6_tables = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 30
  %7 = ptrtoint ptr %mr6_tables to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %mr6_tables, align 4
  %cmp.i.not = icmp eq ptr %8, %mr6_tables
  br i1 %cmp.i.not, label %lor.lhs.false9.do.end_crit_edge, label %land.lhs.true

lor.lhs.false9.do.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %call11 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b88 = load i1, ptr @ip6mr_sk_done.__warned, align 1
  br i1 %.b88, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_sk_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1581, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true13.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false9.do.end_crit_edge, %if.end.do.end_crit_edge
  %mr6_tables24 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 30
  br label %for.cond

for.cond:                                         ; preds = %do.end40.for.cond_crit_edge, %do.end
  %mrt.0.in = phi ptr [ %mr6_tables24, %do.end ], [ %mrt.0, %do.end40.for.cond_crit_edge ]
  %9 = ptrtoint ptr %mrt.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %mrt.0 = load volatile ptr, ptr %mrt.0.in, align 4
  %cmp28.not = icmp eq ptr %mrt.0, %mr6_tables24
  br i1 %cmp28.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call31 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call31, label %for.body.do.end40_crit_edge, label %land.lhs.true32

for.body.do.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

land.lhs.true32:                                  ; preds = %for.body
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b8687 = load i1, ptr @ip6mr_sk_done.__warned.5, align 1
  br i1 %.b8687, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_sk_done.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1582, ptr noundef nonnull @.str.6) #16
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %for.body.do.end40_crit_edge
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %mrt.0, i32 0, i32 4
  %10 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mroute_sk, align 4
  %cmp42 = icmp eq ptr %11, %sk
  br i1 %cmp42, label %if.then44, label %do.end40.for.cond_crit_edge

do.end40.for.cond_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then44:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #18
  %mroute_sk.le = getelementptr inbounds %struct.mr_table, ptr %mrt.0, i32 0, i32 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #16
  %12 = ptrtoint ptr %mroute_sk.le to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %mroute_sk.le, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 2
  %13 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devconf_all, align 32
  %mc_forwarding = getelementptr inbounds %struct.ipv6_devconf, ptr %14, i32 0, i32 34
  %15 = ptrtoint ptr %mc_forwarding to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mc_forwarding, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %mc_forwarding, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  %17 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devconf_all, align 32
  tail call void @inet6_netconf_notify_devconf(ptr noundef %1, i32 noundef 80, i32 noundef 4, i32 noundef -1, ptr noundef %18) #16
  tail call fastcc void @mroute_clean_tables(ptr noundef %mrt.0, i32 noundef 5)
  br label %for.end

for.end:                                          ; preds = %if.then44, %for.cond.for.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then44 ], [ -13, %for.cond.for.end_crit_edge ]
  tail call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_netconf_notify_devconf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mroute_clean_tables(ptr noundef %mrt, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %and = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %for.cond.preheader

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

for.cond.preheader:                               ; preds = %entry
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %3 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp151 = icmp sgt i32 %4, 0
  br i1 %cmp151, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and4 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and13 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags1 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %i.0152, i32 8
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp slt i16 %6, 0
  %or.cond = and i1 %tobool5.not, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool11.not = icmp sgt i16 %6, -1
  %or.cond141 = and i1 %tobool14.not, %tobool11.not
  %or.cond163 = or i1 %or.cond, %or.cond141
  br i1 %or.cond163, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call = call fastcc i32 @mif6_delete(ptr noundef %mrt, i32 noundef %i.0152, i32 noundef 0, ptr noundef nonnull %list)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0152, 1
  %7 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxvif, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #16
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry.if.end16_crit_edge
  %and17 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end58_crit_edge, label %if.then19

if.end16.if.end58_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then19:                                        ; preds = %if.end16
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9
  %9 = ptrtoint ptr %mfc_cache_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mfc_cache_list, align 4
  %cmp30.not156 = icmp eq ptr %10, %mfc_cache_list
  br i1 %cmp30.not156, label %if.then19.if.end58_crit_edge, label %for.body32.lr.ph

if.then19.if.end58_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

for.body32.lr.ph:                                 ; preds = %if.then19
  %and36 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  %net = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %11 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  br label %for.body32

for.body32:                                       ; preds = %for.inc51.for.body32_crit_edge, %for.body32.lr.ph
  %.pn132.in157 = phi ptr [ %10, %for.body32.lr.ph ], [ %.pn132159, %for.inc51.for.body32_crit_edge ]
  %c.0158 = getelementptr i8, ptr %.pn132.in157, i32 -80
  %14 = ptrtoint ptr %.pn132.in157 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn132159 = load ptr, ptr %.pn132.in157, align 4
  %mfc_flags = getelementptr i8, ptr %.pn132.in157, i32 -68
  %15 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mfc_flags, align 4
  %and33 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  %or.cond142 = and i1 %tobool37.not, %tobool34.not
  br i1 %or.cond142, label %for.body32.for.inc51_crit_edge, label %lor.lhs.false38

for.body32.for.inc51_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc51

lor.lhs.false38:                                  ; preds = %for.body32
  %17 = or i32 %16, %flags
  %18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %lor.lhs.false38.for.inc51_crit_edge, label %if.end46

lor.lhs.false38.for.inc51_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc51

if.end46:                                         ; preds = %lor.lhs.false38
  call fastcc void @rhltable_remove(ptr noundef %mfc_hash, ptr noundef %c.0158, [7 x i32] [i32 196640, i32 6553600, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ip6mr_hash_cmp to i32)])
  %call.i.i144 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn132.in157) #16
  br i1 %call.i.i144, label %if.end.i.i, label %if.end46.list_del_rcu.exit_crit_edge

if.end46.list_del_rcu.exit_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn132.in157, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn132.in157 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn132.in157, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end46.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn132.in157, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #16
  %31 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 129, ptr %info.i.i, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %11, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %c.0158, ptr %12, align 4
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %13, align 4
  %call.i.i145 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %tobool.not.i.i = icmp eq i32 %call.i.i145, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge

list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %list_del_rcu.exit
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !181

land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 208) #16
  br label %call_ip6mr_mfc_entry_notifiers.exit

call_ip6mr_mfc_entry_notifiers.exit:              ; preds = %if.then.i.i, %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, %list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %28, i32 0, i32 36, i32 37
  %35 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %28, i32 noundef 3, ptr noundef nonnull %info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #16
  call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef %c.0158, i32 noundef 25)
  %refcount.i = getelementptr i8, ptr %.pn132.in157, i32 -4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !183
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %call_ip6mr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc51_crit_edge, label %if.then10.i.i.i.i, !prof !181

if.end5.i.i.i.i.for.inc51_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc51

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #16
  br label %for.inc51

if.then.i:                                        ; preds = %call_ip6mr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !184
  %rcu.i = getelementptr i8, ptr %.pn132.in157, i32 8
  %free.i = getelementptr i8, ptr %.pn132.in157, i32 16
  %38 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free.i, align 4
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef %39) #16
  br label %for.inc51

for.inc51:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc51_crit_edge, %lor.lhs.false38.for.inc51_crit_edge, %for.body32.for.inc51_crit_edge
  %cmp30.not = icmp eq ptr %.pn132159, %mfc_cache_list
  br i1 %cmp30.not, label %for.inc51.if.end58_crit_edge, label %for.inc51.for.body32_crit_edge

for.inc51.for.body32_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body32

for.inc51.if.end58_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end58:                                         ; preds = %for.inc51.if.end58_crit_edge, %if.then19.if.end58_crit_edge, %if.end16.if.end58_crit_edge
  %and59 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end91_crit_edge, label %if.then61

if.end58.if.end91_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then61:                                        ; preds = %if.end58
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #16
  %40 = ptrtoint ptr %cache_resolve_queue_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %cache_resolve_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp63.not = icmp eq i32 %41, 0
  br i1 %cmp63.not, label %if.then61.if.end91_crit_edge, label %if.then65

if.then61.if.end91_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then65:                                        ; preds = %if.then61
  call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %42 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp78.not160 = icmp eq ptr %43, %mfc_unres_queue
  br i1 %cmp78.not160, label %if.then65.for.end89_crit_edge, label %if.then65.for.body81_crit_edge

if.then65.for.body81_crit_edge:                   ; preds = %if.then65
  br label %for.body81

if.then65.for.end89_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end89

for.body81:                                       ; preds = %list_del.exit.for.body81_crit_edge, %if.then65.for.body81_crit_edge
  %.pn.in161 = phi ptr [ %.pn, %list_del.exit.for.body81_crit_edge ], [ %43, %if.then65.for.body81_crit_edge ]
  %c.1 = getelementptr i8, ptr %.pn.in161, i32 -80
  %44 = ptrtoint ptr %.pn.in161 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn.in161, align 4
  %call.i.i146 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in161) #16
  br i1 %call.i.i146, label %if.end.i.i149, label %for.body81.list_del.exit_crit_edge

for.body81.list_del.exit_crit_edge:               ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i149:                                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i147 = getelementptr inbounds %struct.list_head, ptr %.pn.in161, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i147, align 4
  %47 = ptrtoint ptr %.pn.in161 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn.in161, align 4
  %prev1.i.i.i148 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i148, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i149, %for.body81.list_del.exit_crit_edge
  %51 = ptrtoint ptr %.pn.in161 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in161, align 4
  %prev.i150 = getelementptr inbounds %struct.list_head, ptr %.pn.in161, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i150, align 4
  call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef %c.1, i32 noundef 25)
  call fastcc void @ip6mr_destroy_unres(ptr noundef %mrt, ptr noundef %c.1)
  %cmp78.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp78.not, label %list_del.exit.for.end89_crit_edge, label %list_del.exit.for.body81_crit_edge

list_del.exit.for.body81_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body81

list_del.exit.for.end89_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end89

for.end89:                                        ; preds = %list_del.exit.for.end89_crit_edge, %if.then65.for.end89_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  br label %if.end91

if.end91:                                         ; preds = %for.end89, %if.then61.if.end91_crit_edge, %if.end58.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mroute6_is_socket(ptr noundef %net, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  %res.i = alloca %struct.ip6mr_result, align 4
  %arg.i = alloca %struct.fib_lookup_arg, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #16
  %0 = getelementptr inbounds i8, ptr %fl6, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 80)
  %2 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %7 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fl6, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %. = select i1 %tobool.not, i32 1, i32 %9
  %10 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %., ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flowic_mark, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #16
  %15 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #16
  %16 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 5
  %21 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arg.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %16, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %res.i, ptr %17, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %18, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %19, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %20, align 4
  call void @l3mdev_update_flow(ptr noundef %net, ptr noundef nonnull %fl6) #16
  %mr6_rules_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 31
  %27 = ptrtoint ptr %mr6_rules_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mr6_rules_ops.i, align 4
  %call2.i = call i32 @fib_rules_lookup(ptr noundef %28, ptr noundef nonnull %fl6, i32 noundef 0, ptr noundef nonnull %arg.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ip6mr_fib_lookup.exit.thread, label %if.end

ip6mr_fib_lookup.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mroute_sk, align 4
  %tobool2 = icmp ne ptr %32, null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip6mr_fib_lookup.exit.thread
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %ip6mr_fib_lookup.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #16
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_fib_lookup(ptr noundef %net, ptr noundef %flp6, ptr nocapture noundef writeonly %mrt) unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.ip6mr_result, align 4
  %arg = alloca %struct.fib_lookup_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #16
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #16
  %1 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arg, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %res, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %5, align 4
  call void @l3mdev_update_flow(ptr noundef %net, ptr noundef %flp6) #16
  %mr6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 31
  %12 = ptrtoint ptr %mr6_rules_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mr6_rules_ops, align 4
  %call2 = call i32 @fib_rules_lookup(ptr noundef %13, ptr noundef %flp6, i32 noundef 0, ptr noundef nonnull %arg) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %16 = ptrtoint ptr %mrt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %mrt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_mroute_setsockopt(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %vif = alloca %struct.mif6ctl, align 4
  %mfc = alloca %struct.mf6cctl, align 4
  %mifi = alloca i16, align 2
  %flags = alloca i32, align 4
  %v = alloca i32, align 4
  %v130 = alloca i32, align 4
  %v155 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vif) #16
  %0 = call ptr @memset(ptr %vif, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %mfc) #16
  %1 = call ptr @memset(ptr %mfc, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mifi) #16
  %2 = ptrtoint ptr %mifi to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mifi, align 2, !annotation !185
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %5 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.not = icmp eq i16 %6, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup190_crit_edge

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

lor.lhs.false:                                    ; preds = %entry
  %7 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %9)
  %cmp5.not = icmp eq i16 %9, 58
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup190_crit_edge

lor.lhs.false.cleanup190_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end:                                           ; preds = %lor.lhs.false
  %ip6mr_table = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 4
  %10 = ptrtoint ptr %ip6mr_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip6mr_table, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %. = select i1 %tobool.not, i32 254, i32 %11
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 30
  %12 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup190_crit_edge, label %for.body.i

for.cond.i.cleanup190_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %16, %.
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool9.not, label %ip6mr_get_table.exit.cleanup190_crit_edge, label %if.end11

ip6mr_get_table.exit.cleanup190_crit_edge:        ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end11:                                         ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %optname)
  %cond = icmp eq i32 %optname, 200
  br i1 %cond, label %sw.bb, label %if.then14

if.then14:                                        ; preds = %if.end11
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mroute_sk, align 4
  %cmp16.not = icmp eq ptr %18, %sk
  br i1 %cmp16.not, label %if.then14.if.end21_crit_edge, label %land.lhs.true

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then14
  %user_ns = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %19 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns, align 4
  %call18 = tail call zeroext i1 @ns_capable(ptr noundef %20, i32 noundef 12) #16
  br i1 %call18, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.cleanup190_crit_edge

land.lhs.true.cleanup190_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.then14.if.end21_crit_edge
  %21 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end21.cleanup190_crit_edge [
    i32 209, label %sw.bb154
    i32 201, label %sw.bb27
    i32 202, label %sw.bb29
    i32 203, label %sw.bb59
    i32 204, label %if.end21.sw.bb70_crit_edge
    i32 205, label %if.end21.sw.bb70_crit_edge308
    i32 210, label %if.end21.sw.bb71_crit_edge
    i32 211, label %if.end21.sw.bb71_crit_edge309
    i32 212, label %sw.bb109
    i32 207, label %sw.bb118
    i32 208, label %sw.bb129
  ]

if.end21.sw.bb71_crit_edge309:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb71

if.end21.sw.bb71_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb71

if.end21.sw.bb70_crit_edge308:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb70

if.end21.sw.bb70_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb70

if.end21.cleanup190_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp22 = icmp ult i32 %optlen, 4
  br i1 %cmp22, label %sw.bb.cleanup190_crit_edge, label %if.end25

sw.bb.cleanup190_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end25:                                         ; preds = %sw.bb
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  tail call void @rtnl_lock() #16
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #16
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call1.i, label %if.end25.do.end.i298_crit_edge, label %land.lhs.true.i296

if.end25.do.end.i298_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i298

land.lhs.true.i296:                               ; preds = %if.end25
  %call2.i295 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i295)
  %tobool.not.i = icmp eq i32 %call2.i295, 0
  br i1 %tobool.not.i, label %land.lhs.true.i296.do.end.i298_crit_edge, label %land.lhs.true3.i

land.lhs.true.i296.do.end.i298_crit_edge:         ; preds = %land.lhs.true.i296
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i298

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i296
  %.b58.i = load i1, ptr @ip6mr_sk_init.__warned, align 1
  br i1 %.b58.i, label %land.lhs.true3.i.do.end.i298_crit_edge, label %if.then.i297

land.lhs.true3.i.do.end.i298_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i298

if.then.i297:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_sk_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1551, ptr noundef nonnull @.str.6) #16
  br label %do.end.i298

do.end.i298:                                      ; preds = %if.then.i297, %land.lhs.true3.i.do.end.i298_crit_edge, %land.lhs.true.i296.do.end.i298_crit_edge, %if.end25.do.end.i298_crit_edge
  %mroute_sk.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %mroute_sk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mroute_sk.i, align 4
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %if.then48.i, label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i298
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  br label %ip6mr_sk_init.exit

if.then48.i:                                      ; preds = %do.end.i298
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !186
  %26 = ptrtoint ptr %mroute_sk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %sk, ptr %mroute_sk.i, align 4
  %27 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %or.i.i.i = or i32 %29, 8388608
  store i32 %or.i.i.i, ptr %27, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 2
  %30 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devconf_all.i, align 32
  %mc_forwarding.i = getelementptr inbounds %struct.ipv6_devconf, ptr %31, i32 0, i32 34
  %32 = ptrtoint ptr %mc_forwarding.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mc_forwarding.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %mc_forwarding.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  %34 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devconf_all.i, align 32
  tail call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 4, i32 noundef -1, ptr noundef %35) #16
  br label %ip6mr_sk_init.exit

ip6mr_sk_init.exit:                               ; preds = %if.then48.i, %if.end46.i
  %err.060.i = phi i32 [ 0, %if.then48.i ], [ -98, %if.end46.i ]
  tail call void @rtnl_unlock() #16
  br label %cleanup190

sw.bb27:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call i32 @ip6mr_sk_done(ptr noundef %sk)
  br label %cleanup190

sw.bb29:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %optlen)
  %cmp30 = icmp ult i32 %optlen, 12
  br i1 %cmp30, label %sw.bb29.cleanup190_crit_edge, label %if.end33

sw.bb29.cleanup190_crit_edge:                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end33:                                         ; preds = %sw.bb29
  %call34 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %vif, [2 x i32] %optval.coerce, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup190_crit_edge

if.end33.cleanup190_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end37:                                         ; preds = %if.end33
  %36 = ptrtoint ptr %vif to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vif, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %37)
  %cmp39 = icmp ugt i16 %37, 31
  br i1 %cmp39, label %if.end37.cleanup190_crit_edge, label %if.end42

if.end37.cleanup190_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end42:                                         ; preds = %if.end37
  call void @rtnl_lock() #16
  %call44 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call44, label %if.end42.do.end53_crit_edge, label %land.lhs.true45

if.end42.do.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

land.lhs.true45:                                  ; preds = %if.end42
  %call46 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b294 = load i1, ptr @ip6_mroute_setsockopt.__warned, align 1
  br i1 %.b294, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6_mroute_setsockopt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1672, ptr noundef nonnull @.str.6) #16
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %if.end42.do.end53_crit_edge
  %38 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mroute_sk, align 4
  %cmp56 = icmp eq ptr %39, %sk
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call fastcc i32 @mif6_add(ptr noundef %4, ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %vif, i32 noundef %conv57)
  call void @rtnl_unlock() #16
  br label %cleanup190

sw.bb59:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optlen)
  %cmp60 = icmp ult i32 %optlen, 2
  br i1 %cmp60, label %sw.bb59.cleanup190_crit_edge, label %if.end63

sw.bb59.cleanup190_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end63:                                         ; preds = %sw.bb59
  %call64 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mifi, [2 x i32] %optval.coerce, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup190_crit_edge

if.end63.cleanup190_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  call void @rtnl_lock() #16
  %40 = ptrtoint ptr %mifi to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mifi, align 2
  %conv68 = zext i16 %41 to i32
  %call69 = call fastcc i32 @mif6_delete(ptr noundef nonnull %mrt.0.i, i32 noundef %conv68, i32 noundef 0, ptr noundef null)
  call void @rtnl_unlock() #16
  br label %cleanup190

sw.bb70:                                          ; preds = %if.end21.sw.bb70_crit_edge, %if.end21.sw.bb70_crit_edge308
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb70, %if.end21.sw.bb71_crit_edge, %if.end21.sw.bb71_crit_edge309
  %cmp80 = phi i1 [ true, %if.end21.sw.bb71_crit_edge ], [ true, %if.end21.sw.bb71_crit_edge309 ], [ false, %sw.bb70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %optlen)
  %cmp72 = icmp ult i32 %optlen, 92
  br i1 %cmp72, label %sw.bb71.cleanup190_crit_edge, label %if.end75

sw.bb71.cleanup190_crit_edge:                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end75:                                         ; preds = %sw.bb71
  %call76 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mfc, [2 x i32] %optval.coerce, i32 noundef 92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup190_crit_edge

if.end75.cleanup190_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup190

if.end79:                                         ; preds = %if.end75
  br i1 %cmp80, label %if.then82, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %mf6cc_parent = getelementptr inbounds %struct.mf6cctl, ptr %mfc, i32 0, i32 2
  %42 = ptrtoint ptr %mf6cc_parent to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mf6cc_parent, align 4
  %conv83 = zext i16 %43 to i32
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79.if.end84_crit_edge
  %parent.1 = phi i32 [ %conv83, %if.then82 ], [ -1, %if.end79.if.end84_crit_edge ]
  call void @rtnl_lock() #16
  %44 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %optname, label %if.else [
    i32 205, label %if.end84.if.then90_crit_edge
    i32 211, label %if.end84.if.then90_crit_edge310
  ]

if.end84.if.then90_crit_edge310:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end84.if.then90_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.then90:                                        ; preds = %if.end84.if.then90_crit_edge, %if.end84.if.then90_crit_edge310
  %call91 = call fastcc i32 @ip6mr_mfc_delete(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfc, i32 noundef %parent.1)
  br label %if.end108

if.else:                                          ; preds = %if.end84
  %call93 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call93, label %if.else.do.end102_crit_edge, label %land.lhs.true94

if.else.do.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end102

land.lhs.true94:                                  ; preds = %if.else
  %call95 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.do.end102_crit_edge, label %land.lhs.true97

land.lhs.true94.do.end102_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end102

land.lhs.true97:                                  ; preds = %land.lhs.true94
  %.b292293 = load i1, ptr @ip6_mroute_setsockopt.__warned.7, align 1
  br i1 %.b292293, label %land.lhs.true97.do.end102_crit_edge, label %if.then99

land.lhs.true97.do.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end102

if.then99:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6_mroute_setsockopt.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1708, ptr noundef nonnull @.str.6) #16
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %land.lhs.true97.do.end102_crit_edge, %land.lhs.true94.do.end102_crit_edge, %if.else.do.end102_crit_edge
  %45 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mroute_sk, align 4
  %cmp105 = icmp eq ptr %46, %sk
  %conv106 = zext i1 %cmp105 to i32
  %call107 = call fastcc i32 @ip6mr_mfc_add(ptr noundef %4, ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfc, i32 noundef %conv106, i32 noundef %parent.1)
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.then90
  %ret.0 = phi i32 [ %call91, %if.then90 ], [ %call107, %do.end102 ]
  call void @rtnl_unlock() #16
  br label %cleanup190

sw.bb109:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #16
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %flags, align 4, !annotation !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp110.not = icmp eq i32 %optlen, 4
  br i1 %cmp110.not, label %if.end113, label %sw.bb109.cleanup_crit_edge

sw.bb109.cleanup_crit_edge:                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end113:                                        ; preds = %sw.bb109
  %call114 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %flags, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end117:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  call void @rtnl_lock() #16
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  call fastcc void @mroute_clean_tables(ptr noundef nonnull %mrt.0.i, i32 noundef %49)
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end113.cleanup_crit_edge, %sw.bb109.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end117 ], [ -22, %sw.bb109.cleanup_crit_edge ], [ -14, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #16
  br label %cleanup190

sw.bb118:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #16
  %50 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %v, align 4, !annotation !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp119.not = icmp eq i32 %optlen, 4
  br i1 %cmp119.not, label %if.end122, label %sw.bb118.cleanup128_crit_edge

sw.bb118.cleanup128_crit_edge:                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.end122:                                        ; preds = %sw.bb118
  %call123 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %v, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end122.cleanup128_crit_edge

if.end122.cleanup128_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.end126:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool127 = icmp ne i32 %52, 0
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %frombool = zext i1 %tobool127 to i8
  %53 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool, ptr %mroute_do_assert, align 4
  br label %cleanup128

cleanup128:                                       ; preds = %if.end126, %if.end122.cleanup128_crit_edge, %sw.bb118.cleanup128_crit_edge
  %retval.1 = phi i32 [ 0, %if.end126 ], [ -22, %sw.bb118.cleanup128_crit_edge ], [ -14, %if.end122.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #16
  br label %cleanup190

sw.bb129:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v130) #16
  %54 = ptrtoint ptr %v130 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %v130, align 4, !annotation !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp131.not = icmp eq i32 %optlen, 4
  br i1 %cmp131.not, label %if.end134, label %sw.bb129.cleanup153_crit_edge

sw.bb129.cleanup153_crit_edge:                    ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup153

if.end134:                                        ; preds = %sw.bb129
  %call135 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %v130, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end134.cleanup153_crit_edge

if.end134.cleanup153_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup153

if.end138:                                        ; preds = %if.end134
  %55 = ptrtoint ptr %v130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %v130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool139 = icmp ne i32 %56, 0
  %lnot.ext = zext i1 %tobool139 to i32
  %57 = ptrtoint ptr %v130 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %lnot.ext, ptr %v130, align 4
  call void @rtnl_lock() #16
  %58 = ptrtoint ptr %v130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v130, align 4
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 13
  %60 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mroute_do_pim, align 1, !range !180
  %62 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %62)
  %cmp143.not = icmp eq i32 %59, %62
  br i1 %cmp143.not, label %if.end138.if.end152_crit_edge, label %if.then145

if.end138.if.end152_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

if.then145:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool146 = icmp ne i32 %59, 0
  %frombool148 = zext i1 %tobool146 to i8
  %63 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %frombool148, ptr %mroute_do_pim, align 1
  %mroute_do_assert150 = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %64 = ptrtoint ptr %mroute_do_assert150 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool148, ptr %mroute_do_assert150, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then145, %if.end138.if.end152_crit_edge
  call void @rtnl_unlock() #16
  br label %cleanup153

cleanup153:                                       ; preds = %if.end152, %if.end134.cleanup153_crit_edge, %sw.bb129.cleanup153_crit_edge
  %retval.2 = phi i32 [ 0, %if.end152 ], [ -22, %sw.bb129.cleanup153_crit_edge ], [ -14, %if.end134.cleanup153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v130) #16
  br label %cleanup190

sw.bb154:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v155) #16
  %65 = ptrtoint ptr %v155 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %v155, align 4, !annotation !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp156.not = icmp eq i32 %optlen, 4
  br i1 %cmp156.not, label %if.end159, label %sw.bb154.cleanup189_crit_edge

sw.bb154.cleanup189_crit_edge:                    ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup189

if.end159:                                        ; preds = %sw.bb154
  %call160 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %v155, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.cleanup189_crit_edge

if.end159.cleanup189_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup189

if.end163:                                        ; preds = %if.end159
  %66 = ptrtoint ptr %v155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %v155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999999, i32 %67)
  %cmp167 = icmp ugt i32 %67, 99999999
  br i1 %cmp167, label %if.end163.cleanup189_crit_edge, label %if.end170

if.end163.cleanup189_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup189

if.end170:                                        ; preds = %if.end163
  %68 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %mroute_sk, align 4
  %cmp177 = icmp eq ptr %69, %sk
  br i1 %cmp177, label %if.end170.cleanup189_crit_edge, label %if.end180

if.end170.cleanup189_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup189

if.end180:                                        ; preds = %if.end170
  call void @rtnl_lock() #16
  %70 = ptrtoint ptr %v155 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %v155, align 4
  %call181 = call fastcc ptr @ip6mr_new_table(ptr noundef %4, i32 noundef %71)
  %cmp.i = icmp ugt ptr %call181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %call181 to i32
  br label %if.end188

if.else185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %v155 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %v155, align 4
  %75 = ptrtoint ptr %ip6mr_table to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %ip6mr_table, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.else185, %if.then183
  %ret.1 = phi i32 [ %72, %if.then183 ], [ 0, %if.else185 ]
  call void @rtnl_unlock() #16
  br label %cleanup189

cleanup189:                                       ; preds = %if.end188, %if.end170.cleanup189_crit_edge, %if.end163.cleanup189_crit_edge, %if.end159.cleanup189_crit_edge, %sw.bb154.cleanup189_crit_edge
  %retval.3 = phi i32 [ %ret.1, %if.end188 ], [ -22, %sw.bb154.cleanup189_crit_edge ], [ -14, %if.end159.cleanup189_crit_edge ], [ -22, %if.end163.cleanup189_crit_edge ], [ -16, %if.end170.cleanup189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v155) #16
  br label %cleanup190

cleanup190:                                       ; preds = %cleanup189, %cleanup153, %cleanup128, %cleanup, %if.end108, %if.end75.cleanup190_crit_edge, %sw.bb71.cleanup190_crit_edge, %if.end67, %if.end63.cleanup190_crit_edge, %sw.bb59.cleanup190_crit_edge, %do.end53, %if.end37.cleanup190_crit_edge, %if.end33.cleanup190_crit_edge, %sw.bb29.cleanup190_crit_edge, %sw.bb27, %ip6mr_sk_init.exit, %sw.bb.cleanup190_crit_edge, %if.end21.cleanup190_crit_edge, %land.lhs.true.cleanup190_crit_edge, %ip6mr_get_table.exit.cleanup190_crit_edge, %for.cond.i.cleanup190_crit_edge, %lor.lhs.false.cleanup190_crit_edge, %entry.cleanup190_crit_edge
  %retval.4 = phi i32 [ %retval.3, %cleanup189 ], [ %retval.2, %cleanup153 ], [ %retval.1, %cleanup128 ], [ %retval.0, %cleanup ], [ %ret.0, %if.end108 ], [ %call69, %if.end67 ], [ %call58, %do.end53 ], [ %call28, %sw.bb27 ], [ %err.060.i, %ip6mr_sk_init.exit ], [ -95, %lor.lhs.false.cleanup190_crit_edge ], [ -95, %entry.cleanup190_crit_edge ], [ -2, %ip6mr_get_table.exit.cleanup190_crit_edge ], [ -13, %land.lhs.true.cleanup190_crit_edge ], [ -22, %sw.bb.cleanup190_crit_edge ], [ -22, %sw.bb29.cleanup190_crit_edge ], [ -14, %if.end33.cleanup190_crit_edge ], [ -23, %if.end37.cleanup190_crit_edge ], [ -22, %sw.bb59.cleanup190_crit_edge ], [ -14, %if.end63.cleanup190_crit_edge ], [ -22, %sw.bb71.cleanup190_crit_edge ], [ -14, %if.end75.cleanup190_crit_edge ], [ -92, %if.end21.cleanup190_crit_edge ], [ -2, %for.cond.i.cleanup190_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mifi) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %mfc) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vif) #16
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #16
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #20, !srcloc !187
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !181

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #16
  %2 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #9, !srcloc !188
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !181

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mif6_add(ptr noundef %net, ptr noundef %mrt, ptr nocapture noundef readonly %vifc, i32 noundef %mrtsock) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.vif_entry_notifier_info, align 4
  %name.i = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vifc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vifc, align 4
  %conv = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mif6c_flags = getelementptr inbounds %struct.mif6ctl, ptr %vifc, i32 0, i32 1
  %4 = ptrtoint ptr %mif6c_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mif6c_flags, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %5, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %7 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #16
  %id.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %11)
  %cmp.i = icmp eq i32 %11, 254
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 8100125485417457408, ptr %name.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.30, i32 noundef %11) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call5.i = call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull %name.i, i8 noundef zeroext 0, ptr noundef nonnull @reg_vif_setup, i32 noundef 1, i32 noundef 1) #16
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.ip6mr_reg_vif.exit.thread_crit_edge, label %if.end7.i

if.end.i.ip6mr_reg_vif.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_reg_vif.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %net, ptr %nd_net.i.i, align 4
  %call8.i = call i32 @register_netdevice(ptr noundef nonnull %call5.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_netdev(ptr noundef nonnull %call5.i) #16
  br label %ip6mr_reg_vif.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call i32 @dev_open(ptr noundef nonnull %call5.i, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body1.i.i, label %failure.i

do.body1.i.i:                                     ; preds = %if.end11.i
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 118
  %15 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add13.i.i = add i32 %26, 1
  store i32 %add13.i.i, ptr %24, align 4
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.if.end10_crit_edge, !prof !193

do.body1.i.i.if.end10_crit_edge:                  ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %if.end10

failure.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @unregister_netdevice_queue(ptr noundef nonnull %call5.i, ptr noundef null) #16
  br label %ip6mr_reg_vif.exit.thread

ip6mr_reg_vif.exit.thread:                        ; preds = %failure.i, %if.then10.i, %if.end.i.ip6mr_reg_vif.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #16
  br label %cleanup

if.end10:                                         ; preds = %if.then28.i.i, %do.body1.i.i.if.end10_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #16, !srcloc !194
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #16
  %call11 = call i32 @dev_set_allmulti(ptr noundef nonnull %call5.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.sw.epilog_crit_edge, label %do.body1.i

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body1.i:                                       ; preds = %if.end10
  call void @unregister_netdevice_queue(ptr noundef nonnull %call5.i, ptr noundef null) #16
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %29 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i = add i32 %40, -1
  store i32 %add13.i, ptr %38, align 4
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i.i94 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i94)
  %tobool24.not.i = icmp eq i32 %and.i.i.i94, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !193

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #16, !srcloc !194
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %mif6c_pifi = getelementptr inbounds %struct.mif6ctl, ptr %vifc, i32 0, i32 3
  %42 = ptrtoint ptr %mif6c_pifi to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mif6c_pifi, align 4
  %conv16 = zext i16 %43 to i32
  %call17 = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %conv16) #16
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %sw.bb15.cleanup_crit_edge, label %if.end20

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20:                                         ; preds = %sw.bb15
  %call21 = tail call i32 @dev_set_allmulti(ptr noundef nonnull %call17, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.sw.epilog_crit_edge, label %do.body1.i104

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.body1.i104:                                    ; preds = %if.end20
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %pcpu_refcnt.i96 = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 118
  %45 = ptrtoint ptr %pcpu_refcnt.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcpu_refcnt.i96, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i97 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i97 to ptr
  %cpu.i98 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i98, align 4
  %arrayidx.i99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i99, align 4
  %add.i100 = add i32 %53, %47
  %54 = inttoptr i32 %add.i100 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add13.i101 = add i32 %56, -1
  store i32 %add13.i101, ptr %54, align 4
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i.i102 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i102)
  %tobool24.not.i103 = icmp eq i32 %and.i.i.i102, 0
  br i1 %tobool24.not.i103, label %if.then28.i105, label %do.body1.i104.dev_put.exit107_crit_edge, !prof !193

do.body1.i104.dev_put.exit107_crit_edge:          ; preds = %do.body1.i104
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit107

if.then28.i105:                                   ; preds = %do.body1.i104
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit107

dev_put.exit107:                                  ; preds = %if.then28.i105, %do.body1.i104.dev_put.exit107_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #16, !srcloc !194
  br label %cleanup

sw.epilog:                                        ; preds = %if.end20.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %dev.0 = phi ptr [ %call17, %if.end20.sw.epilog_crit_edge ], [ %call5.i, %if.end10.sw.epilog_crit_edge ]
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 80
  %58 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %sw.epilog.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

sw.epilog.__in6_dev_get.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i108 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i109 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i109)
  %tobool4.not.i = icmp eq i32 %call3.i109, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i110

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i110:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 313, ptr noundef nonnull @.str.21) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i110, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %sw.epilog.__in6_dev_get.exit_crit_edge
  %tobool26.not = icmp eq ptr %59, null
  br i1 %tobool26.not, label %__in6_dev_get.exit.if.end30_crit_edge, label %if.then27

__in6_dev_get.exit.if.end30_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then27:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %59, i32 0, i32 32
  %mc_forwarding = getelementptr inbounds %struct.inet6_dev, ptr %59, i32 0, i32 32, i32 34
  %60 = ptrtoint ptr %mc_forwarding to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mc_forwarding, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %mc_forwarding, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 127
  %62 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 17
  %64 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ifindex, align 4
  call void @inet6_netconf_notify_devconf(ptr noundef %63, i32 noundef 80, i32 noundef 4, i32 noundef %65, ptr noundef %cnf) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %__in6_dev_get.exit.if.end30_crit_edge
  %vifc_rate_limit = getelementptr inbounds %struct.mif6ctl, ptr %vifc, i32 0, i32 4
  %66 = ptrtoint ptr %vifc_rate_limit to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vifc_rate_limit, align 4
  %vifc_threshold = getelementptr inbounds %struct.mif6ctl, ptr %vifc, i32 0, i32 2
  %68 = ptrtoint ptr %vifc_threshold to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vifc_threshold, align 1
  %70 = ptrtoint ptr %mif6c_flags to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mif6c_flags, align 2
  %conv32 = zext i8 %71 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool33.not = icmp eq i32 %mrtsock, 0
  %cond = select i1 %tobool33.not, i16 -32768, i16 0
  %or = or i16 %cond, %conv32
  call void @vif_device_init(ptr noundef %arrayidx, ptr noundef nonnull %dev.0, i32 noundef %67, i8 noundef zeroext %69, i16 noundef zeroext %or, i16 noundef zeroext 1) #16
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #16
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dev.0, ptr %arrayidx, align 4
  %dev_tracker = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 119
  %call.i111 = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 2592) #16
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 8
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags, align 2
  %75 = and i16 %74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool37.not = icmp eq i16 %75, 0
  br i1 %tobool37.not, label %if.end30.if.end40_crit_edge, label %if.then38

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %mroute_reg_vif_num39 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %76 = ptrtoint ptr %mroute_reg_vif_num39 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv, ptr %mroute_reg_vif_num39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end30.if.end40_crit_edge
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %77 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv)
  %cmp41.not = icmp sgt i32 %78, %conv
  br i1 %cmp41.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %add = add nuw nsw i32 %conv, 1
  %79 = ptrtoint ptr %maxvif to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add, ptr %maxvif, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #16
  %82 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %83 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %84 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %85 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %86 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 129, ptr %info.i.i, align 4
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %82, align 4
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx, align 4
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %83, align 4
  %92 = ptrtoint ptr %84 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %1, ptr %84, align 4
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %flags, align 2
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %85, align 2
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %81, ptr %86, align 4
  %call.i.i = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end46.call_ip6mr_vif_entry_notifiers.exit_crit_edge

if.end46.call_ip6mr_vif_entry_notifiers.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_vif_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.end46
  %.b1.i.i = load i1, ptr @mr_call_vif_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !181

land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_vif_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_vif_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 89) #16
  br label %call_ip6mr_vif_entry_notifiers.exit

call_ip6mr_vif_entry_notifiers.exit:              ; preds = %if.then.i.i, %land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge, %if.end46.call_ip6mr_vif_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 37
  %97 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %98, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call44.i.i = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 8, ptr noundef nonnull %info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %call_ip6mr_vif_entry_notifiers.exit, %dev_put.exit107, %sw.bb15.cleanup_crit_edge, %dev_put.exit, %ip6mr_reg_vif.exit.thread, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %dev_put.exit107 ], [ 0, %call_ip6mr_vif_entry_notifiers.exit ], [ %call11, %dev_put.exit ], [ -98, %entry.cleanup_crit_edge ], [ -98, %sw.bb.cleanup_crit_edge ], [ -99, %sw.bb15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -105, %ip6mr_reg_vif.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mif6_delete(ptr noundef %mrt, i32 noundef %vifi, i32 noundef %notify, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.vif_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vifi)
  %cmp = icmp slt i32 %vifi, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %0 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %vifi)
  %cmp1.not = icmp sgt i32 %1, %vifi
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %net = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %conv = trunc i32 %vifi to i16
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #16
  %8 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 129, ptr %info.i.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %10, align 4
  %flags.i.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %11, align 2
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %12, align 4
  %call.i.i = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then5.call_ip6mr_vif_entry_notifiers.exit_crit_edge

if.then5.call_ip6mr_vif_entry_notifiers.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_vif_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.then5
  %.b1.i.i = load i1, ptr @mr_call_vif_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !181

land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_vif_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_vif_notifiers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 89) #16
  br label %call_ip6mr_vif_entry_notifiers.exit

call_ip6mr_vif_entry_notifiers.exit:              ; preds = %if.then.i.i, %land.rhs.i.i.call_ip6mr_vif_entry_notifiers.exit_crit_edge, %if.then5.call_ip6mr_vif_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 37
  %21 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call44.i.i = call i32 @call_fib_notifiers(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #16
  br label %if.end7

if.end7:                                          ; preds = %call_ip6mr_vif_entry_notifiers.exit, %if.end.if.end7_crit_edge
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #16
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %24, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %25 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %vifi)
  %cmp13 = icmp eq i32 %26, %vifi
  br i1 %cmp13, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %mroute_reg_vif_num, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %add = add nuw nsw i32 %vifi, 1
  %28 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp19 = icmp eq i32 %add, %29
  br i1 %cmp19, label %for.cond.preheader, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

for.cond.preheader:                               ; preds = %if.end17
  %30 = call i32 @llvm.smin.i32(i32 %vifi, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %tmp.0.in = phi i32 [ %tmp.0, %for.body.for.cond_crit_edge ], [ %vifi, %for.cond.preheader ]
  %tmp.0 = add i32 %tmp.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tmp.0)
  %cmp22 = icmp sgt i32 %tmp.0, -1
  br i1 %cmp22, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx25 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %tmp.0
  %31 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx25, align 4
  %tobool27.not = icmp eq ptr %32, null
  br i1 %tobool27.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %tmp.0.in.lcssa = phi i32 [ %tmp.0.in, %for.body.for.end_crit_edge ], [ %30, %for.cond.for.end_crit_edge ]
  %33 = ptrtoint ptr %maxvif to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %tmp.0.in.lcssa, ptr %maxvif, align 4
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.end17.if.end32_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  %call33 = call i32 @dev_set_allmulti(ptr noundef nonnull %24, i32 noundef -1) #16
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 80
  %34 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end32.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end32.__in6_dev_get.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end32
  %call2.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 313, ptr noundef nonnull @.str.21) #16
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end32.__in6_dev_get.exit_crit_edge
  %tobool35.not = icmp eq ptr %35, null
  br i1 %tobool35.not, label %__in6_dev_get.exit.if.end40_crit_edge, label %if.then36

__in6_dev_get.exit.if.end40_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then36:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32
  %mc_forwarding = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 34
  %36 = ptrtoint ptr %mc_forwarding to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mc_forwarding, align 4
  %dec37 = add i32 %37, -1
  store i32 %dec37, ptr %mc_forwarding, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %38 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %40 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex, align 4
  call void @inet6_netconf_notify_devconf(ptr noundef %39, i32 noundef 80, i32 noundef 4, i32 noundef %41, ptr noundef %cnf) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %__in6_dev_get.exit.if.end40_crit_edge
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags, align 2
  %44 = and i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool42.not = icmp ne i16 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notify)
  %tobool43.not = icmp eq i32 %notify, 0
  %or.cond = and i1 %tobool43.not, %tobool42.not
  br i1 %or.cond, label %if.then44, label %if.end40.do.body1.i.i_crit_edge

if.end40.do.body1.i.i_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  call void @unregister_netdevice_queue(ptr noundef nonnull %24, ptr noundef %head) #16
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.then44, %if.end40.do.body1.i.i_crit_edge
  %dev_tracker = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 119
  %call.i.i80 = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #16
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i.i = add i32 %57, -1
  store i32 %add13.i.i, ptr %55, align 4
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put_track.exit_crit_edge, !prof !193

do.body1.i.i.dev_put_track.exit_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put_track.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %if.then28.i.i, %do.body1.i.i.dev_put_track.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #16, !srcloc !194
  br label %cleanup

cleanup:                                          ; preds = %dev_put_track.exit, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_put_track.exit ], [ -99, %if.then11 ], [ -99, %lor.lhs.false.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_mfc_delete(ptr noundef %mrt, ptr nocapture noundef readonly %mfc, i32 noundef %parent) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %arg.i = alloca %struct.mfc6_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %mfc, i32 0, i32 3
  %sin6_addr1 = getelementptr inbounds %struct.mf6cctl, ptr %mfc, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #16
  %4 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %arg.i, ptr %sin6_addr1, i32 16)
  %6 = call ptr @memcpy(ptr %4, ptr %sin6_addr, i32 16)
  %call.i23 = call ptr @mr_mfc_find_parent(ptr noundef %mrt, ptr noundef nonnull %arg.i, i32 noundef %parent) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #16
  %call.i24 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i24, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %rcu_read_lock.exit
  %call1.i25 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %7 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i31 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool.not = icmp eq ptr %call.i23, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  call fastcc void @rhltable_remove(ptr noundef %mfc_hash, ptr noundef nonnull %call.i23, [7 x i32] [i32 196640, i32 6553600, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ip6mr_hash_cmp to i32)])
  %list = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %net = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #16
  %22 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 129, ptr %info.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %22, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i23, ptr %23, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %24, align 4
  %call.i.i33 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %tobool.not.i.i = icmp eq i32 %call.i.i33, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge

list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %list_del_rcu.exit
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !181

land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 208) #16
  br label %call_ip6mr_mfc_entry_notifiers.exit

call_ip6mr_mfc_entry_notifiers.exit:              ; preds = %if.then.i.i, %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, %list_del_rcu.exit.call_ip6mr_mfc_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 36, i32 37
  %29 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %30, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %19, i32 noundef 3, ptr noundef nonnull %info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #16
  call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i23, i32 noundef 25)
  %refcount.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !183
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i34, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %call_ip6mr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !181

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #16
  br label %cleanup

if.then.i34:                                      ; preds = %call_ip6mr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !184
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 5
  %free.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i23, i32 0, i32 6
  %32 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %free.i, align 4
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef %33) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_mfc_add(ptr noundef %net, ptr noundef %mrt, ptr nocapture noundef readonly %mfc, i32 noundef %mrtsock, i32 noundef %parent) unnamed_addr #0 align 64 {
entry:
  %info.i.i239 = alloca %struct.mfc_entry_notifier_info, align 4
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %arg.i = alloca %struct.mfc6_cache_cmp_arg, align 4
  %ttls = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ttls) #16
  %mf6cc_parent = getelementptr inbounds %struct.mf6cctl, ptr %mfc, i32 0, i32 2
  %0 = ptrtoint ptr %mf6cc_parent to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mf6cc_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %1)
  %cmp = icmp ugt i16 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %ttls, i32 255, i32 32)
  %mf6cc_ifset = getelementptr inbounds %struct.mf6cctl, ptr %mfc, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0259 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %div160 = lshr i32 %i.0259, 5
  %arrayidx = getelementptr [8 x i32], ptr %mf6cc_ifset, i32 0, i32 %div160
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %i.0259
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx5 = getelementptr [32 x i8], ptr %ttls, i32 0, i32 %i.0259
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %6 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %for.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end.rcu_read_lock.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end.rcu_read_lock.exit_crit_edge
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %mfc, i32 0, i32 3
  %sin6_addr7 = getelementptr inbounds %struct.mf6cctl, ptr %mfc, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #16
  %10 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %arg.i, ptr %sin6_addr7, i32 16)
  %12 = call ptr @memcpy(ptr %10, ptr %sin6_addr, i32 16)
  %call.i161 = call ptr @mr_mfc_find_parent(ptr noundef %mrt, ptr noundef nonnull %arg.i, i32 noundef %parent) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #16
  %call.i162 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i162, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i165

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i165:                               ; preds = %rcu_read_lock.exit
  %call1.i163 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %13 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i169 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i170, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool8.not = icmp eq ptr %call.i161, null
  br i1 %tobool8.not, label %if.end18, label %if.then9

if.then9:                                         ; preds = %rcu_read_unlock.exit
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #16
  %17 = ptrtoint ptr %mf6cc_parent to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mf6cc_parent, align 4
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 1
  %19 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %mfc_parent, align 4
  %minvif.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %minvif.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %minvif.i, align 4
  %maxvif.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %maxvif.i, align 4
  %ttls3.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 3, i32 0, i32 7
  %22 = call ptr @memset(ptr %ttls3.i, i32 255, i32 32)
  %maxvif4.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %23 = ptrtoint ptr %maxvif4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxvif4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54.i = icmp sgt i32 %24, 0
  br i1 %cmp54.i, label %if.then9.for.body.i_crit_edge, label %if.then9.ip6mr_update_thresholds.exit_crit_edge

if.then9.ip6mr_update_thresholds.exit_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_update_thresholds.exit

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %vifi.055.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi.055.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i171 = icmp eq ptr %26, null
  br i1 %tobool.not.i171, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i172

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i172:                               ; preds = %for.body.i
  %arrayidx5.i = getelementptr i8, ptr %ttls, i32 %vifi.055.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %28, label %if.then.i173 [
    i8 0, label %land.lhs.true.i172.for.inc.i_crit_edge
    i8 -1, label %land.lhs.true.i172.for.inc.i_crit_edge297
  ]

land.lhs.true.i172.for.inc.i_crit_edge297:        ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i172.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i173:                                     ; preds = %land.lhs.true.i172
  %arrayidx15.i = getelementptr %struct.mr_mfc, ptr %call.i161, i32 0, i32 3, i32 0, i32 7, i32 %vifi.055.i
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %28, ptr %arrayidx15.i, align 1
  %31 = ptrtoint ptr %minvif.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minvif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %vifi.055.i)
  %cmp18.i = icmp sgt i32 %32, %vifi.055.i
  br i1 %cmp18.i, label %if.then20.i, label %if.then.i173.if.end.i_crit_edge

if.then.i173.if.end.i_crit_edge:                  ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then20.i:                                      ; preds = %if.then.i173
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %minvif.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %vifi.055.i, ptr %minvif.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then20.i, %if.then.i173.if.end.i_crit_edge
  %34 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxvif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %vifi.055.i)
  %cmp25.not.i = icmp sgt i32 %35, %vifi.055.i
  br i1 %cmp25.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then27.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i = add nuw nsw i32 %vifi.055.i, 1
  %36 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %maxvif.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i172.for.inc.i_crit_edge, %land.lhs.true.i172.for.inc.i_crit_edge297, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %vifi.055.i, 1
  %37 = ptrtoint ptr %maxvif4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxvif4.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ip6mr_update_thresholds.exit_crit_edge

for.inc.i.ip6mr_update_thresholds.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_update_thresholds.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

ip6mr_update_thresholds.exit:                     ; preds = %for.inc.i.ip6mr_update_thresholds.exit_crit_edge, %if.then9.ip6mr_update_thresholds.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 3, i32 0, i32 6
  %40 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %lastuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool13.not = icmp eq i32 %mrtsock, 0
  br i1 %tobool13.not, label %if.then14, label %ip6mr_update_thresholds.exit.if.end16_crit_edge

ip6mr_update_thresholds.exit.if.end16_crit_edge:  ; preds = %ip6mr_update_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %ip6mr_update_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #18
  %mfc_flags = getelementptr inbounds %struct.mr_mfc, ptr %call.i161, i32 0, i32 2
  %41 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mfc_flags, align 4
  %or = or i32 %42, 1
  store i32 %or, ptr %mfc_flags, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %ip6mr_update_thresholds.exit.if.end16_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #16
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #16
  %45 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %47 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 129, ptr %info.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %45, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i161, ptr %46, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %44, ptr %47, align 4
  %call.i.i174 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool.not.i.i = icmp eq i32 %call.i.i174, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end16.call_ip6mr_mfc_entry_notifiers.exit_crit_edge

if.end16.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.end16
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !181

land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 208) #16
  br label %call_ip6mr_mfc_entry_notifiers.exit

call_ip6mr_mfc_entry_notifiers.exit:              ; preds = %if.then.i.i, %land.rhs.i.i.call_ip6mr_mfc_entry_notifiers.exit_crit_edge, %if.end16.call_ip6mr_mfc_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 37
  %52 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 0, ptr noundef nonnull %info.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #16
  call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i161, i32 noundef 24)
  br label %cleanup

if.end18:                                         ; preds = %rcu_read_unlock.exit
  %54 = ptrtoint ptr %sin6_addr7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sin6_addr7, align 4
  %arrayidx2.i = getelementptr %struct.mf6cctl, ptr %mfc, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %57, %55
  %arrayidx4.i = getelementptr %struct.mf6cctl, ptr %mfc, i32 0, i32 1, i32 3, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %59
  %arrayidx7.i = getelementptr %struct.mf6cctl, ptr %mfc, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i175 = icmp eq i32 %or8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %55)
  %cmp.i176 = icmp ugt i32 %55, -16777217
  %or.cond = select i1 %cmp.i175, i1 true, i1 %cmp.i176
  br i1 %or.cond, label %if.end26, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %62 = load ptr, ptr @mrt_cachep, align 4
  %call.i.i177 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %62, i32 noundef 3520) #16
  %tobool.not.i178 = icmp eq ptr %call.i.i177, null
  br i1 %tobool.not.i178, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %63, -301
  %mfc_un.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3
  %64 = ptrtoint ptr %mfc_un.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub1.i, ptr %mfc_un.i, align 8
  %minvif.i179 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 1
  %65 = ptrtoint ptr %minvif.i179 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 32, ptr %minvif.i179, align 4
  %free.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 6
  %66 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ip6mr_cache_free_rcu, ptr %free.i, align 8
  %refcount.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  %67 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %refcount.i, align 4
  %68 = getelementptr inbounds %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1
  %69 = call ptr @memcpy(ptr %mf6c_origin, ptr %sin6_addr, i32 16)
  %70 = call ptr @memcpy(ptr %68, ptr %sin6_addr7, i32 16)
  %71 = ptrtoint ptr %mf6cc_parent to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mf6cc_parent, align 4
  %mfc_parent37 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 1
  %73 = ptrtoint ptr %mfc_parent37 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %mfc_parent37, align 8
  %74 = ptrtoint ptr %minvif.i179 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 32, ptr %minvif.i179, align 4
  %maxvif.i182 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 2
  %75 = ptrtoint ptr %maxvif.i182 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %maxvif.i182, align 8
  %ttls3.i183 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 7
  %76 = call ptr @memset(ptr %ttls3.i183, i32 255, i32 32)
  %maxvif4.i184 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %77 = ptrtoint ptr %maxvif4.i184 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %maxvif4.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp54.i185 = icmp sgt i32 %78, 0
  br i1 %cmp54.i185, label %if.end30.for.body.i189_crit_edge, label %if.end30.ip6mr_update_thresholds.exit204_crit_edge

if.end30.ip6mr_update_thresholds.exit204_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_update_thresholds.exit204

if.end30.for.body.i189_crit_edge:                 ; preds = %if.end30
  br label %for.body.i189

for.body.i189:                                    ; preds = %for.inc.i202.for.body.i189_crit_edge, %if.end30.for.body.i189_crit_edge
  %vifi.055.i186 = phi i32 [ %inc.i200, %for.inc.i202.for.body.i189_crit_edge ], [ 0, %if.end30.for.body.i189_crit_edge ]
  %arrayidx.i187 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi.055.i186
  %79 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i187, align 4
  %tobool.not.i188 = icmp eq ptr %80, null
  br i1 %tobool.not.i188, label %for.body.i189.for.inc.i202_crit_edge, label %land.lhs.true.i191

for.body.i189.for.inc.i202_crit_edge:             ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i202

land.lhs.true.i191:                               ; preds = %for.body.i189
  %arrayidx5.i190 = getelementptr i8, ptr %ttls, i32 %vifi.055.i186
  %81 = ptrtoint ptr %arrayidx5.i190 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx5.i190, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %82, label %if.then.i194 [
    i8 0, label %land.lhs.true.i191.for.inc.i202_crit_edge
    i8 -1, label %land.lhs.true.i191.for.inc.i202_crit_edge298
  ]

land.lhs.true.i191.for.inc.i202_crit_edge298:     ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i202

land.lhs.true.i191.for.inc.i202_crit_edge:        ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i202

if.then.i194:                                     ; preds = %land.lhs.true.i191
  %arrayidx15.i192 = getelementptr %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 7, i32 %vifi.055.i186
  %84 = ptrtoint ptr %arrayidx15.i192 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %arrayidx15.i192, align 1
  %85 = ptrtoint ptr %minvif.i179 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %minvif.i179, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %vifi.055.i186)
  %cmp18.i193 = icmp sgt i32 %86, %vifi.055.i186
  br i1 %cmp18.i193, label %if.then20.i195, label %if.then.i194.if.end.i197_crit_edge

if.then.i194.if.end.i197_crit_edge:               ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i197

if.then20.i195:                                   ; preds = %if.then.i194
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %minvif.i179 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %vifi.055.i186, ptr %minvif.i179, align 4
  br label %if.end.i197

if.end.i197:                                      ; preds = %if.then20.i195, %if.then.i194.if.end.i197_crit_edge
  %88 = ptrtoint ptr %maxvif.i182 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %maxvif.i182, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %vifi.055.i186)
  %cmp25.not.i196 = icmp sgt i32 %89, %vifi.055.i186
  br i1 %cmp25.not.i196, label %if.end.i197.for.inc.i202_crit_edge, label %if.then27.i199

if.end.i197.for.inc.i202_crit_edge:               ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i202

if.then27.i199:                                   ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #18
  %add.i198 = add nuw nsw i32 %vifi.055.i186, 1
  %90 = ptrtoint ptr %maxvif.i182 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i198, ptr %maxvif.i182, align 8
  br label %for.inc.i202

for.inc.i202:                                     ; preds = %if.then27.i199, %if.end.i197.for.inc.i202_crit_edge, %land.lhs.true.i191.for.inc.i202_crit_edge, %land.lhs.true.i191.for.inc.i202_crit_edge298, %for.body.i189.for.inc.i202_crit_edge
  %inc.i200 = add nuw nsw i32 %vifi.055.i186, 1
  %exitcond275.not = icmp eq i32 %inc.i200, %78
  br i1 %exitcond275.not, label %for.inc.i202.ip6mr_update_thresholds.exit204_crit_edge, label %for.inc.i202.for.body.i189_crit_edge

for.inc.i202.for.body.i189_crit_edge:             ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i189

for.inc.i202.ip6mr_update_thresholds.exit204_crit_edge: ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_update_thresholds.exit204

ip6mr_update_thresholds.exit204:                  ; preds = %for.inc.i202.ip6mr_update_thresholds.exit204_crit_edge, %if.end30.ip6mr_update_thresholds.exit204_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i203 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 3, i32 0, i32 6
  %92 = ptrtoint ptr %lastuse.i203 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %lastuse.i203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool40.not = icmp eq i32 %mrtsock, 0
  br i1 %tobool40.not, label %if.then41, label %ip6mr_update_thresholds.exit204.if.end45_crit_edge

ip6mr_update_thresholds.exit204.if.end45_crit_edge: ; preds = %ip6mr_update_thresholds.exit204
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then41:                                        ; preds = %ip6mr_update_thresholds.exit204
  call void @__sanitizer_cov_trace_pc() #18
  %mfc_flags43 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 2
  %93 = ptrtoint ptr %mfc_flags43 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mfc_flags43, align 4
  %or44 = or i32 %94, 1
  store i32 %or44, ptr %mfc_flags43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %ip6mr_update_thresholds.exit204.if.end45_crit_edge
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  %95 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i.i, label %if.end45.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end45.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end45
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end45.rcu_read_lock.exit.i.i_crit_edge
  %99 = ptrtoint ptr %mfc_hash to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %mfc_hash, align 4
  %call.i.i205 = call i32 @lockdep_rht_mutex_is_held(ptr noundef %mfc_hash) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i205)
  %tobool.not.i.i206 = icmp eq i32 %call.i.i205, 0
  br i1 %tobool.not.i.i206, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.rht_head_hashfn.exit.i.i_crit_edge

rcu_read_lock.exit.i.i.rht_head_hashfn.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_head_hashfn.exit.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.rht_head_hashfn.exit.i.i_crit_edge

lor.lhs.false.i.i.rht_head_hashfn.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_head_hashfn.exit.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.rht_head_hashfn.exit.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.rht_head_hashfn.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_head_hashfn.exit.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b3.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b3.i.i, label %land.lhs.true9.i.i.rht_head_hashfn.exit.i.i_crit_edge, label %if.then.i.i207

land.lhs.true9.i.i.rht_head_hashfn.exit.i.i_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_head_hashfn.exit.i.i

if.then.i.i207:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 715, ptr noundef nonnull @.str.21) #16
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i207, %land.lhs.true9.i.i.rht_head_hashfn.exit.i.i_crit_edge, %land.lhs.true.i.i.rht_head_hashfn.exit.i.i_crit_edge, %lor.lhs.false.i.i.rht_head_hashfn.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.rht_head_hashfn.exit.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 3
  %101 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %102 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i177, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 100
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %100, i32 0, i32 2
  %103 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %104, -559038705
  %105 = sub nsw i32 112, %conv.i.i.i.i
  %106 = sub nsw i32 124, %conv.i.i.i.i
  %107 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i.i.i, align 4
  %add2.i.i.i.i.i.i = add i32 %108, %add1.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %109 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx3.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i = add i32 %110, %add1.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 2
  %111 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx5.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i = add i32 %112, %add1.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = sub i32 %add2.i.i.i.i.i.i, %add6.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i, i32 4) #16
  %xor.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i, %or.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i, %add4.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i, %xor.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i, i32 6) #16
  %xor10.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i
  %add11.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i, %add7.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i, %xor10.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i, i32 8) #16
  %xor14.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i
  %add15.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i, %add11.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i, %xor14.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i, i32 16) #16
  %xor18.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i
  %add19.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i, %add15.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i, %xor18.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i, i32 19) #16
  %xor22.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i
  %add23.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i, %add19.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i, %xor22.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i, i32 4) #16
  %xor26.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i
  %add27.i.i.i.i.i.i = add i32 %xor22.i.i.i.i.i.i, %add23.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 3
  %113 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %add2.i.i.i.i.i.i.1 = add i32 %114, %add23.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i.1 = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 1
  %115 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx3.i.i.i.i.i.i.1, align 4
  %add4.i.i.i.i.i.i.1 = add i32 %116, %add27.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i.1 = getelementptr i32, ptr %add.ptr.i.i.i.i.i.i, i32 2
  %117 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx5.i.i.i.i.i.i.1, align 4
  %add6.i.i.i.i.i.i.1 = add i32 %118, %xor26.i.i.i.i.i.i
  %sub.i.i.i.i.i.i.1 = sub i32 %add2.i.i.i.i.i.i.1, %add6.i.i.i.i.i.i.1
  %or.i.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i.1, i32 %add6.i.i.i.i.i.i.1, i32 4) #16
  %xor.i.i.i.i.i.i.1 = xor i32 %sub.i.i.i.i.i.i.1, %or.i.i.i.i.i.i.i.1
  %add7.i.i.i.i.i.i.1 = add i32 %add6.i.i.i.i.i.i.1, %add4.i.i.i.i.i.i.1
  %sub8.i.i.i.i.i.i.1 = sub i32 %add4.i.i.i.i.i.i.1, %xor.i.i.i.i.i.i.1
  %or.i135.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i.1, i32 %xor.i.i.i.i.i.i.1, i32 6) #16
  %xor10.i.i.i.i.i.i.1 = xor i32 %sub8.i.i.i.i.i.i.1, %or.i135.i.i.i.i.i.i.1
  %add11.i.i.i.i.i.i.1 = add i32 %xor.i.i.i.i.i.i.1, %add7.i.i.i.i.i.i.1
  %sub12.i.i.i.i.i.i.1 = sub i32 %add7.i.i.i.i.i.i.1, %xor10.i.i.i.i.i.i.1
  %or.i136.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i.1, i32 %xor10.i.i.i.i.i.i.1, i32 8) #16
  %xor14.i.i.i.i.i.i.1 = xor i32 %sub12.i.i.i.i.i.i.1, %or.i136.i.i.i.i.i.i.1
  %add15.i.i.i.i.i.i.1 = add i32 %xor10.i.i.i.i.i.i.1, %add11.i.i.i.i.i.i.1
  %sub16.i.i.i.i.i.i.1 = sub i32 %add11.i.i.i.i.i.i.1, %xor14.i.i.i.i.i.i.1
  %or.i137.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i.1, i32 %xor14.i.i.i.i.i.i.1, i32 16) #16
  %xor18.i.i.i.i.i.i.1 = xor i32 %sub16.i.i.i.i.i.i.1, %or.i137.i.i.i.i.i.i.1
  %add19.i.i.i.i.i.i.1 = add i32 %xor14.i.i.i.i.i.i.1, %add15.i.i.i.i.i.i.1
  %sub20.i.i.i.i.i.i.1 = sub i32 %add15.i.i.i.i.i.i.1, %xor18.i.i.i.i.i.i.1
  %or.i138.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i.1, i32 %xor18.i.i.i.i.i.i.1, i32 19) #16
  %xor22.i.i.i.i.i.i.1 = xor i32 %sub20.i.i.i.i.i.i.1, %or.i138.i.i.i.i.i.i.1
  %add23.i.i.i.i.i.i.1 = add i32 %xor18.i.i.i.i.i.i.1, %add19.i.i.i.i.i.i.1
  %sub24.i.i.i.i.i.i.1 = sub i32 %add19.i.i.i.i.i.i.1, %xor22.i.i.i.i.i.i.1
  %or.i139.i.i.i.i.i.i.1 = call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i.1, i32 %xor22.i.i.i.i.i.i.1, i32 4) #16
  %xor26.i.i.i.i.i.i.1 = xor i32 %sub24.i.i.i.i.i.i.1, %or.i139.i.i.i.i.i.i.1
  %add27.i.i.i.i.i.i.1 = add i32 %xor22.i.i.i.i.i.i.1, %add23.i.i.i.i.i.i.1
  %uglygep = getelementptr i8, ptr %call.i.i177, i32 %105
  %uglygep276 = getelementptr i8, ptr %call.i.i177, i32 %106
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %uglygep, i32 4
  %119 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %120, %add27.i.i.i.i.i.i.1
  %121 = ptrtoint ptr %uglygep276 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %uglygep276, align 4
  %add36.i.i.i.i.i.i = add i32 %122, %add23.i.i.i.i.i.i.1
  %xor37.i.i.i.i.i.i = xor i32 %xor26.i.i.i.i.i.i.1, %add33.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #16
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #16
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #16
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #16
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #16
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #16
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #16
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %123 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %100, align 128
  %sub.i.i.i.i.i = add i32 %124, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %sub57.i.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %100, i32 0, i32 1
  %125 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i5.i.i = icmp eq i32 %126, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !181

cond.true.i7.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i6.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %mfc_hash, ptr noundef %100, i32 noundef %and.i3.i.i.i.i) #16
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %100, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i) #16
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %100, i32 0, i32 5
  %127 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %128, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !181

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i) #16
  %call.i11.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %129 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i18.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %132, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef %mfc_hash, ptr noundef %68, ptr noundef %call.i.i177) #16
  br label %rhltable_insert_key.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %100, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 377, ptr noundef nonnull @.str.6) #16
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %133 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cond.i9.i.i, align 4
  %135 = ptrtoint ptr %134 to i32
  %and.i.i.i.i = and i32 %135, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %136 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %136, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i87.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i.i)
  %tobool.i.not88.i.i = icmp eq i32 %and.i87.i.i, 0
  br i1 %tobool.i.not88.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %137 = inttoptr i32 %cond.i.i.i.i to ptr
  %arrayidx6.i.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %arrayidx11.i.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %arrayidx17.i.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %arrayidx6.i8.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %arrayidx11.i12.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %arrayidx17.i16.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pprev.091.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %head.090.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %head.090.i.i = phi ptr [ %137, %for.body.lr.ph.i.i ], [ %179, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.089.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.089.i.i, -1
  %138 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i29.i.i = zext i16 %139 to i32
  %idx.neg.i30.i.i = sub nsw i32 0, %conv.i29.i.i
  %add.ptr.i31.i.i = getelementptr i8, ptr %head.090.i.i, i32 %idx.neg.i30.i.i
  %140 = getelementptr inbounds %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %143 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %68, align 4
  %xor.i.i = xor i32 %144, %142
  %arrayidx4.i.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx4.i.i, align 4
  %147 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx6.i.i, align 8
  %xor7.i.i = xor i32 %148, %146
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %149 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx9.i.i, align 4
  %151 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %152, %150
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %153 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx15.i.i, align 4
  %155 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx17.i.i, align 8
  %xor18.i.i = xor i32 %156, %154
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %ip6mr_hash_cmp.exit, label %for.body.i.i.do.body136.i.i_crit_edge

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136.i.i

ip6mr_hash_cmp.exit:                              ; preds = %for.body.i.i
  %mf6c_origin.i = getelementptr inbounds %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 1
  %157 = ptrtoint ptr %mf6c_origin.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mf6c_origin.i, align 4
  %159 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mf6c_origin, align 4
  %xor.i6.i = xor i32 %160, %158
  %arrayidx4.i7.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %161 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx4.i7.i, align 4
  %163 = ptrtoint ptr %arrayidx6.i8.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx6.i8.i, align 8
  %xor7.i9.i = xor i32 %164, %162
  %or.i10.i = or i32 %xor7.i9.i, %xor.i6.i
  %arrayidx9.i11.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %165 = ptrtoint ptr %arrayidx9.i11.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx9.i11.i, align 4
  %167 = ptrtoint ptr %arrayidx11.i12.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx11.i12.i, align 4
  %xor12.i13.i = xor i32 %168, %166
  %or13.i14.i = or i32 %or.i10.i, %xor12.i13.i
  %arrayidx15.i15.i = getelementptr %struct.mfc6_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %169 = ptrtoint ptr %arrayidx15.i15.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx15.i15.i, align 4
  %171 = ptrtoint ptr %arrayidx17.i16.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx17.i16.i, align 8
  %xor18.i17.i = xor i32 %172, %170
  %or19.i18.i = or i32 %or13.i14.i, %xor18.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i18.i)
  %cmp.i19.i.not = icmp eq i32 %or19.i18.i, 0
  br i1 %cmp.i19.i.not, label %if.end46.i.i, label %ip6mr_hash_cmp.exit.do.body136.i.i_crit_edge

ip6mr_hash_cmp.exit.do.body136.i.i_crit_edge:     ; preds = %ip6mr_hash_cmp.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136.i.i

if.end46.i.i:                                     ; preds = %ip6mr_hash_cmp.exit
  %next61.i.i = getelementptr inbounds %struct.rhlist_head, ptr %call.i.i177, i32 0, i32 1
  %173 = ptrtoint ptr %next61.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %head.090.i.i, ptr %next61.i.i, align 4
  %call69.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %100, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool70.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true71.i.i, label %if.end46.i.i.do.end79.i.i_crit_edge

if.end46.i.i.do.end79.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

land.lhs.true71.i.i:                              ; preds = %if.end46.i.i
  %call72.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true71.i.i.do.end79.i.i_crit_edge, label %land.lhs.true74.i.i

land.lhs.true71.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

land.lhs.true74.i.i:                              ; preds = %land.lhs.true71.i.i
  %.b2812.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.37, align 1
  br i1 %.b2812.i.i, label %land.lhs.true74.i.i.do.end79.i.i_crit_edge, label %if.then76.i.i

land.lhs.true74.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end79.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned.37, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 755, ptr noundef nonnull @.str.6) #16
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %if.then76.i.i, %land.lhs.true74.i.i.do.end79.i.i_crit_edge, %land.lhs.true71.i.i.do.end79.i.i_crit_edge, %if.end46.i.i.do.end79.i.i_crit_edge
  %174 = ptrtoint ptr %head.090.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.090.i.i, align 4
  %176 = ptrtoint ptr %call.i.i177 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %175, ptr %call.i.i177, align 8
  %tobool95.not.i.i = icmp eq ptr %pprev.091.i.i, null
  br i1 %tobool95.not.i.i, label %if.else133.i.i, label %do.body97.i.i

do.body97.i.i:                                    ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !197
  %177 = ptrtoint ptr %pprev.091.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %call.i.i177, ptr %pprev.091.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i) #16
  br label %out.i.i

if.else133.i.i:                                   ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rht_assign_unlock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i, ptr noundef %call.i.i177) #16
  br label %out.i.i

do.body136.i.i:                                   ; preds = %ip6mr_hash_cmp.exit.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %100, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2821.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.38, align 1
  br i1 %.b2821.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned.38, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 732, ptr noundef nonnull @.str.6) #16
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %178 = ptrtoint ptr %head.090.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %head.090.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  %and.i.i.i = and i32 %180, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 8
  %call.i.i.i39.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #16
  %181 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 2
  %183 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %184)
  %cmp.i.not.i.i = icmp ult i32 %182, %184
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !181

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i41.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #16
  %185 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %nelems.i.i.i, align 4
  %187 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %100, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %188)
  %cmp.i42.i.i = icmp ugt i32 %186, %188
  br i1 %cmp.i42.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 4
  %189 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i43.i.i = icmp eq i32 %190, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %190)
  %cmp4.i.i.i = icmp ult i32 %188, %190
  %spec.select.i.i.i = select i1 %tobool.not.i43.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !193

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i44.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %100, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i48.i.i, label %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge

if.end171.i.i.rht_ptr.exit56.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end171.i.i
  %call1.i46.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool2.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool2.not.i47.i.i, label %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, label %land.lhs.true3.i50.i.i

land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56.i.i

land.lhs.true3.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b7.i49.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i, label %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 377, ptr noundef nonnull @.str.6) #16
  br label %rht_ptr.exit56.i.i

rht_ptr.exit56.i.i:                               ; preds = %if.then.i51.i.i, %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge
  %191 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cond.i9.i.i, align 4
  %193 = ptrtoint ptr %192 to i32
  %and.i.i52.i.i = and i32 %193, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %cond.i.i55.i.i = select i1 %tobool.not.i.i53.i.i, i32 %or.i.i.i.i, i32 %and.i.i52.i.i
  %194 = inttoptr i32 %cond.i.i55.i.i to ptr
  %195 = ptrtoint ptr %call.i.i177 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %194, ptr %call.i.i177, align 8
  %next198.i.i = getelementptr inbounds %struct.rhlist_head, ptr %call.i.i177, i32 0, i32 1
  %196 = ptrtoint ptr %next198.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr null, ptr %next198.i.i, align 4
  %call.i.i.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #16
  %197 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #16, !srcloc !198
  call fastcc void @rht_assign_unlock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i, ptr noundef %call.i.i177) #16
  %call.i.i.i58.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #16
  %198 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %nelems.i.i.i, align 4
  %200 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %100, align 128
  %div8.i.i.i = lshr i32 %201, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %mul.i.i.i)
  %cmp.i59.i.i = icmp ugt i32 %199, %mul.i.i.i
  br i1 %cmp.i59.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit56.i.i.out.i.i_crit_edge

rht_ptr.exit56.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit56.i.i
  %max_size.i60.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 4
  %202 = ptrtoint ptr %max_size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %max_size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i61.i.i = icmp eq i32 %203, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %203)
  %cmp4.i62.i.i = icmp ult i32 %201, %203
  %spec.select.i63.i.i = select i1 %tobool.not.i61.i.i, i1 true, i1 %cmp4.i62.i.i
  br i1 %spec.select.i63.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %run_work.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %204 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %204, ptr noundef %run_work.i.i) #16
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit56.i.i.out.i.i_crit_edge, %if.else133.i.i, %do.body97.i.i, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %if.else133.i.i ], [ null, %do.body97.i.i ], [ null, %rht_ptr.exit56.i.i.out.i.i_crit_edge ]
  %call.i66.i.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i66.i.i, label %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true.i69.i.i

out.i.i.rcu_read_unlock.exit76.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true.i69.i.i:                            ; preds = %out.i.i
  %call1.i67.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true2.i71.i.i

land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true2.i71.i.i:                           ; preds = %land.lhs.true.i69.i.i
  %.b4.i70.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i, label %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %if.then.i72.i.i

land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76.i.i

if.then.i72.i.i:                                  ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit76.i.i

rcu_read_unlock.exit76.i.i:                       ; preds = %if.then.i72.i.i, %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %205 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i73.i.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i.i.i.i.i73.i.i to ptr
  %preempt_count.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i, align 4
  %sub.i.i.i75.i.i = add i32 %208, -1
  store volatile i32 %sub.i.i.i75.i.i, ptr %preempt_count.i.i.i.i74.i.i, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %rhltable_insert_key.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @rht_unlock(ptr noundef %100, ptr noundef nonnull %cond.i9.i.i) #16
  br label %out.i.i

rhltable_insert_key.exit:                         ; preds = %rcu_read_unlock.exit76.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit76.i.i ]
  %tobool48.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool48.not, label %if.end51, label %do.end

do.end:                                           ; preds = %rhltable_insert_key.exit
  call void @__sanitizer_cov_trace_pc() #18
  %209 = ptrtoint ptr %retval.0.i.i to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %209) #19
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ip6mr_cache_free_rcu) #16
  br label %cleanup

if.end51:                                         ; preds = %rhltable_insert_key.exit
  %list = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 4
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9, i32 1
  %210 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev.i, align 4
  %call.i.i209 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %211, ptr noundef %mfc_cache_list) #16
  br i1 %call.i.i209, label %if.end.i.i, label %if.end51.list_add_tail_rcu.exit_crit_edge

if.end51.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %212 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %mfc_cache_list, ptr %list, align 8
  %prev2.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i177, i32 0, i32 4, i32 1
  %213 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %211, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %list, ptr %211, align 4
  %215 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %list, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end51.list_add_tail_rcu.exit_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %216 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn261 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp57.not263 = icmp eq ptr %.pn261, %mfc_unres_queue
  br i1 %cmp57.not263, label %list_add_tail_rcu.exit.for.end78_crit_edge, label %for.body59.lr.ph

list_add_tail_rcu.exit.for.end78_crit_edge:       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end78

for.body59.lr.ph:                                 ; preds = %list_add_tail_rcu.exit
  %217 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %mf6c_origin, align 4
  %arrayidx6.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %219 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx6.i, align 8
  %arrayidx11.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %221 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx17.i = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %223 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx17.i, align 8
  %arrayidx6.i216 = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %arrayidx11.i220 = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %arrayidx17.i224 = getelementptr %struct.mfc6_cache, ptr %call.i.i177, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  br label %for.body59

for.body59:                                       ; preds = %for.inc72.for.body59_crit_edge, %for.body59.lr.ph
  %.pn264 = phi ptr [ %.pn261, %for.body59.lr.ph ], [ %.pn, %for.inc72.for.body59_crit_edge ]
  %mf6c_origin60 = getelementptr i8, ptr %.pn264, i32 36
  %225 = ptrtoint ptr %mf6c_origin60 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mf6c_origin60, align 4
  %xor.i = xor i32 %218, %226
  %arrayidx4.i210 = getelementptr i8, ptr %.pn264, i32 40
  %227 = ptrtoint ptr %arrayidx4.i210 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx4.i210, align 4
  %xor7.i = xor i32 %220, %228
  %or.i211 = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %.pn264, i32 44
  %229 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx9.i, align 4
  %xor12.i = xor i32 %222, %230
  %or13.i = or i32 %or.i211, %xor12.i
  %arrayidx15.i212 = getelementptr i8, ptr %.pn264, i32 48
  %231 = ptrtoint ptr %arrayidx15.i212 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx15.i212, align 4
  %xor18.i = xor i32 %224, %232
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i213 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i213, label %land.lhs.true64, label %for.body59.for.inc72_crit_edge

for.body59.for.inc72_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc72

land.lhs.true64:                                  ; preds = %for.body59
  %233 = getelementptr i8, ptr %.pn264, i32 20
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %236 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %68, align 4
  %xor.i214 = xor i32 %237, %235
  %arrayidx4.i215 = getelementptr i8, ptr %.pn264, i32 24
  %238 = ptrtoint ptr %arrayidx4.i215 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx4.i215, align 4
  %240 = ptrtoint ptr %arrayidx6.i216 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx6.i216, align 8
  %xor7.i217 = xor i32 %241, %239
  %or.i218 = or i32 %xor7.i217, %xor.i214
  %arrayidx9.i219 = getelementptr i8, ptr %.pn264, i32 28
  %242 = ptrtoint ptr %arrayidx9.i219 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx9.i219, align 4
  %244 = ptrtoint ptr %arrayidx11.i220 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx11.i220, align 4
  %xor12.i221 = xor i32 %245, %243
  %or13.i222 = or i32 %or.i218, %xor12.i221
  %arrayidx15.i223 = getelementptr i8, ptr %.pn264, i32 32
  %246 = ptrtoint ptr %arrayidx15.i223 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx15.i223, align 4
  %248 = ptrtoint ptr %arrayidx17.i224 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx17.i224, align 8
  %xor18.i225 = xor i32 %249, %247
  %or19.i226 = or i32 %or13.i222, %xor18.i225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i226)
  %cmp.i227 = icmp eq i32 %or19.i226, 0
  br i1 %cmp.i227, label %if.then69, label %land.lhs.true64.for.inc72_crit_edge

land.lhs.true64.for.inc72_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc72

if.then69:                                        ; preds = %land.lhs.true64
  %_uc.0265.le283 = getelementptr i8, ptr %.pn264, i32 -80
  %call.i.i228 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn264) #16
  br i1 %call.i.i228, label %if.end.i.i229, label %if.then69.list_del.exit_crit_edge

if.then69.list_del.exit_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i229:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn264, i32 0, i32 1
  %250 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %prev.i.i, align 4
  %252 = ptrtoint ptr %.pn264 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %.pn264, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %251, ptr %prev1.i.i.i, align 4
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %253, ptr %251, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i229, %if.then69.list_del.exit_crit_edge
  %256 = ptrtoint ptr %.pn264 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn264, align 4
  %prev.i230 = getelementptr inbounds %struct.list_head, ptr %.pn264, i32 0, i32 1
  %257 = ptrtoint ptr %prev.i230 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i230, align 4
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #16
  %258 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #16, !srcloc !200
  br label %for.end78

for.inc72:                                        ; preds = %land.lhs.true64.for.inc72_crit_edge, %for.body59.for.inc72_crit_edge
  %259 = ptrtoint ptr %.pn264 to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pn = load ptr, ptr %.pn264, align 4
  %cmp57.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp57.not, label %for.end78.loopexit, label %for.inc72.for.body59_crit_edge

for.inc72.for.body59_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body59

for.end78.loopexit:                               ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #18
  %_uc.0265.le = getelementptr i8, ptr %.pn264, i32 -80
  br label %for.end78

for.end78:                                        ; preds = %for.end78.loopexit, %list_del.exit, %list_add_tail_rcu.exit.for.end78_crit_edge
  %cmp57.not251 = phi i1 [ false, %list_del.exit ], [ true, %list_add_tail_rcu.exit.for.end78_crit_edge ], [ true, %for.end78.loopexit ]
  %uc.1 = phi ptr [ %_uc.0265.le283, %list_del.exit ], [ inttoptr (i32 -1 to ptr), %list_add_tail_rcu.exit.for.end78_crit_edge ], [ %_uc.0265.le, %for.end78.loopexit ]
  %260 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i231.not = icmp eq ptr %261, %mfc_unres_queue
  br i1 %cmp.i231.not, label %if.then82, label %for.end78.if.end84_crit_edge

for.end78.if.end84_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end84

if.then82:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #18
  %ipmr_expire_timer = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 5
  %call83 = call i32 @del_timer(ptr noundef %ipmr_expire_timer) #16
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %for.end78.if.end84_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  br i1 %cmp57.not251, label %if.end84.if.end87_crit_edge, label %if.then86

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then86:                                        ; preds = %if.end84
  %unresolved.i = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 3, i32 0, i32 1
  %262 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %unresolved.i, align 4
  %cmp.i.i37.i = icmp eq ptr %263, %unresolved.i
  %tobool.not.i3638.i = icmp eq ptr %263, null
  %tobool.not.i39.i = or i1 %cmp.i.i37.i, %tobool.not.i3638.i
  br i1 %tobool.not.i39.i, label %if.then86.ip6mr_cache_resolve.exit_crit_edge, label %while.body.lr.ph.i

if.then86.ip6mr_cache_resolve.exit_crit_edge:     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_cache_resolve.exit

while.body.lr.ph.i:                               ; preds = %if.then86
  %qlen.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 3, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %264 = phi ptr [ %263, %while.body.lr.ph.i ], [ %290, %if.end17.i.while.body.i_crit_edge ]
  %265 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i232 = add i32 %266, -1
  store volatile i32 %sub.i.i.i232, ptr %qlen.i.i.i, align 4
  %267 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %264, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %264, i32 0, i32 1
  %269 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %264, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %268, i32 0, i32 1
  %271 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store volatile ptr %270, ptr %prev17.i.i.i, align 4
  %272 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile ptr %268, ptr %270, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %264, i32 0, i32 18
  %273 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %264, i32 0, i32 15, i32 0, i32 20
  %275 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %276 to i32
  %add.ptr.i.i.i233 = getelementptr i8, ptr %274, i32 %conv.i.i.i
  %277 = ptrtoint ptr %add.ptr.i.i.i233 to i32
  call void @__asan_load1_noabort(i32 %277)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load.i)
  %cmp.i234 = icmp ult i8 %bf.load.i, 16
  br i1 %cmp.i234, label %if.then.i235, label %if.else16.i

if.then.i235:                                     ; preds = %while.body.i
  %call3.i = call ptr @skb_pull(ptr noundef nonnull %264, i32 noundef 40) #16
  %add.ptr.i.i = getelementptr i8, ptr %call3.i, i32 16
  %call6.i = call i32 @mr_fill_mroute(ptr noundef %mrt, ptr noundef nonnull %264, ptr noundef %call.i.i177, ptr noundef %add.ptr.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then.i235
  call void @__sanitizer_cov_trace_pc() #18
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %264, i32 0, i32 16
  %278 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %279 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %280 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %if.end.i236

if.else.i:                                        ; preds = %if.then.i235
  call void @__sanitizer_cov_trace_pc() #18
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %call3.i, i32 0, i32 1
  %281 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 2, ptr %nlmsg_type.i, align 4
  %282 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 36, ptr %call3.i, align 4
  call void @skb_trim(ptr noundef nonnull %264, i32 noundef 36) #16
  %283 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 -90, ptr %add.ptr.i.i, align 4
  br label %if.end.i236

if.end.i236:                                      ; preds = %if.else.i, %if.then9.i
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %264, i32 0, i32 3, i32 12
  %284 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %portid.i, align 4
  %call15.i = call i32 @rtnl_unicast(ptr noundef nonnull %264, ptr noundef %net, i32 noundef %285) #16
  br label %if.end17.i

if.else16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %286 = getelementptr inbounds %struct.anon.83, ptr %264, i32 0, i32 2
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 8
  call fastcc void @ip6_mr_forward(ptr noundef %net, ptr noundef %mrt, ptr noundef %288, ptr noundef nonnull %264, ptr noundef %call.i.i177) #16
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else16.i, %if.end.i236
  %289 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %unresolved.i, align 4
  %cmp.i.i.i = icmp eq ptr %290, %unresolved.i
  %tobool.not.i36.i = icmp eq ptr %290, null
  %tobool.not.i.i237 = or i1 %cmp.i.i.i, %tobool.not.i36.i
  br i1 %tobool.not.i.i237, label %if.end17.i.ip6mr_cache_resolve.exit_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end17.i.ip6mr_cache_resolve.exit_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_cache_resolve.exit

ip6mr_cache_resolve.exit:                         ; preds = %if.end17.i.ip6mr_cache_resolve.exit_crit_edge, %if.then86.ip6mr_cache_resolve.exit_crit_edge
  %rcu.i238 = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i238, ptr noundef nonnull @ip6mr_cache_free_rcu) #16
  br label %if.end87

if.end87:                                         ; preds = %ip6mr_cache_resolve.exit, %if.end84.if.end87_crit_edge
  %id88 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %291 = ptrtoint ptr %id88 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %id88, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i239) #16
  %293 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i239, i32 0, i32 1
  %294 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i239, i32 0, i32 1
  %295 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i239, i32 0, i32 2
  %296 = ptrtoint ptr %info.i.i239 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 129, ptr %info.i.i239, align 4
  %297 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr null, ptr %293, align 4
  %298 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call.i.i177, ptr %294, align 4
  %299 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %292, ptr %295, align 4
  %call.i.i240 = call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i240)
  %tobool.not.i.i241 = icmp eq i32 %call.i.i240, 0
  br i1 %tobool.not.i.i241, label %land.rhs.i.i243, label %if.end87.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge

if.end87.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit248

land.rhs.i.i243:                                  ; preds = %if.end87
  %.b1.i.i242 = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i242, label %land.rhs.i.i243.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge, label %if.then.i.i244, !prof !181

land.rhs.i.i243.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge: ; preds = %land.rhs.i.i243
  call void @__sanitizer_cov_trace_pc() #18
  br label %call_ip6mr_mfc_entry_notifiers.exit248

if.then.i.i244:                                   ; preds = %land.rhs.i.i243
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef 208) #16
  br label %call_ip6mr_mfc_entry_notifiers.exit248

call_ip6mr_mfc_entry_notifiers.exit248:           ; preds = %if.then.i.i244, %land.rhs.i.i243.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge, %if.end87.call_ip6mr_mfc_entry_notifiers.exit248_crit_edge
  %ipmr_seq.i245 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 37
  %300 = ptrtoint ptr %ipmr_seq.i245 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ipmr_seq.i245, align 4
  %inc.i.i246 = add i32 %301, 1
  store i32 %inc.i.i246, ptr %ipmr_seq.i245, align 4
  %call43.i.i247 = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 2, ptr noundef nonnull %info.i.i239) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i239) #16
  call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i.i177, i32 noundef 24)
  br label %cleanup

cleanup:                                          ; preds = %call_ip6mr_mfc_entry_notifiers.exit248, %do.end, %if.end26.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %call_ip6mr_mfc_entry_notifiers.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %call_ip6mr_mfc_entry_notifiers.exit ], [ %209, %do.end ], [ 0, %call_ip6mr_mfc_entry_notifiers.exit248 ], [ -23, %entry.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ttls) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6mr_new_table(ptr noundef %net, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %0 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %4, %id
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ip6mr_get_table.exit.if.end_crit_edge, label %ip6mr_get_table.exit.cleanup_crit_edge

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ip6mr_get_table.exit.if.end_crit_edge:            ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %ip6mr_get_table.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %call1 = tail call ptr @mr_table_alloc(ptr noundef %net, i32 noundef %id, ptr noundef nonnull @ip6mr_mr_table_ops, ptr noundef nonnull @ipmr_expire_process, ptr noundef nonnull @ip6mr_new_table_set) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip6mr_get_table.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ %mrt.0.i, %ip6mr_get_table.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_mroute_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %6)
  %cmp5.not = icmp eq i16 %6, 58
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ip6mr_table = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 4
  %7 = ptrtoint ptr %ip6mr_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ip6mr_table, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %. = select i1 %tobool.not, i32 254, i32 %8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 30
  %9 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i70

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i70:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i70, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %13, %.
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool9.not, label %ip6mr_get_table.exit.cleanup_crit_edge, label %if.end11

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %ip6mr_get_table.exit
  %14 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %optname, label %if.end11.cleanup_crit_edge [
    i32 206, label %sw.bb
    i32 208, label %sw.bb12
    i32 207, label %sw.bb15
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 773, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 13
  %16 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mroute_do_pim, align 1, !range !180
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %20 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mroute_do_assert, align 4, !range !180
  %22 = zext i8 %21 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb12, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1834) #16
  %24 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !188
  %and.i = and i32 %26, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #16, !srcloc !201
  %asmresult = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool21.not = icmp eq i32 %asmresult, 0
  br i1 %tobool21.not, label %if.end23, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  %asmresult19 = extractvalue { i32, i32 } %27, 1
  %28 = tail call i32 @llvm.smin.i32(i32 %asmresult19, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp31 = icmp slt i32 %28, 0
  br i1 %cmp31, label %if.end23.cleanup_crit_edge, label %if.end34

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1841) #16
  %29 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i66 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i66 to ptr
  %cpu_domain.i.i67 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i67) #9, !srcloc !188
  %and.i68 = and i32 %31, -13
  %or.i69 = or i32 %and.i68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i69) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %28, i32 -1226833921) #16, !srcloc !202
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #16, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool44.not = icmp eq i32 %32, 0
  br i1 %tobool44.not, label %if.then.i.i.i, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end34
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %28, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %28, i32 -1226833920) #20, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %28) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %28) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %28, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %28, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool48.not = icmp eq i32 %n.addr.0.i, 0
  %.65 = select i1 %tobool48.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end34.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ip6mr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -2, %ip6mr_get_table.exit.cleanup_crit_edge ], [ -92, %if.end11.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -14, %if.end34.cleanup_crit_edge ], [ %.65, %copy_to_user.exit ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6mr_ioctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.mfc6_cache_cmp_arg, align 4
  %sr = alloca %struct.sioc_sg_req6, align 4
  %vr = alloca %struct.sioc_mif_req6, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sr) #16
  %0 = call ptr @memset(ptr %sr, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vr) #16
  %1 = call ptr @memset(ptr %vr, i32 255, i32 20)
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %ip6mr_table = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %ip6mr_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ip6mr_table, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 254, i32 %5
  %call.i122 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i122, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  %6 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i123

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i123:                               ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i123.do.end.i_crit_edge

land.lhs.true.i123.do.end.i_crit_edge:            ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i123
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i124

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i124:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i124, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i123.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %10, %.
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool3.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool3.not, label %ip6mr_get_table.exit.cleanup_crit_edge, label %if.end

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ip6mr_get_table.exit
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35296, label %if.end59.i.i
    i32 35297, label %if.end59.i.i88
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 20, i32 -1226833920) #20
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !181

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %vr, i32 noundef 20) #16
  %13 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !188
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %vr, ptr noundef %arg, i32 noundef 20) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !181

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i152 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 20, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.0.i.i152
  %add.ptr.i.i = getelementptr i8, ptr %vr, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i152)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %17 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vr, align 4
  %conv = zext i16 %18 to i32
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %19 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp.not = icmp sgt i32 %20, %conv
  br i1 %cmp.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %21 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %20) #16, !srcloc !204
  %22 = trunc i32 %21 to i16
  %conv19 = and i16 %18, %22
  %23 = ptrtoint ptr %vr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv19, ptr %vr, align 4
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  %24 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vr, align 4
  %idxprom = zext i16 %25 to i32
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %if.end32, label %if.end59.i.i78

if.end59.i.i78:                                   ; preds = %if.end10
  %pkt_in = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 4
  %28 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkt_in, align 4
  %icount = getelementptr inbounds %struct.sioc_mif_req6, ptr %vr, i32 0, i32 1
  %30 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %icount, align 4
  %pkt_out = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 5
  %31 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pkt_out, align 4
  %ocount = getelementptr inbounds %struct.sioc_mif_req6, ptr %vr, i32 0, i32 2
  %33 = ptrtoint ptr %ocount to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ocount, align 4
  %bytes_in = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 2
  %34 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_in, align 4
  %ibytes = getelementptr inbounds %struct.sioc_mif_req6, ptr %vr, i32 0, i32 3
  %36 = ptrtoint ptr %ibytes to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ibytes, align 4
  %bytes_out = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 3
  %37 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bytes_out, align 4
  %obytes = getelementptr inbounds %struct.sioc_mif_req6, ptr %vr, i32 0, i32 4
  %39 = ptrtoint ptr %obytes to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %obytes, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #16
  %call.i.i79 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i79, label %if.end59.i.i78.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i78.cleanup_crit_edge:                 ; preds = %if.end59.i.i78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i78
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vr, i32 noundef 20) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %vr, i32 noundef 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %cleanup

if.end32:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup

if.end59.i.i88:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #16
  %call.i.i89 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i89, label %if.end59.i.i88.if.then11.i.i105_crit_edge, label %land.lhs.true.i.i92

if.end59.i.i88.if.then11.i.i105_crit_edge:        ; preds = %if.end59.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i105

land.lhs.true.i.i92:                              ; preds = %if.end59.i.i88
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 68, i32 -1226833920) #20
  %asmresult.i.i90 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i90)
  %cmp.i6.i91 = icmp eq i32 %asmresult.i.i90, 0
  br i1 %cmp.i6.i91, label %if.end.i.i102, label %land.lhs.true.i.i92.if.then11.i.i105_crit_edge, !prof !181

land.lhs.true.i.i92.if.then11.i.i105_crit_edge:   ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i105

if.end.i.i102:                                    ; preds = %land.lhs.true.i.i92
  %call.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sr, i32 noundef 68) #16
  %41 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i.i94 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i94 to ptr
  %cpu_domain.i.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i95) #9, !srcloc !188
  %and.i.i.i.i96 = and i32 %43, -13
  %or.i.i.i.i97 = or i32 %and.i.i.i.i96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i97) #16, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  %call1.i.i.i98 = call i32 @arm_copy_from_user(ptr noundef nonnull %sr, ptr noundef %arg, i32 noundef 68) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #16, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i98)
  %tobool4.not.i.i101 = icmp eq i32 %call1.i.i.i98, 0
  br i1 %tobool4.not.i.i101, label %if.end37, label %if.end.i.i102.if.then11.i.i105_crit_edge, !prof !181

if.end.i.i102.if.then11.i.i105_crit_edge:         ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i105

if.then11.i.i105:                                 ; preds = %if.end.i.i102.if.then11.i.i105_crit_edge, %land.lhs.true.i.i92.if.then11.i.i105_crit_edge, %if.end59.i.i88.if.then11.i.i105_crit_edge
  %res.0.i.i100159 = phi i32 [ %call1.i.i.i98, %if.end.i.i102.if.then11.i.i105_crit_edge ], [ 68, %if.end59.i.i88.if.then11.i.i105_crit_edge ], [ 68, %land.lhs.true.i.i92.if.then11.i.i105_crit_edge ]
  %sub.i.i103 = sub i32 68, %res.0.i.i100159
  %add.ptr.i.i104 = getelementptr i8, ptr %sr, i32 %sub.i.i103
  %44 = call ptr @memset(ptr %add.ptr.i.i104, i32 0, i32 %res.0.i.i100159)
  br label %cleanup

if.end37:                                         ; preds = %if.end.i.i102
  %45 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end37.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end37.rcu_read_lock.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end37
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end37.rcu_read_lock.exit_crit_edge
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %sr, i32 0, i32 3
  %sin6_addr38 = getelementptr inbounds %struct.sioc_sg_req6, ptr %sr, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #16
  %49 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %arg.i, ptr %sin6_addr38, i32 16)
  %51 = call ptr @memcpy(ptr %49, ptr %sin6_addr, i32 16)
  %call.i.i125 = call ptr @mr_mfc_find_parent(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %arg.i, i32 noundef -1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #16
  %tobool40.not = icmp eq ptr %call.i.i125, null
  br i1 %tobool40.not, label %if.end51, label %if.then41

if.then41:                                        ; preds = %rcu_read_lock.exit
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 4
  %52 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pkt, align 4
  %pktcnt = getelementptr inbounds %struct.sioc_sg_req6, ptr %sr, i32 0, i32 2
  %54 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %pktcnt, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 3
  %55 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes, align 4
  %bytecnt = getelementptr inbounds %struct.sioc_sg_req6, ptr %sr, i32 0, i32 3
  %57 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %bytecnt, align 4
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 5
  %58 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wrong_if, align 4
  %wrong_if46 = getelementptr inbounds %struct.sioc_sg_req6, ptr %sr, i32 0, i32 4
  %60 = ptrtoint ptr %wrong_if46 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %wrong_if46, align 4
  %call.i126 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i126, label %if.then41.if.end59.i.i111_crit_edge, label %land.lhs.true.i129

if.then41.if.end59.i.i111_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i111

land.lhs.true.i129:                               ; preds = %if.then41
  %call1.i127 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.if.end59.i.i111_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.if.end59.i.i111_crit_edge:     ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i111

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.if.end59.i.i111_crit_edge, label %if.then.i132

land.lhs.true2.i131.if.end59.i.i111_crit_edge:    ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59.i.i111

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %if.end59.i.i111

if.end59.i.i111:                                  ; preds = %if.then.i132, %land.lhs.true2.i131.if.end59.i.i111_crit_edge, %land.lhs.true.i129.if.end59.i.i111_crit_edge, %if.then41.if.end59.i.i111_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %61 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i133 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #16
  %call.i.i112 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i112, label %if.end59.i.i111.cleanup_crit_edge, label %copy_to_user.exit121

if.end59.i.i111.cleanup_crit_edge:                ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

copy_to_user.exit121:                             ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i117 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sr, i32 noundef 68) #16
  %call.i12.i.i118 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %sr, i32 noundef 68) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i118)
  %tobool48.not = icmp eq i32 %call.i12.i.i118, 0
  %spec.select164 = select i1 %tobool48.not, i32 0, i32 -14
  br label %cleanup

if.end51:                                         ; preds = %rcu_read_lock.exit
  %call.i136 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i136, label %if.end51.rcu_read_unlock.exit147_crit_edge, label %land.lhs.true.i139

if.end51.rcu_read_unlock.exit147_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit147

land.lhs.true.i139:                               ; preds = %if.end51
  %call1.i137 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge, label %land.lhs.true2.i141

land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit147

land.lhs.true2.i141:                              ; preds = %land.lhs.true.i139
  %.b4.i140 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140, label %land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge, label %if.then.i142

land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge: ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit147

if.then.i142:                                     ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit147

rcu_read_unlock.exit147:                          ; preds = %if.then.i142, %land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge, %land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge, %if.end51.rcu_read_unlock.exit147_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %65 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i143 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %preempt_count.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i144, align 4
  %sub.i.i.i145 = add i32 %68, -1
  store volatile i32 %sub.i.i.i145, ptr %preempt_count.i.i.i.i144, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit147, %copy_to_user.exit121, %if.end59.i.i111.cleanup_crit_edge, %if.then11.i.i105, %if.end32, %copy_to_user.exit, %if.end59.i.i78.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %ip6mr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %rcu_read_unlock.exit147 ], [ -99, %if.end32 ], [ -2, %ip6mr_get_table.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i78.cleanup_crit_edge ], [ -14, %if.then11.i.i105 ], [ -14, %if.end59.i.i111.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select164, %copy_to_user.exit121 ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vr) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sr) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_mr_input(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %arg.i73 = alloca %struct.mfc6_cache_cmp_arg, align 4
  %arg.i67 = alloca %struct.mfc6_cache_cmp_arg, align 4
  %res.i = alloca %struct.ip6mr_result, align 4
  %arg.i = alloca %struct.fib_lookup_arg, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #16
  %5 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %ifindex = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  %8 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flowic_mark, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb, align 8
  %call2 = tail call ptr @dev_get_by_index_rcu(ptr noundef %4, i32 noundef %16) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup33

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %dev.0 = phi ptr [ %call2, %if.then.if.end4_crit_edge ], [ %2, %entry.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #16
  %17 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #16
  %18 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 4
  %22 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 5
  %23 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arg.i, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %18, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %res.i, ptr %19, align 4
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %20, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %21, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %22, align 4
  call void @l3mdev_update_flow(ptr noundef %4, ptr noundef nonnull %fl6) #16
  %mr6_rules_ops.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 31
  %29 = ptrtoint ptr %mr6_rules_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mr6_rules_ops.i, align 4
  %call2.i = call i32 @fib_rules_lookup(ptr noundef %30, ptr noundef nonnull %fl6, i32 noundef 0, ptr noundef nonnull %arg.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup33

if.end7:                                          ; preds = %if.end4
  %31 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i67) #16
  %37 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i67, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %arg.i67, ptr %daddr, i32 16)
  %39 = call ptr @memcpy(ptr %37, ptr %saddr, i32 16)
  %call.i.i = call ptr @mr_mfc_find_parent(ptr noundef %32, ptr noundef nonnull %arg.i67, i32 noundef -1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i67) #16
  %tobool11.not = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end7.if.end32_crit_edge

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then12:                                        ; preds = %if.end7
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %32, i32 0, i32 10
  %40 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then12
  %ct.0.in.i = phi i32 [ %41, %if.then12 ], [ %ct.0.i, %for.body.i.for.cond.i_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i68 = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i68, label %for.body.i, label %for.cond.i.if.then22_crit_edge

for.cond.i.if.then22_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.mr_table, ptr %32, i32 0, i32 7, i32 %ct.0.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %43, %dev.0
  br i1 %cmp2.i, label %if.then15, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.then15:                                        ; preds = %for.body.i
  %44 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i, align 8
  %46 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i71 = zext i16 %47 to i32
  %add.ptr.i.i72 = getelementptr i8, ptr %45, i32 %conv.i.i71
  %daddr17 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i72, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i73) #16
  %48 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i73, i32 0, i32 1
  %49 = call ptr @memcpy(ptr %arg.i73, ptr %daddr17, i32 16)
  %50 = call ptr @memcpy(ptr %48, ptr @in6addr_any, i32 16)
  %51 = ptrtoint ptr %daddr17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %daddr17, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %daddr17, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %54, %52
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %daddr17, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %56
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %daddr17, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  %conv.i = and i32 %ct.0.i, 65535
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i74

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call ptr @mr_mfc_find_any_parent(ptr noundef %32, i32 noundef %conv.i) #16
  br label %if.end20

if.end.i74:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call ptr @mr_mfc_find_any(ptr noundef %32, i32 noundef %conv.i, ptr noundef nonnull %arg.i73) #16
  br label %if.end20

if.end20:                                         ; preds = %if.end.i74, %if.then.i
  %retval.0.i75 = phi ptr [ %call1.i, %if.then.i ], [ %call3.i, %if.end.i74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i73) #16
  %tobool21.not = icmp eq ptr %retval.0.i75, null
  br i1 %tobool21.not, label %if.end20.if.then22_crit_edge, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %for.cond.i.if.then22_crit_edge
  %59 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i81

for.cond.i81:                                     ; preds = %for.body.i84.for.cond.i81_crit_edge, %if.then22
  %ct.0.in.i78 = phi i32 [ %60, %if.then22 ], [ %ct.0.i79, %for.body.i84.for.cond.i81_crit_edge ]
  %ct.0.i79 = add i32 %ct.0.in.i78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i79)
  %cmp.i80 = icmp sgt i32 %ct.0.i79, -1
  br i1 %cmp.i80, label %for.body.i84, label %if.end31

for.body.i84:                                     ; preds = %for.cond.i81
  %arrayidx.i82 = getelementptr %struct.mr_table, ptr %32, i32 0, i32 7, i32 %ct.0.i79
  %61 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i82, align 4
  %cmp2.i83 = icmp eq ptr %62, %dev.0
  br i1 %cmp2.i83, label %if.then27, label %for.body.i84.for.cond.i81_crit_edge

for.body.i84.for.cond.i81_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i81

if.then27:                                        ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #18
  %conv29 = trunc i32 %ct.0.i79 to i16
  %call30 = call fastcc i32 @ip6mr_cache_unresolved(ptr noundef %32, i16 noundef zeroext %conv29, ptr noundef %skb, ptr noundef %dev.0)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup33

if.end31:                                         ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup33

if.end32:                                         ; preds = %if.end20.if.end32_crit_edge, %if.end7.if.end32_crit_edge
  %cache.1114 = phi ptr [ %retval.0.i75, %if.end20.if.end32_crit_edge ], [ %call.i.i, %if.end7.if.end32_crit_edge ]
  call fastcc void @ip6_mr_forward(ptr noundef %4, ptr noundef %32, ptr noundef %dev.0, ptr noundef %skb, ptr noundef nonnull %cache.1114)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup33

cleanup33:                                        ; preds = %if.end32, %if.end31, %if.then27, %if.then6, %if.then3
  %retval.1 = phi i32 [ %call2.i, %if.then6 ], [ 0, %if.end32 ], [ -19, %if.then3 ], [ %call30, %if.then27 ], [ -19, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #16
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_cache_unresolved(ptr noundef %mrt, i16 noundef zeroext %mifi, ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %0 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn104 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp.not105 = icmp eq ptr %.pn104, %mfc_unres_queue
  br i1 %cmp.not105, label %entry.if.then11.critedge_crit_edge, label %for.body.lr.ph

entry.if.then11.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.critedge

for.body.lr.ph:                                   ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %daddr, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx17.i, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %arrayidx6.i81 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %arrayidx11.i85 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %arrayidx17.i89 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn106 = phi ptr [ %.pn104, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %13 = getelementptr i8, ptr %.pn106, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %xor.i = xor i32 %6, %15
  %arrayidx4.i = getelementptr i8, ptr %.pn106, i32 24
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %xor7.i = xor i32 %8, %17
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %.pn106, i32 28
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %xor12.i = xor i32 %10, %19
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %.pn106, i32 32
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15.i, align 4
  %xor18.i = xor i32 %12, %21
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mf6c_origin = getelementptr i8, ptr %.pn106, i32 36
  %22 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mf6c_origin, align 4
  %24 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr, align 4
  %xor.i79 = xor i32 %25, %23
  %arrayidx4.i80 = getelementptr i8, ptr %.pn106, i32 40
  %26 = ptrtoint ptr %arrayidx4.i80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i80, align 4
  %28 = ptrtoint ptr %arrayidx6.i81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i81, align 4
  %xor7.i82 = xor i32 %29, %27
  %or.i83 = or i32 %xor7.i82, %xor.i79
  %arrayidx9.i84 = getelementptr i8, ptr %.pn106, i32 44
  %30 = ptrtoint ptr %arrayidx9.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i84, align 4
  %32 = ptrtoint ptr %arrayidx11.i85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i85, align 4
  %xor12.i86 = xor i32 %33, %31
  %or13.i87 = or i32 %or.i83, %xor12.i86
  %arrayidx15.i88 = getelementptr i8, ptr %.pn106, i32 48
  %34 = ptrtoint ptr %arrayidx15.i88 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i88, align 4
  %36 = ptrtoint ptr %arrayidx17.i89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx17.i89, align 4
  %xor18.i90 = xor i32 %37, %35
  %or19.i91 = or i32 %or13.i87, %xor18.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i91)
  %cmp.i92 = icmp eq i32 %or19.i91, 0
  br i1 %cmp.i92, label %if.end30.loopexit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %38 = ptrtoint ptr %.pn106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn106, align 4
  %cmp.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp.not, label %for.inc.if.then11.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.then11.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.critedge

if.then11.critedge:                               ; preds = %for.inc.if.then11.critedge_crit_edge, %entry.if.then11.critedge_crit_edge
  %39 = load ptr, ptr @mrt_cachep, align 4
  %call.i.i93 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %39, i32 noundef 2848) #16
  %tobool.not.i = icmp eq ptr %call.i.i93, null
  br i1 %tobool.not.i, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end15:                                         ; preds = %if.then11.critedge
  %mfc_un.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 3
  %unresolved.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 3, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 3, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %40 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %unresolved.i, ptr %unresolved.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 3, i32 0, i32 2
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %unresolved.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 3, i32 0, i32 3
  %42 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %qlen.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %43, 1000
  %44 = ptrtoint ptr %mfc_un.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i, ptr %mfc_un.i, align 8
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 1
  %45 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %mfc_parent, align 8
  %46 = getelementptr inbounds %struct.mfc6_cache, ptr %call.i.i93, i32 0, i32 1
  %mf6c_origin17 = getelementptr inbounds %struct.mfc6_cache, ptr %call.i.i93, i32 0, i32 1, i32 0, i32 1
  %head.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i94, align 8
  %network_header.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i95 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i95, align 4
  %conv.i.i96 = zext i16 %50 to i32
  %add.ptr.i.i97 = getelementptr i8, ptr %48, i32 %conv.i.i96
  %saddr19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i97, i32 0, i32 5
  %51 = call ptr @memcpy(ptr %mf6c_origin17, ptr %saddr19, i32 16)
  %daddr22 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i97, i32 0, i32 6
  %52 = call ptr @memcpy(ptr %46, ptr %daddr22, i32 16)
  %call23 = tail call fastcc i32 @ip6mr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %mifi, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ip6mr_cache_free_rcu) #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #16
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #16, !srcloc !198
  %list28 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 4
  %54 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mfc_unres_queue, align 4
  %call.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %list28, ptr noundef %mfc_unres_queue, ptr noundef %55) #16
  br i1 %call.i.i102, label %if.end.i.i, label %if.end26.list_add.exit_crit_edge

if.end26.list_add.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list28, ptr %prev1.i.i, align 4
  %57 = ptrtoint ptr %list28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %list28, align 8
  %prev3.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i93, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %mfc_unres_queue, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list28, ptr %mfc_unres_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end26.list_add.exit_crit_edge
  tail call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i.i93, i32 noundef 24)
  tail call fastcc void @ipmr_do_expire_process(ptr noundef %mrt)
  br label %if.end30

if.end30.loopexit:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %c.0.le = getelementptr i8, ptr %.pn106, i32 -80
  br label %if.end30

if.end30:                                         ; preds = %if.end30.loopexit, %list_add.exit
  %c.1 = phi ptr [ %call.i.i93, %list_add.exit ], [ %c.0.le, %if.end30.loopexit ]
  %unresolved = getelementptr inbounds %struct.mr_mfc, ptr %c.1, i32 0, i32 3, i32 0, i32 1
  %qlen = getelementptr inbounds %struct.mr_mfc, ptr %c.1, i32 0, i32 3, i32 0, i32 3
  %60 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp32 = icmp ugt i32 %61, 3
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %if.end40

if.else:                                          ; preds = %if.end30
  %tobool34.not = icmp eq ptr %dev, null
  br i1 %tobool34.not, label %if.else.if.end36_crit_edge, label %if.then35

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %62 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dev, ptr %62, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %64 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %66 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %skb_iif, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else.if.end36_crit_edge
  tail call void @skb_queue_tail(ptr noundef %unresolved, ptr noundef %skb) #16
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.then33
  %err.0 = phi i32 [ -105, %if.then33 ], [ 0, %if.end36 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then25, %if.then14
  %retval.0 = phi i32 [ %err.0, %if.end40 ], [ %call23, %if.then25 ], [ -105, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_mr_forward(ptr noundef %net, ptr noundef %mrt, ptr noundef readnone %dev, ptr noundef %skb, ptr nocapture noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %0 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxvif.i, align 4
  %2 = add i32 %1, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %2, i32 -1) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ct.0.in.i = phi i32 [ %1, %entry ], [ %ct.0.i, %for.body.i.for.cond.i_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.ip6mr_find_vif.exit_crit_edge

for.cond.i.ip6mr_find_vif.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_find_vif.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %ct.0.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %4, %dev
  br i1 %cmp2.i, label %for.body.i.ip6mr_find_vif.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.ip6mr_find_vif.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_find_vif.exit

ip6mr_find_vif.exit:                              ; preds = %for.body.i.ip6mr_find_vif.exit_crit_edge, %for.cond.i.ip6mr_find_vif.exit_crit_edge
  %ct.0.lcssa.i = phi i32 [ %ct.0.i, %for.body.i.ip6mr_find_vif.exit_crit_edge ], [ %smin.i, %for.cond.i.ip6mr_find_vif.exit_crit_edge ]
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mfc_parent, align 4
  %conv = zext i16 %6 to i32
  %mfc_un = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pkt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %bytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 6
  %14 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lastuse, align 4
  %15 = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mf6c_origin, align 4
  %arrayidx2.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %19, %17
  %arrayidx4.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %21
  %arrayidx7.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i197 = icmp eq i32 %or8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.lcssa.i)
  %cmp = icmp sgt i32 %ct.0.lcssa.i, -1
  %or.cond = select i1 %cmp.i197, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %ip6mr_find_vif.exit.if.end17_crit_edge

ip6mr_find_vif.exit.if.end17_crit_edge:           ; preds = %ip6mr_find_vif.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then:                                          ; preds = %ip6mr_find_vif.exit
  %24 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %call9 = tail call ptr @mr_mfc_find_any_parent(ptr noundef %mrt, i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %land.lhs.true10

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true10:                                  ; preds = %rcu_read_lock.exit
  %arrayidx = getelementptr %struct.mr_mfc, ptr %call9, i32 0, i32 3, i32 0, i32 7, i32 %ct.0.lcssa.i
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp14.not = icmp eq i8 %29, -1
  br i1 %cmp14.not, label %land.lhs.true10.if.end_crit_edge, label %if.then16

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then16:                                        ; preds = %land.lhs.true10
  %call.i198 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i198, label %if.then16.cleanup_crit_edge, label %land.lhs.true.i201

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i201:                               ; preds = %if.then16
  %call1.i199 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i199)
  %tobool.not.i200 = icmp eq i32 %call1.i199, 0
  br i1 %tobool.not.i200, label %land.lhs.true.i201.cleanup_crit_edge, label %land.lhs.true2.i203

land.lhs.true.i201.cleanup_crit_edge:             ; preds = %land.lhs.true.i201
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i203:                              ; preds = %land.lhs.true.i201
  %.b4.i202 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i202, label %land.lhs.true2.i203.cleanup_crit_edge, label %if.then.i204

land.lhs.true2.i203.cleanup_crit_edge:            ; preds = %land.lhs.true2.i203
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i204:                                     ; preds = %land.lhs.true2.i203
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i207 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i207, label %if.end.cleanup.thread_crit_edge, label %land.lhs.true.i210

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

land.lhs.true.i210:                               ; preds = %if.end
  %call1.i208 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool.not.i209, label %land.lhs.true.i210.cleanup.thread_crit_edge, label %land.lhs.true2.i212

land.lhs.true.i210.cleanup.thread_crit_edge:      ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

land.lhs.true2.i212:                              ; preds = %land.lhs.true.i210
  %.b4.i211 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i211, label %land.lhs.true2.i212.cleanup.thread_crit_edge, label %if.then.i213

land.lhs.true2.i212.cleanup.thread_crit_edge:     ; preds = %land.lhs.true2.i212
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.then.i213:                                     ; preds = %land.lhs.true2.i212
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i213, %land.lhs.true2.i212.cleanup.thread_crit_edge, %land.lhs.true.i210.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %30 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i214 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i214 to ptr
  %preempt_count.i.i.i.i215 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i215, align 4
  %sub.i.i.i216 = add i32 %33, -1
  store volatile i32 %sub.i.i.i216, ptr %preempt_count.i.i.i.i215, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end17

cleanup:                                          ; preds = %if.then.i204, %land.lhs.true2.i203.cleanup_crit_edge, %land.lhs.true.i201.cleanup_crit_edge, %if.then16.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %34 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i205 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i205 to ptr
  %preempt_count.i.i.i.i206 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i206, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i206, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %forward

if.end17:                                         ; preds = %cleanup.thread, %ip6mr_find_vif.exit.if.end17_crit_edge
  %arrayidx18 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx18, align 4
  %cmp20.not = icmp eq ptr %39, %dev
  br i1 %cmp20.not, label %if.end17.forward_crit_edge, label %if.then22

if.end17.forward_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %forward

if.then22:                                        ; preds = %if.end17
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 5
  %40 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wrong_if, align 4
  %inc25 = add i32 %41, 1
  store i32 %inc25, ptr %wrong_if, align 4
  br i1 %cmp, label %land.lhs.true28, label %if.then22.dont_forward_crit_edge

if.then22.dont_forward_crit_edge:                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true28:                                  ; preds = %if.then22
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 12
  %42 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mroute_do_assert, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool29.not = icmp eq i8 %43, 0
  br i1 %tobool29.not, label %land.lhs.true28.dont_forward_crit_edge, label %land.lhs.true31

land.lhs.true28.dont_forward_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 13
  %44 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mroute_do_pim, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool32.not = icmp eq i8 %45, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true31.land.lhs.true41_crit_edge

land.lhs.true31.land.lhs.true41_crit_edge:        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true41

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %arrayidx37 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %ct.0.lcssa.i
  %46 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp39.not = icmp eq i8 %47, -1
  br i1 %cmp39.not, label %lor.lhs.false.dont_forward_crit_edge, label %lor.lhs.false.land.lhs.true41_crit_edge

lor.lhs.false.land.lhs.true41_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true41

lor.lhs.false.dont_forward_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true41:                                  ; preds = %lor.lhs.false.land.lhs.true41_crit_edge, %land.lhs.true31.land.lhs.true41_crit_edge
  %48 = ptrtoint ptr %mfc_un to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mfc_un, align 4
  %add44 = add i32 %49, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add44, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45 = icmp slt i32 %sub, 0
  br i1 %cmp45, label %if.then47, label %land.lhs.true41.dont_forward_crit_edge

land.lhs.true41.dont_forward_crit_edge:           ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

if.then47:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %mfc_un to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mfc_un, align 4
  %conv51 = trunc i32 %ct.0.lcssa.i to i16
  %call52 = tail call fastcc i32 @ip6mr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %conv51, i32 noundef 2)
  br label %dont_forward

forward:                                          ; preds = %if.end17.forward_crit_edge, %cleanup
  %pkt_in = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 4
  %53 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pkt_in, align 4
  %inc57 = add i32 %54, 1
  store i32 %inc57, ptr %pkt_in, align 4
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %bytes_in = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 2
  %57 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bytes_in, align 4
  %add61 = add i32 %58, %56
  store i32 %add61, ptr %bytes_in, align 4
  %59 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mf6c_origin, align 4
  %61 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx2.i, align 4
  %or.i219 = or i32 %62, %60
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.i, align 4
  %or5.i221 = or i32 %or.i219, %64
  %65 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx7.i, align 4
  %or8.i223 = or i32 %or5.i221, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i223)
  %cmp.i224 = icmp eq i32 %or8.i223, 0
  br i1 %cmp.i224, label %land.lhs.true65, label %forward.if.end94_crit_edge

forward.if.end94_crit_edge:                       ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

land.lhs.true65:                                  ; preds = %forward
  %67 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %15, align 4
  %arrayidx2.i225 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx2.i225 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx2.i225, align 4
  %or.i226 = or i32 %70, %68
  %arrayidx4.i227 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx4.i227 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.i227, align 4
  %or5.i228 = or i32 %or.i226, %72
  %arrayidx7.i229 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx7.i229 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i229, align 4
  %or8.i230 = or i32 %or5.i228, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i230)
  %cmp.i231 = icmp eq i32 %or8.i230, 0
  br i1 %cmp.i231, label %if.then68, label %land.lhs.true65.if.end94_crit_edge

land.lhs.true65.if.end94_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then68:                                        ; preds = %land.lhs.true65
  br i1 %cmp, label %land.lhs.true71, label %if.then68.dont_forward_crit_edge

if.then68.dont_forward_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true71:                                  ; preds = %if.then68
  %75 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mfc_parent, align 4
  %conv74 = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0.lcssa.i, i32 %conv74)
  %cmp75.not = icmp eq i32 %ct.0.lcssa.i, %conv74
  br i1 %cmp75.not, label %land.lhs.true71.dont_forward_crit_edge, label %land.lhs.true77

land.lhs.true71.dont_forward_crit_edge:           ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true77:                                  ; preds = %land.lhs.true71
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %80 to i32
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 %conv.i.i
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %hop_limit, align 1
  %arrayidx85 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %conv74
  %83 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp87 = icmp ugt i8 %82, %84
  br i1 %cmp87, label %land.lhs.true77.if.then131_crit_edge, label %land.lhs.true77.dont_forward_crit_edge

land.lhs.true77.dont_forward_crit_edge:           ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

land.lhs.true77.if.then131_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131

if.end94:                                         ; preds = %land.lhs.true65.if.end94_crit_edge, %forward.if.end94_crit_edge
  %maxvif = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 2
  %85 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %maxvif, align 4
  %minvif = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 1
  %ct.0248 = add i32 %86, -1
  %87 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %minvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0248, i32 %88)
  %cmp100.not249 = icmp slt i32 %ct.0248, %88
  br i1 %cmp100.not249, label %if.end94.dont_forward_crit_edge, label %for.body.lr.ph

if.end94.dont_forward_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

for.body.lr.ph:                                   ; preds = %if.end94
  %head.i.i239 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i240 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ct.0251 = phi i32 [ %ct.0248, %for.body.lr.ph ], [ %ct.0, %for.inc.for.body_crit_edge ]
  %psend.0250 = phi i32 [ -1, %for.body.lr.ph ], [ %psend.1, %for.inc.for.body_crit_edge ]
  %89 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mf6c_origin, align 4
  %91 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx2.i, align 4
  %or.i233 = or i32 %92, %90
  %93 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx4.i, align 4
  %or5.i235 = or i32 %or.i233, %94
  %95 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i, align 4
  %or8.i237 = or i32 %or5.i235, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i237)
  %cmp.i238 = icmp eq i32 %or8.i237, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0251, i32 %ct.0.lcssa.i)
  %cmp105.not = icmp eq i32 %ct.0251, %ct.0.lcssa.i
  %or.cond196 = select i1 %cmp.i238, i1 %cmp105.not, i1 false
  br i1 %or.cond196, label %for.body.for.inc_crit_edge, label %land.lhs.true107

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true107:                                 ; preds = %for.body
  %97 = ptrtoint ptr %head.i.i239 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i.i239, align 8
  %99 = ptrtoint ptr %network_header.i.i240 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %network_header.i.i240, align 4
  %conv.i.i241 = zext i16 %100 to i32
  %add.ptr.i.i242 = getelementptr i8, ptr %98, i32 %conv.i.i241
  %hop_limit109 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i242, i32 0, i32 4
  %101 = ptrtoint ptr %hop_limit109 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %hop_limit109, align 1
  %arrayidx114 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %ct.0251
  %103 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx114, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp116 = icmp ugt i8 %102, %104
  br i1 %cmp116, label %if.then118, label %land.lhs.true107.for.inc_crit_edge

land.lhs.true107.for.inc_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then118:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %psend.0250)
  %cmp119.not = icmp eq i32 %psend.0250, -1
  br i1 %cmp119.not, label %if.then118.for.inc_crit_edge, label %if.then121

if.then118.for.inc_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then121:                                       ; preds = %if.then118
  %call122 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.then121.for.inc_crit_edge, label %if.then124

if.then121.for.inc_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ip6mr_forward2(ptr noundef %net, ptr noundef %mrt, ptr noundef nonnull %call122, i32 noundef %psend.0250)
  br label %for.inc

for.inc:                                          ; preds = %if.then124, %if.then121.for.inc_crit_edge, %if.then118.for.inc_crit_edge, %land.lhs.true107.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %psend.1 = phi i32 [ %psend.0250, %land.lhs.true107.for.inc_crit_edge ], [ %psend.0250, %for.body.for.inc_crit_edge ], [ %ct.0251, %if.then121.for.inc_crit_edge ], [ %ct.0251, %if.then124 ], [ %ct.0251, %if.then118.for.inc_crit_edge ]
  %ct.0 = add i32 %ct.0251, -1
  %105 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %minvif, align 4
  %cmp100.not = icmp slt i32 %ct.0, %106
  br i1 %cmp100.not, label %last_forward, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

last_forward:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %psend.1)
  %cmp129.not = icmp eq i32 %psend.1, -1
  br i1 %cmp129.not, label %last_forward.dont_forward_crit_edge, label %last_forward.if.then131_crit_edge

last_forward.if.then131_crit_edge:                ; preds = %last_forward
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131

last_forward.dont_forward_crit_edge:              ; preds = %last_forward
  call void @__sanitizer_cov_trace_pc() #18
  br label %dont_forward

if.then131:                                       ; preds = %last_forward.if.then131_crit_edge, %land.lhs.true77.if.then131_crit_edge
  %psend.2247 = phi i32 [ %psend.1, %last_forward.if.then131_crit_edge ], [ %conv74, %land.lhs.true77.if.then131_crit_edge ]
  tail call fastcc void @ip6mr_forward2(ptr noundef %net, ptr noundef %mrt, ptr noundef %skb, i32 noundef %psend.2247)
  br label %cleanup134

dont_forward:                                     ; preds = %last_forward.dont_forward_crit_edge, %if.end94.dont_forward_crit_edge, %land.lhs.true77.dont_forward_crit_edge, %land.lhs.true71.dont_forward_crit_edge, %if.then68.dont_forward_crit_edge, %if.then47, %land.lhs.true41.dont_forward_crit_edge, %lor.lhs.false.dont_forward_crit_edge, %land.lhs.true28.dont_forward_crit_edge, %if.then22.dont_forward_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup134

cleanup134:                                       ; preds = %dont_forward, %if.then131
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6mr_get_route(ptr noundef %net, ptr noundef %skb, ptr noundef %rtm, i32 noundef %portid) local_unnamed_addr #0 align 64 {
entry:
  %arg.i95 = alloca %struct.mfc6_cache_cmp_arg, align 4
  %arg.i = alloca %struct.mfc6_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !193

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %call.i88 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i88, label %skb_dst.exit.do.end.i92_crit_edge, label %lor.lhs.false.i

skb_dst.exit.do.end.i92_crit_edge:                ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i92

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %6 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i92_crit_edge, label %land.lhs.true.i91

lor.lhs.false.i.do.end.i92_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i92

land.lhs.true.i91:                                ; preds = %lor.lhs.false.i
  %call2.i89 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i89)
  %tobool3.not.i90 = icmp eq i32 %call2.i89, 0
  br i1 %tobool3.not.i90, label %land.lhs.true4.i, label %land.lhs.true.i91.do.end.i92_crit_edge

land.lhs.true.i91.do.end.i92_crit_edge:           ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i92

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i91
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i92_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i92_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i92

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i92_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i92_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i92

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i92

do.end.i92:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end.i92_crit_edge, %land.lhs.true4.i.do.end.i92_crit_edge, %land.lhs.true.i91.do.end.i92_crit_edge, %lor.lhs.false.i.do.end.i92_crit_edge, %skb_dst.exit.do.end.i92_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i92
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i92 ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup48_crit_edge, label %for.body.i

for.cond.i.cleanup48_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %10, 254
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ip6mr_get_table.exit.cleanup48_crit_edge, label %if.end

ip6mr_get_table.exit.cleanup48_crit_edge:         ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end:                                           ; preds = %ip6mr_get_table.exit
  tail call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  %rt6i_src = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 4
  %rt6i_dst = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #16
  %11 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %arg.i, ptr %rt6i_dst, i32 16)
  %13 = call ptr @memcpy(ptr %11, ptr %rt6i_src, i32 16)
  %call.i.i = call ptr @mr_mfc_find_parent(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %arg.i, i32 noundef -1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #16
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end
  %14 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup48.sink.split_crit_edge, label %if.then6

land.lhs.true.cleanup48.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48.sink.split

if.then6:                                         ; preds = %land.lhs.true
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %17 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i93

for.cond.i93:                                     ; preds = %for.body.i94.for.cond.i93_crit_edge, %if.then6
  %ct.0.in.i = phi i32 [ %18, %if.then6 ], [ %ct.0.i, %for.body.i94.for.cond.i93_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i, label %for.body.i94, label %for.cond.i93.if.then15_crit_edge

for.cond.i93.if.then15_crit_edge:                 ; preds = %for.cond.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

for.body.i94:                                     ; preds = %for.cond.i93
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %ct.0.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %20, %16
  br i1 %cmp2.i, label %if.then8, label %for.body.i94.for.cond.i93_crit_edge

for.body.i94.for.cond.i93_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i93

if.then8:                                         ; preds = %for.body.i94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i95) #16
  %21 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %arg.i95, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %arg.i95, ptr %rt6i_dst, i32 16)
  %23 = call ptr @memcpy(ptr %21, ptr @in6addr_any, i32 16)
  %24 = ptrtoint ptr %rt6i_dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rt6i_dst, align 4
  %arrayidx2.i.i = getelementptr %struct.rt6_info, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %27, %25
  %arrayidx4.i.i = getelementptr %struct.rt6_info, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %29
  %arrayidx7.i.i = getelementptr %struct.rt6_info, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  %conv.i = and i32 %ct.0.i, 65535
  br i1 %cmp.i.i, label %if.then.i96, label %if.end.i

if.then.i96:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call ptr @mr_mfc_find_any_parent(ptr noundef nonnull %mrt.0.i, i32 noundef %conv.i) #16
  br label %if.end13

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = call ptr @mr_mfc_find_any(ptr noundef nonnull %mrt.0.i, i32 noundef %conv.i, ptr noundef nonnull %arg.i95) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %if.then.i96
  %retval.0.i97 = phi ptr [ %call1.i, %if.then.i96 ], [ %call3.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i95) #16
  %tobool14.not = icmp eq ptr %retval.0.i97, null
  br i1 %tobool14.not, label %if.end13.if.then15_crit_edge, label %if.end13.if.end46_crit_edge

if.end13.if.end46_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %for.cond.i93.if.then15_crit_edge
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %14, align 8
  %tobool17.not = icmp eq ptr %.pr, null
  br i1 %tobool17.not, label %if.then15.cleanup48.sink.split_crit_edge, label %lor.lhs.false

if.then15.cleanup48.sink.split_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48.sink.split

lor.lhs.false:                                    ; preds = %if.then15
  %maxvif.i98 = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %33 = ptrtoint ptr %maxvif.i98 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxvif.i98, align 4
  br label %for.cond.i103

for.cond.i103:                                    ; preds = %for.body.i106.for.cond.i103_crit_edge, %lor.lhs.false
  %ct.0.in.i100 = phi i32 [ %34, %lor.lhs.false ], [ %ct.0.i101, %for.body.i106.for.cond.i103_crit_edge ]
  %ct.0.i101 = add i32 %ct.0.in.i100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i101)
  %cmp.i102 = icmp sgt i32 %ct.0.i101, -1
  br i1 %cmp.i102, label %for.body.i106, label %for.cond.i103.cleanup48.sink.split_crit_edge

for.cond.i103.cleanup48.sink.split_crit_edge:     ; preds = %for.cond.i103
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48.sink.split

for.body.i106:                                    ; preds = %for.cond.i103
  %arrayidx.i104 = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %ct.0.i101
  %35 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i104, align 4
  %cmp2.i105 = icmp eq ptr %36, %.pr
  br i1 %cmp2.i105, label %if.end22, label %for.body.i106.for.cond.i103_crit_edge

for.body.i106.for.cond.i103_crit_edge:            ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i103

if.end22:                                         ; preds = %for.body.i106
  %call.i109 = call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool24.not = icmp eq ptr %call.i109, null
  br i1 %tobool24.not, label %if.end22.cleanup48.sink.split_crit_edge, label %if.end26

if.end22.cleanup48.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48.sink.split

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %portid27 = getelementptr inbounds %struct.sk_buff, ptr %call.i109, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %portid27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %portid, ptr %portid27, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i109, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i109, i32 0, i32 18
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i110 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i109, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i110, ptr %transport_header.i, align 2
  %call28 = call ptr @skb_put(ptr noundef nonnull %call.i109, i32 noundef 40) #16
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i113 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i114 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i115 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i114
  %conv.i116 = trunc i32 %sub.ptr.sub.i115 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i109, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i116, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i115, 65535
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %conv.i.i
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %48 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 6)
  %49 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 59, ptr %nexthdr, align 2
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %hop_limit, align 1
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %51 = call ptr @memcpy(ptr %saddr, ptr %rt6i_src, i32 16)
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %52 = call ptr @memcpy(ptr %daddr, ptr %rt6i_dst, i32 16)
  %conv41 = trunc i32 %ct.0.i101 to i16
  %call42 = call fastcc i32 @ip6mr_cache_unresolved(ptr noundef nonnull %mrt.0.i, i16 noundef zeroext %conv41, ptr noundef nonnull %call.i109, ptr noundef nonnull %.pr)
  br label %cleanup48.sink.split

if.end46:                                         ; preds = %if.end13.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %cache.1127 = phi ptr [ %retval.0.i97, %if.end13.if.end46_crit_edge ], [ %call.i.i, %if.end.if.end46_crit_edge ]
  %call47 = call i32 @mr_fill_mroute(ptr noundef nonnull %mrt.0.i, ptr noundef %skb, ptr noundef nonnull %cache.1127, ptr noundef %rtm) #16
  br label %cleanup48.sink.split

cleanup48.sink.split:                             ; preds = %if.end46, %if.end26, %if.end22.cleanup48.sink.split_crit_edge, %for.cond.i103.cleanup48.sink.split_crit_edge, %if.then15.cleanup48.sink.split_crit_edge, %land.lhs.true.cleanup48.sink.split_crit_edge
  %retval.1.ph = phi i32 [ %call42, %if.end26 ], [ %call47, %if.end46 ], [ -19, %land.lhs.true.cleanup48.sink.split_crit_edge ], [ -19, %if.then15.cleanup48.sink.split_crit_edge ], [ -12, %if.end22.cleanup48.sink.split_crit_edge ], [ -19, %for.cond.i103.cleanup48.sink.split_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.sink.split, %ip6mr_get_table.exit.cleanup48_crit_edge, %for.cond.i.cleanup48_crit_edge
  %retval.1 = phi i32 [ -2, %ip6mr_get_table.exit.cleanup48_crit_edge ], [ %retval.1.ph, %cleanup48.sink.split ], [ -2, %for.cond.i.cleanup48_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_fill_mroute(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 37
  %0 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ipmr_seq.i, align 4
  %call.i = tail call ptr @fib_notifier_ops_register(ptr noundef nonnull @ip6mr_notifier_ops_template, ptr noundef %net) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ip6mr_notifier_init.exit, label %ip6mr_notifier_init.exit.thread

ip6mr_notifier_init.exit.thread:                  ; preds = %entry
  %ip6mr_notifier_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 36
  %1 = ptrtoint ptr %ip6mr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %ip6mr_notifier_ops.i, align 8
  %call.i23 = tail call ptr @fib_rules_register(ptr noundef nonnull @ip6mr_rules_ops_template, ptr noundef %net) #16
  %cmp.i.i24 = icmp ugt ptr %call.i23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i24, label %if.then.i25, label %if.end.i26

ip6mr_notifier_init.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.then.i25:                                      ; preds = %ip6mr_notifier_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %call.i23 to i32
  br label %ip6mr_rules_init.exit

if.end.i26:                                       ; preds = %ip6mr_notifier_init.exit.thread
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %4 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mr6_tables.i, ptr %mr6_tables.i, align 4
  %prev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mr6_tables.i, ptr %prev.i.i, align 4
  %call3.i = tail call fastcc ptr @ip6mr_new_table(ptr noundef %net, i32 noundef 254) #16
  %cmp.i24.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %call3.i to i32
  br label %err1.i

if.end7.i:                                        ; preds = %if.end.i26
  %call8.i = tail call i32 @fib_default_rule_add(ptr noundef %call.i23, i32 noundef 32767, i32 noundef 254, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %err2.i, label %ip6mr_rules_init.exit.thread

ip6mr_rules_init.exit.thread:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %mr6_rules_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 31
  %7 = ptrtoint ptr %mr6_rules_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i23, ptr %mr6_rules_ops.i, align 4
  br label %if.end3

err2.i:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_lock() #16
  %ipmr_expire_timer.i.i = getelementptr inbounds %struct.mr_table, ptr %call3.i, i32 0, i32 5
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %ipmr_expire_timer.i.i) #16
  tail call fastcc void @mroute_clean_tables(ptr noundef %call3.i, i32 noundef 15) #16
  %mfc_hash.i.i = getelementptr inbounds %struct.mr_table, ptr %call3.i, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %mfc_hash.i.i, ptr noundef null, ptr noundef null) #16
  tail call void @kfree(ptr noundef %call3.i) #16
  tail call void @rtnl_unlock() #16
  br label %err1.i

err1.i:                                           ; preds = %err2.i, %if.then5.i
  %err.0.i = phi i32 [ %6, %if.then5.i ], [ %call8.i, %err2.i ]
  tail call void @fib_rules_unregister(ptr noundef %call.i23) #16
  br label %ip6mr_rules_init.exit

ip6mr_rules_init.exit:                            ; preds = %err1.i, %if.then.i25
  %retval.0.i27 = phi i32 [ %3, %if.then.i25 ], [ %err.0.i, %err1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27)
  %cmp = icmp slt i32 %retval.0.i27, 0
  br i1 %cmp, label %ip6mr_rules_init.exit.ip6mr_rules_fail_crit_edge, label %ip6mr_rules_init.exit.if.end3_crit_edge

ip6mr_rules_init.exit.if.end3_crit_edge:          ; preds = %ip6mr_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

ip6mr_rules_init.exit.ip6mr_rules_fail_crit_edge: ; preds = %ip6mr_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ip6mr_rules_fail

if.end3:                                          ; preds = %ip6mr_rules_init.exit.if.end3_crit_edge, %ip6mr_rules_init.exit.thread
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %8 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_net, align 4
  %call4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 0, ptr noundef %9, ptr noundef nonnull @ip6mr_vif_seq_ops, i32 noundef 16, ptr noundef null) #16
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.proc_vif_fail_crit_edge, label %if.end7

if.end3.proc_vif_fail_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %proc_vif_fail

if.end7:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_net, align 4
  %call9 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.9, i16 noundef zeroext 0, ptr noundef %11, ptr noundef nonnull @ipmr_mfc_seq_ops, i32 noundef 20, ptr noundef null) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %proc_cache_fail, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

proc_cache_fail:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %13) #16
  br label %proc_vif_fail

proc_vif_fail:                                    ; preds = %proc_cache_fail, %if.end3.proc_vif_fail_crit_edge
  tail call fastcc void @ip6mr_rules_exit(ptr noundef %net)
  br label %ip6mr_rules_fail

ip6mr_rules_fail:                                 ; preds = %proc_vif_fail, %ip6mr_rules_init.exit.ip6mr_rules_fail_crit_edge
  %err.0 = phi i32 [ %retval.0.i27, %ip6mr_rules_init.exit.ip6mr_rules_fail_crit_edge ], [ -12, %proc_vif_fail ]
  %14 = ptrtoint ptr %ip6mr_notifier_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip6mr_notifier_ops.i, align 8
  tail call void @fib_notifier_ops_unregister(ptr noundef %15) #16
  %16 = ptrtoint ptr %ip6mr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ip6mr_notifier_ops.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ip6mr_rules_fail, %if.end7.cleanup_crit_edge, %ip6mr_notifier_init.exit
  %retval.0 = phi i32 [ %err.0, %ip6mr_rules_fail ], [ %2, %ip6mr_notifier_init.exit ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6mr_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %1) #16
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %3) #16
  tail call fastcc void @ip6mr_rules_exit(ptr noundef %net)
  %ip6mr_notifier_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 36
  %4 = ptrtoint ptr %ip6mr_notifier_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip6mr_notifier_ops.i, align 8
  tail call void @fib_notifier_ops_unregister(ptr noundef %5) #16
  %6 = ptrtoint ptr %ip6mr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ip6mr_notifier_ops.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6mr_rules_exit(ptr noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #16
  %mr6_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %0 = ptrtoint ptr %mr6_tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr6_tables, align 4
  %cmp.not22 = icmp eq ptr %1, %mr6_tables
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mrt.023 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %mrt.023, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mrt.023) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mrt.023, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrt.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %mrt.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mrt.023, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ipmr_expire_timer.i = getelementptr inbounds %struct.mr_table, ptr %mrt.023, i32 0, i32 5
  %call.i = tail call i32 @del_timer_sync(ptr noundef %ipmr_expire_timer.i) #16
  tail call fastcc void @mroute_clean_tables(ptr noundef %mrt.023, i32 noundef 15) #16
  %mfc_hash.i = getelementptr inbounds %struct.mr_table, ptr %mrt.023, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %mfc_hash.i, ptr noundef null, ptr noundef null) #16
  tail call void @kfree(ptr noundef %mrt.023) #16
  %cmp.not = icmp eq ptr %next.0, %mr6_tables
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mr6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 31
  %11 = ptrtoint ptr %mr6_rules_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mr6_rules_ops, align 4
  tail call void @fib_rules_unregister(ptr noundef %12) #16
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_notifier_ops_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_seq_read(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @ip6mr_seq_read.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !181

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_seq_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1255, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 1255) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ipmr_seq = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 37
  %0 = ptrtoint ptr %ipmr_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ipmr_seq, align 4
  %call.i = tail call i32 @fib_rules_seq_read(ptr noundef %net, i32 noundef 129) #16
  %add = add i32 %call.i, %1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mr_dump(ptr noundef %net, ptr noundef %nb, i16 noundef zeroext 129, ptr noundef nonnull @ip6mr_rules_dump, ptr noundef nonnull @ip6mr_mr_table_iter, ptr noundef nonnull @mrt_lock, ptr noundef %extack) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_seq_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_dump(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_rules_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_dump(ptr noundef %net, ptr noundef %nb, i32 noundef 129, ptr noundef %extack) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ip6mr_mr_table_iter(ptr noundef %net, ptr noundef %mrt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mrt, null
  %mr6_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %ret.0.in = select i1 %tobool.not, ptr %mr6_tables, ptr %mrt
  %0 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ret.0 = load volatile ptr, ptr %ret.0.in, align 4
  %cmp = icmp eq ptr %ret.0, %mr6_tables
  %retval.0 = select i1 %cmp, ptr null, ptr %ret.0
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_rule_action(ptr nocapture noundef readonly %rule, ptr nocapture noundef readnone %flp, i32 noundef %flags, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %result, align 4
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %action, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %3, label %sw.default [
    i8 1, label %sw.epilog
    i8 7, label %entry.cleanup_crit_edge
    i8 8, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %5 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %table.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %table1.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %cond.in.i = select i1 %tobool.not.i, ptr %table1.i, ptr %table.i
  %7 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %8 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %table.i, align 4
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %9 = ptrtoint ptr %fr_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fr_net, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %sw.epilog.do.end.i_crit_edge, label %lor.lhs.false.i

sw.epilog.do.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 30
  %11 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %sw.epilog.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %15, %cond.i
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ip6mr_get_table.exit.cleanup_crit_edge, label %if.end

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mrt.0.i, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip6mr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.default, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -13, %sw.bb1 ], [ 0, %if.end ], [ -101, %entry.cleanup_crit_edge ], [ -11, %ip6mr_get_table.exit.cleanup_crit_edge ], [ -11, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6mr_rule_match(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %flp, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6mr_rule_configure(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %frh, ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6mr_rule_compare(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %frh, ptr nocapture noundef readnone %tb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ip6mr_rule_fill(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %skb, ptr nocapture noundef writeonly %frh) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dst_len, align 1
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %1 = ptrtoint ptr %src_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %src_len, align 2
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %2 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tos, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip6mr_vif_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  %4 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %8, 254
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ip6mr_get_table.exit.cleanup_crit_edge, label %if.end

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ip6mr_get_table.exit
  %mrt3 = getelementptr inbounds %struct.mr_vif_iter, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mrt3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mrt.0.i, ptr %mrt3, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %sub.i = add i64 %11, -1
  %call1.i = tail call ptr @mr_vif_seq_idx(ptr noundef %15, ptr noundef %13, i64 noundef %sub.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end.cleanup_crit_edge, %ip6mr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %ip6mr_get_table.exit.cleanup_crit_edge ], [ %call1.i, %cond.true.i ], [ inttoptr (i32 1 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6mr_vif_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_vif_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_vif_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.11) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_vif_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, ptr @.str.12, ptr %5
  %vif_table = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 7
  %sub.ptr.lhs.cast = ptrtoint ptr %v to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %vif_table to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 80
  %bytes_in = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_in, align 4
  %pkt_in = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 4
  %8 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkt_in, align 4
  %bytes_out = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes_out, align 4
  %pkt_out = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkt_out, align 4
  %flags = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %sub.ptr.div, ptr noundef nonnull %spec.select, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_vif_seq_idx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipmr_mfc_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr6_tables.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  %4 = ptrtoint ptr %mr6_tables.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr6_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %mr6_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ip6mr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 125, ptr noundef nonnull @.str.4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr6_tables13.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr6_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr6_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %8, 254
  br i1 %cmp18.i, label %ip6mr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

ip6mr_get_table.exit:                             ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ip6mr_get_table.exit.cleanup_crit_edge, label %if.end

ip6mr_get_table.exit.cleanup_crit_edge:           ; preds = %ip6mr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ip6mr_get_table.exit
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 8
  %mrt1.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mrt1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mrt.0.i, ptr %mrt1.i, align 4
  %cache.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cache.i, align 4
  %lock2.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %lock2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mfc_unres_lock, ptr %lock2.i, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sub.i = add i64 %15, -1
  %call4.i = tail call ptr @mr_mfc_seq_idx(ptr noundef %19, ptr noundef %17, i64 noundef %sub.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end.cleanup_crit_edge, %ip6mr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %ip6mr_get_table.exit.cleanup_crit_edge ], [ %call4.i, %cond.true.i ], [ inttoptr (i32 1 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mr_mfc_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %cache = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 6
  %cmp = icmp eq ptr %5, %mfc_unres_queue
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #16
  br label %if.end5

if.else:                                          ; preds = %entry
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 9
  %cmp3 = icmp eq ptr %5, %mfc_cache_list
  br i1 %cmp3, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.else
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.then4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.then4.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %8 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %if.end5

if.end5:                                          ; preds = %rcu_read_unlock.exit, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_mfc_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.15) #16
  br label %if.end30

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %4 = getelementptr inbounds %struct.mfc6_cache, ptr %v, i32 0, i32 1
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %v, i32 0, i32 1, i32 0, i32 1
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mfc_parent, align 4
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, ptr noundef %4, ptr noundef %mf6c_origin, i32 noundef %conv) #16
  %cache = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache, align 4
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 6
  %cmp2.not = icmp eq ptr %8, %mfc_unres_queue
  br i1 %cmp2.not, label %if.else28, label %if.then4

if.then4:                                         ; preds = %if.else
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pkt, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 5
  %13 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wrong_if, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %10, i32 noundef %12, i32 noundef %14) #16
  %minvif = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minvif, align 4
  %maxvif = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp1454 = icmp slt i32 %16, %18
  br i1 %cmp1454, label %if.then4.for.body_crit_edge, label %if.then4.if.end29_crit_edge

if.then4.if.end29_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4.for.body_crit_edge
  %n.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %16, %if.then4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mr_table, ptr %3, i32 0, i32 7, i32 %n.055
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx18 = getelementptr %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 7, i32 %n.055
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp20.not = icmp eq i8 %22, -1
  br i1 %cmp20.not, label %land.lhs.true.for.inc_crit_edge, label %if.then22

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %conv19 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %n.055, i32 noundef %conv19) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %n.055, 1
  %23 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxvif, align 4
  %cmp14 = icmp slt i32 %inc, %24
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.if.end29_crit_edge

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %for.inc.if.end29_crit_edge, %if.then4.if.end29_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #16
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_seq_idx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_notifier_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp.not = icmp eq i32 %event, 6
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call2, label %do.body.do.end_crit_edge, label %lor.lhs.false

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %mr6_tables = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  %4 = ptrtoint ptr %mr6_tables to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr6_tables, align 4
  %cmp.i.not = icmp eq ptr %5, %mr6_tables
  br i1 %cmp.i.not, label %lor.lhs.false.do.end_crit_edge, label %land.lhs.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b55 = load i1, ptr @ip6mr_device_event.__warned, align 1
  br i1 %.b55, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_device_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1242, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %mr6_tables17 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 30
  %6 = ptrtoint ptr %mr6_tables17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.060 = load volatile ptr, ptr %mr6_tables17, align 4
  %cmp21.not61 = icmp eq ptr %mrt.060, %mr6_tables17
  br i1 %cmp21.not61, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %7 = ptrtoint ptr %mrt.062 to i32
  call void @__asan_load4_noabort(i32 %7)
  %mrt.0 = load volatile ptr, ptr %mrt.062, align 4
  %cmp21.not = icmp eq ptr %mrt.0, %mr6_tables17
  br i1 %cmp21.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %do.end.for.body_crit_edge
  %mrt.062 = phi ptr [ %mrt.0, %for.cond.loopexit.for.body_crit_edge ], [ %mrt.060, %do.end.for.body_crit_edge ]
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.062, i32 0, i32 10
  %8 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2356 = icmp sgt i32 %9, 0
  br i1 %cmp2356, label %for.body24.preheader, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

for.body24.preheader:                             ; preds = %for.body
  %vif_table = getelementptr inbounds %struct.mr_table, ptr %mrt.062, i32 0, i32 7
  br label %for.body24

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %for.body24.preheader
  %v.059 = phi ptr [ %incdec.ptr, %for.inc.for.body24_crit_edge ], [ %vif_table, %for.body24.preheader ]
  %ct.057 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %10 = ptrtoint ptr %v.059 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v.059, align 4
  %cmp26 = icmp eq ptr %11, %1
  br i1 %cmp26, label %if.then27, label %for.body24.for.inc_crit_edge

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then27:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = tail call fastcc i32 @mif6_delete(ptr noundef %mrt.062, i32 noundef %ct.057, i32 noundef 1, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body24.for.inc_crit_edge
  %inc = add nuw nsw i32 %ct.057, 1
  %incdec.ptr = getelementptr %struct.vif_device, ptr %v.059, i32 1
  %12 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxvif, align 4
  %cmp23 = icmp slt i32 %inc, %13
  br i1 %cmp23, label %for.inc.for.body24_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body24

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pim6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  %mrt = alloca ptr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mrt) #16
  %5 = ptrtoint ptr %mrt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %mrt, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #16
  %6 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %ifindex = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex, align 4
  %9 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowic_mark, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 48
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !193

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %15)
  %cmp3.i = icmp ult i32 %15, 48
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !193

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 48, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #16
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %23)
  %cmp.not = icmp eq i8 %23, 33
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.pimreghdr, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.drop_crit_edge

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call7 = tail call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 0) #16
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef 8, i32 noundef 103, i32 noundef %call7) #16
  %28 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #20, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %28)
  %tobool10.not = icmp ugt i32 %28, -65537
  br i1 %tobool10.not, label %lor.lhs.false4.if.end16_crit_edge, label %land.lhs.true

lor.lhs.false4.if.end16_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %call11 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %30, i32 noundef 0) #16
  %31 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call11) #20, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %31)
  %tobool14.not = icmp ugt i32 %31, -65537
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.drop_crit_edge

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %lor.lhs.false4.if.end16_crit_edge
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %34 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i, align 2
  %conv.i91 = zext i16 %35 to i32
  %add.ptr.i92 = getelementptr i8, ptr %33, i32 %conv.i91
  %add.ptr = getelementptr i8, ptr %add.ptr.i92, i32 8
  %daddr18 = getelementptr i8, ptr %add.ptr.i92, i32 32
  %36 = ptrtoint ptr %daddr18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %37)
  %cmp.i = icmp ugt i32 %37, -16777217
  br i1 %cmp.i, label %lor.lhs.false20, label %if.end16.drop_crit_edge

if.end16.drop_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

lor.lhs.false20:                                  ; preds = %if.end16
  %payload_len = getelementptr i8, ptr %add.ptr.i92, i32 12
  %38 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp22 = icmp eq i16 %39, 0
  br i1 %cmp22, label %lor.lhs.false20.drop_crit_edge, label %lor.lhs.false24

lor.lhs.false20.drop_crit_edge:                   ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %conv21 = zext i16 %39 to i32
  %add = add nuw nsw i32 %conv21, 8
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %41)
  %cmp28 = icmp ugt i32 %add, %41
  br i1 %cmp28, label %lor.lhs.false24.drop_crit_edge, label %if.end31

lor.lhs.false24.drop_crit_edge:                   ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

if.end31:                                         ; preds = %lor.lhs.false24
  %call32 = call fastcc i32 @ip6mr_fib_lookup(ptr noundef %4, ptr noundef nonnull %fl6, ptr noundef nonnull %mrt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.drop_crit_edge, label %if.end36

if.end31.drop_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

if.end36:                                         ; preds = %if.end31
  %42 = ptrtoint ptr %mrt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrt, align 4
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp37 = icmp sgt i32 %45, -1
  br i1 %cmp37, label %if.then39, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.mr_table, ptr %43, i32 0, i32 7, i32 %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %reg_dev.0 = phi ptr [ %47, %if.then39 ], [ null, %if.end36.if.end40_crit_edge ]
  call fastcc void @dev_hold(ptr noundef %reg_dev.0)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  %tobool41.not = icmp eq ptr %reg_dev.0, null
  br i1 %tobool41.not, label %if.end40.drop_crit_edge, label %if.end43

if.end40.drop_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %drop

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i, align 4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %50 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %mac_header, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %52 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call44 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub) #16
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i94 = trunc i32 %sub.ptr.sub.i to i16
  %57 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i94, ptr %network_header.i.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %58 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -31011, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %59 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %nd_net.i95 = getelementptr inbounds %struct.net_device, ptr %reg_dev.0, i32 0, i32 127
  %60 = ptrtoint ptr %nd_net.i95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nd_net.i95, align 4
  call fastcc void @skb_tunnel_rx(ptr noundef %skb, ptr noundef nonnull %reg_dev.0, ptr noundef %61)
  %call46 = call i32 @netif_rx(ptr noundef %skb) #16
  call fastcc void @dev_put(ptr noundef nonnull %reg_dev.0)
  br label %cleanup

drop:                                             ; preds = %if.end40.drop_crit_edge, %if.end31.drop_crit_edge, %lor.lhs.false24.drop_crit_edge, %lor.lhs.false20.drop_crit_edge, %if.end16.drop_crit_edge, %land.lhs.true.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end43
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrt) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !193

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !194
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_tunnel_rx(ptr noundef %skb, ptr noundef %dev, ptr noundef readnone %net) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stats, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %4 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %5, %3
  store i32 %add, ptr %rx_bytes, align 8
  %6 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %6, align 8
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %8 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %9 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.__skb_tunnel_rx.exit_crit_edge

entry.__skb_tunnel_rx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__skb_tunnel_rx.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hash.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %10 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %hash.i.i.i, align 4
  %bf.clear2.i.i.i = and i16 %bf.load.i.i, -193
  %11 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %bf.clear2.i.i.i, ptr %l4_hash.i.i, align 8
  br label %__skb_tunnel_rx.exit

__skb_tunnel_rx.exit:                             ; preds = %if.then.i.i, %entry.__skb_tunnel_rx.exit_crit_edge
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %12 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %queue_mapping1.i.i, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i.i, align 4
  %cmp.i.i = icmp ne ptr %14, %net
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !193

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !194
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhltable_remove(ptr noundef %hlt, ptr noundef %list, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %hlt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlt, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1076, ptr noundef nonnull @.str.21) #16
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %53, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %list, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !193

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #16
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #16
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i6.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i6.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !181

cond.true.i7.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  br label %rht_bucket_var.exit.i.i

cond.false.i8.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #16
  %call.i11.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 377, ptr noundef nonnull @.str.6) #16
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i34.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.i.not35.i.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.i.not35.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge

rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge: ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.thread21.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i35.i = icmp eq ptr %27, %list
  br i1 %cmp.not.i35.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge

for.body.preheader.i.i.do.body.i.preheader.i_crit_edge: ; preds = %for.body.preheader.i.i
  br label %do.body.i.preheader.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %37, %list
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body.i.preheader.i_crit_edge

for.body.i.i.do.body.i.preheader.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.preheader.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i.i

do.body.i.preheader.i:                            ; preds = %for.body.i.i.do.body.i.preheader.i_crit_edge, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge
  %he.036.i36.i = phi ptr [ %37, %for.body.i.i.do.body.i.preheader.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %do.body.i.preheader.i
  %list.0.i.i = phi ptr [ %29, %do.end.i.i.do.body.i.i_crit_edge ], [ %he.036.i36.i, %do.body.i.preheader.i ]
  %next8.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list.0.i.i, i32 0, i32 1
  %call10.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i4.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true.i4.i:                               ; preds = %do.body.i.i
  %call12.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i4.i.do.end.i.i_crit_edge, label %land.lhs.true14.i.i

land.lhs.true.i4.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i4.i
  %.b5.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned, align 1
  br i1 %.b5.i.i, label %land.lhs.true14.i.i.do.end.i.i_crit_edge, label %if.then16.i.i

land.lhs.true14.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1020, ptr noundef nonnull @.str.6) #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then16.i.i, %land.lhs.true14.i.i.do.end.i.i_crit_edge, %land.lhs.true.i4.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %28 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next8.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %29, null
  %cmp22.not.i.i = icmp eq ptr %29, %list
  %or.cond.i.i = or i1 %tobool21.not.i.i, %cmp22.not.i.i
  br i1 %or.cond.i.i, label %do.end23.i.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %do.end.i.i
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool21.not.i.i, label %do.body145.i.i, label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true30.i.i, label %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge

do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true30.i.i:                              ; preds = %do.body27.i.i
  %call31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %land.lhs.true33.i.i

land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true30.i.i
  %.b2284.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  br i1 %.b2284.i.i, label %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %if.then35.i.i

land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.i

if.then35.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1026, ptr noundef nonnull @.str.6) #16
  br label %__rhashtable_remove_fast_one.exit.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.037.i.lcssa.i = phi ptr [ %he.036.i36.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2293.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  br i1 %.b2293.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1032, ptr noundef nonnull @.str.6) #16
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  %call71.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %land.lhs.true73.i.i, label %do.end65.i.i.do.end81.i.i_crit_edge

do.end65.i.i.do.end81.i.i_crit_edge:              ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i.i

land.lhs.true73.i.i:                              ; preds = %do.end65.i.i
  %call74.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true73.i.i.do.end81.i.i_crit_edge, label %land.lhs.true76.i.i

land.lhs.true73.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i.i

land.lhs.true76.i.i:                              ; preds = %land.lhs.true73.i.i
  %.b2302.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  br i1 %.b2302.i.i, label %land.lhs.true76.i.i.do.end81.i.i_crit_edge, label %if.then78.i.i

land.lhs.true76.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end81.i.i

if.then78.i.i:                                    ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1036, ptr noundef nonnull @.str.6) #16
  br label %do.end81.i.i

do.end81.i.i:                                     ; preds = %if.then78.i.i, %land.lhs.true76.i.i.do.end81.i.i_crit_edge, %land.lhs.true73.i.i.do.end81.i.i_crit_edge, %do.end65.i.i.do.end81.i.i_crit_edge
  %next83.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list, i32 0, i32 1
  %32 = ptrtoint ptr %next83.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next83.i.i, align 4
  %tobool84.not.i.i = icmp eq ptr %33, null
  br i1 %tobool84.not.i.i, label %do.end81.i.i.if.end102.i.i_crit_edge, label %do.body91.i.i

do.end81.i.i.if.end102.i.i_crit_edge:             ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.i.i

do.body91.i.i:                                    ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.body91.i.i, %do.end81.i.i.if.end102.i.i_crit_edge
  %obj.addr.1.i.i = phi ptr [ %33, %do.body91.i.i ], [ %31, %do.end81.i.i.if.end102.i.i_crit_edge ]
  %tobool103.not.i.i = icmp eq ptr %pprev.037.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !206
  %35 = ptrtoint ptr %pprev.037.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %obj.addr.1.i.i, ptr %pprev.037.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #16
  br label %unlocked.i.i

if.else142.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i, ptr noundef %obj.addr.1.i.i) #16
  br label %unlocked.i.i

do.body145.i.i:                                   ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2311.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  br i1 %.b2311.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1004, ptr noundef nonnull @.str.6) #16
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %36 = ptrtoint ptr %he.036.i36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %he.036.i36.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge

do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge: ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast_one.exit.thread21.i

unlocked.i.i:                                     ; preds = %if.else142.i.i, %do.body105.i.i
  br i1 %tobool84.not.i.i, label %if.then160.i.i, label %unlocked.i.i.while.end.i_crit_edge

unlocked.i.i.while.end.i_crit_edge:               ; preds = %unlocked.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then160.i.i:                                   ; preds = %unlocked.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #16
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #16, !srcloc !200
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool161.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i13.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #16
  %42 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %nelems.i.i, align 4
  %44 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %45, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %43, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i14.i.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i14.i.i)
  %cmp2.i.i.i = icmp ugt i32 %45, %conv.i14.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !193

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %run_work.i.i) #16
  br label %while.end.i

__rhashtable_remove_fast_one.exit.thread21.i:     ; preds = %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge, %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #16
  br label %land.rhs.i

__rhashtable_remove_fast_one.exit.i:              ; preds = %if.then35.i.i, %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge
  %next40.i.i = getelementptr inbounds %struct.rhlist_head, ptr %29, i32 0, i32 1
  %49 = ptrtoint ptr %next40.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next40.i.i, align 4
  %51 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %next8.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #16
  br label %while.end.i

land.rhs.i:                                       ; preds = %__rhashtable_remove_fast_one.exit.thread21.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.22, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1085, ptr noundef nonnull @.str.21) #16
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %53, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %__rhashtable_remove_fast_one.exit.i, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge, %unlocked.i.i.while.end.i_crit_edge
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i5.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i8.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i8.i:                               ; preds = %while.end.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %54 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i12.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef %mfc, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 1
  %2 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfc_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %cmp = icmp ugt i16 %3, 31
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %4 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxvif, align 4
  %mul.i = shl i32 %5, 3
  %add11.i.op = add i32 %mul.i, 119
  %add11.i.op.op = and i32 %add11.i.op, -4
  %and.i.i = select i1 %cmp, i32 76, i32 %add11.i.op.op
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @ip6mr_fill_mroute(ptr noundef %mrt, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef %mfc, i32 noundef %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.errout_crit_edge, label %if.end9

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef null, i32 noundef 2592) #16
  br label %cleanup

errout:                                           ; preds = %if.end.errout_crit_edge, %entry.errout_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.errout_crit_edge ], [ -105, %entry.errout_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #16
  tail call void @rtnl_set_sk_err(ptr noundef %1, i32 noundef 10, i32 noundef %err.0) #16
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6mr_destroy_unres(ptr noundef %mrt, ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #16, !srcloc !200
  %unresolved = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 1
  %call221 = tail call ptr @skb_dequeue(ptr noundef %unresolved) #16
  %cmp.not22 = icmp eq ptr %call221, null
  br i1 %cmp.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call223 = phi ptr [ %call2, %if.end.while.body_crit_edge ], [ %call221, %entry.while.body_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %cmp4 = icmp ult i8 %bf.load, 16
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call ptr @skb_pull(ptr noundef nonnull %call223, i32 noundef 40) #16
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %nlmsg_type, align 4
  %9 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 36, ptr %call6, align 4
  tail call void @skb_trim(ptr noundef nonnull %call223, i32 noundef 36) #16
  %add.ptr.i = getelementptr i8, ptr %call6, i32 16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %add.ptr.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %portid, align 4
  %call10 = tail call i32 @rtnl_unicast(ptr noundef nonnull %call223, ptr noundef %1, i32 noundef %12) #16
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call223, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = tail call ptr @skb_dequeue(ptr noundef %unresolved) #16
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ip6mr_cache_free_rcu) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !207
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #16
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !208

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #16, !srcloc !209
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !210
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !181

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !211
  %7 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !213
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !214
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #16
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !193

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !215
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !216
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #16, !srcloc !217
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !218
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !219
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !220
  %2 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6mr_hash_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = getelementptr inbounds %struct.mfc6_cache, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %xor.i = xor i32 %6, %4
  %arrayidx4.i = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %10, %8
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %14, %12
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %18, %16
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 1
  %mf6c_origin2 = getelementptr inbounds %struct.mfc6_cache_cmp_arg, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mf6c_origin, align 4
  %21 = ptrtoint ptr %mf6c_origin2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mf6c_origin2, align 4
  %xor.i6 = xor i32 %22, %20
  %arrayidx4.i7 = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx4.i7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.i7, align 4
  %arrayidx6.i8 = getelementptr %struct.mfc6_cache_cmp_arg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx6.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.i8, align 4
  %xor7.i9 = xor i32 %26, %24
  %or.i10 = or i32 %xor7.i9, %xor.i6
  %arrayidx9.i11 = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx9.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9.i11, align 4
  %arrayidx11.i12 = getelementptr %struct.mfc6_cache_cmp_arg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx11.i12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i12, align 4
  %xor12.i13 = xor i32 %30, %28
  %or13.i14 = or i32 %or.i10, %xor12.i13
  %arrayidx15.i15 = getelementptr %struct.mfc6_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx15.i15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.i15, align 4
  %arrayidx17.i16 = getelementptr %struct.mfc6_cache_cmp_arg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx17.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.i16, align 4
  %xor18.i17 = xor i32 %34, %32
  %or19.i18 = or i32 %or13.i14, %xor18.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i18)
  %cmp.i19 = icmp ne i32 %or19.i18, 0
  %phi.cast = zext i1 %cmp.i19 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %35 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !193

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %cmd, i32 noundef 12, i32 noundef %flags) #16
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -127, ptr %add.ptr.i, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rtm_tos, align 1
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %conv = trunc i32 %11 to i8
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %12 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %rtm_table, align 4
  %13 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end6:                                          ; preds = %if.end
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %15 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %rtm_type, align 1
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %16 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rtm_scope, align 2
  %mfc_flags = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 2
  %17 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mfc_flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool7.not, i8 17, i8 4
  %19 = getelementptr i8, ptr %call3.i, i32 21
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 1
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %21 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rtm_flags, align 4
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %call.i51 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %mf6c_origin) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool12.not = icmp eq i32 %call.i51, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end6
  %22 = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool14.not = icmp eq i32 %call.i52, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end16:                                         ; preds = %lor.lhs.false
  %call18 = call i32 @mr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, ptr noundef %c, ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp = icmp sgt i32 %call18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call18)
  %cmp20.not = icmp eq i32 %call18, -2
  %or.cond = or i1 %cmp, %cmp20.not
  br i1 %or.cond, label %if.end23, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %25 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end16.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %27, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !193

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i54 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i55 = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i56 = sub i32 %sub.ptr.lhs.cast.i.i54, %sub.ptr.rhs.cast.i.i55
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i56) #16
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end23, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end23 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6mr_cache_free_rcu(ptr noundef %head) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  %0 = load ptr, ptr @mrt_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l3mdev_update_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vif_device_init(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @reg_vif_setup(ptr nocapture noundef %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 779, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1452, ptr %mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @reg_vif_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %4 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %needs_free_netdev, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 8192
  store i64 %or, ptr %features, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_vif_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #0 align 64 {
entry:
  %res.i = alloca %struct.ip6mr_result, align 4
  %arg.i = alloca %struct.fib_lookup_arg, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #16
  %2 = getelementptr inbounds i8, ptr %fl6, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 80)
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %6 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fl6, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %7 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %. = select i1 %tobool.not, i32 1, i32 %8
  %9 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowic_mark, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %15)
  %switch.selectcmp.i = icmp eq i16 %15, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %15)
  %switch.selectcmp3.i = icmp eq i16 %15, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %19 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !193

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %23, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_err_crit_edge, label %pskb_inet_may_pull.exit, !prof !193

if.end.i.i.i.tx_err_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #16
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_err_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

pskb_inet_may_pull.exit.tx_err_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %tx_err

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #16
  %26 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #16
  %27 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 4
  %31 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 5
  %32 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arg.i, align 4
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %27, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %res.i, ptr %28, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %29, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %30, align 4
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %31, align 4
  call void @l3mdev_update_flow(ptr noundef %1, ptr noundef nonnull %fl6) #16
  %mr6_rules_ops.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 31
  %38 = ptrtoint ptr %mr6_rules_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mr6_rules_ops.i, align 4
  %call2.i = call i32 @fib_rules_lookup(ptr noundef %39, ptr noundef nonnull %fl6, i32 noundef 0, ptr noundef nonnull %arg.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ip6mr_fib_lookup.exit.thread, label %if.end4

ip6mr_fib_lookup.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  br label %tx_err

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %res.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #16
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #16
  %42 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i.i.i.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %44 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %46 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tx_packets, align 4
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %41, i32 0, i32 15
  %48 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mroute_reg_vif_num, align 4
  %conv = trunc i32 %49 to i16
  %call6 = call fastcc i32 @ip6mr_cache_report(ptr noundef %41, ptr noundef %skb, i16 noundef zeroext %conv, i32 noundef 3)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #16
  br label %cleanup

tx_err:                                           ; preds = %ip6mr_fib_lookup.exit.thread, %pskb_inet_may_pull.exit.tx_err_crit_edge, %if.end.i.i.i.tx_err_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %50 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_errors, align 4
  %inc8 = add i32 %51, 1
  store i32 %inc8, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %tx_err, %if.end4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reg_vif_get_iflink(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6mr_cache_report(ptr noundef %mrt, ptr noundef %pkt, i16 noundef zeroext %mifi, i32 noundef %assert) unnamed_addr #0 align 64 {
entry:
  %tmp.i59.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %assert)
  %cmp = icmp eq i32 %assert, 3
  br i1 %cmp, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.neg = add i32 %sub.ptr.rhs.cast.i, 40
  %add = sub i32 %sub.ptr.sub.i.neg, %sub.ptr.lhs.cast.i
  %call1 = tail call ptr @skb_realloc_headroom(ptr noundef %pkt, i32 noundef %add) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %call.i120 = tail call ptr @__alloc_skb(i32 noundef 80, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not209 = icmp eq ptr %call.i120, null
  br i1 %tobool.not209, label %if.end.thread.cleanup_crit_edge, label %if.else18

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i123 = zext i16 %10 to i32
  %add.ptr.i.i124 = getelementptr i8, ptr %8, i32 %conv.i.i123
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i126 = ptrtoint ptr %add.ptr.i.i124 to i32
  %sub.ptr.rhs.cast.i127 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i128.neg = sub i32 %sub.ptr.rhs.cast.i127, %sub.ptr.lhs.cast.i126
  %call9 = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef %sub.ptr.sub.i128.neg) #16
  %call10 = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 40) #16
  %data.i129 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %13 = ptrtoint ptr %data.i129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i129, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i130 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i131 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i132 = sub i32 %sub.ptr.lhs.cast.i130, %sub.ptr.rhs.cast.i131
  %conv.i = trunc i32 %sub.ptr.sub.i132 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i135 = and i32 %sub.ptr.sub.i132, 65535
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i135
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %add.ptr.i, align 4
  %im6_msgtype = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i, i32 0, i32 1
  %19 = ptrtoint ptr %im6_msgtype to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %im6_msgtype, align 1
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %20 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mroute_reg_vif_num, align 4
  %conv = trunc i32 %21 to i16
  %im6_mif = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i, i32 0, i32 2
  %22 = ptrtoint ptr %im6_mif to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %im6_mif, align 2
  %im6_pad = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i, i32 0, i32 3
  %23 = ptrtoint ptr %im6_pad to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %im6_pad, align 4
  %im6_src = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i138 = zext i16 %27 to i32
  %add.ptr.i.i139 = getelementptr i8, ptr %25, i32 %conv.i.i138
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i139, i32 0, i32 5
  %28 = call ptr @memcpy(ptr %im6_src, ptr %saddr, i32 16)
  %im6_dst = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i, i32 0, i32 5
  %29 = load ptr, ptr %head.i.i, align 8
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i142 = zext i16 %30 to i32
  %add.ptr.i.i143 = getelementptr i8, ptr %29, i32 %conv.i.i142
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i143, i32 0, i32 6
  %31 = call ptr @memcpy(ptr %im6_dst, ptr %daddr, i32 16)
  br label %if.end40

if.else18:                                        ; preds = %if.end.thread
  %ip_summed213 = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed213 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load214 = load i16, ptr %ip_summed213, align 8
  %bf.clear215 = and i16 %bf.load214, -1537
  %bf.set216 = or i16 %bf.clear215, 512
  store i16 %bf.set216, ptr %ip_summed213, align 8
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i120, i32 noundef 40) #16
  %data.i144 = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 19
  %33 = ptrtoint ptr %data.i144 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i144, align 4
  %head.i145 = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 18
  %35 = ptrtoint ptr %head.i145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i145, align 8
  %sub.ptr.lhs.cast.i146 = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i147 = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i148 = sub i32 %sub.ptr.lhs.cast.i146, %sub.ptr.rhs.cast.i147
  %conv.i149 = trunc i32 %sub.ptr.sub.i148 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i149, ptr %network_header.i, align 4
  %head.i.i150 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i150 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i150, align 8
  %network_header.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i151 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i151, align 4
  %conv.i.i152 = zext i16 %41 to i32
  %add.ptr.i.i153 = getelementptr i8, ptr %39, i32 %conv.i.i152
  %42 = call ptr @memcpy(ptr %34, ptr %add.ptr.i.i153, i32 40)
  %call21 = tail call ptr @skb_put(ptr noundef nonnull %call.i120, i32 noundef 40) #16
  %43 = ptrtoint ptr %data.i144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i144, align 4
  %45 = ptrtoint ptr %head.i145 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i145, align 8
  %sub.ptr.lhs.cast.i157 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i158 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i159 = sub i32 %sub.ptr.lhs.cast.i157, %sub.ptr.rhs.cast.i158
  %conv.i160 = trunc i32 %sub.ptr.sub.i159 to i16
  %transport_header.i161 = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 15, i32 0, i32 19
  %47 = ptrtoint ptr %transport_header.i161 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i160, ptr %transport_header.i161, align 2
  %conv.i164 = and i32 %sub.ptr.sub.i159, 65535
  %add.ptr.i165 = getelementptr i8, ptr %46, i32 %conv.i164
  %48 = ptrtoint ptr %add.ptr.i165 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %add.ptr.i165, align 4
  %conv24 = trunc i32 %assert to i8
  %im6_msgtype25 = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i165, i32 0, i32 1
  %49 = ptrtoint ptr %im6_msgtype25 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv24, ptr %im6_msgtype25, align 1
  %im6_mif26 = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i165, i32 0, i32 2
  %50 = ptrtoint ptr %im6_mif26 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %mifi, ptr %im6_mif26, align 2
  %im6_pad27 = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i165, i32 0, i32 3
  %51 = ptrtoint ptr %im6_pad27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %im6_pad27, align 4
  %im6_src28 = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i165, i32 0, i32 4
  %52 = ptrtoint ptr %head.i.i150 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i150, align 8
  %54 = ptrtoint ptr %network_header.i.i151 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i151, align 4
  %conv.i.i168 = zext i16 %55 to i32
  %add.ptr.i.i169 = getelementptr i8, ptr %53, i32 %conv.i.i168
  %saddr30 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i169, i32 0, i32 5
  %56 = call ptr @memcpy(ptr %im6_src28, ptr %saddr30, i32 16)
  %im6_dst31 = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i165, i32 0, i32 5
  %57 = load ptr, ptr %head.i.i150, align 8
  %58 = load i16, ptr %network_header.i.i151, align 4
  %conv.i.i172 = zext i16 %58 to i32
  %add.ptr.i.i173 = getelementptr i8, ptr %57, i32 %conv.i.i172
  %daddr33 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i173, i32 0, i32 6
  %59 = call ptr @memcpy(ptr %im6_dst31, ptr %daddr33, i32 16)
  %60 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i174 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i174, label %if.else18.skb_dst.exit_crit_edge, label %land.lhs.true.i176

if.else18.skb_dst.exit_crit_edge:                 ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.lhs.true.i176:                               ; preds = %if.else18
  %call.i175 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool1.not.i = icmp eq i32 %call.i175, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i176.skb_dst.exit_crit_edge

land.lhs.true.i176.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i176
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !193

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i176.skb_dst.exit_crit_edge, %if.else18.skb_dst.exit_crit_edge
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 8
  %and25.i = and i32 %64, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i177 = icmp eq i32 %and25.i, 0
  br i1 %tobool.not.i177, label %skb_dst.exit.dst_clone.exit_crit_edge, label %if.then.i178

skb_dst.exit.dst_clone.exit_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_clone.exit

if.then.i178:                                     ; preds = %skb_dst.exit
  %65 = inttoptr i32 %and25.i to ptr
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %65, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !221
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #16
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #16, !srcloc !222
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !223
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 231, i32 noundef 9, ptr noundef null) #16
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %skb_dst.exit.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 15, i32 0, i32 3
  %67 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i177, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %68 = getelementptr inbounds %struct.sk_buff, ptr %call.i120, i32 0, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and25.i, ptr %68, align 8
  br label %if.end40

if.end40:                                         ; preds = %dst_clone.exit, %if.then6
  %ip_summed218 = phi ptr [ %ip_summed213, %dst_clone.exit ], [ %ip_summed, %if.then6 ]
  %skb.0211 = phi ptr [ %call.i120, %dst_clone.exit ], [ %call1, %if.then6 ]
  %70 = ptrtoint ptr %ip_summed218 to i32
  call void @__asan_load2_noabort(i32 %70)
  %storemerge.in.in = load i16, ptr %ip_summed218, align 8
  %storemerge.in = and i16 %storemerge.in.in, -1537
  %storemerge = or i16 %storemerge.in, 512
  store i16 %storemerge, ptr %ip_summed218, align 8
  %71 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end40.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end40.rcu_read_lock.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end40
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end40.rcu_read_lock.exit_crit_edge
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 4
  %75 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %mroute_sk, align 4
  %call42 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end51_crit_edge

rcu_read_lock.exit.do.end51_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end51

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call44 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.do.end51_crit_edge, label %land.lhs.true46

land.lhs.true.do.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end51

land.lhs.true46:                                  ; preds = %land.lhs.true
  %.b119 = load i1, ptr @ip6mr_cache_report.__warned, align 1
  br i1 %.b119, label %land.lhs.true46.do.end51_crit_edge, label %if.then48

land.lhs.true46.do.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end51

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ip6mr_cache_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1110, ptr noundef nonnull @.str.21) #16
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %land.lhs.true46.do.end51_crit_edge, %land.lhs.true.do.end51_crit_edge, %rcu_read_lock.exit.do.end51_crit_edge
  %tobool53.not = icmp eq ptr %76, null
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.end51
  %call.i180 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i180, label %if.then54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i183

if.then54.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i183:                               ; preds = %if.then54
  %call1.i181 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i181)
  %tobool.not.i182 = icmp eq i32 %call1.i181, 0
  br i1 %tobool.not.i182, label %land.lhs.true.i183.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i185

land.lhs.true.i183.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i183
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i185:                              ; preds = %land.lhs.true.i183
  %.b4.i184 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i184, label %land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge, label %if.then.i186

land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i186:                                     ; preds = %land.lhs.true2.i185
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i186, %land.lhs.true2.i185.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i183.rcu_read_unlock.exit_crit_edge, %if.then54.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %77 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i187 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i187 to ptr
  %preempt_count.i.i.i.i188 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i188, align 4
  %sub.i.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i188, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0211, i32 noundef 0) #16
  br label %cleanup

if.end55:                                         ; preds = %do.end51
  %net1.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %81 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net1.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0211, i32 0, i32 6
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %84, -40
  %head.i.i190 = getelementptr inbounds %struct.sk_buff, ptr %skb.0211, i32 0, i32 18
  %85 = ptrtoint ptr %head.i.i190 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i190, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0211, i32 0, i32 15, i32 0, i32 19
  %87 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i191 = zext i16 %88 to i32
  %add.ptr.i.i192 = getelementptr i8, ptr %86, i32 %conv.i.i191
  %89 = add i32 %84, 27
  %add8.i.i = and i32 %89, -4
  %sub.i.i.i193 = add i32 %add8.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i193, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool.not.i194 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i194, label %if.end55.errout.i_crit_edge, label %if.end.i

if.end55.errout.i_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.i

if.end.i:                                         ; preds = %if.end55
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.i.errout.i_crit_edge

if.end.i.errout.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.i

skb_tailroom.exit.i.i:                            ; preds = %if.end.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %92 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %94 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.errout.i_crit_edge, label %nlmsg_put.exit.i, !prof !193

skb_tailroom.exit.i.i.errout.i_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 96, i32 noundef 1, i32 noundef 0) #16
  %tobool6.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool6.not.i, label %nlmsg_put.exit.i.errout.i_crit_edge, label %if.end8.i

nlmsg_put.exit.i.errout.i_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %errout.i

if.end8.i:                                        ; preds = %nlmsg_put.exit.i
  %add.ptr.i58.i = getelementptr i8, ptr %call3.i.i, i32 16
  %96 = ptrtoint ptr %add.ptr.i58.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -127, ptr %add.ptr.i58.i, align 1
  %im6_msgtype.i = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i.i192, i32 0, i32 1
  %97 = ptrtoint ptr %im6_msgtype.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %im6_msgtype.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #16
  %99 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then.i.i.i_crit_edge

if.end8.i.if.then.i.i.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %im6_mif.i = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i.i192, i32 0, i32 2
  %100 = ptrtoint ptr %im6_mif.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %im6_mif.i, align 2
  %conv.i195 = zext i16 %101 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59.i) #16
  %102 = ptrtoint ptr %tmp.i59.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv.i195, ptr %tmp.i59.i, align 4
  %call.i60.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i59.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool13.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %im6_src.i = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i.i192, i32 0, i32 4
  %call.i61.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 16, ptr noundef %im6_src.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool16.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.if.then.i.i.i_crit_edge

lor.lhs.false14.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %im6_dst.i = getelementptr inbounds %struct.mrt6msg, ptr %add.ptr.i.i192, i32 0, i32 5
  %call.i62.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 16, ptr noundef %im6_dst.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool19.not.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false17.i.if.then.i.i.i_crit_edge

lor.lhs.false17.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end21.i:                                       ; preds = %lor.lhs.false17.i
  %call22.i = call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef %sub.i) #16
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.end21.i.if.then.i.i.i_crit_edge, label %lor.lhs.false24.i

if.end21.i.if.then.i.i.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

lor.lhs.false24.i:                                ; preds = %if.end21.i
  %add.ptr.i63.i = getelementptr i8, ptr %call22.i, i32 4
  %call26.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.0211, i32 noundef 40, ptr noundef %add.ptr.i63.i, i32 noundef %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %lor.lhs.false24.i.if.then.i.i.i_crit_edge

lor.lhs.false24.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end29.i:                                       ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #18
  %103 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %105 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @rtnl_notify(ptr noundef nonnull %call.i.i.i, ptr noundef %82, i32 noundef 0, i32 noundef 31, ptr noundef null, i32 noundef 2592) #16
  br label %mrt6msg_netlink_event.exit

if.then.i.i.i:                                    ; preds = %lor.lhs.false24.i.if.then.i.i.i_crit_edge, %if.end21.i.if.then.i.i.i_crit_edge, %lor.lhs.false17.i.if.then.i.i.i_crit_edge, %lor.lhs.false14.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end8.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %107, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !193

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %108 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i65.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i66.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i67.i = sub i32 %sub.ptr.lhs.cast.i.i65.i, %sub.ptr.rhs.cast.i.i66.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i67.i) #16
  br label %errout.i

errout.i:                                         ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.errout.i_crit_edge, %skb_tailroom.exit.i.i.errout.i_crit_edge, %if.end.i.errout.i_crit_edge, %if.end55.errout.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i.i.i, i32 noundef 0) #16
  call void @rtnl_set_sk_err(ptr noundef %82, i32 noundef 31, i32 noundef -105) #16
  br label %mrt6msg_netlink_event.exit

mrt6msg_netlink_event.exit:                       ; preds = %errout.i, %if.end29.i
  %call56 = call i32 @sock_queue_rcv_skb(ptr noundef nonnull %76, ptr noundef nonnull %skb.0211) #16
  %call.i196 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i196, label %mrt6msg_netlink_event.exit.rcu_read_unlock.exit207_crit_edge, label %land.lhs.true.i199

mrt6msg_netlink_event.exit.rcu_read_unlock.exit207_crit_edge: ; preds = %mrt6msg_netlink_event.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit207

land.lhs.true.i199:                               ; preds = %mrt6msg_netlink_event.exit
  %call1.i197 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool.not.i198, label %land.lhs.true.i199.rcu_read_unlock.exit207_crit_edge, label %land.lhs.true2.i201

land.lhs.true.i199.rcu_read_unlock.exit207_crit_edge: ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit207

land.lhs.true2.i201:                              ; preds = %land.lhs.true.i199
  %.b4.i200 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i200, label %land.lhs.true2.i201.rcu_read_unlock.exit207_crit_edge, label %if.then.i202

land.lhs.true2.i201.rcu_read_unlock.exit207_crit_edge: ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit207

if.then.i202:                                     ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit207

rcu_read_unlock.exit207:                          ; preds = %if.then.i202, %land.lhs.true2.i201.rcu_read_unlock.exit207_crit_edge, %land.lhs.true.i199.rcu_read_unlock.exit207_crit_edge, %mrt6msg_netlink_event.exit.rcu_read_unlock.exit207_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %110 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i203 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i203 to ptr
  %preempt_count.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i204, align 4
  %sub.i.i.i205 = add i32 %113, -1
  store volatile i32 %sub.i.i.i205, ptr %preempt_count.i.i.i.i204, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.body60, label %rcu_read_unlock.exit207.cleanup_crit_edge

rcu_read_unlock.exit207.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit207
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body60:                                        ; preds = %rcu_read_unlock.exit207
  %call61 = call i32 @net_ratelimit() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.do.end71_crit_edge, label %do.end66

do.body60.do.end71_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end71

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #19
  br label %do.end71

do.end71:                                         ; preds = %do.end66, %do.body60.do.end71_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.0211, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %rcu_read_unlock.exit207.cleanup_crit_edge, %rcu_read_unlock.exit, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ -105, %if.end.cleanup_crit_edge ], [ %call56, %do.end71 ], [ %call56, %rcu_read_unlock.exit207.cleanup_crit_edge ], [ -105, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_parent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_table_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_expire_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @mfc_unres_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mfc_unres_queue = getelementptr i8, ptr %t, i32 48
  %1 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i.not = icmp eq ptr %2, %mfc_unres_queue
  br i1 %cmp.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ipmr_do_expire_process(ptr noundef %add.ptr)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mfc_unres_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip6mr_new_table_set(ptr noundef %mrt, ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mr6_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 30, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mrt, ptr noundef %1, ptr noundef %mr6_tables) #16
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail_rcu.exit_crit_edge

entry.list_add_tail_rcu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %mrt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mr6_tables, ptr %mrt, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %mrt, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !199
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mrt, ptr %1, align 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mrt, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %entry.list_add_tail_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmr_do_expire_process(ptr noundef %mrt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %1 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp.not44 = icmp eq ptr %2, %mfc_unres_queue
  br i1 %cmp.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %expires.047 = phi i32 [ %expires.2, %for.inc.for.body_crit_edge ], [ 1000, %entry.for.body_crit_edge ]
  %.pn.in45 = phi ptr [ %.pn49, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %c.048 = getelementptr i8, ptr %.pn.in45, i32 -80
  %3 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn49 = load ptr, ptr %.pn.in45, align 4
  %mfc_un = getelementptr i8, ptr %.pn.in45, i32 -64
  %4 = ptrtoint ptr %mfc_un to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mfc_un, align 4
  %sub = sub i32 %0, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub12 = sub i32 %5, %0
  %6 = tail call i32 @llvm.umin.i32(i32 %sub12, i32 %expires.047)
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del.exit_crit_edge

if.end15.list_del.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end15.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @mr6_netlink_event(ptr noundef %mrt, ptr noundef %c.048, i32 noundef 25)
  tail call fastcc void @ip6mr_destroy_unres(ptr noundef %mrt, ptr noundef %c.048)
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then
  %expires.2 = phi i32 [ %6, %if.then ], [ %expires.047, %list_del.exit ]
  %cmp.not = icmp eq ptr %.pn49, %mfc_unres_queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %expires.0.lcssa = phi i32 [ 1000, %entry.for.end_crit_edge ], [ %expires.2, %for.inc.for.end_crit_edge ]
  %15 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i.not = icmp eq ptr %16, %mfc_unres_queue
  br i1 %cmp.i.not, label %for.end.if.end25_crit_edge, label %if.then23

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %ipmr_expire_timer = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, %expires.0.lcssa
  %call24 = tail call i32 @mod_timer(ptr noundef %ipmr_expire_timer, i32 noundef %add) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_any_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_any(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6mr_forward2(ptr noundef %net, ptr noundef %mrt, ptr noundef %skb, i32 noundef %vifi) unnamed_addr #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  %.compoundliteral.sroa.3 = alloca [52 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #16
  %0 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.out_free_crit_edge, label %if.end

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end:                                           ; preds = %entry
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not = icmp eq i16 %5, 0
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pkt_out = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 5
  %6 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt_out, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %pkt_out, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %bytes_out = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 3
  %10 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes_out, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %bytes_out, align 4
  %12 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 3
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bytes, align 4
  %add6 = add i32 %14, %12
  store i32 %add6, ptr %tx_bytes, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets, align 4
  %inc9 = add i32 %18, 1
  store i32 %inc9, ptr %tx_packets, align 4
  %conv10 = trunc i32 %vifi to i16
  %call = tail call fastcc i32 @ip6mr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %conv10, i32 noundef 3)
  br label %out_free

if.end11:                                         ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %23 = call ptr @memset(ptr %.compoundliteral.sroa.3, i32 0, i32 36)
  %link = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 9
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link, align 4
  %daddr13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %.compoundliteral.sroa.3.40.daddr.sroa_idx = getelementptr inbounds i8, ptr %.compoundliteral.sroa.3, i32 36
  %26 = call ptr @memcpy(ptr %.compoundliteral.sroa.3.40.daddr.sroa_idx, ptr %daddr13, i32 16)
  %27 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %fl6, align 8
  %.compoundliteral.sroa.3.0.fl6.sroa_idx = getelementptr inbounds i8, ptr %fl6, i32 4
  %28 = call ptr @memcpy(ptr %.compoundliteral.sroa.3.0.fl6.sroa_idx, ptr %.compoundliteral.sroa.3, i32 52)
  %.compoundliteral.sroa.4.0.fl6.sroa_idx = getelementptr inbounds i8, ptr %fl6, i32 56
  %29 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.fl6.sroa_idx, i32 0, i32 32)
  %call.i = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #16
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool15.not = icmp eq i16 %31, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @dst_release(ptr noundef %call.i) #16
  br label %out_free

if.end17:                                         ; preds = %if.end11
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp ne i32 %34, 0
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i.i, label %if.end17.skb_dst_drop.exit_crit_edge

if.end17.skb_dst_drop.exit_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %and1.i.i = and i32 %34, -2
  %35 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %35) #16
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end17.skb_dst_drop.exit_crit_edge
  %tobool.not.i1 = icmp eq ptr %call.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %36 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i1, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %37 = ptrtoint ptr %call.i to i32
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %32, align 8
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %41 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 8
  %pkt_out19 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 5
  %43 = ptrtoint ptr %pkt_out19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pkt_out19, align 4
  %inc20 = add i32 %44, 1
  store i32 %inc20, ptr %pkt_out19, align 4
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len21, align 4
  %bytes_out22 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 3
  %47 = ptrtoint ptr %bytes_out22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes_out22, align 4
  %add23 = add i32 %48, %46
  store i32 %add23, ptr %bytes_out22, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 19
  %49 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hard_header_len, align 2
  %conv24 = zext i16 %50 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 21
  %51 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %needed_headroom, align 8
  %conv25 = zext i16 %52 to i32
  %add26 = add nuw nsw i32 %conv25, %conv24
  %and27 = and i32 %add26, 131056
  %add29 = add nuw nsw i32 %and27, 56
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %53 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i2 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i2, label %skb_dst_drop.exit.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

skb_dst_drop.exit.skb_cloned.exit.i_crit_edge:    ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %54 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #16
  %56 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i3 = and i32 %57, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i3)
  %cmp.i.not.i = icmp eq i32 %and.i.i3, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %skb_dst_drop.exit.skb_cloned.exit.i_crit_edge
  %58 = phi i1 [ true, %skb_dst_drop.exit.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i, align 4
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add29)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add29
  %or.cond.i.i = and i1 %58, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end33_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end33_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %63 = call i32 @llvm.usub.sat.i32(i32 %add29, i32 %sub.ptr.sub.i.i.i) #16
  %add.i.i = add nuw nsw i32 %63, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool31.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool31.not, label %skb_cow.exit.if.end33_crit_edge, label %skb_cow.exit.out_free_crit_edge

skb_cow.exit.out_free_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

skb_cow.exit.if.end33_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.end33:                                         ; preds = %skb_cow.exit.if.end33_crit_edge, %skb_cloned.exit.i.if.end33_crit_edge
  %64 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i, align 8
  %66 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i6 = zext i16 %67 to i32
  %add.ptr.i.i7 = getelementptr i8, ptr %65, i32 %conv.i.i6
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i7, i32 0, i32 4
  %68 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hop_limit, align 1
  %dec = add i8 %69, -1
  store i8 %dec, ptr %hop_limit, align 1
  %flags35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %70 = ptrtoint ptr %flags35 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags35, align 8
  %72 = or i16 %71, 2
  store i16 %72, ptr %flags35, align 8
  %73 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %41, align 8
  %call.i8 = call fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %74, ptr noundef %40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.i = icmp eq i32 %call.i8, 1
  br i1 %cmp.i, label %if.then.i9, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i9:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call i32 @ip6mr_forward2_finish(ptr noundef %net, ptr noundef null, ptr noundef %skb) #16
  br label %cleanup

out_free:                                         ; preds = %skb_cow.exit.out_free_crit_edge, %if.then16, %if.then3, %entry.out_free_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then.i9, %if.end33.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6mr_forward2_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !193

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %skb_dst.exit.do.body14_crit_edge, label %do.body, !prof !193

skb_dst.exit.do.body14_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

do.body:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 33, i32 1
  %8 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipv6, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i185 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i185 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx7 = getelementptr [37 x i64], ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx7, align 8
  %add8 = add i64 %19, 1
  store i64 %add8, ptr %arrayidx7, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1, i32 0, i32 1
  %20 = tail call ptr @llvm.returnaddress(i32 0) #16
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %21) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !224
  %22 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body14

do.body14:                                        ; preds = %do.body, %skb_dst.exit.do.body14_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipv6_statistics, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i186 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i186 to ptr
  %cpu25 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu25, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %32, %26
  %33 = inttoptr i32 %add27 to ptr
  %syncp28 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp28)
  %arrayidx30 = getelementptr [37 x i64], ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %35, 1
  store i64 %add31, ptr %arrayidx30, align 8
  %dep_map.i.i187 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1, i32 0, i32 1
  %36 = tail call ptr @llvm.returnaddress(i32 0) #16
  %37 = ptrtoint ptr %36 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i187, i32 noundef %37) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !224
  %38 = ptrtoint ptr %syncp28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syncp28, align 4
  %inc.i.i.i188 = add i32 %39, 1
  store i32 %inc.i.i.i188, ptr %syncp28, align 4
  tail call fastcc void @local_bh_enable()
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %0, align 8
  %and.i189 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i190, label %do.body14.skb_dst.exit199_crit_edge, label %land.lhs.true.i193

do.body14.skb_dst.exit199_crit_edge:              ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit199

land.lhs.true.i193:                               ; preds = %do.body14
  %call.i191 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool1.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool1.not.i192, label %land.rhs.i196, label %land.lhs.true.i193.skb_dst.exit199_crit_edge

land.lhs.true.i193.skb_dst.exit199_crit_edge:     ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit199

land.rhs.i196:                                    ; preds = %land.lhs.true.i193
  %call2.i194 = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i194)
  %tobool3.not.i195 = icmp eq i32 %call2.i194, 0
  br i1 %tobool3.not.i195, label %do.end.i197, label %land.rhs.i196.skb_dst.exit199_crit_edge, !prof !193

land.rhs.i196.skb_dst.exit199_crit_edge:          ; preds = %land.rhs.i196
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_dst.exit199

do.end.i197:                                      ; preds = %land.rhs.i196
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %skb_dst.exit199

skb_dst.exit199:                                  ; preds = %do.end.i197, %land.rhs.i196.skb_dst.exit199_crit_edge, %land.lhs.true.i193.skb_dst.exit199_crit_edge, %do.body14.skb_dst.exit199_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 8
  %and25.i198 = and i32 %43, -2
  %44 = inttoptr i32 %and25.i198 to ptr
  %rt6i_idev.i200 = getelementptr inbounds %struct.rt6_info, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %rt6i_idev.i200 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rt6i_idev.i200, align 4
  %cmp40.not = icmp eq ptr %46, null
  br i1 %cmp40.not, label %skb_dst.exit199.do.body109_crit_edge, label %do.body49, !prof !193

skb_dst.exit199.do.body109_crit_edge:             ; preds = %skb_dst.exit199
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body109

do.body49:                                        ; preds = %skb_dst.exit199
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %conv61 = zext i32 %49 to i64
  %ipv669 = getelementptr inbounds %struct.inet6_dev, ptr %46, i32 0, i32 33, i32 1
  %50 = ptrtoint ptr %ipv669 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ipv669, align 4
  %arrayidx71 = getelementptr [37 x i64], ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx71 to i32
  %53 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu25, align 4
  %arrayidx75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %56, %52
  %57 = inttoptr i32 %add76 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %add77 = add i64 %59, %conv61
  store i64 %add77, ptr %57, align 8
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool88.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool88.not, label %if.then97, label %do.body49.do.end100_crit_edge, !prof !193

do.body49.do.end100_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end100

if.then97:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %do.body49.do.end100_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #16, !srcloc !194
  br label %do.body109

do.body109:                                       ; preds = %do.end100, %skb_dst.exit199.do.body109_crit_edge
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !191
  %len125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len125, align 4
  %conv126 = zext i32 %63 to i64
  %64 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipv6_statistics, align 4
  %arrayidx136 = getelementptr [37 x i64], ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %arrayidx136 to i32
  %67 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu25, align 4
  %arrayidx140 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx140, align 4
  %add141 = add i32 %70, %66
  %71 = inttoptr i32 %add141 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %71, align 8
  %add142 = add i64 %73, %conv126
  store i64 %add142, ptr %71, align 8
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !192
  %and.i.i201 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i201)
  %tobool153.not = icmp eq i32 %and.i.i201, 0
  br i1 %tobool153.not, label %if.then162, label %do.body109.do.end165_crit_edge, !prof !193

do.body109.do.end165_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end165

if.then162:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end165

do.end165:                                        ; preds = %if.then162, %do.body109.do.end165_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #16, !srcloc !194
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %0, align 8
  %and.i.i202 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i202)
  %tobool.not.i.i = icmp eq i32 %and.i.i202, 0
  br i1 %tobool.not.i.i, label %do.end165.dst_output.exit_crit_edge, label %land.lhs.true.i.i

do.end165.dst_output.exit_crit_edge:              ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %do.end165
  %call.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !193

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %do.end165.dst_output.exit_crit_edge
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %78, -2
  %79 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %81(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #16
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev) unnamed_addr #5 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10, i32 2), ptr blockaddress(@nf_hook, %if.end)) #16
          to label %cleanup [label %if.end], !srcloc !225

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 696, ptr noundef nonnull @.str.44) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.48, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @nf_hook.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 232, ptr noundef nonnull @.str.21) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 2, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ip6mr_forward2_finish, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #16
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 724, ptr noundef nonnull @.str.45) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %13 = call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !226
  %5 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !227
  %14 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !228
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !229
  %33 = tail call i32 @llvm.read_register.i32(metadata !170) #16
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !181

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !230
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_table_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ip6mr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip6mr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_rtm_dumproute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !114, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !133, !134, !136, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__ksymtab_ip6mr_rule_default, !1, !"__ksymtab_ip6mr_rule_default", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6mr.c", i32 283, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6mr.c", i32 1354, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6mr.c", i32 1370, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ip6_mr_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ip6_mr_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/ipv6/ip6mr.c", i32 1581, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/ipv6/ip6mr.c", i32 1582, i32 13}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_mroute6_is_socket, !17, !"__ksymtab_mroute6_is_socket", i1 false, i1 false}
!17 = !{!"../net/ipv6/ip6mr.c", i32 1620, i32 1}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/ipv6/ip6mr.c", i32 1672, i32 17}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/ipv6/ip6mr.c", i32 1708, i32 10}
!22 = !{ptr @mrt_cachep, !23, !"mrt_cachep", i1 false, i1 false}
!23 = !{!"../net/ipv6/ip6mr.c", i32 80, i32 27}
!24 = !{ptr @ip6mr_net_ops, !25, !"ip6mr_net_ops", i1 false, i1 false}
!25 = !{!"../net/ipv6/ip6mr.c", i32 1345, i32 33}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/ip6mr.c", i32 1314, i32 7}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/ip6mr.c", i32 1317, i32 7}
!30 = !{ptr @ip6mr_notifier_ops_template, !31, !"ip6mr_notifier_ops_template", i1 false, i1 false}
!31 = !{!"../net/ipv6/ip6mr.c", i32 1271, i32 38}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../net/ipv6/ip6mr.c", i32 1255, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ip6mr_rules_ops_template, !36, !"ip6mr_rules_ops_template", i1 false, i1 false}
!36 = !{!"../net/ipv6/ip6mr.c", i32 207, i32 51}
!37 = !{ptr @ip6mr_vif_seq_ops, !38, !"ip6mr_vif_seq_ops", i1 false, i1 false}
!38 = !{!"../net/ipv6/ip6mr.c", i32 447, i32 36}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv6/ip6mr.c", i32 432, i32 5}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv6/ip6mr.c", i32 435, i32 50}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ipv6/ip6mr.c", i32 438, i32 7}
!45 = !{ptr @ipmr_mfc_seq_ops, !46, !"ipmr_mfc_seq_ops", i1 false, i1 false}
!46 = !{!"../net/ipv6/ip6mr.c", i32 508, i32 36}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv6/ip6mr.c", i32 70, i32 8}
!49 = !{ptr @mfc_unres_lock, !48, !"mfc_unres_lock", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv6/ip6mr.c", i32 472, i32 5}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv6/ip6mr.c", i32 480, i32 19}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv6/ip6mr.c", i32 485, i32 20}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv6/ip6mr.c", i32 494, i32 10}
!58 = !{ptr @ip6_mr_notifier, !59, !"ip6_mr_notifier", i1 false, i1 false}
!59 = !{!"../net/ipv6/ip6mr.c", i32 1267, i32 30}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv6/ip6mr.c", i32 1242, i32 2}
!62 = !{ptr @pim6_protocol, !63, !"pim6_protocol", i1 false, i1 false}
!63 = !{!"../net/ipv6/ip6mr.c", i32 582, i32 36}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv6/ip6mr.c", i32 65, i32 8}
!66 = !{ptr @mrt_lock, !65, !"mrt_lock", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!85 = !{ptr @ip6mr_rht_params, !86, !"ip6mr_rht_params", i1 false, i1 false}
!86 = !{!"../net/ipv6/ip6mr.c", i32 349, i32 39}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/mroute_base.h", i32 208, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/net/netlink.h", i32 991, i32 3}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/ipv6/ip6mr.c", i32 125, i32 2}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/ipv6/ip6mr.c", i32 1551, i32 6}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/ipv6/ip6mr.c", i32 645, i32 17}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/ipv6/ip6mr.c", i32 647, i32 17}
!100 = !{ptr @reg_vif_netdev_ops, !101, !"reg_vif_netdev_ops", i1 false, i1 false}
!101 = !{!"../net/ipv6/ip6mr.c", i32 624, i32 36}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/ipv6/ip6mr.c", i32 1110, i32 15}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/ipv6/ip6mr.c", i32 1123, i32 3}
!106 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ip6mr_cache_report._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ip6mr_cache_report._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/net/dst.h", i32 231, i32 2}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!113 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/linux/mroute_base.h", i32 89, i32 2}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ipv6/ip6mr.c", i32 1457, i32 3}
!118 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ip6mr_mfc_add._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ip6mr_mfc_add._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!127 = !{ptr @ip6mr_mr_table_ops, !128, !"ip6mr_mr_table_ops", i1 false, i1 false}
!128 = !{!"../net/ipv6/ip6mr.c", i32 371, i32 28}
!129 = !{ptr @ip6mr_mr_table_ops_cmparg_any, !130, !"ip6mr_mr_table_ops_cmparg_any", i1 false, i1 false}
!130 = !{!"../net/ipv6/ip6mr.c", i32 366, i32 34}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!133 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!140 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!144 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @skb_queue_head_init.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!147 = !{ptr @.str.46, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!150 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!165 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.54, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!168 = !{ptr @ip6mr_rtm_dumproute.__msg, !169, !"__msg", i1 false, i1 false}
!169 = !{!"../net/ipv6/ip6mr.c", i32 2507, i32 4}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2148591115}
!183 = !{i64 2148505579, i64 2148505611, i64 2148505640, i64 2148505674, i64 2148505705, i64 2148505728}
!184 = !{i64 2149626838}
!185 = !{!"auto-init"}
!186 = !{i64 2159403405}
!187 = !{i64 2150556284, i64 2150556309}
!188 = !{i64 3051839}
!189 = !{i64 3052036}
!190 = !{i64 2150537269}
!191 = !{i64 895842, i64 895903}
!192 = !{i64 898574}
!193 = !{!"branch_weights", i32 1, i32 2000}
!194 = !{i64 898859}
!195 = !{i64 2149318851}
!196 = !{i64 2149319117}
!197 = !{i64 2156166091}
!198 = !{i64 2148501584, i64 2148501610, i64 2148501639, i64 2148501673, i64 2148501704, i64 2148501727}
!199 = !{i64 2149344243}
!200 = !{i64 2148504049, i64 2148504075, i64 2148504104, i64 2148504138, i64 2148504169, i64 2148504192}
!201 = !{i64 2159469510, i64 2159469790, i64 2159470124, i64 2159470458}
!202 = !{i64 2159480625, i64 2159480905, i64 2159481239, i64 2159481573}
!203 = !{i64 2150556965, i64 2150556990}
!204 = !{i64 951366, i64 951383}
!205 = !{i64 6763274}
!206 = !{i64 2156197126}
!207 = !{i64 2151931807}
!208 = !{!"branch_weights", i32 2146410443, i32 1073205}
!209 = !{i64 2148510442, i64 2148510474, i64 2148510503, i64 2148510537, i64 2148510568, i64 2148510591}
!210 = !{i64 2148599523}
!211 = !{i64 2151931967}
!212 = !{i64 2151932244}
!213 = !{i64 2151932086}
!214 = !{i64 2151932449}
!215 = !{i64 2151933512, i64 2151934004, i64 2151933549, i64 2151933605, i64 2151933639, i64 2151933663, i64 2151933704, i64 2151933725, i64 2151933753, i64 2151933787}
!216 = !{i64 2148598410}
!217 = !{i64 2148508829, i64 2148508861, i64 2148508890, i64 2148508924, i64 2148508955, i64 2148508978}
!218 = !{i64 2151934907}
!219 = !{i64 2156126884}
!220 = !{i64 2156129183}
!221 = !{i64 2148501003}
!222 = !{i64 987603, i64 987628, i64 987650, i64 987666, i64 987678, i64 987698, i64 987722, i64 987738, i64 987750}
!223 = !{i64 2148501191}
!224 = !{i64 2150247032}
!225 = !{i64 2148314977, i64 2148314982, i64 2148314995, i64 2148315039, i64 2148315073, i64 2148315094}
!226 = !{i64 2150138634}
!227 = !{i64 2150143568}
!228 = !{i64 2150165286}
!229 = !{i64 2150170180}
!230 = !{i64 2150246707}
