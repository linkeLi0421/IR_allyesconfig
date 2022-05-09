; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter.c_pt.bc'
source_filename = "../net/ipv4/netfilter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_route_me_harder\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_route_me_harder\09\09\09\09"
module asm "\09.long\09__crc_ip_route_me_harder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_route_me_harder:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_route_me_harder\22\09\09\09\09\09"
module asm "__kstrtabns_ip_route_me_harder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ip_route\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ip_route\09\09\09\09"
module asm "\09.long\09__crc_nf_ip_route\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ip_route:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ip_route\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ip_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.151, i16 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.153 }
%union.anon.153 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.155, i16 }
%struct.anon.155 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.156 }
%union.anon.156 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.133, [0 x i32], %union.anon.134, i16, i16, %union.anon.135, %struct.refcount_struct, [0 x i32], %union.anon.136 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { %struct.hlist_node }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.137, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.138, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.139, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.137 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.106 }
%union.anon.106 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.anon.107 = type { i16, i16 }
%struct.anon.154 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.114 = type { ptr }
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

@__kstrtab_ip_route_me_harder = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_route_me_harder = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_route_me_harder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_route_me_harder to i32), ptr @__kstrtab_ip_route_me_harder, ptr @__kstrtabns_ip_route_me_harder }, section "___ksymtab+ip_route_me_harder", align 4
@__kstrtab_nf_ip_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ip_route = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ip_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ip_route to i32), ptr @__kstrtab_nf_ip_route, ptr @__kstrtabns_nf_ip_route }, section "___ksymtab_gpl+nf_ip_route", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@___asan_gen_ = private constant [24 x i8] c"../net/ipv4/netfilter.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 1011, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 695, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 723, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ip_route_me_harder, ptr @__ksymtab_nf_ip_route, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_route_me_harder(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, i32 noundef %addr_type) #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  %flkeys = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #5
  %4 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %saddr1 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %saddr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr1, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !23

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %flkeys) #5
  %15 = call ptr @memset(ptr %flkeys, i32 255, i32 72)
  %tobool.not.i128 = icmp eq ptr %sk, null
  br i1 %tobool.not.i128, label %skb_dst.exit.cond.end_crit_edge, label %land.lhs.true.i129

skb_dst.exit.cond.end_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true.i129:                               ; preds = %skb_dst.exit
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %16 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %17)
  %cmp.i = icmp eq i8 %17, 12
  br i1 %cmp.i, label %sk_to_full_sk.exit, label %land.lhs.true.i129.cond.true_crit_edge

land.lhs.true.i129.cond.true_crit_edge:           ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true

sk_to_full_sk.exit:                               ; preds = %land.lhs.true.i129
  %18 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %sk_to_full_sk.exit.cond.end_crit_edge, label %sk_to_full_sk.exit.cond.true_crit_edge

sk_to_full_sk.exit.cond.true_crit_edge:           ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true

sk_to_full_sk.exit.cond.end_crit_edge:            ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %sk_to_full_sk.exit.cond.true_crit_edge, %land.lhs.true.i129.cond.true_crit_edge
  %sk.addr.0.i217 = phi ptr [ %20, %sk_to_full_sk.exit.cond.true_crit_edge ], [ %sk, %land.lhs.true.i129.cond.true_crit_edge ]
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk.addr.0.i217, i32 0, i32 12
  %21 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %transparent.i, align 8
  %22 = and i16 %bf.load.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %23 = icmp ne i16 %22, 0
  %flags.0.i = zext i1 %23 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sk_to_full_sk.exit.cond.end_crit_edge, %skb_dst.exit.cond.end_crit_edge
  %tobool.not213 = phi i1 [ false, %cond.true ], [ true, %sk_to_full_sk.exit.cond.end_crit_edge ], [ true, %skb_dst.exit.cond.end_crit_edge ]
  %sk.addr.0.i211 = phi ptr [ %sk.addr.0.i217, %cond.true ], [ null, %sk_to_full_sk.exit.cond.end_crit_edge ], [ null, %skb_dst.exit.cond.end_crit_edge ]
  %cond = phi i8 [ %flags.0.i, %cond.true ], [ 0, %sk_to_full_sk.exit.cond.end_crit_edge ], [ 0, %skb_dst.exit.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr_type)
  %cmp = icmp eq i32 %addr_type, 0
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef %14, i32 noundef %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %addr_type.addr.0 = phi i32 [ %call8, %if.then ], [ %addr_type, %cond.end.if.end_crit_edge ]
  %addr_type.addr.0.off = add i32 %addr_type.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_type.addr.0.off)
  %switch = icmp ult i32 %addr_type.addr.0.off, 2
  %spec.select = select i1 %switch, i32 %6, i32 0
  %spec.select127 = select i1 %switch, i8 1, i8 %cond
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daddr, align 4
  %daddr17 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %26 = ptrtoint ptr %daddr17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %daddr17, align 4
  %saddr18 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %27 = ptrtoint ptr %saddr18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %saddr18, align 8
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos, align 1
  %30 = and i8 %29, 30
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %31 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %flowic_tos, align 4
  br i1 %tobool.not213, label %cond.end24.thread, label %cond.end24

cond.end24.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %fl4, align 8
  br label %if.then30

cond.end24:                                       ; preds = %if.end
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i211, i32 0, i32 6
  %33 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %skc_bound_dev_if, align 4
  %35 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fl4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool29.not = icmp eq i32 %34, 0
  br i1 %tobool29.not, label %cond.end24.if.then30_crit_edge, label %cond.end24.if.end34_crit_edge

cond.end24.if.end34_crit_edge:                    ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

cond.end24.if.then30_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %cond.end24.if.then30_crit_edge, %cond.end24.thread
  %36 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !24
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i, label %if.then30.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then30.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then30
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then30.rcu_read_lock.exit.i_crit_edge
  %call.i130 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %14) #5
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %l3mdev_master_ifindex.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %l3mdev_master_ifindex.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %l3mdev_master_ifindex.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %l3mdev_master_ifindex.exit

l3mdev_master_ifindex.exit:                       ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.l3mdev_master_ifindex.exit_crit_edge, %land.lhs.true.i4.i.l3mdev_master_ifindex.exit_crit_edge, %rcu_read_lock.exit.i.l3mdev_master_ifindex.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %40 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i8.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %44 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i130, ptr %fl4, align 8
  br label %if.end34

if.end34:                                         ; preds = %l3mdev_master_ifindex.exit, %cond.end24.if.end34_crit_edge
  %45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %48 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %flowic_mark, align 8
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %49 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select127, ptr %flowic_flags, align 1
  %fib_rules_require_fldissect.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 13
  %50 = ptrtoint ptr %fib_rules_require_fldissect.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fib_rules_require_fldissect.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i131 = icmp eq i32 %51, 0
  br i1 %tobool.not.i131, label %if.end34.fib4_rules_early_flow_dissect.exit_crit_edge, label %if.end.i

if.end34.fib4_rules_early_flow_dissect.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %fib4_rules_early_flow_dissect.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %52 = call ptr @memset(ptr %flkeys, i32 0, i32 72)
  %call.i.i132 = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %flkeys, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #5
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %flkeys, i32 0, i32 6
  %53 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ports.i, align 4
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %sport.i = getelementptr inbounds %struct.anon.107, ptr %uli.i, i32 0, i32 1
  %55 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %sport.i, align 2
  %dst.i = getelementptr inbounds %struct.anon.154, ptr %ports.i, i32 0, i32 1
  %56 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dst.i, align 2
  %58 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %uli.i, align 8
  %ip_proto.i = getelementptr inbounds %struct.flow_keys, ptr %flkeys, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ip_proto.i, align 2
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %61 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %flowic_proto.i, align 2
  br label %fib4_rules_early_flow_dissect.exit

fib4_rules_early_flow_dissect.exit:               ; preds = %if.end.i, %if.end34.fib4_rules_early_flow_dissect.exit_crit_edge
  %call.i133 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4, ptr noundef null) #5
  %cmp.i134 = icmp ugt ptr %call.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then40, label %if.end42

if.then40:                                        ; preds = %fib4_rules_early_flow_dissect.exit
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %call.i133 to i32
  br label %cleanup81

if.end42:                                         ; preds = %fib4_rules_early_flow_dissect.exit
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i135 = icmp ne i32 %64, 0
  %and.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i135, %tobool.not.i.i136
  br i1 %or.cond, label %if.then.i.i138, label %if.end42.skb_dst_drop.exit_crit_edge

if.end42.skb_dst_drop.exit_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst_drop.exit

if.then.i.i138:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i.i = and i32 %64, -2
  %65 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %65) #5
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i138, %if.end42.skb_dst_drop.exit_crit_edge
  %tobool.not.i140 = icmp eq ptr %call.i133, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %66 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load.i141 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i141, 4096
  %bf.shl.i = select i1 %tobool.not.i140, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i141, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %67 = ptrtoint ptr %call.i133 to i32
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %7, align 8
  %and.i142 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %skb_dst_drop.exit.skb_dst.exit153_crit_edge, label %land.lhs.true.i146

skb_dst_drop.exit.skb_dst.exit153_crit_edge:      ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit153

land.lhs.true.i146:                               ; preds = %skb_dst_drop.exit
  %call.i144 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool1.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool1.not.i145, label %land.rhs.i149, label %land.lhs.true.i146.skb_dst.exit153_crit_edge

land.lhs.true.i146.skb_dst.exit153_crit_edge:     ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit153

land.rhs.i149:                                    ; preds = %land.lhs.true.i146
  %call2.i147 = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %tobool3.not.i148 = icmp eq i32 %call2.i147, 0
  br i1 %tobool3.not.i148, label %do.end.i150, label %land.rhs.i149.skb_dst.exit153_crit_edge, !prof !23

land.rhs.i149.skb_dst.exit153_crit_edge:          ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit153

do.end.i150:                                      ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit153

skb_dst.exit153:                                  ; preds = %do.end.i150, %land.rhs.i149.skb_dst.exit153_crit_edge, %land.lhs.true.i146.skb_dst.exit153_crit_edge, %skb_dst_drop.exit.skb_dst.exit153_crit_edge
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %7, align 8
  %and25.i151 = and i32 %70, -2
  %71 = inttoptr i32 %and25.i151 to ptr
  %error = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 15
  %72 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool44.not = icmp eq i16 %73, 0
  br i1 %tobool44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %skb_dst.exit153
  %and.i154 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %tobool.not.i155, label %if.then45.skb_dst.exit165_crit_edge, label %land.lhs.true.i158

if.then45.skb_dst.exit165_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit165

land.lhs.true.i158:                               ; preds = %if.then45
  %call.i156 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool1.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool1.not.i157, label %land.rhs.i161, label %land.lhs.true.i158.skb_dst.exit165_crit_edge

land.lhs.true.i158.skb_dst.exit165_crit_edge:     ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit165

land.rhs.i161:                                    ; preds = %land.lhs.true.i158
  %call2.i159 = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i159)
  %tobool3.not.i160 = icmp eq i32 %call2.i159, 0
  br i1 %tobool3.not.i160, label %do.end.i162, label %land.rhs.i161.skb_dst.exit165_crit_edge, !prof !23

land.rhs.i161.skb_dst.exit165_crit_edge:          ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit165

do.end.i162:                                      ; preds = %land.rhs.i161
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit165

skb_dst.exit165:                                  ; preds = %do.end.i162, %land.rhs.i161.skb_dst.exit165_crit_edge, %land.lhs.true.i158.skb_dst.exit165_crit_edge, %if.then45.skb_dst.exit165_crit_edge
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %7, align 8
  %and25.i163 = and i32 %75, -2
  %76 = inttoptr i32 %and25.i163 to ptr
  %error47 = getelementptr inbounds %struct.dst_entry, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %error47 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %error47, align 4
  %conv48 = sext i16 %78 to i32
  br label %cleanup81

if.end49:                                         ; preds = %skb_dst.exit153
  %flags50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %79 = ptrtoint ptr %flags50 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %flags50, align 4
  %81 = and i16 %80, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool53.not = icmp eq i16 %81, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

land.lhs.true:                                    ; preds = %if.end49
  %call.i166 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl4, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp56 = icmp eq i32 %call.i166, 0
  br i1 %cmp56, label %if.then58, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then58:                                        ; preds = %land.lhs.true
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %7, align 8
  %and.i167 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.then58.skb_dst.exit178_crit_edge, label %land.lhs.true.i171

if.then58.skb_dst.exit178_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit178

land.lhs.true.i171:                               ; preds = %if.then58
  %call.i169 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool1.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool1.not.i170, label %land.rhs.i174, label %land.lhs.true.i171.skb_dst.exit178_crit_edge

land.lhs.true.i171.skb_dst.exit178_crit_edge:     ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit178

land.rhs.i174:                                    ; preds = %land.lhs.true.i171
  %call2.i172 = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i172)
  %tobool3.not.i173 = icmp eq i32 %call2.i172, 0
  br i1 %tobool3.not.i173, label %do.end.i175, label %land.rhs.i174.skb_dst.exit178_crit_edge, !prof !23

land.rhs.i174.skb_dst.exit178_crit_edge:          ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit178

do.end.i175:                                      ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit178

skb_dst.exit178:                                  ; preds = %do.end.i175, %land.rhs.i174.skb_dst.exit178_crit_edge, %land.lhs.true.i171.skb_dst.exit178_crit_edge, %if.then58.skb_dst.exit178_crit_edge
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %7, align 8
  %and25.i176 = and i32 %85, -2
  %86 = inttoptr i32 %and25.i176 to ptr
  store i32 0, ptr %7, align 8
  %call62 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %86, ptr noundef nonnull %fl4, ptr noundef %sk.addr.0.i211, i32 noundef 0) #5
  %cmp.i184 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %skb_dst.exit178
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %call62 to i32
  br label %cleanup81

cleanup:                                          ; preds = %skb_dst.exit178
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not.i185 = icmp eq ptr %call62, null
  %88 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %bf.load.i187 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i188 = and i32 %bf.load.i187, 4096
  %bf.shl.i189 = select i1 %tobool.not.i185, i32 %bf.load.mask.i188, i32 4096
  %bf.clear4.i190 = and i32 %bf.load.i187, -4097
  %bf.set.i191 = or i32 %bf.shl.i189, %bf.clear4.i190
  store i32 %bf.set.i191, ptr %slow_gro.i, align 2
  %89 = ptrtoint ptr %call62 to i32
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %7, align 8
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %land.lhs.true.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  %91 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %7, align 8
  %and.i192 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.not.i193 = icmp eq i32 %and.i192, 0
  br i1 %tobool.not.i193, label %if.end67.skb_dst.exit203_crit_edge, label %land.lhs.true.i196

if.end67.skb_dst.exit203_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit203

land.lhs.true.i196:                               ; preds = %if.end67
  %call.i194 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool1.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool1.not.i195, label %land.rhs.i199, label %land.lhs.true.i196.skb_dst.exit203_crit_edge

land.lhs.true.i196.skb_dst.exit203_crit_edge:     ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit203

land.rhs.i199:                                    ; preds = %land.lhs.true.i196
  %call2.i197 = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i197)
  %tobool3.not.i198 = icmp eq i32 %call2.i197, 0
  br i1 %tobool3.not.i198, label %do.end.i200, label %land.rhs.i199.skb_dst.exit203_crit_edge, !prof !23

land.rhs.i199.skb_dst.exit203_crit_edge:          ; preds = %land.rhs.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit203

do.end.i200:                                      ; preds = %land.rhs.i199
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit203

skb_dst.exit203:                                  ; preds = %do.end.i200, %land.rhs.i199.skb_dst.exit203_crit_edge, %land.lhs.true.i196.skb_dst.exit203_crit_edge, %if.end67.skb_dst.exit203_crit_edge
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %7, align 8
  %and25.i201 = and i32 %94, -2
  %95 = inttoptr i32 %and25.i201 to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 19
  %98 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hard_header_len, align 2
  %conv70 = zext i16 %99 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i, align 4
  %102 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv70)
  %cmp72 = icmp ult i32 %sub.ptr.sub.i, %conv70
  br i1 %cmp72, label %land.lhs.true74, label %skb_dst.exit203.if.end80_crit_edge

skb_dst.exit203.if.end80_crit_edge:               ; preds = %skb_dst.exit203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

land.lhs.true74:                                  ; preds = %skb_dst.exit203
  %sub = add nuw nsw i32 %conv70, 15
  %add = sub i32 %sub, %sub.ptr.sub.i
  %and76 = and i32 %add, -16
  %call77 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and76, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true74.if.end80_crit_edge, label %land.lhs.true74.cleanup81_crit_edge

land.lhs.true74.cleanup81_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup81

land.lhs.true74.if.end80_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true74.if.end80_crit_edge, %skb_dst.exit203.if.end80_crit_edge
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %land.lhs.true74.cleanup81_crit_edge, %cleanup.thread, %skb_dst.exit165, %if.then40
  %retval.1 = phi i32 [ %62, %if.then40 ], [ %conv48, %skb_dst.exit165 ], [ 0, %if.end80 ], [ -12, %land.lhs.true74.cleanup81_crit_edge ], [ %87, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flkeys) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #5
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ip_route(ptr noundef %net, ptr nocapture noundef writeonly %dst, ptr noundef %fl, i1 zeroext %strict) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef %fl, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_ip_route_me_harder, !1, !"__ksymtab_ip_route_me_harder", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter.c", i32 85, i32 1}
!2 = !{ptr @__ksymtab_nf_ip_route, !3, !"__ksymtab_nf_ip_route", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter.c", i32 96, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2149659853}
!25 = !{i64 2149660119}
